from __future__ import with_statement
from OCC.ShapeFix import *
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
from OCC.KBE.TypesLookup import GeometryLookup, ShapeToTopology

def make_solid(*args):
    sld = BRepBuilderAPI_MakeSolid( *args )
    with assert_isdone(sld, 'failed to produce solid'):
        result = sld.Solid()
        sld.Delete()
        return result

def make_shell(*args):
    shp = BRepBuilderAPI_MakeShape( *args )
    with assert_isdone(shell, 'failed to produce shape'):
        result = shp.Shape()
        shp.Delete()
        return result

def make_shell(*args):
    shell = BRepBuilderAPI_MakeShell( *args )
    with assert_isdone(shell, 'failed to produce shell'):
        result = shell.Shell()
        shell.Delete()
        return result
    
def make_face(*args):
    face = BRepBuilderAPI_MakeFace( *args )
    with assert_isdone(face, 'failed to produce face'):
        result = face.Face()
        face.Delete()
        return result

def make_edge(*args):
    edge = BRepBuilderAPI_MakeEdge(*args)
    with assert_isdone(edge, 'failed to produce edge'):
        result = edge.Edge()
        edge.Delete()
        return result

def make_vertex(*args):
    vert = BRepBuilderAPI_MakeVertex(*args)
    with assert_isdone(vert, 'failed to produce vertex'):
        result = vert.Vertex()
        vert.Delete()
        return result
        

def make_wire(*args):
    wire = BRepBuilderAPI_MakeWire(*args)
    with assert_isdone(wire, 'failed to produce wire'):
        result = wire.Wire()
        wire.Delete()
        return result

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
    result = face.Face()
    face.Delete()
    return result

def sew_shapes( *shapes ):
#    sew = BRepBuilderAPI_Sewing(tolerance, True, True, True, False)
#    sew = BRepBuilderAPI_Sewing(1e-3, True, False, False, False)
    sew = BRepBuilderAPI_Sewing(1e-1)
    for shp in shapes:
        if isinstance(shp, list):
            for i in shp:
                sew.Add(i)
        else:
            sew.Add(shp)
    sew.Perform()
    
    print 'n degenerated shapes',sew.NbDegeneratedShapes()
    print 'n deleted faces:',sew.NbDeletedFaces()
    print 'n free edges',sew.NbFreeEdges()
    print 'n multiple edges:',sew.NbMultipleEdges()
    
    result = sew.SewedShape()
    sew.Delete()
    return result

def fix_shape(shp, tolerance=1e-3):
    te = ShapeToTopology()
    fix = ShapeFix_Shape(shp)
#    fix.SetMaxTolerance(tolerance)
    fix.LimitTolerance(tolerance)
    fix.Perform()
    return fix.Shape()

def fix_face(shp, tolerance=1e-3):
    fix = ShapeFix_Face(shp)
    fix.SetMaxTolerance(tolerance)
    fix.Perform()
    return fix.Face()


