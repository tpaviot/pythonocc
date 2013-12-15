#!/usr/bin/env python

##Copyright 2008-2013 Jelle Feringa (jelleferinga@gmail.com)
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
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>

from OCC.KBE.base import KbeObject
from OCC.TopoDS import TopoDS_Wire, TopoDS_wire


class Wire(KbeObject, TopoDS_Wire):
    def __init__(self, wire):
        '''
        '''
        assert isinstance(wire, TopoDS_wire), 'need a TopoDS_Wire, got a %s' % wire.__class__
        KbeObject.__init__(self, 'wire')
        TopoDS_Wire.__init__(self, wire)
