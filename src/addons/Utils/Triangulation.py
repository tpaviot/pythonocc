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

from OCC.BRepMesh import BRepMesh_FastDiscret


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
    tris = [fd.Triangle(i) for i in range(1, fd.NbTriangles())]
    verts = [fd.Vertex(i) for i in range(1, fd.NbVertices())]

if __name__ == '__main__':
    from OCC.BRepPrimAPI import *
    sphere = BRepPrimAPI_MakeSphere(1).Shape()
    verts, faces = vertices_faces_from_shape(sphere)
