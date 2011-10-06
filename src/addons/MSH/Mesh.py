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

''' This module provides an high level API built on top of BRepMesh and SMESH low level
objects. '''

import random
from math import sqrt as math_sqrt
from OCC.Utils.Topology import *
from OCC.TopoDS import *
from OCC.TopAbs import *
# to determine default precision
from OCC.Bnd import *
from OCC.BRepBndLib import *
from OCC.gp import *

# For OCC Triangle Mesh
from OCC.BRepMesh import *
from OCC.BRep import *
from OCC.BRepTools import *
from OCC.TopLoc import *
from OCC.Poly import *
from OCC.BRepBuilderAPI import *
from OCC.StdPrs import *
from OCC.TColgp import *
from OCC.Poly import *
# for debugging and optimization
import time

class MeshBase(object):
    ''' This class is an abstract class and gathers common properties/methods for the different types
    of available meshes.'''
    def __init__(self,DISPLAY_LIST=False):
        self._shape = None
        self._precision = 0.0 #by default
        self._vertices = []
        self._faces = []
        self._normals = []
        self._uvs = []
        self._DISPLAY_LIST = DISPLAY_LIST
    
    def set_shape(self,shape):
        ''' @param shape: the TopoDS_Shape to mesh
        '''
        self._shape = shape
        self.compute_default_precision()
    
    def get_vertices(self):
        ''' Returns the list of vertices coordinates
        '''
        return self._vertices
    
    def get_normals(self):
        return self._normals
    
    def get_nb_nodes(self):
        return len(self._vertices)

    def get_nb_faces(self):
        return len(self._faces)
    
    def get_faces(self):
        ''' Returns the face indices list
        '''
        return self._faces
    
    def get_precision(self):
        return self._precision
    
    def set_precision(self, precision):
        self._precision = precision
        
    def compute_default_precision(self):
        ''' The default precision is a float number. It's computed from the bounding box of the shape.
        default_precision = bounding_box_diagonal / 10.
        This default precision enables to quickly mesh a shape.
        '''
        # from this shape, determine a default precision from the bounding box
        bbox = Bnd_Box()
        BRepBndLib_Add(self._shape, bbox)
        x_min,y_min,z_min,x_max,y_max,z_max = bbox.Get()
        # compute diagonal length
        diagonal_length = gp_Vec(gp_Pnt(x_min,y_min,z_min),gp_Pnt(x_max,y_max,z_max)).Magnitude()
        #print diagonal_length
        self._precision = diagonal_length / 20.
        return True
    
    def get_shape(self):
        ''' @return: the TopoDS shape to mesh
        '''
        return self._shape

class QuickTriangleMesh(MeshBase):
    ''' A mesh based on the BRepMesh OCC classes.
    '''
    def __init__(self,DISPLAY_LIST = False, compute_uv = False):
        MeshBase.__init__(self,DISPLAY_LIST)
        self._compute_uv = compute_uv
    
    def triangle_is_valid(self, P1,P2,P3):
        ''' check wether a triangle is or not valid
        '''
        V1 = gp_Vec(P1,P2)
        V2 = gp_Vec(P2,P3)
        V3 = gp_Vec(P3,P1)
        if V1.SquareMagnitude()>1e-10 and V2.SquareMagnitude()>1e-10 and V3.SquareMagnitude()>1e-10:
            V1.Cross(V2)
            if V1.SquareMagnitude()>1e-10:
                return True
            else:
                print 'Not valid!'
                return False
        else:
            print 'Not valid!'
            return False

    def compute(self):
        ''' Compute the mesh
        '''
        print 'start mesh computation...'
        init_time = time.time()
        if self._shape is None:
            raise "Error: first set a shape"
            return False
        BRepMesh_Mesh(self._shape,self.get_precision())
        points = []
        faces = []
        normals = []
        uv = []
        faces_iterator = Topo(self._shape).faces()
        
        for F in faces_iterator:
            face_location = F.Location()
            facing = BRep_Tool_Triangulation(F,face_location).GetObject()
            tab = facing.Nodes()
            if self._compute_uv:
                uvnodes = facing.UVNodes()
            tri = facing.Triangles()
            # Compute normal
            the_normal = TColgp_Array1OfDir(tab.Lower(), tab.Upper())
            StdPrs_ToolShadedShape_Normal(F, Poly_Connect(facing.GetHandle()), the_normal)
            if self._compute_uv:
                umin, umax, vmin, vmax = BRepTools_uvbounds(F)
                dUmax = umax - umin
                dVmax = vmax - vmin
            for i in range(1,facing.NbTriangles()+1):
                trian = tri.Value(i)
                if F.Orientation() == TopAbs_REVERSED:
                    index1, index3, index2 = trian.Get()                 
                else:
                    index1, index2, index3 = trian.Get()     
                # Transform points
                P1 = tab.Value(index1).Transformed(face_location.Transformation())
                P2 = tab.Value(index2).Transformed(face_location.Transformation())
                P3 = tab.Value(index3).Transformed(face_location.Transformation())
                
                p1_coord = P1.XYZ().Coord()
                p2_coord = P2.XYZ().Coord()
                p3_coord = P3.XYZ().Coord()
                if self.triangle_is_valid(P1, P2, P3):
                    if not self._DISPLAY_LIST:
                        points.append(p1_coord)
                        points.append(p2_coord)   
                        points.append(p3_coord)
                    else:
                        if not (p1_coord in points):
                            points.append(p1_coord)
                        if not (p2_coord in points):
                            points.append(p2_coord)
                        if not (p3_coord in points):
                            points.append(p3_coord)
                        faces.append(points.index(p1_coord))
                        faces.append(points.index(p2_coord))
                        faces.append(points.index(p3_coord))
                    normals.append([the_normal(index1).X(),the_normal(index1).Y(), the_normal(index1).Z()])
                    normals.append([the_normal(index2).X(),the_normal(index2).Y(), the_normal(index2).Z()])
                    normals.append([the_normal(index3).X(),the_normal(index3).Y(), the_normal(index3).Z()])
        self._vertices = points
        if not self._DISPLAY_LIST:
            self._faces = range(len(self._vertices))
        else:
            self._faces = faces
        self._normals = normals
        print 'Finished mesh computation in %fs'%(time.time()-init_time)
        return True

class MEFISTOTriangleMesh(MeshBase):
    ''' A mesh based on the MEFISTO2 triangle mesher.
    '''
    def __init__(self):
        from OCC.SMESH import SMESH_Gen
        from OCC.StdMeshers import StdMeshers_Regular_1D, StdMeshers_MEFISTO_2D, StdMeshers_Arithmetic1D

        MeshBase.__init__(self)
        self._mesh = None
        self._mesh_data_source = None
    
    def get_mesh(self):
        return self._mesh
    
    def get_nb_faces(self):
        ''' @return: the number of faces (triangles in this case)
        '''
        return self._mesh_data_source.NbFaces()
    
    def get_nb_nodes(self):
        ''' @return: the number of nodes(vertices) of the mesh
        '''
        return self._mesh_data_source.NbNodes()

    def build_lists(self):
        ''' build 3 lists: faces, normals, vertices
        '''
        init_time = time.time()
        # will return 3 lists
        vertices = []
        faces = []
        face_normals=[]
        vertex_normals = []
        normals = []
        
        #print v.GetNodeNormal()
        #dict_vert_normals={}
        # first, build nodes list:
        #nodes_this = []
        #for i in range(self.get_nb_nodes()):
        #    node = self._mesh_data_source.nodeValue(i)
        #    vertices.append([node.X(),node.Y(), node.Z()])
        #    nodes_this.append(node.this)
        # Traverse faces for this triangular mesh
        j = 0
        for i in range(self.get_nb_faces()):
            triangle_face = self._mesh_data_source.faceValue(i)
            # First node
            node_0 = triangle_face.GetNode(0)
            n0_X = node_0.X()
            n0_Y = node_0.Y()
            n0_Z = node_0.Z()
            vertices.append([n0_X,n0_Y,n0_Z])
            # Second node
            node_1 = triangle_face.GetNode(1)
            n1_X = node_1.X()
            n1_Y = node_1.Y()
            n1_Z = node_1.Z()
            vertices.append([n1_X,n1_Y,n1_Z])          
            # Third node
            node_2 = triangle_face.GetNode(2)
            n2_X = node_2.X()
            n2_Y = node_2.Y()
            n2_Z = node_2.Z()
            vertices.append([n2_X,n2_Y,n2_Z])
            # append faces indices
            faces.append([j,j+1,j+2])
            j = j + 3
            # Compute normal for this face
            # the cross product has to be computed
            u0 = n1_X-n0_X
            u1 = n1_Y-n0_Y
            u2 = n1_Z-n0_Z
            v0 = n2_X-n0_X
            v1 = n2_Y-n0_Y
            v2 = n2_Z-n0_Z
            n_x = u1*v2-u2*v1
            n_y = u2*v0-u0*v2
            n_z=  u0*v1-u1*v0
            n_magnitude = math_sqrt(n_x*n_x+n_y*n_y+n_z*n_z)
            #print n_magnitude
            #P0 = gp_XYZ(n0_X,n0_Y,n0_Z)
            #P1 = gp_XYZ(n1_X,n1_Y,n1_Z)
            #P2 = gp_XYZ(n2_X,n2_Y,n1_Z)
            
            #face_normal = (P1-P0)^(P2-P0)
            #if face_normal.Modulus()>0:
            #    face_normal.Normalize()
            #fn = [face_normal.X(),face_normal.Y(),face_normal.Z()]
            if n_magnitude>0:
                fn = [n_x/n_magnitude, n_y/n_magnitude, n_z/n_magnitude]
            face_normals.append(fn)
            face_normals.append(fn)
            face_normals.append(fn)
        #print faces
        #faces = range(self.get_nb_faces()*3)
        #print faces
        print "build_list method performed in %f seconds."%(time.time()-init_time)
        self._vertices = vertices
        self._faces = faces
        self._face_normals = face_normals
        return True#return vertices, faces, face_normals
    

    def build_lists_shared_vertices(self):
        ''' build 3 lists: faces, normals, vertices
        '''
        # will return 3 lists
        #vertices = []
        faces = []
        face_normals=[]
        vertex_normals = []
        normals = []
        #dict_vert_normals={}
        # build the vertex list
        # each vertex is added to the list according to its Mesh ID
        vertices = range(self.get_nb_nodes())
        vertex_normals = range(self.get_nb_nodes())
        
        v = SMESH_MeshVSLink(self.get_mesh())
        # first, build nodes list:
        #nodes_this = []
        for i in range(self.get_nb_nodes()):
            node = self._mesh_data_source.nodeValue(i)
            node_id = node.GetID()
            vertices[node_id-1] = [node.X(),node.Y(), node.Z()]
            # At the same time, build vertex normals list
            #bool_var, node_normal_x, node_normal_y, node_normal_z = v.GetNormal(node_id,3)
            #vertex_normals[node_id-1] = [node_normal_x, node_normal_y, node_normal_z]
            #vertices.append([node.X(),node.Y(), node.Z()])
            #nodes_this.append(node.this)
        # Traverse faces for this triangular mesh
        self._hashes = []
        for i in range(self.get_nb_faces()):
            triangle_face = self._mesh_data_source.faceValue(i)
            triangle_face_id = triangle_face.GetID()

            node_0_index = triangle_face.GetNode(0).GetID()-1
            node_1_index = triangle_face.GetNode(1).GetID()-1
            node_2_index = triangle_face.GetNode(2).GetID()-1
            # Try de check whether the face is FORWARD or REVERSED
            #try:
                #print triangle_face_id
                #topods_shape = self._mesh_data_source.IndexToShape(triangle_face_id)
                #print topods_shape.ShapeType()
                #print 'oui'
                #if not hash(topods_shape) in self._hashes:
                #    self._hashes.append(hash(topods_shape))
            #print hash(topods_shape)
            #    if topods_shape.Orientation() == TopAbs_REVERSED:
            #        faces.append([node_2_index,node_1_index,node_0_index])
            #        print 'REVERSED!!'
            #    else:
            #        faces.append([node_0_index,node_1_index,node_2_index])
            #except:
                #print 'bozozo'
            into = random.randint(1,2)
            if int==1:    
                faces.append([node_0_index,node_1_index,node_2_index])
            else:
                faces.append([node_2_index,node_1_index,node_0_index])
            # Compute normal for this face
            true_or_false, n_x,n_y,n_z = v.GetNormal(triangle_face_id,3)
            face_normals.append([n_x,n_y,n_z])
        #for i in range(self.get_nb_faces()):
        #    print face_normals[i]
        # Compute vertex normals
        print self._hashes
        self._vertices = vertices
        self._faces = faces
        self._face_normals = face_normals
        return True
            
    def compute(self):
        aMeshGen = SMESH_Gen()
        aMesh = aMeshGen.CreateMesh(0,True)
        # 1D
        an1DHypothesis = StdMeshers_Arithmetic1D(0,0,aMeshGen)#discretization of the wire
        # The smallest and longer distance between edges is computed from the _precision value
        min_dist = self.get_precision()/3.
        max_dist = self.get_precision()*3.
        an1DHypothesis.SetLength(min_dist,False) #the smallest distance between 2 points
        an1DHypothesis.SetLength(max_dist,True) # the longest distance between 2 points
        an1DAlgo = StdMeshers_Regular_1D(1,0,aMeshGen) # interpolation
        # 2D
        a2dAlgo = StdMeshers_MEFISTO_2D(2,0,aMeshGen) 
        aMesh.ShapeToMesh(self._shape)
        #Assign hyptothesis to mesh
        aMesh.AddHypothesis(self._shape,0)
        aMesh.AddHypothesis(self._shape,1)
        aMesh.AddHypothesis(self._shape,2)
        #Compute the data
        aMeshGen.Compute(aMesh,aMesh.GetShapeToMesh())
        self._mesh = aMesh
        self._mesh_data_source = aMesh.GetMeshDS()
        #print self._mesh_data_source
        self.build_lists()
        return True

def test_quicktrianglemesh():
    import time
    from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
    box_shape = BRepPrimAPI_MakeBox(1,1,1).Shape()
    init_time = time.time()
    a_mesh = QuickTriangleMesh()
    a_mesh.set_shape(box_shape)
    a_mesh.set_precision(0.3)
    a_mesh.compute()
    print 'Number of triangles: %i'%a_mesh.get_nb_faces()
    print 'Number of vertices: %i'%a_mesh.get_nb_nodes()
    #a_mesh.build_lists_shared_vertices()
    print 'All done in %f seconds.'%(time.time()-init_time)
    #
    print "#################"
    print a_mesh.get_vertices()
    print "##############"
    print a_mesh.get_normals()
    print "################"
    print a_mesh.get_faces()


def mesh_vertices_faces_from_shape(shape, deflection=0.1):
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
    return verts, tris


def test():
    from OCC.BRepPrimAPI import *
    sphere = BRepPrimAPI_MakeSphere(1).Shape()
    verts, faces = mesh_vertices_faces_from_shape(sphere)

    import time
    from OCC.Display.SimpleGui import *
    display, start_display, add_menu, add_function_to_menu = init_display()
    from OCC.BRepPrimAPI import *
    box_shape = BRepPrimAPI_MakeBox(1,1,1).Shape()
    init_time = time.time()
    a_mesh = QuickTriangleMesh()
    a_mesh.set_shape(box_shape)
    a_mesh.set_precision(0.3)
    a_mesh.compute()
    print 'Number of triangles: %i'%a_mesh.get_nb_faces()
    print 'Number of vertices: %i'%a_mesh.get_nb_nodes()
    #a_mesh.build_lists_shared_vertices()
    print 'All done in %f seconds.'%(time.time()-init_time)
    # Display
    from Visualization import MeshVisualization
    my_visu = MeshVisualization(a_mesh.get_mesh())
    my_visu.set_display(display)
    #display.DisplayShape(res)
    my_visu.perform()
    start_display()

if __name__=='__main__':
    test_quicktrianglemesh()        
