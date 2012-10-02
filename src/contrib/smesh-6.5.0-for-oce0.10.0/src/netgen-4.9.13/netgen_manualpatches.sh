#!/bin/bash -noprofile

 # see netgen.sh install script in <install wizard dir> /config_files/

# to make nglib only:
# -SUBDIRS = libsrc ng nglib tutorials doc windows
# +SUBDIRS = libsrc nglib #ng tutorials doc windows
# -e required on Mac OS X, not on linux on which sed behaves less strict
sed -i'' "s/ng nglib/nglib #ng/g" Makefile.in 
#sed -i'' "s/ng nglib/ng nglib #/g" Makefile.in 

# patch for gcc 4.3
sed -i '' "s%#include <string>%#include <string>\n#include <string.h>%g" libsrc/include/mystdlib.h 
#Note: on linux '' should be ommited in the sed command 

# patch to build netgen with oce (opencascade community edition) instead of with Opencascade 
sed -i '' "s/occdir\/inc/occdir\/include\/oce/g" configure




