# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
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

# This module enables to convert a TopoDS_Shape (for instance a shape) to another
# topological object (Geom_Plane, Geom_Cylinder, gp_pnt etc.)

from OCC.TopoDS import *
from Explorer import HLExplorer
from OCC.BRep import *
from OCC.Geom import *
from OCC.gp import *
from OCC.TopAbs import *
import Checker

def face_to_Geom_Plane(face):
    ''' Returns a Geom_Plane if ok, raise error otherwise
    '''
    if not face.ShapeType()==TopAbs_FACE:
        print '%s is not a TopAbs_FACE. Conversion impossible'
        return None
    if Checker.face_is_plane(face):
        hs = BRep_Tool().Surface(face)
        downcast_result = Handle_Geom_Plane().DownCast(hs)
        return downcast_result.GetObject()
    else:
        print 'The face %s can not be converted to a plane'%face
        return None

def vertex_to_gp_Pnt(vertex):
    ''' Returns a gp_Pnt from a TopoDS_Shape that is a vertex
    '''
    if vertex.ShapeType()==TopAbs_VERTEX:
        pnt = BRep_Tool().Pnt(vertex)
        return pnt
    else:
        print "%s is not a vertex. Conversion not possible"
        return None

if __name__=='__main__':
    from OCC.BRepPrimAPI import *
    from OCC.Utils.Topology import *
    cyl_shape = BRepPrimAPI_MakeCylinder(100,40).Shape() 
    for face in HLExplorer(cyl_shape).faces():
        print face_to_Geom_Plane(face)
    for vertex in HLExplorer(cyl_shape).vertices():
        print vertex_to_gp_Pnt(vertex)

 
