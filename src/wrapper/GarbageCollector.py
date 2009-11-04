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

import sys

class GarbageCollector(object):
    """ Garbage collector for OCC objects
    """
    def __init__(self):
        self._collected_objects = []
        
    def collect_object(self, obj_deleted):
        """ Add an object to the garbage
        """
        self._collected_objects.append(obj_deleted)
    
    def get_collected(self):
        return self._collected_objects
    
    def __str__(self):
        return "%i"%len(self._collected_objects)
    
    def purge(self):
        """ Purge garbage, i.e. free OCC memory.
        First pass: delete the Handle_*
        Second pass: delete the other objects
        """
        # First pass
        for elem in self._collected_objects:
            if hasattr(elem,"DownCast"): #it's an Handle_*
                # Delete only handles that have only 1 reference
                if sys.getrefcount(elem)-1 == 1: #if two references, do nothing
                    elem._kill_pointed() #This kills the Handle and decrements OCC ref. counting
        # Second pass: the other objects
        for elem in self._collected_objects:
            if not hasattr(elem,"DownCast"): #it's not an handle
                # check if there are any other reference to this object
                if sys.getrefcount(elem)-1 == 1:
                    # then check if the GetRefCount method is available (it inherits from Standard_Transient):
                    if hasattr(elem,"GetRefCount"):
                        if elem.GetRefCount() == 0: #no reference to this object, we can delete it
                            elem._kill_pointed()
                    else:
                        elem._kill_pointed()
        # Re-init the object list      
        self._collected_objects = []

garbage = GarbageCollector()
