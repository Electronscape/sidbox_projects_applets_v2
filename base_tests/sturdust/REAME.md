### changes to make ###
Makefile 
    -> change the projectname: PROJECTNAME := <your projectname>
    -> final copy: FINAL_COPY_PATH := <path to your output file>/$(PROJECTNAME).app
    -> if ou change your folder structure: CORE_DIR := <path to core>/_coreapi_
    -> OPT_CORE := -Ofast 
       OPT_APP := -Ofast
