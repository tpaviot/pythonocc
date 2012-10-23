# init the library collection
AC_INIT([GEOM],[4.1.4.1]) 

# sanity check for source tree
AC_CONFIG_SRCDIR(src/GEOMAlgo/GEOMAlgo_Algo.cpp)

# set auxiliary directory for the files 
# config.guess config.sub depcomp install-sh ltmain.sh missing, ...
AC_CONFIG_AUX_DIR([build-aux])

AM_INIT_AUTOMAKE([-Wall -Werror foreign tar-ustar]) 

# check for c++ compiler
AC_PROG_CXX 

# check for libtool
AC_PROG_LIBTOOL 

# check for 64 bits platform
AC_MSG_CHECKING([if platform is 64-bit])
AC_TRY_COMPILE( [], 
 [int array[((int)sizeof(void*))-6];],
 [AC_MSG_RESULT([yes]); CPPFLAGS="$CPPFLAGS -D_OCC64"; case $platform in Linux*) CPPFLAGS="$CPPFLAGS -m64";; esac],
 [AC_MSG_RESULT([no])] ) 

AC_CONFIG_HEADERS([config.h]) 
AC_LANG_PUSH([C++]) 
# when using limits without .h CHAR_BIT is not found
AC_CHECK_HEADERS([limits.h iostream fstream iomanip]) 
AC_LANG_POP 

# set the output files
AC_CONFIG_FILES([Makefile]) 

# make sure output files are put out :-)
AC_OUTPUT 