# Applet Makefile for SIDBOX

PROJECTNAME := island3DDemo

BUILD_DIR := compiled
PROJECT_DIR := project
FINAL_COPY_PATH := /media/ben/16GDEM/applets/$(PROJECTNAME).app

CORE_DIR := ../../_coreapi_

include $(CORE_DIR)/toolchain.mk

OPT_CORE := -Ofast
OPT_APP  := -Ofast

TARGET_ELF       := $(BUILD_DIR)/applet.elf
TARGET_FINAL_BIN := $(PROJECTNAME).app
TARGET_ASM       := applet.asm

# external 3D library
LIB3D := sb3dlibrary.a

CORE_SRCS    := $(shell find $(CORE_DIR) -type f -name '*.c')
CORE_OBJS    := $(patsubst %.c,$(BUILD_DIR)/%.o,$(CORE_SRCS))

PROJECT_SRCS := $(shell find $(PROJECT_DIR) -type f -name '*.c')
PROJECT_OBJS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(PROJECT_SRCS))

TOTAL_PROJECT_FILES := $(words $(PROJECT_SRCS))

.PHONY: all clean show-size init_progress

all: prep init_progress $(TARGET_ELF) postbuild

prep:
	@echo -e "\033[1;32m############ BEGIN COMPILING APPLET FOR SIDBOX!! ( Y E Y ! ! ) ############\033[0m"
	@echo -e "\033[1;37;42m PROJECT NAME : $(PROJECTNAME) \033[0m"
	@rm -rf $(BUILD_DIR)
	@mkdir -p $(BUILD_DIR)

init_progress:
	@echo 0 > $(BUILD_DIR)/.progress_count

#
# compile all .c -> .o
#
$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@bash -c '\
		progress_file="$(BUILD_DIR)/.progress_count"; \
		if echo "$<" | grep -q "^$(PROJECT_DIR)/"; then \
			if [ ! -f "$$progress_file" ]; then echo 0 > "$$progress_file"; fi; \
			count=$$(cat "$$progress_file"); \
			count=$$((count + 1)); \
			echo $$count > "$$progress_file"; \
			total=$(TOTAL_PROJECT_FILES); \
			percent=$$((100 * $$count / $$total)); \
			bar_width=20; \
			filled=$$((bar_width * $$count / $$total)); \
			empty=$$((bar_width - filled)); \
			if [ $$percent -eq 100 ]; then \
				space=$$(printf "%0.s" $$(seq 1 $$empty)); \
			else \
				space=$$(printf "%0.s-" $$(seq 1 $$empty)); \
			fi; \
			bar=$$(printf "%0.s#" $$(seq 1 $$filled)); \
			printf "\r\033[K\033[1;36mProgress:\033[0m [\033[1;32m%s\033[0m\033[1;30m%s\033[0m] \033[1;33m%d%%\033[0m (\033[1;35m%d\033[0m/\033[1;35m%d\033[0m) Compiling project file \033[1;36m%s\033[0m" "$$bar" "$$space" "$$percent" "$$count" "$$total" "$<"; \
			$(CC) $(CFLAGS) $(OPT_APP) -c $< -o $@ 2>&1 | tee /dev/stderr; \
			if [ $$count -eq $$total ]; then printf "\n"; fi; \
		else \
			echo -e "\033[1;35mCompiling core $<\033[0m"; \
			$(CC) $(CFLAGS) $(OPT_CORE) -c $< -o $@; \
		fi'

#
# link app + core objs + external 3D library
#
$(TARGET_ELF): $(CORE_OBJS) $(PROJECT_OBJS) $(LIB3D)
	@echo "Linking..."
	@$(CC) $(CORE_OBJS) $(PROJECT_OBJS) $(LIB3D) -o $@ $(LDFLAGS) -T applet.ld -Wl,-Map=$(BUILD_DIR)/output.map $(LDLIBS)
	@if [ ! -f $@ ]; then echo "Linking failed!"; exit 1; fi

postbuild: $(TARGET_ELF)
	@echo "Generating binary..."
	@$(OBJCOPY) -O binary $(TARGET_ELF) $(TARGET_FINAL_BIN)
	@echo "Generating disassembly..."
	@$(OBJDUMP) -d $(TARGET_ELF) > $(TARGET_ASM)
	@echo
	@$(SIZE) $(TARGET_ELF)
	@echo
	@$(NM) -n $(TARGET_ELF) | grep applet_entry || true
	@$(NM) -n $(TARGET_ELF) | grep main || true
	@echo
	@echo -e "\033[1;32m---- COMPILE COMPLETED ----\033[0m"
	@echo
	@$(MAKE) show-size --no-print-directory
	@cp $(TARGET_FINAL_BIN) $(FINAL_COPY_PATH) > /dev/null 2>&1 || true

show-size:
	@FILE=$(TARGET_FINAL_BIN); \
	if [ ! -f "$$FILE" ]; then \
	  echo -e "\033[1;31mFile not found: $$FILE\033[0m"; exit 1; \
	fi; \
	SIZE=$$(stat -c%s "$$FILE"); \
	FORMATTED=$$(echo $$SIZE | rev | sed -E 's/([0-9]{3})/\1,/g' | rev | sed 's/^,//'); \
	echo -e "\033[1;33m--- > Size of $$FILE is $$FORMATTED bytes\033[0m"

clean:
	@echo "Cleaning..."
	@rm -rf $(BUILD_DIR) $(TARGET_FINAL_BIN) $(TARGET_ASM)