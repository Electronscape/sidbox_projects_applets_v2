#include <ctype.h>
#include <errno.h>
#include <gtk/gtk.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define SDRAM_BASE 0xD0000000LL
#define SDRAM_SIZE (6LL * 1024LL * 1024LL)
#define API_COUNT 512
#define STACK_SIZE (8LL * 1024LL)
#define ALIGNMENT 32LL
#define SIDBOX_COMMAND_CLEARANCE (64LL * 1024LL)

typedef struct {
    const char *label;
    int64_t bytes;
} SizeChoice;

typedef struct {
    gboolean is_desktop;
    int64_t ram_disk_limit;
    int64_t app_limit;
    int64_t mod_limit;
    int64_t resource_limit;
    int desktop_slot;
} LinkerConfig;

typedef struct {
    GtkWidget *window;
    GtkWidget *desktop_radio;
    GtkWidget *game_radio;
    GtkComboBoxText *ram_disk_combo;
    GtkComboBoxText *app_size_combo;
    GtkComboBoxText *music_size_combo;
    GtkWidget *ram_disk_custom_entry;
    GtkWidget *app_size_custom_entry;
    GtkWidget *music_size_custom_entry;
    GtkWidget *resource_check;
    GtkWidget *resource_entry;
    GtkWidget *desktop_slot_spin;
    GtkWidget *desktop_slot_note;
    GtkWidget *output_entry;
    GtkTextBuffer *layout_buffer;
    GtkTextBuffer *script_buffer;
    GtkWidget *memory_map;
    GtkWidget *write_button;
    GtkWidget *copy_button;
    gboolean updating;
    gboolean desktop_slot_user_set;
} AppState;

static const SizeChoice RAM_DISK_CHOICES[] = {
    {"64 KB", 64LL * 1024LL},
    {"128 KB", 128LL * 1024LL},
    {"256 KB", 256LL * 1024LL},
    {"512 KB", 512LL * 1024LL},
    {"1 MB", 1024LL * 1024LL},
    {"2 MB", 2LL * 1024LL * 1024LL},
};

static const SizeChoice SIZE_CHOICES[] = {
    {"16 KB", 16LL * 1024LL},
    {"32 KB", 32LL * 1024LL},
    {"64 KB", 64LL * 1024LL},
    {"128 KB", 128LL * 1024LL},
    {"256 KB", 256LL * 1024LL},
    {"512 KB", 512LL * 1024LL},
    {"1 MB", 1024LL * 1024LL},
};

static const SizeChoice MUSIC_CHOICES[] = {
    {"None", 0},
    {"64 KB", 64LL * 1024LL},
    {"128 KB", 128LL * 1024LL},
    {"256 KB", 256LL * 1024LL},
    {"512 KB", 512LL * 1024LL},
    {"1 MB", 1024LL * 1024LL},
    {"2 MB", 2LL * 1024LL * 1024LL},
};

static int64_t align_up(int64_t value, int64_t alignment) {
    return (value + alignment - 1) & ~(alignment - 1);
}

static int64_t align_down(int64_t value, int64_t alignment) {
    return value & ~(alignment - 1);
}

static int64_t app_ram_top(const LinkerConfig *config) {
    return SDRAM_SIZE - config->ram_disk_limit;
}

static int64_t ram_disk_origin(const LinkerConfig *config) {
    return SDRAM_BASE + app_ram_top(config);
}

static int64_t startram(const LinkerConfig *config) {
    if (config->is_desktop) {
        return align_down(
            app_ram_top(config) - (config->app_limit * (config->desktop_slot + 1)),
            ALIGNMENT
        );
    }
    return align_up(config->mod_limit + config->resource_limit, ALIGNMENT);
}

static int64_t app_length(const LinkerConfig *config) {
    if (config->is_desktop) {
        return config->app_limit;
    }
    return app_ram_top(config) - startram(config);
}

static int64_t app_origin(const LinkerConfig *config) {
    return SDRAM_BASE + startram(config);
}

static char *format_bytes(int64_t value) {
    if (value == 0) {
        return g_strdup("0 bytes");
    }
    if (value > 0 && value % (1024LL * 1024LL) == 0) {
        return g_strdup_printf("%lld MB", (long long)(value / (1024LL * 1024LL)));
    }
    if (value > 0 && value % 1024LL == 0) {
        return g_strdup_printf("%lld KB", (long long)(value / 1024LL));
    }
    return g_strdup_printf("%lld bytes", (long long)value);
}

static gboolean parse_size(const char *text, int64_t *out, char **error_message) {
    GString *cleaned = g_string_new(NULL);
    for (const char *cursor = text; cursor != NULL && *cursor != '\0'; cursor++) {
        if (!g_ascii_isspace(*cursor)) {
            g_string_append_c(cleaned, g_ascii_tolower(*cursor));
        }
    }

    const char *suffix = NULL;
    int64_t multiplier = 1024LL;
    if (g_str_has_suffix(cleaned->str, "kb")) {
        suffix = "kb";
        multiplier = 1024LL;
    } else if (g_str_has_suffix(cleaned->str, "mb")) {
        suffix = "mb";
        multiplier = 1024LL * 1024LL;
    } else if (g_str_has_suffix(cleaned->str, "k")) {
        suffix = "k";
        multiplier = 1024LL;
    } else if (g_str_has_suffix(cleaned->str, "m")) {
        suffix = "m";
        multiplier = 1024LL * 1024LL;
    } else if (g_str_has_suffix(cleaned->str, "b")) {
        suffix = "b";
        multiplier = 1LL;
    }

    if (suffix != NULL) {
        cleaned->len -= strlen(suffix);
        cleaned->str[cleaned->len] = '\0';
    }

    if (cleaned->len == 0) {
        if (error_message != NULL) {
            *error_message = g_strdup_printf("Could not parse size: %s", text);
        }
        g_string_free(cleaned, TRUE);
        return FALSE;
    }

    for (gsize index = 0; index < cleaned->len; index++) {
        if (!isdigit((unsigned char)cleaned->str[index])) {
            if (error_message != NULL) {
                *error_message = g_strdup_printf("Could not parse size: %s", text);
            }
            g_string_free(cleaned, TRUE);
            return FALSE;
        }
    }

    errno = 0;
    unsigned long long number = strtoull(cleaned->str, NULL, 10);
    if (errno != 0 || number > (unsigned long long)(INT64_MAX / multiplier)) {
        if (error_message != NULL) {
            *error_message = g_strdup_printf("Size is too large: %s", text);
        }
        g_string_free(cleaned, TRUE);
        return FALSE;
    }

    *out = (int64_t)number * multiplier;
    g_string_free(cleaned, TRUE);
    return TRUE;
}

static void append_size_choices(GtkComboBoxText *combo, const SizeChoice *choices, int count) {
    for (int index = 0; index < count; index++) {
        gtk_combo_box_text_append_text(combo, choices[index].label);
    }
    gtk_combo_box_text_append_text(combo, "Custom...");
}

static gboolean selected_size(
    GtkComboBoxText *combo,
    GtkWidget *custom_entry,
    const SizeChoice *choices,
    int count,
    int64_t *out,
    char **error_message
) {
    int active = gtk_combo_box_get_active(GTK_COMBO_BOX(combo));
    if (active >= 0 && active < count) {
        *out = choices[active].bytes;
        return TRUE;
    }
    return parse_size(gtk_entry_get_text(GTK_ENTRY(custom_entry)), out, error_message);
}

static char *validate_config(const LinkerConfig *config) {
    GString *errors = g_string_new(NULL);
    int64_t ram_top = app_ram_top(config);
    int64_t start = startram(config);
    int64_t length = app_length(config);

    if (config->ram_disk_limit < 0) {
        g_string_append(errors, "- RAM disk size cannot be negative.\n");
    }
    if (config->ram_disk_limit >= SDRAM_SIZE) {
        g_string_append(errors, "- RAM disk consumes all SDRAM. Tiny problem: the applet has nowhere to live.\n");
    }
    if (config->app_limit <= 0) {
        g_string_append(errors, "- App size must be greater than zero.\n");
    }
    if (config->resource_limit < 0 || config->mod_limit < 0) {
        g_string_append(errors, "- Reserved sizes cannot be negative.\n");
    }
    if (start < 0) {
        g_string_append(errors, "- Selected desktop slot is below SDRAM. Pick a smaller slot number or app size.\n");
    }
    if (start >= ram_top) {
        g_string_append(errors, "- Reserved music/resource space leaves no SDRAM for the applet.\n");
    }
    if (length <= STACK_SIZE + 0x1000LL) {
        g_string_append(errors, "- App allowance is very small after the stack reserve. Pick a larger app size.\n");
    }
    if (!config->is_desktop && length < config->app_limit) {
        g_string_append(errors, "- Music/resource reserves leave less space than the app size you selected.\n");
    }
    if (config->is_desktop && config->app_limit > ram_top) {
        g_string_append(errors, "- Desktop app size overlaps the RAM disk. Pick a smaller app or RAM disk.\n");
    }

    if (errors->len == 0) {
        g_string_free(errors, TRUE);
        return NULL;
    }
    return g_string_free(errors, FALSE);
}

static char *layout_summary(const LinkerConfig *config) {
    char *usable = format_bytes(SDRAM_SIZE);
    char *ram_disk = format_bytes(config->ram_disk_limit);
    char *allowance = format_bytes(app_length(config));
    char *reserved = format_bytes(startram(config));
    char *mod = format_bytes(config->mod_limit);
    char *resource = format_bytes(config->resource_limit);
    char *summary;

    if (config->is_desktop) {
        summary = g_strdup_printf(
            "Profile:          desktop\n"
            "Desktop slot:     %d\n"
            "Usable SDRAM:     %s / 0x%llX\n"
            "RAM disk reserve: %s / 0x%llX\n"
            "RAM disk starts:  0x%08llX\n"
            "Applet origin:    0x%08llX\n"
            "Applet allowance: %s / 0x%llX\n"
            "Reserved before:  %s / 0x%llX\n"
            "Lower free area:  %s / 0x%llX\n"
            "Resource reserve: %s / 0x%llX",
            config->desktop_slot,
            usable, (unsigned long long)SDRAM_SIZE,
            ram_disk, (unsigned long long)config->ram_disk_limit,
            (unsigned long long)ram_disk_origin(config),
            (unsigned long long)app_origin(config),
            allowance, (unsigned long long)app_length(config),
            reserved, (unsigned long long)startram(config),
            mod, (unsigned long long)config->mod_limit,
            resource, (unsigned long long)config->resource_limit
        );
    } else {
        summary = g_strdup_printf(
            "Profile:          game\n"
            "Usable SDRAM:     %s / 0x%llX\n"
            "RAM disk reserve: %s / 0x%llX\n"
            "RAM disk starts:  0x%08llX\n"
            "Applet origin:    0x%08llX\n"
            "Applet allowance: %s / 0x%llX\n"
            "Reserved before:  %s / 0x%llX\n"
            "Music reserve:    %s / 0x%llX\n"
            "Resource reserve: %s / 0x%llX",
            usable, (unsigned long long)SDRAM_SIZE,
            ram_disk, (unsigned long long)config->ram_disk_limit,
            (unsigned long long)ram_disk_origin(config),
            (unsigned long long)app_origin(config),
            allowance, (unsigned long long)app_length(config),
            reserved, (unsigned long long)startram(config),
            mod, (unsigned long long)config->mod_limit,
            resource, (unsigned long long)config->resource_limit
        );
    }

    g_free(usable);
    g_free(ram_disk);
    g_free(allowance);
    g_free(reserved);
    g_free(mod);
    g_free(resource);
    return summary;
}

static char *render_linker_script(const LinkerConfig *config) {
    char *usable = format_bytes(SDRAM_SIZE);
    char *ram_disk = format_bytes(config->ram_disk_limit);
    char *reserved = format_bytes(startram(config));
    char *allowance = format_bytes(app_length(config));
    char *slot_label = config->is_desktop ? g_strdup_printf("%d", config->desktop_slot) : g_strdup("n/a");
    char *script = g_strdup_printf(
        "/*\n"
        "    applet.ld - generated by tools/ld_wizard.c\n"
        "\n"
        "    Profile: %s\n"
        "    Desktop slot: %s\n"
        "    SDRAM base: 0x%08llX\n"
        "    Usable SDRAM: %s / 0x%llX\n"
        "    RAM disk reserve: %s / 0x%llX\n"
        "    RAM disk starts: 0x%08llX\n"
        "    Reserved before applet: %s / 0x%llX\n"
        "    Applet origin: 0x%08llX\n"
        "    Applet allowance: %s / 0x%llX\n"
        "*/\n"
        "\n"
        "/* Base and limits */\n"
        "_offset            = 0x%08llX;\n"
        "_maxramavail       = 0x%llX;\n"
        "_stack_size        = 0x%llX;\n"
        "_ramdisk_size      = 0x%llX;\n"
        "\n"
        "/* Wizard choices, all in bytes. Do not multiply these by 1024 again. :) */\n"
        "_profile_is_desktop = %d;\n"
        "_desktop_slot       = %d;\n"
        "_requested_app_size = 0x%llX;\n"
        "_largest_modfile    = 0x%llX;\n"
        "_largest_resource   = 0x%llX;\n"
        "_applet_ram_top     = _maxramavail - _ramdisk_size;\n"
        "_ramdisk_startram   = _applet_ram_top;\n"
        "\n"
        "/* Desktop apps are parked near the end of applet SDRAM, below the RAM disk.\n"
        "   Games start after the reserved music/resource area. */\n"
        "_desktop_startram = ((_applet_ram_top - (_requested_app_size * (_desktop_slot + 1))) & ~31);\n"
        "_game_startram    = ((_largest_modfile + _largest_resource + 31) & ~31);\n"
        "_startram         = _profile_is_desktop ? _desktop_startram : _game_startram;\n"
        "\n"
        "_applet_origin    = _offset + _startram;\n"
        "_applet_length    = _profile_is_desktop ? _requested_app_size : (_applet_ram_top - _startram);\n"
        "_sdram_end        = _offset + _maxramavail;\n"
        "_ramdisk_origin   = _offset + _ramdisk_startram;\n"
        "\n"
        "ASSERT(_startram < _applet_ram_top, \"Reserved space exceeds applet SDRAM!\")\n"
        "ASSERT(_applet_length > _stack_size, \"No RAM left for applet after stack reserve!\")\n"
        "ASSERT((_startram & 31) == 0, \"Applet start must be 32-byte aligned!\")\n"
        "\n"
        "/* SIDBOX API table location. Must match the core applets linker layout. */\n"
        "_api_count = %d;\n"
        "_api_size  = (8 * _api_count);\n"
        "_api_location = 0x20020000 - _api_size;\n"
        "\n"
        "MEMORY {\n"
        "    APPLET (rwx) : ORIGIN = (_offset + _startram), LENGTH = _applet_length\n"
        "}\n"
        "\n"
        "_appstart = ORIGIN(APPLET);\n"
        "PROVIDE(__app_start = _appstart);\n"
        "\n"
        "SECTIONS {\n"
        "    PROVIDE(__sidbox_api_location = _api_location);\n"
        "\n"
        "    . = _appstart;\n"
        "\n"
        "    /* Header = 16 bytes total: magic(8) + loadAddr(4) + memLen(4) */\n"
        "    .header _appstart : {\n"
        "        . = ALIGN(4);\n"
        "        KEEP(*(.header))\n"
        "        . = ALIGN(4);\n"
        "        LONG(_appstart);\n"
        "        LONG(__stack_end__ - _appstart);\n"
        "    } > APPLET\n"
        "\n"
        "    .text (_appstart + 0x10) : {\n"
        "        . = ALIGN(4);\n"
        "        KEEP(*(.text.applet_entry))\n"
        "        *(.text*)\n"
        "        *(.rodata*)\n"
        "    } > APPLET\n"
        "\n"
        "    .data : {\n"
        "        . = ALIGN(4);\n"
        "        *(.data*)\n"
        "    } > APPLET\n"
        "\n"
        "    .bss (NOLOAD) : {\n"
        "        . = ALIGN(4);\n"
        "        __bss_start__ = .;\n"
        "        *(.bss*)\n"
        "        *(COMMON)\n"
        "        . = ALIGN(4);\n"
        "        __bss_end__ = .;\n"
        "    } > APPLET\n"
        "\n"
        "    .stack (NOLOAD) : {\n"
        "        . = ALIGN(8);\n"
        "        __stack_start__ = .;\n"
        "        . = . + _stack_size;\n"
        "        . = ALIGN(8);\n"
        "        __stack_end__ = .;\n"
        "    } > APPLET\n"
        "\n"
        "    PROVIDE(__app_end_clear = __stack_end__);\n"
        "    PROVIDE(_estack = __stack_end__);\n"
        "\n"
        "    _end = .;\n"
        "    __app_end = .;\n"
        "\n"
        "    ASSERT(__stack_end__ <= (_appstart + LENGTH(APPLET)), \"Applet image exceeds selected app size!\")\n"
        "    ASSERT(__stack_end__ <= _sdram_end, \"Applet image exceeds SDRAM end!\")\n"
        "    ASSERT(__stack_end__ <= _ramdisk_origin, \"Applet image overlaps RAM disk!\")\n"
        "}\n",
        config->is_desktop ? "desktop" : "game",
        slot_label,
        (unsigned long long)SDRAM_BASE,
        usable, (unsigned long long)SDRAM_SIZE,
        ram_disk, (unsigned long long)config->ram_disk_limit,
        (unsigned long long)ram_disk_origin(config),
        reserved, (unsigned long long)startram(config),
        (unsigned long long)app_origin(config),
        allowance, (unsigned long long)app_length(config),
        (unsigned long long)SDRAM_BASE,
        (unsigned long long)SDRAM_SIZE,
        (unsigned long long)STACK_SIZE,
        (unsigned long long)config->ram_disk_limit,
        config->is_desktop ? 1 : 0,
        config->desktop_slot,
        (unsigned long long)config->app_limit,
        (unsigned long long)config->mod_limit,
        (unsigned long long)config->resource_limit,
        API_COUNT
    );

    g_free(usable);
    g_free(ram_disk);
    g_free(reserved);
    g_free(allowance);
    g_free(slot_label);
    return script;
}

static gboolean build_config(AppState *state, LinkerConfig *config, char **error_message) {
    int64_t ram_disk = 0;
    int64_t app_size = 0;
    int64_t music_size = 0;
    int64_t resources = 0;

    if (!selected_size(
            state->ram_disk_combo,
            state->ram_disk_custom_entry,
            RAM_DISK_CHOICES,
            G_N_ELEMENTS(RAM_DISK_CHOICES),
            &ram_disk,
            error_message
        )) {
        return FALSE;
    }

    if (gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(state->resource_check))) {
        if (!parse_size(gtk_entry_get_text(GTK_ENTRY(state->resource_entry)), &resources, error_message)) {
            return FALSE;
        }
    }

    config->is_desktop = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(state->desktop_radio));
    config->ram_disk_limit = ram_disk;
    config->resource_limit = resources;
    config->desktop_slot = gtk_spin_button_get_value_as_int(GTK_SPIN_BUTTON(state->desktop_slot_spin));

    int64_t ram_top = app_ram_top(config);
    if (config->is_desktop) {
        if (!selected_size(
                state->app_size_combo,
                state->app_size_custom_entry,
                SIZE_CHOICES,
                G_N_ELEMENTS(SIZE_CHOICES),
                &app_size,
                error_message
            )) {
            return FALSE;
        }
        int64_t available = ram_top - resources;
        config->app_limit = app_size < available ? app_size : available;
        config->mod_limit = align_down(ram_top - (config->app_limit * (config->desktop_slot + 1)), ALIGNMENT);
    } else {
        if (!selected_size(
                state->music_size_combo,
                state->music_size_custom_entry,
                MUSIC_CHOICES,
                G_N_ELEMENTS(MUSIC_CHOICES),
                &music_size,
                error_message
            )) {
            return FALSE;
        }
        config->mod_limit = music_size;
        config->app_limit = ram_top - music_size - resources;
        config->desktop_slot = 0;
    }

    return TRUE;
}

static int recommended_desktop_slot(int64_t app_limit, int64_t max_slots) {
    if (app_limit <= 0 || max_slots <= 1) {
        return 0;
    }

    int64_t slot = (SIDBOX_COMMAND_CLEARANCE + app_limit - 1) / app_limit;
    if (slot < 1) {
        slot = 1;
    }
    if (slot >= max_slots) {
        slot = max_slots - 1;
    }
    return (int)slot;
}

static void set_text(GtkTextBuffer *buffer, const char *text) {
    gtk_text_buffer_set_text(buffer, text != NULL ? text : "", -1);
}

static void queue_memory_map(AppState *state) {
    if (state->memory_map != NULL) {
        gtk_widget_queue_draw(state->memory_map);
    }
}

static void refresh(AppState *state) {
    if (state->updating) {
        return;
    }

    LinkerConfig config;
    char *error_message = NULL;
    gboolean ok = build_config(state, &config, &error_message);
    gboolean is_desktop = gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(state->desktop_radio));

    gtk_widget_set_sensitive(GTK_WIDGET(state->app_size_combo), is_desktop);
    gtk_widget_set_sensitive(state->app_size_custom_entry, is_desktop && gtk_combo_box_get_active(GTK_COMBO_BOX(state->app_size_combo)) == (int)G_N_ELEMENTS(SIZE_CHOICES));
    gtk_widget_set_sensitive(GTK_WIDGET(state->music_size_combo), !is_desktop);
    gtk_widget_set_sensitive(state->music_size_custom_entry, !is_desktop && gtk_combo_box_get_active(GTK_COMBO_BOX(state->music_size_combo)) == (int)G_N_ELEMENTS(MUSIC_CHOICES));
    gtk_widget_set_sensitive(state->ram_disk_custom_entry, gtk_combo_box_get_active(GTK_COMBO_BOX(state->ram_disk_combo)) == (int)G_N_ELEMENTS(RAM_DISK_CHOICES));
    gtk_widget_set_sensitive(state->resource_entry, gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(state->resource_check)));
    gtk_widget_set_sensitive(state->desktop_slot_spin, is_desktop);

    if (!ok) {
        set_text(state->layout_buffer, error_message);
        set_text(state->script_buffer, "");
        gtk_widget_set_sensitive(state->write_button, FALSE);
        gtk_widget_set_sensitive(state->copy_button, FALSE);
        queue_memory_map(state);
        g_free(error_message);
        return;
    }

    if (is_desktop && config.app_limit > 0) {
        int64_t max_slots = app_ram_top(&config) / config.app_limit;
        if (max_slots < 1) {
            max_slots = 1;
        }

        state->updating = TRUE;
        gtk_spin_button_set_range(GTK_SPIN_BUTTON(state->desktop_slot_spin), 0, (gdouble)(max_slots - 1));
        if (!state->desktop_slot_user_set) {
            int recommended_slot = recommended_desktop_slot(config.app_limit, max_slots);
            gtk_spin_button_set_value(GTK_SPIN_BUTTON(state->desktop_slot_spin), recommended_slot);
            config.desktop_slot = recommended_slot;
        } else if (config.desktop_slot >= max_slots) {
            config.desktop_slot = (int)(max_slots - 1);
            gtk_spin_button_set_value(GTK_SPIN_BUTTON(state->desktop_slot_spin), config.desktop_slot);
        }
        config.mod_limit = align_down(app_ram_top(&config) - (config.app_limit * (config.desktop_slot + 1)), ALIGNMENT);
        state->updating = FALSE;

        int64_t clearance = config.app_limit * config.desktop_slot;
        char *clearance_label = format_bytes(clearance);
        int64_t start = SDRAM_BASE + align_down(app_ram_top(&config) - (config.app_limit * (config.desktop_slot + 1)), ALIGNMENT);
        int64_t end = start + config.app_limit - 1;
        char *slot_note = g_strdup_printf(
            "0x%08llX-0x%08llX, %s clear above applet",
            (unsigned long long)start,
            (unsigned long long)end,
            clearance_label
        );
        gtk_label_set_text(GTK_LABEL(state->desktop_slot_note), slot_note);
        g_free(clearance_label);
        g_free(slot_note);
    } else {
        state->updating = TRUE;
        if (!state->desktop_slot_user_set) {
            gtk_spin_button_set_value(GTK_SPIN_BUTTON(state->desktop_slot_spin), 0);
        }
        state->updating = FALSE;
        gtk_label_set_text(GTK_LABEL(state->desktop_slot_note), "Only used for desktop apps");
    }

    char *validation_errors = validate_config(&config);
    if (validation_errors != NULL) {
        char *message = g_strdup_printf("That layout does not fit:\n\n%s", validation_errors);
        set_text(state->layout_buffer, message);
        set_text(state->script_buffer, "");
        gtk_widget_set_sensitive(state->write_button, FALSE);
        gtk_widget_set_sensitive(state->copy_button, FALSE);
        queue_memory_map(state);
        g_free(message);
        g_free(validation_errors);
        return;
    }

    char *summary = layout_summary(&config);
    char *script = render_linker_script(&config);
    set_text(state->layout_buffer, summary);
    set_text(state->script_buffer, script);
    gtk_widget_set_sensitive(state->write_button, TRUE);
    gtk_widget_set_sensitive(state->copy_button, TRUE);
    queue_memory_map(state);
    g_free(summary);
    g_free(script);
}

static void refresh_callback(GtkWidget *widget, gpointer user_data) {
    (void)widget;
    refresh((AppState *)user_data);
}

static void desktop_slot_changed_callback(GtkWidget *widget, gpointer user_data) {
    (void)widget;
    AppState *state = (AppState *)user_data;
    if (!state->updating) {
        state->desktop_slot_user_set = TRUE;
    }
    refresh(state);
}

static void browse_output(GtkWidget *widget, gpointer user_data) {
    (void)widget;
    AppState *state = (AppState *)user_data;
    GtkWidget *dialog = gtk_file_chooser_dialog_new(
        "Write applet.ld",
        GTK_WINDOW(state->window),
        GTK_FILE_CHOOSER_ACTION_SAVE,
        "_Cancel",
        GTK_RESPONSE_CANCEL,
        "_Select",
        GTK_RESPONSE_ACCEPT,
        NULL
    );
    gtk_file_chooser_set_current_name(GTK_FILE_CHOOSER(dialog), "applet.ld");

    if (gtk_dialog_run(GTK_DIALOG(dialog)) == GTK_RESPONSE_ACCEPT) {
        char *filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog));
        gtk_entry_set_text(GTK_ENTRY(state->output_entry), filename);
        g_free(filename);
    }
    gtk_widget_destroy(dialog);
}

static gboolean current_script(AppState *state, LinkerConfig *config, char **script, char **error_message) {
    if (!build_config(state, config, error_message)) {
        return FALSE;
    }

    char *validation_errors = validate_config(config);
    if (validation_errors != NULL) {
        *error_message = validation_errors;
        return FALSE;
    }

    *script = render_linker_script(config);
    return TRUE;
}

static void copy_script(GtkWidget *widget, gpointer user_data) {
    (void)widget;
    AppState *state = (AppState *)user_data;
    LinkerConfig config;
    char *script = NULL;
    char *error_message = NULL;

    if (!current_script(state, &config, &script, &error_message)) {
        g_free(error_message);
        return;
    }

    GtkClipboard *clipboard = gtk_clipboard_get(GDK_SELECTION_CLIPBOARD);
    gtk_clipboard_set_text(clipboard, script, -1);
    g_free(script);
}

static void show_error(AppState *state, const char *title, const char *message) {
    GtkWidget *dialog = gtk_message_dialog_new(
        GTK_WINDOW(state->window),
        GTK_DIALOG_MODAL,
        GTK_MESSAGE_ERROR,
        GTK_BUTTONS_CLOSE,
        "%s",
        message
    );
    gtk_window_set_title(GTK_WINDOW(dialog), title);
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog);
}

static void write_script(GtkWidget *widget, gpointer user_data) {
    (void)widget;
    AppState *state = (AppState *)user_data;
    LinkerConfig config;
    char *script = NULL;
    char *error_message = NULL;

    if (!current_script(state, &config, &script, &error_message)) {
        show_error(state, "Invalid layout", error_message);
        g_free(error_message);
        return;
    }

    const char *output_path = gtk_entry_get_text(GTK_ENTRY(state->output_entry));
    if (output_path == NULL || *output_path == '\0') {
        show_error(state, "Missing output", "Choose where to write applet.ld.");
        g_free(script);
        return;
    }

    if (g_file_test(output_path, G_FILE_TEST_EXISTS)) {
        GtkWidget *dialog = gtk_message_dialog_new(
            GTK_WINDOW(state->window),
            GTK_DIALOG_MODAL,
            GTK_MESSAGE_QUESTION,
            GTK_BUTTONS_YES_NO,
            "%s already exists. Overwrite it?",
            output_path
        );
        int response = gtk_dialog_run(GTK_DIALOG(dialog));
        gtk_widget_destroy(dialog);
        if (response != GTK_RESPONSE_YES) {
            g_free(script);
            return;
        }
    }

    GError *write_error = NULL;
    if (!g_file_set_contents(output_path, script, -1, &write_error)) {
        show_error(state, "Could not write file", write_error->message);
        g_error_free(write_error);
        g_free(script);
        return;
    }

    GtkWidget *dialog = gtk_message_dialog_new(
        GTK_WINDOW(state->window),
        GTK_DIALOG_MODAL,
        GTK_MESSAGE_INFO,
        GTK_BUTTONS_CLOSE,
        "Wrote %s",
        output_path
    );
    gtk_window_set_title(GTK_WINDOW(dialog), "Done");
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog);
    g_free(script);
}

static GtkWidget *make_note(const char *text) {
    GtkWidget *label = gtk_label_new(text);
    gtk_label_set_xalign(GTK_LABEL(label), 0.0f);
    gtk_label_set_line_wrap(GTK_LABEL(label), TRUE);
    gtk_widget_set_size_request(label, 330, -1);
    GtkStyleContext *context = gtk_widget_get_style_context(label);
    gtk_style_context_add_class(context, "dim-label");
    return label;
}

static GtkWidget *make_label(const char *text) {
    GtkWidget *label = gtk_label_new(text);
    gtk_label_set_xalign(GTK_LABEL(label), 0.0f);
    return label;
}

typedef struct {
    const char *label;
    int64_t bytes;
    double red;
    double green;
    double blue;
    double min_width;
} MapSegment;

static void draw_text(cairo_t *cr, const char *text, double x, double y, double red, double green, double blue) {
    cairo_set_source_rgb(cr, red, green, blue);
    cairo_move_to(cr, x, y);
    cairo_show_text(cr, text);
}

static void draw_centered_text(cairo_t *cr, const char *text, double x, double y, double width) {
    cairo_text_extents_t extents;
    cairo_text_extents(cr, text, &extents);
    double text_x = x + ((width - extents.width) / 2.0) - extents.x_bearing;
    cairo_move_to(cr, text_x, y);
    cairo_show_text(cr, text);
}

static gboolean draw_memory_map(GtkWidget *widget, cairo_t *cr, gpointer user_data) {
    AppState *state = (AppState *)user_data;
    LinkerConfig config;
    char *error_message = NULL;
    int width = gtk_widget_get_allocated_width(widget);

    cairo_set_source_rgb(cr, 0.96, 0.96, 0.95);
    cairo_paint(cr);

    cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
    cairo_set_font_size(cr, 12.0);
    draw_text(cr, "Virtual memory map", 14, 19, 0.12, 0.12, 0.12);

    if (!build_config(state, &config, &error_message)) {
        cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
        cairo_set_font_size(cr, 11.0);
        draw_text(cr, error_message, 14, 52, 0.45, 0.18, 0.15);
        g_free(error_message);
        return FALSE;
    }

    char *validation_errors = validate_config(&config);
    if (validation_errors != NULL) {
        cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
        cairo_set_font_size(cr, 11.0);
        draw_text(cr, "Fix the layout to preview the map.", 14, 52, 0.45, 0.18, 0.15);
        g_free(validation_errors);
        return FALSE;
    }

    MapSegment segments[6];
    int segment_count = 0;
    int64_t start = startram(&config);
    int64_t end = start + app_length(&config);
    int64_t ram_top = app_ram_top(&config);

    if (config.is_desktop) {
        if (start > 0) {
            segments[segment_count++] = (MapSegment){"media/free", start, 0.40, 0.56, 0.72, 42.0};
        }
        segments[segment_count++] = (MapSegment){"app", app_length(&config), 0.36, 0.68, 0.42, 48.0};
        if (ram_top > end) {
            segments[segment_count++] = (MapSegment){"free slots", ram_top - end, 0.66, 0.66, 0.66, 36.0};
        }
    } else {
        if (config.mod_limit > 0) {
            segments[segment_count++] = (MapSegment){"music", config.mod_limit, 0.70, 0.49, 0.76, 44.0};
        }
        if (config.resource_limit > 0) {
            segments[segment_count++] = (MapSegment){"resources", config.resource_limit, 0.84, 0.62, 0.36, 48.0};
        }
        segments[segment_count++] = (MapSegment){"app", app_length(&config), 0.36, 0.68, 0.42, 48.0};
    }

    if (config.ram_disk_limit > 0) {
        segments[segment_count++] = (MapSegment){"ramdisk", config.ram_disk_limit, 0.82, 0.45, 0.43, 54.0};
    }
    double bar_x = 14.0;
    double bar_y = 34.0;
    double bar_w = width - 28.0;
    double bar_h = 34.0;
    double visible_widths[6];
    double total_width = 0.0;
    int largest_index = 0;
    int64_t total_bytes = SDRAM_SIZE;

    for (int index = 0; index < segment_count; index++) {
        visible_widths[index] = ((double)segments[index].bytes / (double)total_bytes) * bar_w;
        if (segments[index].bytes > 0 && visible_widths[index] < segments[index].min_width) {
            visible_widths[index] = segments[index].min_width;
        }
        if (visible_widths[index] > visible_widths[largest_index]) {
            largest_index = index;
        }
        total_width += visible_widths[index];
    }
    if (total_width > bar_w && visible_widths[largest_index] > segments[largest_index].min_width) {
        visible_widths[largest_index] -= total_width - bar_w;
    }

    cairo_set_source_rgb(cr, 0.15, 0.15, 0.15);
    cairo_rectangle(cr, bar_x - 0.5, bar_y - 0.5, bar_w + 1.0, bar_h + 1.0);
    cairo_stroke(cr);

    double x = bar_x;
    cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
    cairo_set_font_size(cr, 10.0);
    for (int index = 0; index < segment_count; index++) {
        double segment_w = visible_widths[index];
        cairo_set_source_rgb(cr, segments[index].red, segments[index].green, segments[index].blue);
        cairo_rectangle(cr, x, bar_y, segment_w, bar_h);
        cairo_fill_preserve(cr);
        cairo_set_source_rgb(cr, 0.10, 0.10, 0.10);
        cairo_stroke(cr);

        cairo_text_extents_t extents;
        cairo_text_extents(cr, segments[index].label, &extents);
        if (segment_w > extents.width + 8.0) {
            cairo_set_source_rgb(cr, 1.0, 1.0, 1.0);
            draw_centered_text(cr, segments[index].label, x, bar_y + 21.0, segment_w);
        }
        x += segment_w;
    }

    cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
    cairo_set_font_size(cr, 10.0);
    x = bar_x;
    for (int index = 0; index < segment_count; index++) {
        char *size_label = format_bytes(segments[index].bytes);
        cairo_text_extents_t size_extents;
        cairo_text_extents(cr, size_label, &size_extents);
        if (visible_widths[index] > size_extents.width + 8.0) {
            cairo_set_source_rgb(cr, 0.18, 0.18, 0.18);
            draw_centered_text(cr, size_label, x, bar_y + bar_h + 15.0, visible_widths[index]);
        }
        x += visible_widths[index];
        g_free(size_label);
    }

    char *start_label = g_strdup_printf("0x%08llX", (unsigned long long)SDRAM_BASE);
    char *ramdisk_label = g_strdup_printf("RAM disk @ 0x%08llX", (unsigned long long)ram_disk_origin(&config));
    char *end_label = g_strdup_printf("SDRAM end 0x%08llX", (unsigned long long)(SDRAM_BASE + SDRAM_SIZE));
    draw_text(cr, start_label, bar_x, bar_y + bar_h + 36.0, 0.18, 0.18, 0.18);
    draw_centered_text(cr, ramdisk_label, bar_x, bar_y + bar_h + 36.0, bar_w);
    cairo_text_extents_t extents;
    cairo_text_extents(cr, end_label, &extents);
    draw_text(cr, end_label, bar_x + bar_w - extents.width, bar_y + bar_h + 36.0, 0.18, 0.18, 0.18);
    g_free(start_label);
    g_free(ramdisk_label);
    g_free(end_label);

    return FALSE;
}

static GtkWidget *add_size_row(
    GtkGrid *grid,
    int row,
    const char *label_text,
    GtkComboBoxText **combo_out,
    GtkWidget **entry_out,
    const SizeChoice *choices,
    int count,
    int active,
    const char *custom_default,
    const char *note,
    AppState *state
) {
    GtkWidget *label = make_label(label_text);
    GtkWidget *combo = gtk_combo_box_text_new();
    GtkWidget *entry = gtk_entry_new();

    append_size_choices(GTK_COMBO_BOX_TEXT(combo), choices, count);
    gtk_combo_box_set_active(GTK_COMBO_BOX(combo), active);
    gtk_entry_set_text(GTK_ENTRY(entry), custom_default);

    gtk_grid_attach(grid, label, 0, row, 1, 1);
    gtk_grid_attach(grid, combo, 1, row, 1, 1);
    gtk_grid_attach(grid, entry, 2, row, 1, 1);
    gtk_grid_attach(grid, make_note(note), 1, row + 1, 2, 1);

    g_signal_connect(combo, "changed", G_CALLBACK(refresh_callback), state);
    g_signal_connect(entry, "changed", G_CALLBACK(refresh_callback), state);

    *combo_out = GTK_COMBO_BOX_TEXT(combo);
    *entry_out = entry;
    return combo;
}

static void activate(GtkApplication *app, gpointer user_data) {
    AppState *state = (AppState *)user_data;

    GtkWidget *window = gtk_application_window_new(app);
    gtk_window_set_title(GTK_WINDOW(window), "SIDBOX applet.ld wizard");
    gtk_window_set_default_size(GTK_WINDOW(window), 1030, 805);
    gtk_window_set_resizable(GTK_WINDOW(window), FALSE);
    state->window = window;

    GtkWidget *main_grid = gtk_grid_new();
    gtk_grid_set_column_spacing(GTK_GRID(main_grid), 10);
    gtk_grid_set_row_spacing(GTK_GRID(main_grid), 10);
    gtk_container_set_border_width(GTK_CONTAINER(main_grid), 12);
    gtk_container_add(GTK_CONTAINER(window), main_grid);

    GtkWidget *controls = gtk_grid_new();
    gtk_grid_set_row_spacing(GTK_GRID(controls), 4);
    gtk_grid_set_column_spacing(GTK_GRID(controls), 8);
    gtk_widget_set_size_request(controls, 400, 640);
    gtk_grid_attach(GTK_GRID(main_grid), controls, 0, 0, 1, 1);

    GtkWidget *preview = gtk_notebook_new();
    gtk_widget_set_size_request(preview, 590, 640);
    gtk_widget_set_hexpand(preview, TRUE);
    gtk_widget_set_vexpand(preview, TRUE);
    gtk_grid_attach(GTK_GRID(main_grid), preview, 1, 0, 1, 1);

    state->memory_map = gtk_drawing_area_new();
    gtk_widget_set_size_request(state->memory_map, 1000, 120);
    gtk_grid_attach(GTK_GRID(main_grid), state->memory_map, 0, 1, 2, 1);
    g_signal_connect(state->memory_map, "draw", G_CALLBACK(draw_memory_map), state);

    GtkWidget *title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(title), "<b><span size=\"large\">SIDBOX applet.ld</span></b>");
    gtk_label_set_xalign(GTK_LABEL(title), 0.0f);
    gtk_grid_attach(GTK_GRID(controls), title, 0, 0, 3, 1);

    char *subtitle_text = format_bytes(SDRAM_SIZE);
    char *subtitle = g_strdup_printf("Usable SDRAM: %s / 0x%llX", subtitle_text, (unsigned long long)SDRAM_SIZE);
    GtkWidget *subtitle_label = make_label(subtitle);
    gtk_grid_attach(GTK_GRID(controls), subtitle_label, 0, 1, 3, 1);
    g_free(subtitle_text);
    g_free(subtitle);

    int row = 2;
    gtk_grid_attach(GTK_GRID(controls), make_label("Profile"), 0, row, 1, 1);
    GtkWidget *profile_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    state->desktop_radio = gtk_radio_button_new_with_label(NULL, "Desktop/environment app");
    state->game_radio = gtk_radio_button_new_with_label_from_widget(GTK_RADIO_BUTTON(state->desktop_radio), "Game");
    gtk_box_pack_start(GTK_BOX(profile_box), state->desktop_radio, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(profile_box), state->game_radio, FALSE, FALSE, 0);
    gtk_grid_attach(GTK_GRID(controls), profile_box, 1, row, 2, 1);
    gtk_grid_attach(GTK_GRID(controls), make_note("Note: desktop apps are placed in a fixed slot below the RAM disk; games start after music/resource reserves."), 1, row + 1, 2, 1);
    g_signal_connect(state->desktop_radio, "toggled", G_CALLBACK(refresh_callback), state);
    g_signal_connect(state->game_radio, "toggled", G_CALLBACK(refresh_callback), state);

    row += 2;
    add_size_row(
        GTK_GRID(controls),
        row,
        "RAM disk",
        &state->ram_disk_combo,
        &state->ram_disk_custom_entry,
        RAM_DISK_CHOICES,
        G_N_ELEMENTS(RAM_DISK_CHOICES),
        0,
        "96KB",
        "Note: SDRAM kept free for the runtime RAM disk.",
        state
    );

    row += 2;
    add_size_row(
        GTK_GRID(controls),
        row,
        "Applet size",
        &state->app_size_combo,
        &state->app_size_custom_entry,
        SIZE_CHOICES,
        G_N_ELEMENTS(SIZE_CHOICES),
        3,
        "192KB",
        "Note: desktop app RAM allowance, including stack and globals.",
        state
    );

    row += 2;
    add_size_row(
        GTK_GRID(controls),
        row,
        "Music/MOD reserve",
        &state->music_size_combo,
        &state->music_size_custom_entry,
        MUSIC_CHOICES,
        G_N_ELEMENTS(MUSIC_CHOICES),
        3,
        "384KB",
        "Note: for games, low SDRAM reserved before the applet starts.",
        state
    );

    row += 2;
    gtk_grid_attach(GTK_GRID(controls), make_label("Resources"), 0, row, 1, 1);
    GtkWidget *resource_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 8);
    state->resource_check = gtk_check_button_new_with_label("Reserve");
    state->resource_entry = gtk_entry_new();
    gtk_entry_set_text(GTK_ENTRY(state->resource_entry), "0");
    gtk_widget_set_size_request(state->resource_entry, 95, -1);
    gtk_box_pack_start(GTK_BOX(resource_box), state->resource_check, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(resource_box), state->resource_entry, TRUE, TRUE, 0);
    gtk_box_pack_start(GTK_BOX(resource_box), make_label("KB/MB or 0"), FALSE, FALSE, 0);
    gtk_grid_attach(GTK_GRID(controls), resource_box, 1, row, 2, 1);
    gtk_grid_attach(GTK_GRID(controls), make_note("Note: optional extra space for assets, buffers, or scratch data."), 1, row + 1, 2, 1);
    g_signal_connect(state->resource_check, "toggled", G_CALLBACK(refresh_callback), state);
    g_signal_connect(state->resource_entry, "changed", G_CALLBACK(refresh_callback), state);

    row += 2;
    gtk_grid_attach(GTK_GRID(controls), make_label("Desktop slot"), 0, row, 1, 1);
    GtkWidget *slot_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 8);
    state->desktop_slot_spin = gtk_spin_button_new_with_range(0, 64, 1);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(state->desktop_slot_spin), 1);
    state->desktop_slot_note = gtk_label_new("");
    gtk_label_set_xalign(GTK_LABEL(state->desktop_slot_note), 0.0f);
    gtk_box_pack_start(GTK_BOX(slot_box), state->desktop_slot_spin, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(slot_box), state->desktop_slot_note, TRUE, TRUE, 0);
    gtk_grid_attach(GTK_GRID(controls), slot_box, 1, row, 2, 1);
    gtk_grid_attach(
        GTK_GRID(controls),
        make_note("Note: the default slot leaves at least 64 KB clear for SIDBOX/C OS command applets. Slot 0 sits closest to the RAM disk."),
        1,
        row + 1,
        2,
        1
    );
    g_signal_connect(state->desktop_slot_spin, "value-changed", G_CALLBACK(desktop_slot_changed_callback), state);

    row += 2;
    GtkWidget *separator = gtk_separator_new(GTK_ORIENTATION_HORIZONTAL);
    gtk_grid_attach(GTK_GRID(controls), separator, 0, row, 3, 1);

    row++;
    gtk_grid_attach(GTK_GRID(controls), make_label("Output"), 0, row, 1, 1);
    state->output_entry = gtk_entry_new();
    gtk_entry_set_text(GTK_ENTRY(state->output_entry), "applet.ld");
    GtkWidget *browse_button = gtk_button_new_with_label("Browse");
    gtk_grid_attach(GTK_GRID(controls), state->output_entry, 1, row, 1, 1);
    gtk_grid_attach(GTK_GRID(controls), browse_button, 2, row, 1, 1);
    gtk_grid_attach(GTK_GRID(controls), make_note("Note: writing replaces the selected linker script after confirmation."), 1, row + 1, 2, 1);
    g_signal_connect(state->output_entry, "changed", G_CALLBACK(refresh_callback), state);
    g_signal_connect(browse_button, "clicked", G_CALLBACK(browse_output), state);

    row += 2;
    GtkWidget *button_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 8);
    state->write_button = gtk_button_new_with_label("Write applet.ld");
    state->copy_button = gtk_button_new_with_label("Copy script");
    gtk_box_pack_start(GTK_BOX(button_box), state->write_button, TRUE, TRUE, 0);
    gtk_box_pack_start(GTK_BOX(button_box), state->copy_button, TRUE, TRUE, 0);
    gtk_grid_attach(GTK_GRID(controls), button_box, 0, row, 3, 1);
    g_signal_connect(state->write_button, "clicked", G_CALLBACK(write_script), state);
    g_signal_connect(state->copy_button, "clicked", G_CALLBACK(copy_script), state);

    GtkWidget *layout_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(layout_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(layout_view), TRUE);
    gtk_text_view_set_wrap_mode(GTK_TEXT_VIEW(layout_view), GTK_WRAP_NONE);
    state->layout_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(layout_view));
    GtkWidget *layout_scroller = gtk_scrolled_window_new(NULL, NULL);
    gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(layout_scroller), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
    gtk_container_add(GTK_CONTAINER(layout_scroller), layout_view);
    gtk_notebook_append_page(GTK_NOTEBOOK(preview), layout_scroller, gtk_label_new("Layout"));

    GtkWidget *script_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(script_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(script_view), TRUE);
    gtk_text_view_set_wrap_mode(GTK_TEXT_VIEW(script_view), GTK_WRAP_NONE);
    state->script_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(script_view));
    GtkWidget *script_scroller = gtk_scrolled_window_new(NULL, NULL);
    gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(script_scroller), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
    gtk_container_add(GTK_CONTAINER(script_scroller), script_view);
    gtk_notebook_append_page(GTK_NOTEBOOK(preview), script_scroller, gtk_label_new("Linker script"));

    refresh(state);
    gtk_widget_show_all(window);
}

int main(int argc, char **argv) {
    GtkApplication *app = gtk_application_new("dev.sidbox.ld-wizard", (GApplicationFlags)0);
    AppState state;
    memset(&state, 0, sizeof(state));

    g_signal_connect(app, "activate", G_CALLBACK(activate), &state);
    int status = g_application_run(G_APPLICATION(app), argc, argv);
    g_object_unref(app);
    return status;
}
