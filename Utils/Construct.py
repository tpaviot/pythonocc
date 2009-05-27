from __future__ import with_statement
# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2008 Jelle Feringa (jelleferinga@gmail.com)
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

'''

This modules makes the construction of geometry a little easier

'''

from OCC.BRepBuilderAPI import *

from OCC.Utils.Context import assert_isdone

def make_face(*args):
    face = BRepBuilderAPI_MakeFace( *args )
    with assert_isdone(face, 'failed to produce face'):
        return face.Face()

def make_edge(*args):
    edge = BRepBuilderAPI_MakeEdge(*args)
    with assert_isdone(edge, 'failed to produce edge'):
        return edge.Edge()

def make_vertex(*args):
    vert = BRepBuilderAPI_MakeVertex(*args)
    with assert_isdone(vert, 'failed to produce vertex'):
        return vert.Vertex()

def make_wire(*args):
    wire = BRepBuilderAPI_MakeWire(*args)
    with assert_isdone(wire, 'failed to produce wire'):
        return wire.Wire()

def add_wire_to_face(face, wire, reverse=False):
    '''
    apply a wire to a face
    use reverse to set the orientation of the wire to opposite
    @param face:
    @param wire:
    @param reverse:
    '''
    face = BRepBuilderAPI_MakeFace(face)
    if reverse:
        wire.Reverse()
    face.Add(wire)
    return face.Face()
