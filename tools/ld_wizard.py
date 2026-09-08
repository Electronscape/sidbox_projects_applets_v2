#!/usr/bin/env python3
"""
SIDBOX applet.ld generator.

Run this from an applet project directory to open the GUI:

    python3 tools/ld_wizard.py

Use --cli for the terminal wizard, or --cli --dry-run to preview the generated
linker script without touching anything.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path


SDRAM_BASE = 0xD0000000
SDRAM_SIZE = 6 * 1024 * 1024
API_COUNT = 512
STACK_SIZE = 8 * 1024
ALIGNMENT = 32

RAM_DISK_CHOICES = {
    "1": ("64 KB", 64 * 1024),
    "2": ("128 KB", 128 * 1024),
    "3": ("256 KB", 256 * 1024),
    "4": ("512 KB", 512 * 1024),
    "5": ("1 MB", 1024 * 1024),
    "6": ("2 MB", 2 * 1024 * 1024),
}

SIZE_CHOICES = {
    "1": ("16 KB", 16 * 1024),
    "2": ("32 KB", 32 * 1024),
    "3": ("64 KB", 64 * 1024),
    "4": ("128 KB", 128 * 1024),
    "5": ("256 KB", 256 * 1024),
    "6": ("512 KB", 512 * 1024),
    "7": ("1 MB", 1024 * 1024),
}

MUSIC_CHOICES = {
    "1": ("None", 0),
    "2": ("64 KB", 64 * 1024),
    "3": ("128 KB", 128 * 1024),
    "4": ("256 KB", 256 * 1024),
    "5": ("512 KB", 512 * 1024),
    "6": ("1 MB", 1024 * 1024),
    "7": ("2 MB", 2 * 1024 * 1024),
}

CUSTOM_SIZE_LABEL = "Custom..."

FIELD_NOTES = {
    "profile": (
        "Note: desktop apps are placed in a fixed slot below the RAM disk; "
        "games start after the reserved music/resource area."
    ),
    "ram_disk": "Note: this SDRAM area is kept free for the runtime RAM disk.",
    "app_size": "Note: this is the desktop applet's own RAM allowance, including stack and globals.",
    "music": "Note: for games, this reserves low SDRAM for music or MOD data before the applet starts.",
    "resources": "Note: optional extra space reserved before the applet for assets, buffers, or scratch data.",
    "desktop_slot": "Note: slot 0 sits nearest the RAM disk; higher slots move downward in SDRAM.",
    "output": "Note: writing replaces the selected linker script only after confirmation.",
}


@dataclass(frozen=True)
class LinkerConfig:
    profile: str
    ram_disk_limit: int
    app_limit: int
    mod_limit: int
    resource_limit: int
    desktop_slot: int = 0

    @property
    def app_ram_top(self) -> int:
        return SDRAM_SIZE - self.ram_disk_limit

    @property
    def ram_disk_origin(self) -> int:
        return SDRAM_BASE + self.app_ram_top

    @property
    def startram(self) -> int:
        if self.profile == "desktop":
            return align_down(
                self.app_ram_top - (self.app_limit * (self.desktop_slot + 1)),
                ALIGNMENT,
            )
        return align_up(self.mod_limit + self.resource_limit, ALIGNMENT)

    @property
    def app_length(self) -> int:
        if self.profile == "desktop":
            return self.app_limit
        return self.app_ram_top - self.startram

    @property
    def app_origin(self) -> int:
        return SDRAM_BASE + self.startram


def align_up(value: int, alignment: int) -> int:
    return (value + alignment - 1) & ~(alignment - 1)


def align_down(value: int, alignment: int) -> int:
    return value & ~(alignment - 1)


def format_bytes(value: int) -> str:
    if value == 0:
        return "0 bytes"
    if value % (1024 * 1024) == 0:
        return f"{value // (1024 * 1024)} MB"
    if value % 1024 == 0:
        return f"{value // 1024} KB"
    return f"{value} bytes"


def parse_size(text: str) -> int:
    value = text.strip().lower().replace(" ", "")
    multipliers = {
        "k": 1024,
        "kb": 1024,
        "m": 1024 * 1024,
        "mb": 1024 * 1024,
        "b": 1,
    }

    for suffix, multiplier in sorted(multipliers.items(), key=lambda item: -len(item[0])):
        if value.endswith(suffix):
            number = value[: -len(suffix)]
            break
    else:
        number = value
        multiplier = 1024

    if not number.isdigit():
        raise ValueError(f"Could not parse size: {text!r}")

    parsed = int(number) * multiplier
    if parsed < 0:
        raise ValueError("Size cannot be negative")
    return parsed


def ask_yes_no(question: str, default: bool) -> bool:
    suffix = "[Y/n]" if default else "[y/N]"
    while True:
        answer = input(f"{question} {suffix} ").strip().lower()
        if not answer:
            return default
        if answer in {"y", "yes"}:
            return True
        if answer in {"n", "no"}:
            return False
        print("Please answer y or n.")


def ask_choice(question: str, choices: dict[str, tuple[str, int]], default: str) -> int:
    print(question)
    for key, (label, bytes_value) in choices.items():
        print(f"  {key}. {label:<6} ({bytes_value:#x})")
    print("  c. Custom")

    while True:
        answer = input(f"Choice [{default}]: ").strip().lower() or default
        if answer in choices:
            return choices[answer][1]
        if answer == "c":
            return ask_size("Enter custom size, e.g. 96KB or 2MB")
        print("Pick one of the listed choices.")


def ask_size(question: str) -> int:
    while True:
        answer = input(f"{question}: ").strip()
        try:
            return parse_size(answer)
        except ValueError as error:
            print(error)


def ask_desktop_slot(app_ram_top: int, app_limit: int) -> int:
    max_slots = app_ram_top // app_limit if app_limit > 0 else 0
    shown_slots = min(max_slots, 16)

    print("Which desktop app slot should this applet use?")
    print("  Slot 0 is closest to the RAM disk. Higher slots move downward in SDRAM.")

    for slot in range(shown_slots):
        slot_start = SDRAM_BASE + align_down(app_ram_top - (app_limit * (slot + 1)), ALIGNMENT)
        slot_end = slot_start + app_limit
        print(f"  {slot:2d}. 0x{slot_start:08X}-0x{slot_end - 1:08X}")

    if max_slots > shown_slots:
        print(f"  ... slots 16 to {max_slots - 1} are also available")

    while True:
        answer = input("Slot [0]: ").strip()
        if not answer:
            return 0
        if answer.isdigit():
            slot = int(answer)
            if 0 <= slot < max_slots:
                return slot
        print(f"Pick a slot from 0 to {max_slots - 1}.")


def validate_config(config: LinkerConfig) -> list[str]:
    errors: list[str] = []
    if config.ram_disk_limit < 0:
        errors.append("RAM disk size cannot be negative.")
    if config.ram_disk_limit >= SDRAM_SIZE:
        errors.append("RAM disk consumes all SDRAM. Tiny problem: the applet has nowhere to live.")
    if config.app_limit <= 0:
        errors.append("App size must be greater than zero.")
    if config.resource_limit < 0 or config.mod_limit < 0:
        errors.append("Reserved sizes cannot be negative.")
    if config.startram < 0:
        errors.append("Selected desktop slot is below SDRAM. Pick a smaller slot number or app size.")
    if config.startram >= config.app_ram_top:
        errors.append("Reserved music/resource space leaves no SDRAM for the applet.")
    if config.app_length <= STACK_SIZE + 0x1000:
        errors.append(
            "App allowance is very small after the stack reserve. Pick a larger app size."
        )
    if config.profile == "game" and config.app_length < config.app_limit:
        errors.append(
            "Music/resource reserves leave less space than the app size you selected."
        )
    if config.profile == "desktop" and config.app_limit > config.app_ram_top:
        errors.append("Desktop app size overlaps the RAM disk. Pick a smaller app or RAM disk.")
    return errors


def render_linker_script(config: LinkerConfig) -> str:
    return f"""/*
    applet.ld - generated by tools/ld_wizard.py

    Profile: {config.profile}
    Desktop slot: {config.desktop_slot if config.profile == "desktop" else "n/a"}
    SDRAM base: 0x{SDRAM_BASE:08X}
    Usable SDRAM: {format_bytes(SDRAM_SIZE)} / 0x{SDRAM_SIZE:X}
    RAM disk reserve: {format_bytes(config.ram_disk_limit)} / 0x{config.ram_disk_limit:X}
    RAM disk starts: 0x{config.ram_disk_origin:08X}
    Reserved before applet: {format_bytes(config.startram)} / 0x{config.startram:X}
    Applet origin: 0x{config.app_origin:08X}
    Applet allowance: {format_bytes(config.app_length)} / 0x{config.app_length:X}
*/

/* Base and limits */
_offset            = 0x{SDRAM_BASE:08X};
_maxramavail       = 0x{SDRAM_SIZE:X};
_stack_size        = 0x{STACK_SIZE:X};
_ramdisk_size      = 0x{config.ram_disk_limit:X};

/* Wizard choices, all in bytes. Do not multiply these by 1024 again. :) */
_profile_is_desktop = {1 if config.profile == "desktop" else 0};
_desktop_slot       = {config.desktop_slot};
_requested_app_size = 0x{config.app_limit:X};
_largest_modfile    = 0x{config.mod_limit:X};
_largest_resource   = 0x{config.resource_limit:X};
_applet_ram_top     = _maxramavail - _ramdisk_size;
_ramdisk_startram   = _applet_ram_top;

/* Desktop apps are parked near the end of applet SDRAM, below the RAM disk.
   Games start after the reserved music/resource area. */
_desktop_startram = ((_applet_ram_top - (_requested_app_size * (_desktop_slot + 1))) & ~31);
_game_startram    = ((_largest_modfile + _largest_resource + 31) & ~31);
_startram         = _profile_is_desktop ? _desktop_startram : _game_startram;

_applet_origin    = _offset + _startram;
_applet_length    = _profile_is_desktop ? _requested_app_size : (_applet_ram_top - _startram);
_sdram_end        = _offset + _maxramavail;
_ramdisk_origin   = _offset + _ramdisk_startram;

ASSERT(_startram < _applet_ram_top, "Reserved space exceeds applet SDRAM!")
ASSERT(_applet_length > _stack_size, "No RAM left for applet after stack reserve!")
ASSERT((_startram & 31) == 0, "Applet start must be 32-byte aligned!")

/* SIDBOX API table location. Must match the core applets linker layout. */
_api_count = {API_COUNT};
_api_size  = (8 * _api_count);
_api_location = 0x20020000 - _api_size;

MEMORY {{
    APPLET (rwx) : ORIGIN = (_offset + _startram), LENGTH = _applet_length
}}

_appstart = ORIGIN(APPLET);
PROVIDE(__app_start = _appstart);

SECTIONS {{
    PROVIDE(__sidbox_api_location = _api_location);

    . = _appstart;

    /* Header = 16 bytes total: magic(8) + loadAddr(4) + memLen(4) */
    .header _appstart : {{
        . = ALIGN(4);
        KEEP(*(.header))
        . = ALIGN(4);
        LONG(_appstart);
        LONG(__stack_end__ - _appstart);
    }} > APPLET

    .text (_appstart + 0x10) : {{
        . = ALIGN(4);
        KEEP(*(.text.applet_entry))
        *(.text*)
        *(.rodata*)
    }} > APPLET

    .data : {{
        . = ALIGN(4);
        *(.data*)
    }} > APPLET

    .bss (NOLOAD) : {{
        . = ALIGN(4);
        __bss_start__ = .;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end__ = .;
    }} > APPLET

    .stack (NOLOAD) : {{
        . = ALIGN(8);
        __stack_start__ = .;
        . = . + _stack_size;
        . = ALIGN(8);
        __stack_end__ = .;
    }} > APPLET

    PROVIDE(__app_end_clear = __stack_end__);
    PROVIDE(_estack = __stack_end__);

    _end = .;
    __app_end = .;

    ASSERT(__stack_end__ <= (_appstart + LENGTH(APPLET)), "Applet image exceeds selected app size!")
    ASSERT(__stack_end__ <= _sdram_end, "Applet image exceeds SDRAM end!")
    ASSERT(__stack_end__ <= _ramdisk_origin, "Applet image overlaps RAM disk!")
}}
"""


def run_wizard() -> LinkerConfig:
    print("SIDBOX applet.ld wizard")
    print("=======================")
    print(f"Usable SDRAM: {format_bytes(SDRAM_SIZE)} / 0x{SDRAM_SIZE:X}")
    print()

    ram_disk_limit = ask_choice(
        "How big is your RAM disk size?",
        RAM_DISK_CHOICES,
        default="1",
    )
    if ram_disk_limit >= SDRAM_SIZE:
        print("RAM disk consumes all SDRAM. Beautifully ambitious, utterly fatal.")
        raise SystemExit(1)
    app_ram_top = SDRAM_SIZE - ram_disk_limit
    print(f"Applet RAM top: 0x{SDRAM_BASE + app_ram_top:08X}")
    print()

    is_desktop = ask_yes_no("Is this a desktop/environment app?", default=True)
    profile = "desktop" if is_desktop else "game"

    if is_desktop:
        app_limit = ask_choice(
            "How much RAM should the applet itself be allowed? (must take into account your stack/variables too)",
            SIZE_CHOICES,
            default="4",
        )
        mod_limit = app_ram_top - app_limit
    else:
        mod_limit = ask_choice(
            "How much space should be reserved for music/MOD data?",
            MUSIC_CHOICES,
            default="4",
        )
        app_limit = app_ram_top - mod_limit

    resource_limit = ask_size("Resource reserve in KB/MB, or 0") if ask_yes_no(
        "Reserve extra resource space before the applet?", default=False
    ) else 0

    if resource_limit >= app_ram_top:
        print("Resource reserve consumes all applet SDRAM. That is a bold strategy. Also no.")
        raise SystemExit(1)

    if is_desktop:
        app_limit = min(app_limit, app_ram_top - resource_limit)
        mod_limit = app_ram_top - app_limit - resource_limit
        desktop_slot = ask_desktop_slot(app_ram_top, app_limit)
        mod_limit = align_down(app_ram_top - (app_limit * (desktop_slot + 1)), ALIGNMENT)
    else:
        app_limit = app_ram_top - mod_limit - resource_limit
        desktop_slot = 0

    config = LinkerConfig(
        profile=profile,
        ram_disk_limit=ram_disk_limit,
        app_limit=app_limit,
        mod_limit=mod_limit,
        resource_limit=resource_limit,
        desktop_slot=desktop_slot,
    )

    errors = validate_config(config)
    if errors:
        print()
        print("That layout does not fit:")
        for error in errors:
            print(f"  - {error}")
        raise SystemExit(1)

    print()
    print("Planned layout")
    print("--------------")
    print(f"Profile:          {config.profile}")
    if config.profile == "desktop":
        print(f"Desktop slot:     {config.desktop_slot}")
    print(f"RAM disk reserve: {format_bytes(config.ram_disk_limit)} / 0x{config.ram_disk_limit:X}")
    print(f"RAM disk starts:  0x{config.ram_disk_origin:08X}")
    print(f"Applet origin:    0x{config.app_origin:08X}")
    print(f"Applet allowance: {format_bytes(config.app_length)} / 0x{config.app_length:X}")
    print(f"Reserved before:  {format_bytes(config.startram)} / 0x{config.startram:X}")
    if config.profile == "desktop":
        print(f"Lower free area:  {format_bytes(config.mod_limit)} / 0x{config.mod_limit:X}")
    else:
        print(f"Music reserve:    {format_bytes(config.mod_limit)} / 0x{config.mod_limit:X}")
    print(f"Resource reserve: {format_bytes(config.resource_limit)} / 0x{config.resource_limit:X}")
    print()

    return config


def write_output(path: Path, content: str, force: bool) -> None:
    if path.exists() and not force:
        if not ask_yes_no(f"{path} already exists. Overwrite it?", default=False):
            print("Cancelled. No files changed.")
            return
    path.write_text(content, encoding="utf-8")
    print(f"Wrote {path}")


def _choice_label_to_size(
    label: str,
    choices: dict[str, tuple[str, int]],
    custom_text: str,
) -> int:
    if label == CUSTOM_SIZE_LABEL:
        return parse_size(custom_text)
    for choice_label, bytes_value in choices.values():
        if label == choice_label:
            return bytes_value
    raise ValueError(f"Unknown size choice: {label!r}")


def _choice_labels(choices: dict[str, tuple[str, int]]) -> list[str]:
    return [label for label, _ in choices.values()] + [CUSTOM_SIZE_LABEL]


def _layout_summary(config: LinkerConfig) -> str:
    lines = [
        f"Profile:          {config.profile}",
    ]
    if config.profile == "desktop":
        lines.append(f"Desktop slot:     {config.desktop_slot}")
    lines.extend(
        [
            f"RAM disk reserve: {format_bytes(config.ram_disk_limit)} / 0x{config.ram_disk_limit:X}",
            f"RAM disk starts:  0x{config.ram_disk_origin:08X}",
            f"Applet origin:    0x{config.app_origin:08X}",
            f"Applet allowance: {format_bytes(config.app_length)} / 0x{config.app_length:X}",
            f"Reserved before:  {format_bytes(config.startram)} / 0x{config.startram:X}",
        ]
    )
    if config.profile == "desktop":
        lines.append(f"Lower free area:  {format_bytes(config.mod_limit)} / 0x{config.mod_limit:X}")
    else:
        lines.append(f"Music reserve:    {format_bytes(config.mod_limit)} / 0x{config.mod_limit:X}")
    lines.append(f"Resource reserve: {format_bytes(config.resource_limit)} / 0x{config.resource_limit:X}")
    return "\n".join(lines)


class LinkerWizardGUI:
    def __init__(self, default_output: str) -> None:
        import tkinter as tk
        from tkinter import ttk

        self.tk = tk
        self.ttk = ttk
        self.root = tk.Tk()
        self.root.title("SIDBOX applet.ld wizard")
        self.root.geometry("1120x640")
        self.root.minsize(920, 560)
        ttk.Style().configure("Note.TLabel", foreground="#555555", font=("", 8))

        self.profile_var = tk.StringVar(value="desktop")
        self.ram_disk_var = tk.StringVar(value=RAM_DISK_CHOICES["1"][0])
        self.ram_disk_custom_var = tk.StringVar(value="96KB")
        self.app_size_var = tk.StringVar(value=SIZE_CHOICES["4"][0])
        self.app_size_custom_var = tk.StringVar(value="192KB")
        self.music_size_var = tk.StringVar(value=MUSIC_CHOICES["4"][0])
        self.music_size_custom_var = tk.StringVar(value="384KB")
        self.reserve_resources_var = tk.BooleanVar(value=False)
        self.resource_size_var = tk.StringVar(value="0")
        self.desktop_slot_var = tk.StringVar(value="0")
        self.output_path_var = tk.StringVar(value=default_output)
        self.status_var = tk.StringVar(value="Ready")

        self.desktop_slot_spinbox: tk.Spinbox | None = None
        self.desktop_slot_note: ttk.Label | None = None
        self.app_size_combo: ttk.Combobox | None = None
        self.app_size_custom_entry: ttk.Entry | None = None
        self.music_size_combo: ttk.Combobox | None = None
        self.music_size_custom_entry: ttk.Entry | None = None
        self.resource_entry: ttk.Entry | None = None
        self.ram_disk_custom_entry: ttk.Entry | None = None
        self.layout_text: tk.Text | None = None
        self.script_text: tk.Text | None = None
        self.save_button: ttk.Button | None = None
        self.copy_button: ttk.Button | None = None

        self._build()
        self._wire_refresh()
        self.refresh()

    def run(self) -> None:
        self.root.mainloop()

    def _build(self) -> None:
        tk = self.tk
        ttk = self.ttk

        self.root.columnconfigure(0, weight=0)
        self.root.columnconfigure(1, weight=1)
        self.root.rowconfigure(0, weight=1)

        controls = ttk.Frame(self.root, padding=12)
        controls.grid(row=0, column=0, sticky="nsew")
        controls.columnconfigure(1, weight=1)
        controls.columnconfigure(3, weight=0)

        preview = ttk.Frame(self.root, padding=(0, 12, 12, 12))
        preview.grid(row=0, column=1, sticky="nsew")
        preview.columnconfigure(0, weight=1)
        preview.rowconfigure(1, weight=1)

        title = ttk.Label(controls, text="SIDBOX applet.ld", font=("", 16, "bold"))
        title.grid(row=0, column=0, columnspan=4, sticky="w", pady=(0, 2))
        subtitle = ttk.Label(controls, text=f"Usable SDRAM: {format_bytes(SDRAM_SIZE)} / 0x{SDRAM_SIZE:X}")
        subtitle.grid(row=1, column=0, columnspan=4, sticky="w", pady=(0, 12))

        row = 2
        ttk.Label(controls, text="Profile").grid(row=row, column=0, sticky="w", pady=6)
        profile_frame = ttk.Frame(controls)
        profile_frame.grid(row=row, column=1, columnspan=2, sticky="ew", pady=6)
        ttk.Radiobutton(
            profile_frame,
            text="Desktop/environment app",
            variable=self.profile_var,
            value="desktop",
            command=self.refresh,
        ).pack(anchor="w")
        ttk.Radiobutton(
            profile_frame,
            text="Game",
            variable=self.profile_var,
            value="game",
            command=self.refresh,
        ).pack(anchor="w")
        self._add_note(controls, row, FIELD_NOTES["profile"])

        row += 1
        self._add_size_row(
            controls,
            row,
            "RAM disk",
            self.ram_disk_var,
            RAM_DISK_CHOICES,
            self.ram_disk_custom_var,
            "ram",
        )
        self._add_note(controls, row, FIELD_NOTES["ram_disk"])

        row += 1
        self.app_size_combo, self.app_size_custom_entry = self._add_size_row(
            controls,
            row,
            "Applet size",
            self.app_size_var,
            SIZE_CHOICES,
            self.app_size_custom_var,
            "app",
        )
        self._add_note(controls, row, FIELD_NOTES["app_size"])

        row += 1
        self.music_size_combo, self.music_size_custom_entry = self._add_size_row(
            controls,
            row,
            "Music/MOD reserve",
            self.music_size_var,
            MUSIC_CHOICES,
            self.music_size_custom_var,
            "music",
        )
        self._add_note(controls, row, FIELD_NOTES["music"])

        row += 1
        ttk.Label(controls, text="Resources").grid(row=row, column=0, sticky="w", pady=6)
        resource_frame = ttk.Frame(controls)
        resource_frame.grid(row=row, column=1, columnspan=2, sticky="ew", pady=6)
        resource_frame.columnconfigure(1, weight=1)
        ttk.Checkbutton(
            resource_frame,
            text="Reserve",
            variable=self.reserve_resources_var,
            command=self.refresh,
        ).grid(row=0, column=0, sticky="w")
        self.resource_entry = ttk.Entry(resource_frame, textvariable=self.resource_size_var, width=12)
        self.resource_entry.grid(row=0, column=1, sticky="ew", padx=(10, 0))
        ttk.Label(resource_frame, text="KB/MB or 0").grid(row=0, column=2, sticky="w", padx=(8, 0))
        self._add_note(controls, row, FIELD_NOTES["resources"])

        row += 1
        ttk.Label(controls, text="Desktop slot").grid(row=row, column=0, sticky="w", pady=6)
        slot_frame = ttk.Frame(controls)
        slot_frame.grid(row=row, column=1, columnspan=2, sticky="ew", pady=6)
        slot_frame.columnconfigure(1, weight=1)
        self.desktop_slot_spinbox = tk.Spinbox(
            slot_frame,
            from_=0,
            to=0,
            textvariable=self.desktop_slot_var,
            width=8,
            command=self.refresh,
        )
        self.desktop_slot_spinbox.grid(row=0, column=0, sticky="w")
        self.desktop_slot_note = ttk.Label(slot_frame, text="")
        self.desktop_slot_note.grid(row=0, column=1, sticky="w", padx=(10, 0))
        self._add_note(controls, row, FIELD_NOTES["desktop_slot"])

        row += 1
        ttk.Separator(controls).grid(row=row, column=0, columnspan=4, sticky="ew", pady=10)

        row += 1
        ttk.Label(controls, text="Output").grid(row=row, column=0, sticky="w", pady=6)
        output_entry = ttk.Entry(controls, textvariable=self.output_path_var)
        output_entry.grid(row=row, column=1, sticky="ew", pady=6, padx=(0, 8))
        ttk.Button(controls, text="Browse", command=self._browse_output).grid(row=row, column=2, sticky="ew", pady=6)
        self._add_note(controls, row, FIELD_NOTES["output"])

        row += 1
        button_frame = ttk.Frame(controls)
        button_frame.grid(row=row, column=0, columnspan=4, sticky="ew", pady=(10, 4))
        button_frame.columnconfigure(0, weight=1)
        button_frame.columnconfigure(1, weight=1)
        self.save_button = ttk.Button(button_frame, text="Write applet.ld", command=self._save)
        self.save_button.grid(row=0, column=0, sticky="ew", padx=(0, 6))
        self.copy_button = ttk.Button(button_frame, text="Copy script", command=self._copy_script)
        self.copy_button.grid(row=0, column=1, sticky="ew", padx=(6, 0))

        row += 1
        ttk.Label(controls, textvariable=self.status_var, wraplength=330).grid(
            row=row,
            column=0,
            columnspan=4,
            sticky="ew",
            pady=(8, 0),
        )

        notebook = ttk.Notebook(preview)
        notebook.grid(row=1, column=0, sticky="nsew")
        layout_frame = ttk.Frame(notebook)
        script_frame = ttk.Frame(notebook)
        notebook.add(layout_frame, text="Layout")
        notebook.add(script_frame, text="Linker script")

        self.layout_text = tk.Text(layout_frame, height=12, wrap="word", font=("TkFixedFont", 10))
        self.layout_text.pack(fill="both", expand=True)
        self.script_text = tk.Text(script_frame, wrap="none", font=("TkFixedFont", 10))
        self.script_text.pack(fill="both", expand=True)

    def _add_note(self, parent: object, row: int, text: str) -> None:
        self.ttk.Label(
            parent,
            text=text,
            style="Note.TLabel",
            wraplength=230,
        ).grid(row=row, column=3, sticky="w", padx=(12, 0), pady=4)

    def _add_size_row(
        self,
        parent: object,
        row: int,
        label: str,
        variable: object,
        choices: dict[str, tuple[str, int]],
        custom_variable: object,
        kind: str,
    ) -> tuple[object, object]:
        ttk = self.ttk

        ttk.Label(parent, text=label).grid(row=row, column=0, sticky="w", pady=6)
        combo = ttk.Combobox(parent, textvariable=variable, values=_choice_labels(choices), state="readonly", width=14)
        combo.grid(row=row, column=1, sticky="ew", pady=6, padx=(0, 8))
        combo.bind("<<ComboboxSelected>>", lambda _event: self.refresh())
        entry = ttk.Entry(parent, textvariable=custom_variable, width=12)
        entry.grid(row=row, column=2, sticky="ew", pady=6)
        if kind == "ram":
            self.ram_disk_custom_entry = entry
        return combo, entry

    def _wire_refresh(self) -> None:
        watched = [
            self.ram_disk_custom_var,
            self.app_size_custom_var,
            self.music_size_custom_var,
            self.resource_size_var,
            self.desktop_slot_var,
            self.output_path_var,
        ]
        for variable in watched:
            variable.trace_add("write", lambda *_args: self.refresh())

    def _selected_desktop_slot(self) -> int:
        text = self.desktop_slot_var.get().strip()
        if not text:
            return 0
        if not text.isdigit():
            raise ValueError("Desktop slot must be a whole number.")
        return int(text)

    def _browse_output(self) -> None:
        from tkinter import filedialog

        path = filedialog.asksaveasfilename(
            title="Write applet.ld",
            initialfile=Path(self.output_path_var.get() or "applet.ld").name,
            defaultextension=".ld",
            filetypes=[("Linker script", "*.ld"), ("All files", "*.*")],
        )
        if path:
            self.output_path_var.set(path)

    def _set_text(self, widget: object, text: str) -> None:
        widget.configure(state="normal")
        widget.delete("1.0", "end")
        widget.insert("1.0", text)
        widget.configure(state="disabled")

    def _selected_resource_size(self) -> int:
        if not self.reserve_resources_var.get():
            return 0
        return parse_size(self.resource_size_var.get())

    def _build_config(self) -> LinkerConfig:
        ram_disk_limit = _choice_label_to_size(
            self.ram_disk_var.get(),
            RAM_DISK_CHOICES,
            self.ram_disk_custom_var.get(),
        )
        app_ram_top = SDRAM_SIZE - ram_disk_limit
        resource_limit = self._selected_resource_size()
        is_desktop = self.profile_var.get() == "desktop"

        if is_desktop:
            app_limit = _choice_label_to_size(
                self.app_size_var.get(),
                SIZE_CHOICES,
                self.app_size_custom_var.get(),
            )
            app_limit = min(app_limit, app_ram_top - resource_limit)
            desktop_slot = self._selected_desktop_slot()
            mod_limit = align_down(app_ram_top - (app_limit * (desktop_slot + 1)), ALIGNMENT)
            profile = "desktop"
        else:
            mod_limit = _choice_label_to_size(
                self.music_size_var.get(),
                MUSIC_CHOICES,
                self.music_size_custom_var.get(),
            )
            app_limit = app_ram_top - mod_limit - resource_limit
            desktop_slot = 0
            profile = "game"

        return LinkerConfig(
            profile=profile,
            ram_disk_limit=ram_disk_limit,
            app_limit=app_limit,
            mod_limit=mod_limit,
            resource_limit=resource_limit,
            desktop_slot=desktop_slot,
        )

    def _refresh_control_states(self, config: LinkerConfig | None) -> None:
        profile = self.profile_var.get()
        is_desktop = profile == "desktop"
        resource_state = "normal" if self.reserve_resources_var.get() else "disabled"

        if self.resource_entry is not None:
            self.resource_entry.configure(state=resource_state)
        if self.app_size_combo is not None:
            self.app_size_combo.configure(state="readonly" if is_desktop else "disabled")
        if self.app_size_custom_entry is not None:
            state = "normal" if is_desktop and self.app_size_var.get() == CUSTOM_SIZE_LABEL else "disabled"
            self.app_size_custom_entry.configure(state=state)
        if self.music_size_combo is not None:
            self.music_size_combo.configure(state="disabled" if is_desktop else "readonly")
        if self.music_size_custom_entry is not None:
            state = "normal" if not is_desktop and self.music_size_var.get() == CUSTOM_SIZE_LABEL else "disabled"
            self.music_size_custom_entry.configure(state=state)
        if self.ram_disk_custom_entry is not None:
            state = "normal" if self.ram_disk_var.get() == CUSTOM_SIZE_LABEL else "disabled"
            self.ram_disk_custom_entry.configure(state=state)

        if self.desktop_slot_spinbox is None or self.desktop_slot_note is None:
            return

        if not is_desktop or config is None or config.app_limit <= 0:
            self.desktop_slot_spinbox.configure(state="disabled", to=0)
            self.desktop_slot_note.configure(text="Only used for desktop apps")
            return

        max_slots = max(1, config.app_ram_top // config.app_limit)
        try:
            current_slot = self._selected_desktop_slot()
        except ValueError:
            self.desktop_slot_spinbox.configure(state="normal", from_=0, to=max_slots - 1)
            self.desktop_slot_note.configure(text="Enter a whole number")
            return
        if current_slot >= max_slots:
            self.desktop_slot_var.set(str(max_slots - 1))
            return

        start = SDRAM_BASE + align_down(config.app_ram_top - (config.app_limit * (current_slot + 1)), ALIGNMENT)
        end = start + config.app_limit - 1
        self.desktop_slot_spinbox.configure(state="normal", from_=0, to=max_slots - 1)
        self.desktop_slot_note.configure(text=f"0x{start:08X}-0x{end:08X}")

    def refresh(self) -> None:
        try:
            config = self._build_config()
            self._refresh_control_states(config)
            errors = validate_config(config)
            if errors:
                self._set_text(self.layout_text, "That layout does not fit:\n\n" + "\n".join(f"- {error}" for error in errors))
                self._set_text(self.script_text, "")
                self.status_var.set("Fix the highlighted layout issue before writing.")
                if self.save_button is not None:
                    self.save_button.configure(state="disabled")
                if self.copy_button is not None:
                    self.copy_button.configure(state="disabled")
                return

            script = render_linker_script(config)
            self._set_text(self.layout_text, _layout_summary(config))
            self._set_text(self.script_text, script)
            self.status_var.set("Preview is valid.")
            if self.save_button is not None:
                self.save_button.configure(state="normal")
            if self.copy_button is not None:
                self.copy_button.configure(state="normal")
        except (TypeError, ValueError) as error:
            self._refresh_control_states(None)
            self._set_text(self.layout_text, str(error))
            self._set_text(self.script_text, "")
            self.status_var.set("Enter sizes like 64KB, 1MB, or 0.")
            if self.save_button is not None:
                self.save_button.configure(state="disabled")
            if self.copy_button is not None:
                self.copy_button.configure(state="disabled")

    def _copy_script(self) -> None:
        config = self._build_config()
        script = render_linker_script(config)
        self.root.clipboard_clear()
        self.root.clipboard_append(script)
        self.status_var.set("Copied linker script to clipboard.")

    def _save(self) -> None:
        from tkinter import messagebox

        try:
            config = self._build_config()
            errors = validate_config(config)
            if errors:
                messagebox.showerror("Invalid layout", "\n".join(errors), parent=self.root)
                return

            output_text = self.output_path_var.get().strip()
            if not output_text:
                messagebox.showerror("Missing output", "Choose where to write applet.ld.", parent=self.root)
                return

            output_path = Path(output_text)
            if output_path.exists() and not messagebox.askyesno(
                "Overwrite file?",
                f"{output_path} already exists. Overwrite it?",
                parent=self.root,
            ):
                self.status_var.set("Cancelled. No files changed.")
                return

            output_path.write_text(render_linker_script(config), encoding="utf-8")
            self.status_var.set(f"Wrote {output_path}")
            messagebox.showinfo("Done", f"Wrote {output_path}", parent=self.root)
        except (OSError, TypeError, ValueError) as error:
            messagebox.showerror("Could not write file", str(error), parent=self.root)


def run_gui(default_output: str = "applet.ld") -> None:
    try:
        gui = LinkerWizardGUI(default_output)
    except ModuleNotFoundError as error:
        raise SystemExit("Tkinter is not installed. Use --cli for the terminal wizard.") from error
    except Exception as error:
        if error.__class__.__name__ == "TclError":
            raise SystemExit("Could not open the GUI. Use --cli for the terminal wizard.") from error
        raise
    gui.run()


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate a SIDBOX applet.ld file.")
    parser.add_argument("-o", "--output", default="applet.ld", help="Output linker script path")
    parser.add_argument("--dry-run", action="store_true", help="Print the script instead of writing it")
    parser.add_argument("--force", action="store_true", help="Overwrite output without prompting")
    parser.add_argument("--gui", action="store_true", help="Open the graphical wizard")
    parser.add_argument("--cli", action="store_true", help="Use the terminal wizard")
    args = parser.parse_args()

    if args.gui or not (args.cli or args.dry_run or args.force):
        run_gui(args.output)
        return

    config = run_wizard()
    script = render_linker_script(config)

    if args.dry_run:
        print(script)
        return

    write_output(Path(args.output), script, args.force)


if __name__ == "__main__":
    main()
