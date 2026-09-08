### changes to make ###
Makefile 
    -> change the projectname: PROJECTNAME := <your projectname>
    -> final copy: FINAL_COPY_PATH := <path to your output file>/$(PROJECTNAME).app
    -> if ou change your folder structure: CORE_DIR := <path to core>/_coreapi_
    -> OPT_CORE := -Ofast 
       OPT_APP := -Ofast

### applet.ld wizard ###
Run this from the project folder to open the GUI generator:

    python3 tools/ld_wizard.py

Use the terminal wizard instead:

    python3 tools/ld_wizard.py --cli

Preview from the terminal without writing:

    python3 tools/ld_wizard.py --cli --dry-run

Set a different output path:

    python3 tools/ld_wizard.py --output /tmp/applet.ld

Build the native Linux GTK version:

    make -C tools

Run the GTK version:

    ./tools/ld_wizard_gtk

Clean the GTK build:

    make -C tools clean

If GTK headers are missing on Debian/Ubuntu:

    sudo apt install libgtk-3-dev
