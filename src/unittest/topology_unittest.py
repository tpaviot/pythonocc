##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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
##
## $Revision$
## $Date$
## $Author$
## $HeadURL$

import unittest

from OCC.BRepPrimAPI import *
from OCC.TopoDS import *
from OCC.Utils.Topology import Topo, WireExplorer

class TestTopology(unittest.TestCase):
    def setUp(self):
        self.topo = Topo(BRepPrimAPI_MakeBox(10,10,10).Shape())
        
    def test_nested_iteration(self):
        '''check nested looping'''
        for f in self.topo.faces():
            for e in self.topo.edges():
                self.assertTrue( isinstance(f, TopoDS_Face) )
                self.assertTrue( isinstance(e, TopoDS_Edge) )
                
    def test_kept_reference(self):
        '''did we keep a reference after looping several time through a list of topological entities?'''
        _tmp = []
        _faces = [i for i in self.topo.faces()]
        for f in _faces:
            _tmp.append(0==f.IsNull())
        for f in _faces:
            _tmp.append(0==f.IsNull())
        self.assertTrue(all(_tmp))

    
    def test_number_of_topological_entities(self):
        self.assertTrue(self.topo.number_of_vertices()==8)
        self.assertTrue(self.topo.number_of_edges()==12)
        self.assertTrue(self.topo.number_of_wires()==6)
        self.assertTrue(self.topo.number_of_faces()==6)
        self.assertTrue(self.topo.number_of_solids()==1)
        self.assertTrue(self.topo.number_of_comp_solids()==0)
        self.assertTrue(self.topo.number_of_compounds()==0)
        
#===============================================================================
# EDGE <-> FACE
#===============================================================================

    def test_edge_face(self): 
        edg = next(self.topo.edges())
        face = next(self.topo.faces())
        faces_from_edge = [i for i in self.topo.faces_from_edge(edg)]
        self.assertTrue( len(faces_from_edge) == self.topo.number_of_faces_from_edge(edg) )
        edges_from_face = [i for i in self.topo.edges_from_face(face)]
        self.assertTrue( len(edges_from_face) == self.topo.number_of_edges_from_face(face) )

#===============================================================================
# EDGE <-> WIRE
#===============================================================================

    def test_edge_wire(self): 
        edg = next(self.topo.edges())
        wire = next(self.topo.wires())
        wires_from_edge = [i for i in self.topo.wires_from_edge(edg)]
        self.assertTrue( len(wires_from_edge) == self.topo.number_of_wires_from_edge(edg) )
        edges_from_wire = [i for i in self.topo.edges_from_wire(wire)]
        self.assertTrue( len(edges_from_wire) == self.topo.number_of_edges_from_wire(wire) )

#===============================================================================
# VERTEX <-> EDGE
#===============================================================================

    def test_vertex_edge(self):
        vert = next(self.topo.vertices())
        verts_from_edge = [i for i in self.topo.vertices_from_edge(vert)]
        self.assertTrue( len(verts_from_edge) == self.topo.number_of_vertices_from_edge(vert) )
        edges_from_vert = [ i for i in self.topo.edges_from_vertex(vert)]
        self.assertTrue( len(edges_from_vert) ==  self.topo.number_of_edges_from_vertex(vert) )
      
#===============================================================================
# VERTEX <-> FACE
#===============================================================================

    def test_vertex_face(self):
        vert = next(self.topo.vertices())
        face = next(self.topo.faces())
        faces_from_vertex = [i for i in self.topo.faces_from_vertex(vert)]
        self.assertTrue( len(faces_from_vertex) == self.topo.number_of_faces_from_vertex(vert) )   
        verts_from_face = [i for i in self.topo.vertices_from_face(face)]
        self.assertTrue( len(verts_from_face) == self.topo.number_of_vertices_from_face(face) )
        
#===============================================================================
# FACE <-> SOLID
#===============================================================================

    def test_face_solid(self):
        face = next(self.topo.faces())
        solid = next(self.topo.solids())
        faces_from_solid = [i for i in self.topo.faces_from_solids(face)]
        self.assertTrue( len(faces_from_solid) == self.topo.number_of_faces_from_solids(face) )
        solids_from_face = [i for i in self.topo.solids_from_face(face)]
        self.assertTrue( len(solids_from_face) == self.topo.number_of_solids_from_face(face) )

#===============================================================================
# WIRE <-> FACE
#===============================================================================

    def test_wire_face(self):
        wire = next(self.topo.wires())
        face = next(self.topo.faces())
        faces_from_wire = [i for i in self.topo.faces_from_wire(wire)]
        self.assertTrue( len(faces_from_wire) == self.topo.number_of_faces_from_wires(wire) )   
        wires_from_face = [i for i in self.topo.wires_from_face(face)]
        self.assertTrue( len(wires_from_face) == self.topo.number_of_wires_from_face(face) )

#===============================================================================
# TEST POINTERS OUT OF SCOPE            
#===============================================================================
    
    def test_edges_out_of_scope(self):
        face = next(self.topo.faces())
        _edges = []
        for edg in Topo(face).edges():
            _edges.append(edg)
        for edg in _edges:
            self.assertTrue(edg.IsNull() == False)
                    
    def test_wires_out_of_scope(self):
        face = next(self.topo.wires())
        _edges = []
        for edg in WireExplorer(face).ordered_edges():
            _edges.append(edg)
        for edg in _edges:
            self.assertTrue(edg.IsNull() == False)
    
def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestTopology))
   return suite

if __name__ == "__main__":
    unittest.main()
   
