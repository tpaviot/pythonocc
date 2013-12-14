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

from OCC.TopoDS import TopoDS_Shell
from OCC.Utils.Topology import Topo

from base import KbeObject, GlobalProperties


class DressUp(object):
    def __init__(self, instance):
        self.instance = instance

    def fillet_vertex_distance(self, vertex, distance):
        '''fillets 3 edges at a corner
        '''
        pass

    def fillet_edge_radius(self, edge, radius):
        '''fillets an edge
        '''
        pass

    def chamfer_vertex_distance(self, vertex, distance):
        '''chamfer 3 edges at a corner
        '''
        pass

    def chamfer_edge_angle(self, edge, angle):
        '''chamfers the faces on edge at angle
        '''
        pass

    def chamfer_edge_distance_distance(self, edge, distance_this_face, distance_other_face):
        '''chamfers the face incident on edge at a given distance
        '''
        pass


class Shell(KbeObject, TopoDS_Shell):
    _n = 0

    def __init__(self, shell):
        KbeObject.__init__(self, name='Shell #{0}'.format(self._n))
        TopoDS_Shell.__init__(self, shell)
        self.GlobalProperties = GlobalProperties(self)
        self.DressUp = DressUp(self)
        self._n += 1

    def analyse(self):
        """

        :return:
        """
        from OCC.ShapeAnalysis import ShapeAnalysis_Shell
        ss = ShapeAnalysis_Shell(self)
        if ss.HasFreeEdges():
            bad_edges = [e for e in Topo(ss.BadEdges()).edges()]
        return bad_edges

    def Faces(self):
        """

        :return:
        """
        return Topo(self, True).faces()

    def Wires(self):
        """
        :return:
        """
        return Topo(self, True).wires()

    def Edges(self):
        return Topo(self, True).edges()
