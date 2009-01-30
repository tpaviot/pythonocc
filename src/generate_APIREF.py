# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@supmeca.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

#
# This script generates the API Reference using either pydoc or epydoc
#
import sys
import os
from environment import VERSION

DOC_SYSTEM = "epydoc" #or "epydoc"

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
    os.system('C:/Developpement/Python24/Scripts/epydoc.py C:/Developpement/Minerva/pythonOCC_SWIG/build/lib.win32-2.4/OCC -o ./APIREF0.96 --html --no-sourcecode  --name="pythonOCC 0.96 API reference"')# --exclude="_*"')
    
    