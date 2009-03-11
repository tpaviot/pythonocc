#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)
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

import os, os.path
from environment import OCC_INC
  
def GetClassDocstrings(class_name):
    """
    Extract docstrings from OCC header files.
    In all .hxx files, comment line start with '//!' and are immediatly
    followed by the function prototype.
    This function return a tuple containing:
    - the docstring for the class
    - a dict with all docstrings for each member function. The keys of this
    dict are the function names.
    For example, parsing gp_Pnt.hxx file return the tuple
    ['Defines a non-persistent 3D cartesian point.',
    {'X':'For this point, returns its X coordinate.', ... }]
    """
    file_to_parse = os.path.join(OCC_INC,"%s.hxx"%class_name)
    if not os.path.isfile(file_to_parse):
        return "",{}
    f = open(file_to_parse,"r")
    docstring_bloc = 0
    current_docstring = "Documentation:\n"
    member_functions_docstring = {}
    class_docstring =""
    deb = "\n"
    while not deb == "":#EOF
        deb = f.readline()
        if deb.startswith("//!"):
            docstring_bloc += 1
            while deb.startswith("//!"):
                # remove <br>
                deb = deb.replace("<br>","")
                deb = deb.replace("//! ","")
                deb = deb.replace('"','')
                current_docstring += "%s"%deb
                deb = f.readline()
            last_line_ends_with_pattern = True
        else:
            last_line_ends_with_pattern = False
        if last_line_ends_with_pattern:
            if docstring_bloc == 1:# class docstring
                class_docstring = current_docstring
            elif docstring_bloc>1: # member function docstring
                # extracting member function name
                t = deb.split("(")
                t2 = t[0].split(" ").pop()
                function_name = t2
                i = 1
                orig_function_name = function_name
                if member_functions_docstring.has_key(function_name):#overloaded member function
                    docstr = member_functions_docstring[function_name] + '\nNext function prototype ' + current_docstring
                    member_functions_docstring[function_name] = docstr
                else:
                    member_functions_docstring[function_name]=current_docstring
                current_docstring="Documentation:\n"
    f.close()
    return class_docstring,member_functions_docstring

if __name__=="__main__":
    import time
    init = time.time()
    # class gp_Pnt
    g = GetClassDocstrings("gp_VectorWithNullMagnitude")
    final = time.time()
    print g[0]
    print g[1]
    for elem in g[1].keys():
        print elem,g[1][elem]
    print final - init
   
    
