# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2011 Jelle Feringa (jelleferinga@gmail.com)
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

'''

This modules makes the construction of geometry a little easier
with the help of the GEOM library.

'''

from __future__ import with_statement
import sys

try:
    from OCC.GEOMAlgo import GEOMAlgo_Splitter
except ImportError:
    print "GEOM wrapper is necesary to access advanced constructs."
    sys.exit(0)

def splitter(shape, profile):
    '''split a *shape* using a *profile*
    :returns the splitted shape
    '''
    splitter = GEOMAlgo_Splitter()
    splitter.AddShape(shape)
    splitter.AddTool(profile)
    splitter.Perform()
    splitter_shape = splitter.Shape()
    return splitter_shape

