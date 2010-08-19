##Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

#
# This script transforms the GEOM headers so that it becomes compliant with
# pythonOCC
#
import glob
import os.path

header_files = glob.glob('./inc_pythonocc/*.h*')

for header in header_files:
    path = os.path.dirname(header)
    name = os.path.basename(header)#print header
    if (name.startswith('GEOM_') or name.startswith('Handle_GEOM_')):
        # First open content
        file_content = open(header,'r').read()
        # in this content, replace "GEOM_" with "SGEOM_"
        new_content = file_content.replace('"GEOM_','"SGEOM_')
        new_content = new_content.replace('"Handle_GEOM_','"Handle_SGEOM_')
        # save this new_content to a new file:
        new_file_name = os.path.join(path,name.replace('GEOM','SGEOM'))
        fp = open(new_file_name,'w')
        fp.write(new_content)
        fp.close()
        print name,new_file_name
    elif name.startswith('GEOMImpl_'):
        # First open content
        file_content = open(header,'r').read()
        # in this content, replace "GEOM_" with "SGEOM_"
        new_content = file_content.replace('"GEOM_','"SGEOM_')
        # save this new_content to a new file:
        #new_file_name = os.path.join(path,name.replace('GEOM','SGEOM'))
        fp = open(header,'w')
        fp.write(new_content)
        fp.close()
        #print name,new_file_name
        #print new_file
        #print header
