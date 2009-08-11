from OCC.BRepPrimAPI import *
from OCC.TopoDS import *
 
from OCC.Utils.Topology import Topo, WireExplorer

import unittest

class TestTopology(unittest.TestCase):
    
    def setUp(self):
        self.topo = Topo(BRepPrimAPI_MakeBox(10,10,10).Shape())
        
    def test_nested_iteration(self):
        '''check nested looping'''
        for f in self.topo.faces():
            for e in self.topo.edges():
                self.assert_( isinstance(f, TopoDS_Face) )
                self.assert_( isinstance(e, TopoDS_Edge) )
                
    def test_kept_reference(self):
        '''did we keep a reference after looping several time through a list of topological entities?'''
        _tmp = []
        _faces = [i for i in self.topo.faces()]
        for f in _faces:
            _tmp.append(0==f.IsNull())
        for f in _faces:
            _tmp.append(0==f.IsNull())
        self.assert_(all(_tmp))

    
    def test_number_of_topological_entities(self):
        self.assert_(self.topo.number_of_vertices()==8)
        self.assert_(self.topo.number_of_edges()==12)
        self.assert_(self.topo.number_of_wires()==6)
        self.assert_(self.topo.number_of_faces()==6)
        self.assert_(self.topo.number_of_solids()==1)
        self.assert_(self.topo.number_of_comp_solids()==0)
        self.assert_(self.topo.number_of_compounds()==0)
        
#===============================================================================
# EDGE <-> FACE
#===============================================================================

    def test_edge_face(self): 
        edg = self.topo.edges().next()
        face = self.topo.faces().next()
        faces_from_edge = [i for i in self.topo.faces_from_edge(edg)]
        self.assert_( len(faces_from_edge) == self.topo.number_of_faces_from_edge(edg) )
        edges_from_face = [i for i in self.topo.edges_from_face(face)]
        self.assert_( len(edges_from_face) == self.topo.number_of_edges_from_face(face) )

#===============================================================================
# EDGE <-> WIRE
#===============================================================================

    def test_edge_wire(self): 
        edg = self.topo.edges().next()
        wire = self.topo.wires().next()
        wires_from_edge = [i for i in self.topo.wires_from_edge(edg)]
        self.assert_( len(wires_from_edge) == self.topo.number_of_wires_from_edge(edg) )
        edges_from_wire = [i for i in self.topo.edges_from_wire(wire)]
        self.assert_( len(edges_from_wire) == self.topo.number_of_edges_from_wire(wire) )

#===============================================================================
# VERTEX <-> EDGE
#===============================================================================

    def test_vertex_edge(self):
        vert = self.topo.vertices().next()
        verts_from_edge = [i for i in self.topo.vertices_from_edge(vert)]
        self.assert_( len(verts_from_edge) == self.topo.number_of_vertices_from_edge(vert) )
        edges_from_vert = [ i for i in self.topo.edges_from_vertex(vert)]
        self.assert_( len(edges_from_vert) ==  self.topo.number_of_edges_from_vertex(vert) )
      
#===============================================================================
# VERTEX <-> FACE
#===============================================================================

    def test_vertex_face(self):
        vert = self.topo.vertices().next()
        face = self.topo.faces().next()
        faces_from_vertex = [i for i in self.topo.faces_from_vertex(vert)]
        self.assert_( len(faces_from_vertex) == self.topo.number_of_faces_from_vertex(vert) )   
        verts_from_face = [i for i in self.topo.vertices_from_face(face)]
        self.assert_( len(verts_from_face) == self.topo.number_of_vertices_from_face(face) )
        
#===============================================================================
# TEST POINTERS OUT OF SCOPE            
#===============================================================================
    
    def test_edges_out_of_scope(self):
        face = self.topo.faces().next()
        _edges = []
        for edg in Topo(face).edges():
            _edges.append(edg)
        for edg in _edges:
            self.assert_(edg.IsNull() == False)
                    
    def test_wires_out_of_scope(self):
        face = self.topo.wires().next()
        _edges = []
        for edg in WireExplorer(face).ordered_edges():
            _edges.append(edg)
        for edg in _edges:
            self.assert_(edg.IsNull() == False)
    

if __name__ == "__main__":
    unittest.main()
   