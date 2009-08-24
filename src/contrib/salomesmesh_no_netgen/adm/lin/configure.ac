# init the library collection
AC_INIT([SMESH],[5.1.2]) 

AC_CONFIG_MACRO_DIR([m4])
# sanity check for source tree
AC_CONFIG_SRCDIR(../../src/Controls/SMESH_Controls.cpp)

# set auxiliary directory for the files 
# config.guess config.sub depcomp install-sh ltmain.sh missing, ...
AC_CONFIG_AUX_DIR([build-aux])

AM_INIT_AUTOMAKE([-Wall -Werror foreign tar-ustar]) 

# check for c++ compiler
AC_PROG_CXX 

# check for fortran (f77) compiler
AC_PROG_FC
AC_FC_SRCEXT(for)
AC_FC_LIBRARY_LDFLAGS
AC_FC_WRAPPERS
AC_PROG_F77([gfortran])

# check for libtool
AC_PROG_LIBTOOL 

AC_CONFIG_HEADERS([config.h]) 
AC_LANG_PUSH([C++]) 
# when using limits without .h CHAR_BIT is not found
AC_CHECK_HEADERS([limits.h iostream fstream iomanip]) 
AC_LANG_POP 

# set the output files
AC_CONFIG_FILES([Makefile]) 

# make sure output files are put out :-)
AC_OUTPUT 
