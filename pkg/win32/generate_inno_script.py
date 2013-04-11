#!/usr/bin/env python

##Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

#
# This file creates the InnoSetup script file
# according to the python version, as well as
# the pythonocc locations
#
import sys, os
sys.path.append('../../src/wrapper')
from environment import VERSION

current_dir = os.getcwd()
pythonocc_pkg_dir = current_dir
#
# Check python and pythonocc version
#
python_version_major,python_version_minor = sys.version_info[0],sys.version_info[1]
python_version_str = "%i.%i"%(python_version_major,python_version_minor)
python_version_no_dot_str = "%i%i"%(python_version_major,python_version_minor)
#
# loads template file content
#
template_file = open('pythonocc.iss.template','r').read()
#
# Find pythonocc src directory
#
os.chdir('../..')
pythonocc_src_dir = os.getcwd()
os.chdir(current_dir)
# replace @PYTHON_VERSION@ occurences with python_version_str
innosetup_script_content = template_file.replace('@PYTHON_VERSION@',python_version_str)
innosetup_script_content = innosetup_script_content.replace('@PYTHON_VERSION_NO_DOT@',python_version_no_dot_str)
innosetup_script_content = innosetup_script_content.replace('@PYTHONOCC_VERSION@',VERSION)
innosetup_script_content = innosetup_script_content.replace('@PYTHONOCC_SRC_DIR@',pythonocc_src_dir)
innosetup_script_content = innosetup_script_content.replace('@PYTHONOCC_PKG_DIR@',pythonocc_pkg_dir)
# create pythonocc innosetup file
innosetup_script_file = open('pythonocc-%s.iss'%python_version_no_dot_str,'w')
innosetup_script_file.write(innosetup_script_content)
innosetup_script_file.close()



