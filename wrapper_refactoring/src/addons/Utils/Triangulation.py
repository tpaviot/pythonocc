from OCC.BRepMesh import *
from OCC.TopoDS import *

def vertices_faces_from_shape(shape, deflection=0.1):
    '''
    returns the vertices and faces of the mesh that represents the BREP
    @param shape: TopoDS_Shape
    '''
    # These arguments are *SO* random... 
    fd = BRepMesh_FastDiscret(0.1, 0.1, bbox, False, False, False, False)
    fd.Add(shape)
    n_domain, n_vert, n_edge, n_face = fd.NbDomains(), fd.NbVertices(), fd.NbEdges(), fd.NbTriangles()
    print 'number of mesh vertices, edges, triangles representing the BREP:', n_vert, n_edge, n_face 
    tris = [fd.Triangle(i) for i in range(1,fd.NbTriangles())]
    verts = [fd.Vertex(i) for i in range(1,fd.NbVertices())]

    
if __name__ == '__main__':
    from OCC.BRepPrimAPI import *
    sphere = BRepPrimAPI_MakeSphere(1).Shape()
    verts, faces = vertices_faces_from_shape(sphere)
    
    
    

    