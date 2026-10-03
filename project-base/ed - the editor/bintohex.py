import sys

def bin_to_hex(filename):
    total_bytes = 0
    with open(filename, 'rb') as f:
        while chunk := f.read(16):
            total_bytes += len(chunk)
            hex_line = ", ".join(f"0x{b:02X}" for b in chunk)
            print(f"{hex_line},")
    print(f"\nsize of array: {total_bytes}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python bin2hex.py <filename>")
        sys.exit(1)

    bin_to_hex(sys.argv[1])
