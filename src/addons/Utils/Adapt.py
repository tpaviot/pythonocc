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
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.BRepAdaptor import *


def adapt_edge_to_curve(edg):
    '''
    returns a curve adaptor from an edge
    @param edg: TopoDS_Edge
    '''
    return BRepAdaptor_Curve(edg)


def adapt_edge_to_hcurve(edg):
    c = BRepAdaptor_HCurve()
    c.ChangeCurve().Initialize(edg)
    return c
