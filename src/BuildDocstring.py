#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
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
   
    
