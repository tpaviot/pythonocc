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

class GarbageCollector(object):
    """ Garbage collector for OCC objects
    """
    def __init__(self):
        self._collected_objects = []
        
    def collect_object(self, obj_deleted):
        """ Add an object to the garbage
        """
        self._collected_objects.append(obj_deleted)
        
    def __str__(self):
        return "%i"%len(self._collected_objects)
    
    def purge(self):
        """ Purge garbage, i.e. free OCC memory
        """
        for item in self._collected_objects:
            item._kill_pointed()
        self._collected_objects = []

garbage = GarbageCollector()
