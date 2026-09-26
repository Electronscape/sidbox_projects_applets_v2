#!/usr/bin/env python3
"""
Extract FL Studio/FruityLoops piano-roll notes from an .flp and write .mid.

This is intentionally narrow: it reads pattern note blobs, ignores plugins,
automation, mixer state, samples, and playlist arrangement. For SIDBOX import,
the default concat layout places each discovered pattern one after another so
the result is immediately audible instead of every pattern starting at tick 0.
"""

from __future__ import annotations

import argparse
import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path


OP_PATTERN_NEW = 0x41
OP_CHANNEL_NEW = 0x40
OP_CHANNEL_NAME = 0xC0
OP_SAMPLE_PATH = 0xC4
OP_PATTERN_NOTES = 0xE0
OP_PLAYLIST = 0xE9
OP_TEMPO_COARSE = 0x42
OP_TEMPO_FINE = 0x5D
OP_TEMPO = 0x9C
NOTE_RECORD_SIZE = 24
PLAYLIST_RECORD_SIZE = 32
PATTERN_ITEM_BASE = 0x5000
DEFAULT_PPQ = 96
DEFAULT_TEMPO = 120
MIDI_DRUM_CHANNEL = 9


@dataclass
class FlNote:
    position: int
    length: int
    key: int
    rack_channel: int
    midi_channel: int
    velocity: int


@dataclass
class FlPattern:
    iid: int
    notes: list[FlNote] = field(default_factory=list)


@dataclass
class FlPlaylistClip:
    position: int
    pattern: int
    length: int
    track: int


@dataclass
class FlProject:
    ppq: int
    tempo: int
    patterns: list[FlPattern]
    clips: list[FlPlaylistClip]
    channel_names: dict[int, str]
    sample_paths: dict[int, str]


def u16le(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32le(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def read_fl_varint(data: bytes, offset: int, end: int) -> tuple[int, int]:
    value = 0
    shift = 0
    while offset < end:
        byte = data[offset]
        offset += 1
        value |= (byte & 0x7F) << shift
        if (byte & 0x80) == 0:
            return value, offset
        shift += 7
        if shift > 28:
            raise ValueError("bad FLP varint")
    raise ValueError("truncated FLP varint")


def parse_note_blob(blob: bytes) -> list[FlNote]:
    notes: list[FlNote] = []
    usable = len(blob) - (len(blob) % NOTE_RECORD_SIZE)

    for offset in range(0, usable, NOTE_RECORD_SIZE):
        position = u32le(blob, offset + 0)
        rack_channel = u16le(blob, offset + 6)
        length = u32le(blob, offset + 8)
        key = u16le(blob, offset + 12)
        midi_channel = blob[offset + 19]
        velocity = blob[offset + 21]

        if length == 0:
            length = 1
        notes.append(
            FlNote(
                position=position,
                length=length,
                key=key,
                rack_channel=rack_channel,
                midi_channel=midi_channel,
                velocity=velocity,
            )
        )

    return notes


def parse_playlist_blob(blob: bytes) -> list[FlPlaylistClip]:
    clips: list[FlPlaylistClip] = []
    usable = len(blob) - (len(blob) % PLAYLIST_RECORD_SIZE)

    for offset in range(0, usable, PLAYLIST_RECORD_SIZE):
        position = u32le(blob, offset + 0)
        pattern_base = u16le(blob, offset + 4)
        item_index = u16le(blob, offset + 6)
        length = u32le(blob, offset + 8)
        track = u16le(blob, offset + 12)

        if pattern_base != PATTERN_ITEM_BASE or item_index < pattern_base or length == 0:
            continue
        clips.append(
            FlPlaylistClip(
                position=position,
                pattern=item_index - pattern_base,
                length=length,
                track=track,
            )
        )

    return clips


def decode_fl_text(payload: bytes) -> str:
    raw = payload.split(b"\0", 1)[0]
    if not raw:
        return ""
    return raw.decode("latin1", "replace")


def parse_flp(path: Path) -> FlProject:
    data = path.read_bytes()

    if len(data) < 22 or data[0:4] != b"FLhd":
        raise ValueError("not an FL Studio .flp file")

    header_len = u32le(data, 4)
    if header_len < 6 or 8 + header_len + 8 > len(data):
        raise ValueError("bad FLP header")

    ppq = u16le(data, 12)
    if ppq == 0:
        ppq = DEFAULT_PPQ
    tempo = DEFAULT_TEMPO
    tempo_fine = 0

    fl_dt = 8 + header_len
    if data[fl_dt : fl_dt + 4] != b"FLdt":
        raise ValueError("FLdt chunk not found")

    stream_len = u32le(data, fl_dt + 4)
    offset = fl_dt + 8
    end = min(len(data), offset + stream_len)
    current_pattern = 1
    current_channel = -1
    patterns: dict[int, FlPattern] = {}
    clips: list[FlPlaylistClip] = []
    channel_names: dict[int, str] = {}
    sample_paths: dict[int, str] = {}

    while offset < end:
        opcode = data[offset]
        offset += 1

        if opcode < 0x40:
            if offset + 1 > end:
                break
            offset += 1
        elif opcode < 0x80:
            if offset + 2 > end:
                break
            value = u16le(data, offset)
            offset += 2
            if opcode == OP_CHANNEL_NEW:
                current_channel = value
            elif opcode == OP_PATTERN_NEW:
                current_pattern = value or current_pattern
                patterns.setdefault(current_pattern, FlPattern(current_pattern))
            elif opcode == OP_TEMPO_COARSE:
                tempo = value or tempo
            elif opcode == OP_TEMPO_FINE:
                tempo_fine = value
        elif opcode < 0xC0:
            if offset + 4 > end:
                break
            value = u32le(data, offset)
            offset += 4
            if opcode == OP_TEMPO:
                tempo = (value + 500) // 1000 if value > 1000 else value
        else:
            size, offset = read_fl_varint(data, offset, end)
            if offset + size > end:
                break
            payload = data[offset : offset + size]
            offset += size

            if opcode == OP_PATTERN_NOTES:
                pattern = patterns.setdefault(current_pattern, FlPattern(current_pattern))
                pattern.notes.extend(parse_note_blob(payload))
            elif opcode == OP_PLAYLIST:
                clips.extend(parse_playlist_blob(payload))
            elif opcode == OP_CHANNEL_NAME and current_channel >= 0:
                name = decode_fl_text(payload)
                if name:
                    channel_names[current_channel] = name
            elif opcode == OP_SAMPLE_PATH and current_channel >= 0:
                path_text = decode_fl_text(payload)
                if path_text:
                    sample_paths[current_channel] = path_text

    if tempo_fine:
        tempo = tempo + (1 if tempo_fine >= 500 else 0)

    return FlProject(
        ppq,
        tempo,
        [p for _, p in sorted(patterns.items()) if p.notes],
        clips,
        channel_names,
        sample_paths,
    )


def write_varlen(value: int) -> bytes:
    value = max(0, int(value))
    buffer = value & 0x7F
    out = bytearray()

    value >>= 7
    while value:
        buffer <<= 8
        buffer |= ((value & 0x7F) | 0x80)
        value >>= 7

    while True:
        out.append(buffer & 0xFF)
        if buffer & 0x80:
            buffer >>= 8
        else:
            break

    return bytes(out)


def midi_event(delta: int, status: int, *data: int) -> bytes:
    return write_varlen(delta) + bytes([status, *data])


def meta_event(delta: int, meta_type: int, payload: bytes) -> bytes:
    return write_varlen(delta) + bytes([0xFF, meta_type]) + write_varlen(len(payload)) + payload


def note_velocity(fl_velocity: int) -> int:
    if fl_velocity <= 0:
        return 1
    if fl_velocity >= 128:
        return 127
    return fl_velocity


def note_key(fl_key: int, transpose: int) -> int | None:
    key = fl_key + transpose
    if key < 0 or key > 127:
        return None
    return key


def channel_label(project: FlProject, rack_channel: int) -> str:
    return project.channel_names.get(rack_channel) or project.sample_paths.get(rack_channel) or ""


def guessed_program(name: str) -> int:
    lower = name.lower()

    if "bass" in lower:
        return 38
    if "string" in lower or "orches" in lower or "largo" in lower:
        return 40
    if "guitar" in lower or "acousticg" in lower or "git" in lower:
        return 24
    if "flute" in lower or "wind" in lower:
        return 73
    if "pluck" in lower or "plux" in lower or "harp" in lower:
        return 104
    if "brass" in lower:
        return 56
    if "organ" in lower:
        return 16
    if "lead" in lower or "synth" in lower or "sytrus" in lower:
        return 80
    return 0


def guessed_drum_note(name: str) -> int | None:
    lower = name.lower()

    if "kick" in lower:
        return 36
    if "snare" in lower:
        return 38
    if "clap" in lower:
        return 39
    if "hat" in lower or "hihat" in lower or "hi hat" in lower:
        return 42
    if "crash" in lower:
        return 49
    if "ride" in lower:
        return 51
    if "tom" in lower:
        return 45
    return None


def build_channel_map(project: FlProject, skip_drums: bool) -> dict[int, int]:
    mapping: dict[int, int] = {}
    next_channel = 0

    for pattern in project.patterns:
        for note in pattern.notes:
            if note.rack_channel in mapping:
                continue
            if guessed_drum_note(channel_label(project, note.rack_channel)) is not None:
                mapping[note.rack_channel] = MIDI_DRUM_CHANNEL
                continue
            while skip_drums and next_channel == MIDI_DRUM_CHANNEL:
                next_channel += 1
            mapping[note.rack_channel] = next_channel & 0x0F
            next_channel += 1

    return mapping


def build_track_map(clips: list[FlPlaylistClip], skip_drums: bool) -> dict[int, int]:
    mapping: dict[int, int] = {}
    next_channel = 0

    for clip in sorted(clips, key=lambda item: item.track):
        if clip.track in mapping:
            continue
        while skip_drums and next_channel == MIDI_DRUM_CHANNEL:
            next_channel += 1
        mapping[clip.track] = next_channel & 0x0F
        next_channel += 1
    return mapping


def selected_channel(
    note: FlNote,
    channel_map: dict[int, int],
    args: argparse.Namespace,
    clip: FlPlaylistClip | None = None,
    track_map: dict[int, int] | None = None,
) -> int:
    if args.channel is not None:
        return (args.channel - 1) & 0x0F
    if args.channel_mode == "track" and clip and track_map:
        return track_map.get(clip.track, 0) & 0x0F
    if args.channel_mode == "note":
        return note.midi_channel & 0x0F
    return channel_map.get(note.rack_channel, 0) & 0x0F


def scale_tick(tick: int, args: argparse.Namespace) -> int:
    tick_in = getattr(args, "ppq_in", args.ppq_out) or args.ppq_out
    if tick_in == args.ppq_out:
        return tick
    return (tick * args.ppq_out + (tick_in // 2)) // tick_in


def pattern_length(pattern: FlPattern) -> int:
    if not pattern.notes:
        return 0
    return max(note.position + note.length for note in pattern.notes)


def add_note_events(
    events: list[tuple[int, int, bytes]],
    order: int,
    source_start: int,
    source_length: int,
    note: FlNote,
    project: FlProject,
    channel_map: dict[int, int],
    args: argparse.Namespace,
    clip: FlPlaylistClip | None = None,
    track_map: dict[int, int] | None = None,
) -> int:
    channel = selected_channel(note, channel_map, args, clip, track_map)
    drum_key = guessed_drum_note(channel_label(project, note.rack_channel))
    if channel == MIDI_DRUM_CHANNEL and drum_key is not None and not args.no_drum_map:
        key = drum_key
    else:
        key = note_key(note.key, args.transpose)
        if key is None:
            return order
    velocity = note_velocity(note.velocity)
    start = scale_tick(source_start, args)
    end = start + max(1, scale_tick(source_length, args))

    events.append((start, order, bytes([0x90 | channel, key, velocity])))
    order += 1
    events.append((end, order, bytes([0x80 | channel, key, 0])))
    return order + 1


def collect_events(patterns: list[FlPattern], args: argparse.Namespace) -> list[tuple[int, int, bytes]]:
    project = args.project
    channel_map = build_channel_map(project, args.skip_drum_channel)
    events: list[tuple[int, int, bytes]] = []
    cursor = 0
    order = 0

    add_program_events(events, project, channel_map, args)

    for pattern in patterns:
        base_tick = cursor if args.layout == "concat" else 0
        for note in pattern.notes:
            order = add_note_events(
                events,
                order,
                base_tick + note.position,
                note.length,
                note,
                project,
                channel_map,
                args,
            )

        if args.layout == "concat":
            cursor += pattern_length(pattern) + (args.gap_beats * args.ppq_in)

    return events


def collect_playlist_events(
    patterns: list[FlPattern], clips: list[FlPlaylistClip], args: argparse.Namespace
) -> list[tuple[int, int, bytes]]:
    project = args.project
    by_pattern = {pattern.iid: pattern for pattern in patterns}
    channel_map = build_channel_map(project, args.skip_drum_channel)
    track_map = build_track_map(clips, args.skip_drum_channel)
    events: list[tuple[int, int, bytes]] = []
    order = 0

    add_program_events(events, project, channel_map, args, clips, track_map)

    for clip in sorted(clips, key=lambda item: (item.position, item.track, item.pattern)):
        pattern = by_pattern.get(clip.pattern)
        if not pattern or not pattern.notes:
            continue

        loop_len = pattern_length(pattern)
        if loop_len <= 0:
            loop_len = clip.length
        if loop_len <= 0:
            continue

        loop_start = 0
        while loop_start < clip.length:
            loop_end = min(loop_start + loop_len, clip.length)
            for note in pattern.notes:
                note_start = loop_start + note.position
                note_end = note_start + max(1, note.length)

                if note_start >= loop_end or note_end <= loop_start:
                    continue

                clipped_start = max(note_start, loop_start)
                clipped_end = min(note_end, loop_end)
                if clipped_end <= clipped_start:
                    continue

                order = add_note_events(
                    events,
                    order,
                    clip.position + clipped_start,
                    clipped_end - clipped_start,
                    note,
                    project,
                    channel_map,
                    args,
                    clip,
                    track_map,
                )
            loop_start += loop_len

    return events


def add_program_events(
    events: list[tuple[int, int, bytes]],
    project: FlProject,
    channel_map: dict[int, int],
    args: argparse.Namespace,
    clips: list[FlPlaylistClip] | None = None,
    track_map: dict[int, int] | None = None,
) -> None:
    programs: dict[int, int] = {}

    if args.no_programs:
        return

    if args.channel is not None:
        channel = (args.channel - 1) & 0x0F
        programs[channel] = args.program if args.program is not None else 0
    elif args.channel_mode == "track" and clips and track_map:
        by_pattern = {pattern.iid: pattern for pattern in project.patterns}
        for clip in sorted(clips, key=lambda item: (item.track, item.position, item.pattern)):
            channel = track_map.get(clip.track, 0) & 0x0F
            if channel in programs:
                continue
            pattern = by_pattern.get(clip.pattern)
            if not pattern:
                continue
            for note in pattern.notes:
                if guessed_drum_note(channel_label(project, note.rack_channel)) is None:
                    programs[channel] = guessed_program(channel_label(project, note.rack_channel))
                    break
    else:
        for rack_channel, channel in sorted(channel_map.items()):
            if channel == MIDI_DRUM_CHANNEL:
                continue
            programs[channel] = guessed_program(channel_label(project, rack_channel))

    for channel, program in sorted(programs.items()):
        if channel == MIDI_DRUM_CHANNEL:
            continue
        events.append((0, -1000 + channel, bytes([0xC0 | channel, program & 0x7F])))


def track_from_events(events: list[tuple[int, int, bytes]], name: str | None = None) -> bytes:
    out = bytearray()
    last_tick = 0

    if name:
        out += meta_event(0, 0x03, name.encode("ascii", "replace")[:32])

    for tick, _, payload in sorted(events, key=lambda item: (item[0], item[1])):
        out += write_varlen(tick - last_tick)
        out += payload
        last_tick = tick

    out += meta_event(0, 0x2F, b"")
    return b"MTrk" + struct.pack(">I", len(out)) + out


def count_note_ons(events: list[tuple[int, int, bytes]]) -> int:
    count = 0

    for _, _, payload in events:
        if len(payload) >= 3 and (payload[0] & 0xF0) == 0x90 and payload[2] > 0:
            count += 1
    return count


def tempo_track(bpm: int) -> bytes:
    bpm = max(20, min(300, bpm))
    usec_per_quarter = int(round(60_000_000 / bpm))
    payload = usec_per_quarter.to_bytes(3, "big")
    body = meta_event(0, 0x51, payload) + meta_event(0, 0x2F, b"")
    return b"MTrk" + struct.pack(">I", len(body)) + body


def write_midi(project: FlProject, output: Path, args: argparse.Namespace) -> int:
    patterns = project.patterns
    args.project = project

    if args.ppq_out <= 0:
        args.ppq_out = project.ppq or DEFAULT_PPQ
    args.ppq_in = project.ppq or args.ppq_out

    if args.tempo is None:
        args.tempo = project.tempo or DEFAULT_TEMPO

    tracks: list[bytes] = [tempo_track(args.tempo)]
    written_notes = 0

    if args.layout == "playlist":
        events = collect_playlist_events(patterns, project.clips, args)
        if not events:
            events = collect_events(patterns, args)
        written_notes = count_note_ons(events)
        tracks.append(track_from_events(events, "FLP playlist"))
    elif args.layout in ("concat", "merge"):
        events = collect_events(patterns, args)
        written_notes = count_note_ons(events)
        tracks.append(track_from_events(events, "FLP notes"))
    else:
        channel_map = build_channel_map(project, args.skip_drum_channel)
        for pattern in patterns:
            events: list[tuple[int, int, bytes]] = []
            order = 0
            add_program_events(events, project, channel_map, args)
            for note in pattern.notes:
                order = add_note_events(
                    events,
                    order,
                    note.position,
                    note.length,
                    note,
                    project,
                    channel_map,
                    args,
                )
            written_notes += count_note_ons(events)
            tracks.append(track_from_events(events, f"Pattern {pattern.iid}"))

    header = b"MThd" + struct.pack(">IHHH", 6, 1, len(tracks), args.ppq_out)
    output.write_bytes(header + b"".join(tracks))
    return written_notes


def parse_args(argv: list[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Convert FL Studio .flp pattern notes to a standard MIDI file."
    )
    parser.add_argument("input", type=Path, help="input .flp file")
    parser.add_argument("output", type=Path, nargs="?", help="output .mid file")
    parser.add_argument(
        "--layout",
        choices=("playlist", "concat", "tracks", "merge"),
        default="playlist",
        help="rebuild playlist song layout, concat patterns in time, write one track per pattern, or merge at native positions",
    )
    parser.add_argument("--tempo", type=int, help="override MIDI tempo in BPM")
    parser.add_argument("--transpose", type=int, default=0, help="transpose MIDI notes by semitones")
    parser.add_argument(
        "--channel-mode",
        choices=("rack", "track", "note"),
        default="rack",
        help="map FL rack channels, playlist tracks, or each note's stored MIDI channel to MIDI channels",
    )
    parser.add_argument("--channel", type=int, help="force all notes to MIDI channel 1-16")
    parser.add_argument("--program", type=int, help="program to use when --channel forces one channel")
    parser.add_argument("--no-programs", action="store_true", help="do not emit MIDI program changes")
    parser.add_argument("--no-drum-map", action="store_true", help="do not remap obvious drum channels to GM drum notes")
    parser.add_argument("--gap-beats", type=int, default=1, help="gap between patterns in concat layout")
    parser.add_argument("--ppq-out", type=int, default=0, help="override output MIDI PPQ")
    parser.add_argument(
        "--use-drum-channel",
        action="store_true",
        help="allow rack-channel mapping to use MIDI channel 10",
    )
    parser.add_argument("--list-channels", action="store_true", help="print detected FL channel names")
    args = parser.parse_args(argv)
    args.skip_drum_channel = not args.use_drum_channel

    if args.output is None:
        args.output = args.input.with_suffix(".mid")
    if args.channel is not None and not 1 <= args.channel <= 16:
        parser.error("--channel must be 1..16")
    if args.program is not None and not 0 <= args.program <= 127:
        parser.error("--program must be 0..127")
    return args


def main(argv: list[str]) -> int:
    args = parse_args(argv)

    try:
        project = parse_flp(args.input)
        if not project.patterns:
            print(f"{args.input}: no FLP pattern notes found", file=sys.stderr)
            return 2
        if args.list_channels:
            channel_map = build_channel_map(project, not args.use_drum_channel)
            for rack_channel in sorted(
                set(project.channel_names) | set(project.sample_paths) | set(channel_map)
            ):
                name = project.channel_names.get(rack_channel, "")
                sample = project.sample_paths.get(rack_channel, "")
                midi_channel = channel_map.get(rack_channel)
                program = guessed_program(channel_label(project, rack_channel))
                drum = guessed_drum_note(channel_label(project, rack_channel))
                mapped = f"midi ch {midi_channel + 1}" if midi_channel is not None else "unused"
                extra = f"drum {drum}" if drum is not None else f"program {program}"
                print(f"FL {rack_channel:02d}: {mapped}, {extra}, {name or sample}")
        if args.ppq_out <= 0:
            args.ppq_out = project.ppq
        note_count = write_midi(project, args.output, args)
    except Exception as exc:
        print(f"flptomid: {exc}", file=sys.stderr)
        return 1

    print(
        f"Wrote {args.output} ({note_count} notes, {len(project.patterns)} patterns, "
        f"{len(project.clips)} playlist clips, PPQ {args.ppq_out}, tempo {args.tempo})"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
