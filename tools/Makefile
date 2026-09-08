CC ?= gcc
PKG_CONFIG ?= pkg-config

TARGET := ld_wizard_gtk
SOURCE := ld_wizard.c

CFLAGS ?= -O2 -Wall -Wextra
GTK_CFLAGS := $(shell $(PKG_CONFIG) --cflags gtk+-3.0)
GTK_LIBS := $(shell $(PKG_CONFIG) --libs gtk+-3.0)

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) $(GTK_CFLAGS) $< -o $@ $(GTK_LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)
