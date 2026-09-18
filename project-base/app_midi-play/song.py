# Save as mid2c.py in the same directory as phantoms.mid
with open("phantoms.mid", "rb") as f:
    data = f.read()

with open("phantoms_midi.h", "w") as f:
    f.write("#include <stdint.h>\n\n")
    f.write(f"const uint32_t midi_file_size = {len(data)};\n")
    f.write("const uint8_t midi_file_buffer[] = {\n    ")
    for i, byte in enumerate(data):
        f.write(f"0x{byte:02X}, ")
        if (i + 1) % 12 == 0:
            f.write("\n    ")
    f.write("\n};\n")

print(f"Generated phantoms_midi.h ({len(data)} bytes)")
