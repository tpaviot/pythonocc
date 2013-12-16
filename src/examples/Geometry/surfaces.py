#!/usr/bin/env python

##Copyright 2009-2013 Jelle Ferina (jelleferinga@gmail.com)
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

from OCC.Utils.Common import points_to_bspline
from OCC.Utils.Construct import gp_Pnt, make_edge, make_n_sided, make_vertex
from itertools import chain

from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()


def n_sided_patch(event=None):

    # left
    pts1 = (gp_Pnt(0, 0, 0.0),
            gp_Pnt(0, 1, 0.3),
            gp_Pnt(0, 2, -0.3),
            gp_Pnt(0, 3, 0.15),
            gp_Pnt(0, 4, 0),
            )
    # front
    pts2 = (gp_Pnt(0, 0, 0.0),
            gp_Pnt(1, 0, -0.3),
            gp_Pnt(2, 0, 0.15),
            gp_Pnt(3, 0, 0),
            gp_Pnt(4, 0, 0),
            )
    # back
    pts3 = (gp_Pnt(0, 4, 0),
            gp_Pnt(1, 4, 0.3),
            gp_Pnt(2, 4, -0.15),
            gp_Pnt(3, 4, 0),
            gp_Pnt(4, 4, 1),
            )
    # right
    pts4 = (gp_Pnt(4, 0, 0),
            gp_Pnt(4, 1, 0),
            gp_Pnt(4, 2, 0.3),
            gp_Pnt(4, 3, -0.15),
            gp_Pnt(4, 4, 1),
            )

    spl1 = points_to_bspline(pts1)
    spl2 = points_to_bspline(pts2)
    spl3 = points_to_bspline(pts3)
    spl4 = points_to_bspline(pts4)

    edges = map(make_edge, [spl1, spl2, spl3, spl4])
    verts = map(make_vertex, chain(pts1, pts2, pts3, pts4))
    f1 = make_n_sided(edges, [])

    display.DisplayShape(edges)
    display.DisplayShape(verts)
    display.DisplayShape(f1, update=True)

if __name__ == '__main__':
    add_menu('surfaces')
    add_function_to_menu('surfaces', n_sided_patch)
    start_display()
