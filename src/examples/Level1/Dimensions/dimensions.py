#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.gp import *
from OCC.AIS import *
from OCC.TopoDS import *
from OCC.Geom import Geom_Plane
from OCC.TCollection import TCollection_ExtendedString
from OCC.Utils.Construct import make_edge, make_box, find_plane_from_shape
from OCC.Utils.Common import to_string, vertex2pnt
from OCC.Utils.Topology import Topo, WireExplorer
from OCC.Display.SimpleGui import *
import math

display, start_display, add_menu, add_function_to_menu = init_display()

def dimension_from_face_edge(face, edge):
    """
    Orientation of the dimension is not perfect; sometimes it lies on top of the face
    ( in case of the top face ), sometimes overlaps the faces ( the other 2 faces )

    :param face:
    :param edge:
    :return:
    """
    plane = find_plane_from_shape(face)
    #edge = edge.Reversed() if edge.Orientation() == 0 else edge
    tp = Topo(edge)
    print 'edge orientation:', edge.Orientation()
    print 'face orientation:', edge.Orientation()

    for i in WireExplorer(Topo(face).wires().next()).ordered_vertices():
        print vertex2pnt(i)

    v1, v2 = [i for i in WireExplorer(Topo(face).wires().next()).ordered_vertices()][:2]
    display.DisplayMessage(vertex2pnt(v1), 'v1')
    display.DisplayMessage(vertex2pnt(v2), 'v2')

    _dir = gp_Dir( gp_Vec(vertex2pnt(v1),vertex2pnt(v2)) )
    angle = math.degrees(_dir.Angle(gp_Dir(0, 0, 1)))
    dim_orient = AIS_TOD_Horizontal if angle < 89.0 else AIS_TOD_Vertical
    print 'angle:', angle

    rd2 = AIS_LengthDimension(TopoDS_Shape(v1),
        TopoDS_Shape(v2),
        plane.GetHandle(), 1, to_string('edge size: 1')
    )

    #rd2.SetTypeOfDist(dim_orient)
    #rd2.SetPosition(gp_Pnt())
    display.Context.Display(rd2.GetHandle())
    display.DisplayShape(face)


def radius_dimension(event=None):
    display.EraseAll()
    c = gp_Circ(gp_Ax2(gp_Pnt(200.,200.,0.),gp_Dir(0.,0.,1.)), 80)
    ec = make_edge(c)
    ais_shp = display.DisplayShape(ec)
    rd = AIS_RadiusDimension(ec,80,to_string("radius"))
    rd.SetArrowSize(12)
    display.Context.Display(rd.GetHandle())
    display.FitAll()

def length_dimension(event=None):
    display.EraseAll()
    box = make_box(1,1,1)
    tp = Topo(box)
    vertex = tp.vertices().next()
    faces = [ i for i in tp.faces_from_vertex(vertex) ]
    edges = [ i for i in tp.edges_from_vertex(vertex) ]

    for a,b in zip(faces, edges):
        dimension_from_face_edge(a,b)
    display.FitAll()

if __name__ == '__main__':
    add_menu('dimension')
    add_function_to_menu('dimension', radius_dimension)
    add_function_to_menu('dimension', length_dimension)
    display.EnableAntiAliasing()
    start_display()
