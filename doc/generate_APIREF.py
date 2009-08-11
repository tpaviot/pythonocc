# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
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
# This script generates the API Reference using either pydoc or epydoc
#
import sys
import os
from OCC import VERSION

DOC_SYSTEM = "epydoc" #or "pydoc"

if DOC_SYSTEM == "pydoc":
    import pydoc
    import OCC
    modules = sys.modules
    root_module = modules['OCC']
    child_modules = dir(root_module)
    print child_modules
    pydoc.writedoc(OCC)
    for module in child_modules:
        if not module.startswith('_') and not(module=='VERSION'):        
            md = modules[''.join(['OCC.',module])]
            pydoc.writedoc(md)

elif DOC_SYSTEM == "epydoc":
    os.system('epydoc OCC -o ./APIREF%s --html --no-sourcecode  --graph all -v --name="pythonOCC %s API reference"'%(VERSION,VERSION))

