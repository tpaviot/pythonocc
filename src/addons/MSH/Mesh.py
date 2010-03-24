##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

''' This module provides an high level API built on top of BRepMesh and SMESH low level
objects. '''

from math import sqrt as math_sqrt
from OCC.Utils.Topology import *
from OCC.TopoDS import *
# to determine default precision
from OCC.Bnd import *
from OCC.BRepBndLib import *
from OCC.gp import *

# For OCC Triangle Mesh
from OCC.BRepMesh import *
from OCC.BRep import *
from OCC.TopLoc import *
from OCC.Poly import *
from OCC.BRepBuilderAPI import *
# For MEFISTO2
from OCC.SMESH import *
from OCC.StdMeshers import *

# for debugging and optimization
import time

class MeshBase(object):
    ''' This class is an abstract class and gathers common properties/methods for the different types
    of available meshes.'''
    def __init__(self):
        self._shape = None
        self._precision = 0.0 #by default
    
    def set_shape(self,shape):
        ''' @param shape: the TopoDS_Shape to mesh
        '''
        self._shape = shape
        self.compute_default_precision()
    
    def get_precision(self):
        return self._precision
    
    def set_precision(self, precision):
        self._precision = precision
        
    def compute_default_precision(self):
        ''' The default precision is a float number. It's computed from the bounding box of the shape.
        default_precision = bounding_box_diagonal / 10.
        This default precision enables to quick mesh a shape.
        '''
        # from this shape, determine a default precision from the bounding box
        bbox = Bnd_Box()
        BRepBndLib().Add(self._shape, bbox)
        x_min,y_min,z_min,x_max,y_max,z_max = bbox.Get()
        # compute diagonal length
        diagonal_length = gp_Vec(gp_Pnt(x_min,y_min,z_min),gp_Pnt(x_max,y_max,z_max)).Magnitude()
        print diagonal_length
        self._precision = diagonal_length / 20.
        return True
    
    def get_shape(self):
        ''' @return: the TopoDS shape to mesh
        '''
        return self._shape

class QuickTriangleMesh(MeshBase):
    ''' A mesh based on the BRepMesh OCC classes.
    '''
    def __init__(self):
        MeshBase.__init__(self)
    
    def to_compound(self):
        ''' Create a compound from the mesh nodes/edges/faces
        '''
        pass
    
    def compute(self):
        ''' Compute the mesh
        '''
        if self._shape is None:
            raise "Error: first set a shape"
            return False
        BRepMesh().Mesh(self._shape,self.get_precision()) #Precision should be computed from BndBox
        builder = BRep_Builder()
        Comp = TopoDS_Compound()
        builder.MakeCompound(Comp)
        
        faces_iterator = Topo(self._shape).faces()
        L = TopLoc_Location()
        for F in faces_iterator:
            facing = (BRep_Tool().Triangulation(F,L)).GetObject()
            tab = facing.Nodes()
            tri = facing.Triangles()
            for i in range(1,facing.NbTriangles()+1):
                trian = tri.Value(i)
                #print trian
                index1, index2, index3 = trian.Get()
                for j in range(1,4):
                    if j==1:    
                        M = index1
                        N = index2
                    elif j==2:    
                        N = index3
                    elif j==3:
                        M = index2  
                    ME = BRepBuilderAPI_MakeEdge(tab.Value(M),tab.Value(N))
                    if ME.IsDone():
                        builder.Add(Comp,ME.Edge())
        return Comp

class MEFISTOTriangleMesh(MeshBase):
    ''' A mesh based on the MEFISTO2 triangle mesher.
    '''
    def __init__(self):
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
    
    def get_vertices(self):
        ''' Returns the list of vertices coordinates
        '''
        return self._vertices
    
    def get_faces(self):
        ''' Returns the face indices list
        '''
        return self._faces
    
    def build_lists_shared_vertices(self):
        ''' build 3 lists: faces, normals, vertices
        '''
        # will return 3 lists
        vertices = []
        faces = []
        face_normals=[]
        vertex_normals = []
        normals = []
        dict_vert_normals={}
        # first, build nodes list:
        nodes_this = []
        for i in range(self.get_nb_nodes()):
            node = self._mesh_data_source.nodeValue(i)
            vertices.append([node.X(),node.Y(), node.Z()])
            nodes_this.append(node.this)
        # Traverse faces for this triangular mesh
        for i in range(self.get_nb_faces()):
            triangle_face = self._mesh_data_source.faceValue(i)
            node_0 = triangle_face.GetNode(0)
            index_0 = nodes_this.index(node_0.this)
            node_1 = triangle_face.GetNode(1)
            index_1 = nodes_this.index(node_1.this)
            node_2 = triangle_face.GetNode(2)
            index_2 = nodes_this.index(node_2.this)
            faces.append([index_0,index_1,index_2])
            # Compute normal for this face
            P0 = gp_XYZ(node_0.X(),node_0.Y(),node_0.Z())
            P1 = gp_XYZ(node_1.X(),node_1.Y(),node_1.Z())
            P2 = gp_XYZ(node_2.X(),node_2.Y(),node_2.Z())
            face_normal = (P1-P0)^(P2-P0)
            if face_normal.Modulus()>0:
                face_normal.Normalize()
            face_normals.append([face_normal.X(),face_normal.Y(),face_normal.Z()])
        # Compute vertex normals
        # First determine which vertices belong to which face
        vertex_in_face = {}
        i=0
        for indices in faces:
            P0 = indices[0]
            P1 = indices[1]
            P2 = indices[2]
            if not vertex_in_face.has_key(P0):
                vertex_in_face[P0]=[i]
            else:
                vertex_in_face[P0].append(i)
            if not vertex_in_face.has_key(P1):
                vertex_in_face[P1]=[i]
            else:
                vertex_in_face[P1].append(i)
            if not vertex_in_face.has_key(P2):
                vertex_in_face[P2]=[i]
            else:
                vertex_in_face[P2].append(i)
            i+=1
        # Then, for each vertex, determine the 'mean' normal
        for vertex_indice in vertex_in_face.keys():
            #print vertex_indice
            #n = gp_XYZ(0,0,0)
            for f in vertex_in_face[vertex_indice]:
                face_normal = face_normals[f]
                #norm = gp_XYZ(face_normal[0],face_normal[1],face_normal[2])
                #n = n + norm
                vertex_normals.append(face_normal)
            #n.Normalize()
            

        return vertices, faces, vertex_normals
            
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
        return True

def test():
    import time
    from OCC.Display.SimpleGui import *
    display, start_display, add_menu, add_function_to_menu = init_display()
    from OCC.BRepPrimAPI import *
    box_shape = BRepPrimAPI_MakeTorus(10,3).Shape()
    init_time = time.time()
    a_mesh = MEFISTOTriangleMesh()
    a_mesh.set_shape(box_shape)
    a_mesh.set_precision(0.2)
    a_mesh.compute()
    print 'Number of triangles: %i'%a_mesh.get_nb_faces()
    print 'Number of vertices: %i'%a_mesh.get_nb_nodes()
    a_mesh.build_lists()
    print 'All done in %f seconds.'%(time.time()-init_time)
    # Display
    from Visualization import MeshVisualization
    my_visu = MeshVisualization(a_mesh.get_mesh())
    my_visu.set_display(display)
    #display.DisplayShape(res)
    my_visu.perform()
    start_display()

if __name__=='__main__':
    test()        