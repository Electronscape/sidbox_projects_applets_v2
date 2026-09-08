### changes to make ###
Makefile 
    -> change the projectname: PROJECTNAME := <your projectname>
    -> final copy: FINAL_COPY_PATH := <path to your output file>/$(PROJECTNAME).app
    -> if ou change your folder structure: CORE_DIR := <path to core>/_coreapi_
    -> OPT_CORE := -Ofast 
       OPT_APP := -Ofast

### applet.ld wizard ###
Run this from the project folder to generate an applet.ld safely:

    python3 tools/applet_ld_wizard.py

Preview without writing:

    python3 tools/applet_ld_wizard.py --dry-run

Write somewhere else for testing:

    python3 tools/applet_ld_wizard.py --output /tmp/applet.ld
