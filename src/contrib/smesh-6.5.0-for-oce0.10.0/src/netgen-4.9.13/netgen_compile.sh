#!/bin/bash 


#
# netgen version
#
NETGEN_VERSION=4.9.13

# configure
NETGEN_CONFIGURE_OPTIONS="--with-occ=${OCEROOT} --prefix=${PWD}/install/"  #--disable-nglib
NETGEN_CONFIGURE_OPTIONS="${NETGEN_CONFIGURE_OPTIONS}"
#NETGEN_CONFIGURE_OPTIONS="${NETGEN_CONFIGURE_OPTIONS} --with-tcl=${TCLHOME}/lib --with-tk=${TCLHOME}/lib --with-tclinclude=${TCLHOME}/include"

if test `uname -m` = "x86_64" ; then
    ./configure ${NETGEN_CONFIGURE_OPTIONS} CXXFLAGS='-O2 -m64' >> CONFIGURE.LOG 
else
    ./configure ${NETGEN_CONFIGURE_OPTIONS} CXXFLAGS=-O2 >> CONFIGURE.LOG 
fi

# compile
make

# install
# make install 

mkdir install
mkdir install/lib
mkdir install/lib/LINUX
cp libsrc/csg/.libs/libcsg.a install/lib/LINUX
cp libsrc/general/.libs/libgen.a install/lib/LINUX
cp libsrc/geom2d/.libs/libgeom2d.a install/lib/LINUX
cp libsrc/gprim/.libs/libgprim.a install/lib/LINUX
cp libsrc/interface/.libs/libinterface.a install/lib/LINUX
cp libsrc/linalg/.libs/libla.a install/lib/LINUX
cp libsrc/meshing/.libs/libmesh.a install/lib/LINUX
cp libsrc/occ/.libs/libocc.a install/lib/LINUX
cp libsrc/stlgeom/.libs/libstl.a install/lib/LINUX
cp nglib/.libs/libnglib.* install/lib/LINUX # copy shared lib (.dylib or .so)

mkdir install/include
cp nglib/nglib.h libsrc/general/*.hpp libsrc/csg/*.hpp libsrc/geom2d/*.hpp \
    libsrc/gprim/*.hpp libsrc/linalg/*.hpp libsrc/meshing/*.hpp \
    libsrc/occ/*.hpp libsrc/include/mydefs.hpp \
    libsrc/stlgeom/*.hpp libsrc/include/mystdlib.h \
    install/include



