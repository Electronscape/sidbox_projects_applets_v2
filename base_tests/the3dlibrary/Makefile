# Static Library Makefile for SIDBOX 3D Engine

PROJECTNAME := sb3dlibrary
BUILD_DIR   := compiled
PROJECT_DIR := project

CORE_DIR := ../../_coreapi_

include $(CORE_DIR)/toolchain.mk

OPT_APP := -Ofast

TARGET_LIB := $(BUILD_DIR)/../$(PROJECTNAME).a

PROJECT_SRCS := $(shell find $(PROJECT_DIR) -type f -name '*.c')
PROJECT_OBJS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(PROJECT_SRCS))

TOTAL_PROJECT_FILES := $(words $(PROJECT_SRCS))

.PHONY: all clean prep init_progress show-size

all: prep init_progress $(TARGET_LIB)

prep:
	@echo -e "\033[1;32m############ BUILDING STATIC LIBRARY FOR SIDBOX ############\033[0m"
	@echo -e "\033[1;37;42m LIBRARY NAME : $(PROJECTNAME) \033[0m"
	@rm -rf $(BUILD_DIR)
	@mkdir -p $(BUILD_DIR)

init_progress:
	@echo 0 > $(BUILD_DIR)/.progress_count

$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@bash -c '\
		progress_file="$(BUILD_DIR)/.progress_count"; \
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
		printf "\r\033[K\033[1;36mProgress:\033[0m [\033[1;32m%s\033[0m\033[1;30m%s\033[0m] \033[1;33m%d%%\033[0m (\033[1;35m%d\033[0m/\033[1;35m%d\033[0m) Compiling \033[1;36m%s\033[0m" "$$bar" "$$space" "$$percent" "$$count" "$$total" "$<"; \
		$(CC) $(CFLAGS) $(OPT_APP) -c $< -o $@ 2>&1 | tee /dev/stderr; \
		if [ $$count -eq $$total ]; then printf "\n"; fi; \
	'

$(TARGET_LIB): $(PROJECT_OBJS)
	@echo "Archiving static library..."
	@$(AR) rcs $@ $^
	@if [ ! -f $@ ]; then echo "Library build failed!"; exit 1; fi
	@echo
	@echo -e "\033[1;32m---- LIBRARY BUILD COMPLETED ----\033[0m"
	@$(MAKE) show-size --no-print-directory

show-size:
	@FILE=$(TARGET_LIB); \
	if [ ! -f "$$FILE" ]; then \
	  echo -e "\033[1;31mFile not found: $$FILE\033[0m"; exit 1; \
	fi; \
	SIZE=$$(stat -c%s "$$FILE"); \
	FORMATTED=$$(echo $$SIZE | rev | sed -E 's/([0-9]{3})/\1,/g' | rev | sed 's/^,//'); \
	echo -e "\033[1;33m--- > Size of $$FILE is $$FORMATTED bytes\033[0m"

clean:
	@echo "Cleaning..."
	@rm -rf $(BUILD_DIR)