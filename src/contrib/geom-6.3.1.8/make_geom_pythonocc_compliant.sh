# Thomas Paviot, 2011

#The GEOM_* headers from geom conflict with the GEOM_* from the OCC API
#when generating SWIG files.

#As a consequence, the geom GEOM_* headers need to be renamed to SGEOM_*
#and the GEOM dynamic library will be wrapped to SGEOM.

#As a consequence, it's necessary to :
#1. mv all GEOM_*.hxx headers to SGEOM_*.hxx
#2. replace all #include "GEOM_*.hxx" to #include "SGEOM_*"
#3 mv all Handle_GEOM_*.hxx to Handle_SGEOM_*.hxx
#4. replace all occurences of #include "Handle_GEOM_*.hxx" to
#include "Handle_SGEOM_*.hxx"


# first change all #include "SGEOM_*" occurences to #include "SGEOM_*"
cp -r ./inc ./inc_pythonocc
cd ./inc_pythonocc
for i in $(find . -type f); do sed 's/"GEOM_/"SGEOM_/g' $i > $i-tmp;mv $i-tmp $i; done
    
# do the same for Handle_GEOM_* to Handle_SGEOM_*
for i in $(find . -type f); do sed 's/Handle_GEOM_/Handle_SGEOM_/g' $i > $i-tmp;mv $i-tmp $i; done

# rename all GEOM_ headers to SGEOM_
for i in GEOM_*; do mv "$i" "S${i}"; done
    
# rename all Handle_GEOM_*.hxx headers to Handle_SGEOM_*.hxx
mv Handle_GEOM_Application.hxx Handle_SGEOM_Application.hxx
mv Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx

#done
cd ..
