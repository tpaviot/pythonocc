#!/usr/bin/env python

##Copyright 2009-2013 Thomas Paviot (tpaviot@gmail.com)
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

import os
import warnings

from OCC.StlAPI import *
from OCC.TopoDS import TopoDS_Shape


class STLImporter(object):
    def __init__(self, filename):
        self.set_filename(filename)
        self._shape = None

    def set_filename(self, filename):
        if not os.path.isfile(filename):
            print "STEPImporter initialization Error: file %s not found." % filename
            self._filename = None
        else:
            self._filename = filename

    def read_file(self):
        """
        Read the STEP file and stores the result in a TopoDS_Shape
        """
        stl_reader = StlAPI()
        shp = TopoDS_Shape()
        stl_reader.Read(shp, self._filename)
        self._shape = shp

    def get_shape(self):
        if self._shape.IsNull():
            raise Assertion("Error: the shape is NULL")
        else:
            return self._shape


class STLExporter(object):
    """ A TopoDS_Shape to STL exporter. Default mode is ASCII
    """
    def __init__(self, filename=None, ASCIIMode=False):
        self._shape = None  # only one shape can be exported
        self._ASCIIMode = ASCIIMode
        self.set_filename(filename)

    def set_shape(self, aShape):
        '''
        only a single shape can be exported...
        '''
        #First check the shape
        if aShape.IsNull():
            raise AssertionError("STLExporter Error: the shape is NULL")
        else:
            self._shape = aShape

    def set_filename(self, filename):
        if os.path.isfile(filename):
            warnings.warn('will be overwriting file: %s' % filename)
        self._filename = filename

    def write_file(self):
        stl_writer = StlAPI()
        stl_writer.Write(self._shape, self._filename, self._ASCIIMode)
