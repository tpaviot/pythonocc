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
# $Revision: 1081 $
# $Date: 2010-08-19 18:22:39 +0200 (Thu, 19 Aug 2010) $
# $Author: tpaviot $
# $HeadURL: https://pythonocc.googlecode.com/svn/trunk/src/addons/DYN/Context.py $

# The DYN joints are dervied from ode joints
import ode

# OCC required modules
from OCC.Utils.Common import get_boundingbox
# For trimesh collision
try:
    from OCC.MSH.Mesh import QuickTriangleMesh
except ImportError:
    print 'have you got SMESH installed?'
    pass
# For Inertia properties
from OCC.GProp import *
from OCC.BRepGProp import *
# Precision
EPSILON = 1e-8

class DynamicShape(ode.Body):
    """ Defines a body attached to a TopoDS_Shape to be used
    in a simulation context
    """
    def __init__(self, dyn_context, infinite_rotation=False):
        ''' function prototype:
        DynamicShape(self, parent_context, topods_shape, enable_collision_detection,use_boundingbox,use_trimesh )
        '''
        ode.Body.__init__(self,dyn_context)

        self._parent_context = dyn_context
        self._shape = None
        self._ais_shape = None #when the shape is displayed
        self._VIEW_COG = False
        self._inf_rotation = infinite_rotation
        self._cog_pos = []
       
        self._fixed = False #by default, a 'moving' shape
        self._enable_collision_detection = False #By default, collision detection is disabled for this shape
        self._use_boundingbox = False #by default
        self._use_trimesh = False #by default
        self._collision_geometry = None
    
    def __del__(self):
        self._shape = None
        self._ais_shape = None
        self._parent_context = None
        print 'shape deleted'

    #def __deepcopy__(self, memo):
    #    '''deepcooooopy'''
        #import ipdb; ipdb.set_trace()

    def get_parent_context(self):
        ''' returns the parent dynamic context
        '''
        return self._parent_context
    
    def enable_collision_detection(self):
        ''' tells this shape to be computed in the collision detection
        '''
        self._enable_collision_detection = True
        self._space = self._parent_context.get_collision_space()
    
    def use_bounding_box(self):
        bbox = get_boundingbox(self._shape, EPSILON)
        xmin,ymin,zmin, xmax,ymax,zmax = bbox.Get()
        dx,dy,dz = xmax-xmin, ymax-ymin, zmax-zmin
        self._collision_geometry = ode.GeomBox(self._space, lengths=(dx,dy,dz))
        self._collision_geometry.setBody(self)
    
    def use_sphere(self):
        ''' Connect a ode.GeomSphere to the body
        The sphere radius is computed as the mean of the bounding box dimensions. As a consequence,
        if the TopoDS_Shape is a sphere, then the radius of the ode.GeomSphere will be the radius
        of the sphere
        '''
        bbox = get_boundingbox(self._shape, EPSILON)
        xmin,ymin,zmin, xmax,ymax,zmax = bbox.Get()
        dx,dy,dz = xmax-xmin, ymax-ymin, zmax-zmin
        r = (dx+dy+dz)/6.# /3 gives the mean diameter, so divide by 2 for the radius
        self._collision_geometry = ode.GeomSphere(self._space, radius = r)
        self._collision_geometry.setBody(self)
    
    def use_trimesh(self):
        self._compute_trimesh()
        
    def get_fixed(self):
        ''' Returns true if the body is fixed
        '''
        return self._fixed
    
    def set_fixed(self):
        ''' Tells ode to not take this body into account. It will then be out of the simulation
        loop and remain fixed during the simulation
        '''
        self.disable()
        self._fixed = True
            
    def _compute_trimesh(self,quality_factor=1.0):
        ''' Connect a ode.Trimesh to this body. The mesh is generated from the MSH subpackage. vertices lits
        and faces indices are passed to the trimesh.
        The default mesh precision is divided by the quality factor:
        - if quality_factor>1, the mesh will be more precise, i.e. more triangles (more precision, but also
        more memory consumption and time for the mesher,
        - if quality_factor<1, the mesh will be less precise.
        By default, this argument is set to 1 : the default precision of the mesher is used. 
        '''
        a_mesh = QuickTriangleMesh()
        a_mesh.set_shape(self._shape)
        # define precision for the mesh
        a_mesh.set_precision(a_mesh.get_precision()/quality_factor)
        # then compute the mesh
        a_mesh.compute()
        # The results of the mesh computation are passed to the trimesh manager
        #a_mesh.build_lists()
        vertices = a_mesh.get_vertices()
        # Before we set the vertices list to the trimesh, we must translate them:
        # TODO : there might be a simplier way to achieve that point
        for i in range(len(vertices)):
            v = vertices[i]
            v_x = v[0] - self.x_g
            v_y = v[1] - self.y_g
            v_z = v[2] - self.z_g
            vertices[i] = [v_x,v_y,v_z]
        # faces also have to be reshaped
        faces = a_mesh.get_faces()
        i=0
        f=[]
        while i<len(faces):
            f.append([i,i+1,i+2])
            i=i+3
        # Create the trimesh data
        td = ode.TriMeshData()
        td.build(vertices,f)
        self._collision_geometry = ode.GeomTriMesh(td,self._parent_context.get_collision_space())
        self._collision_geometry.setBody(self)
           
    def set_ais_shape(self,ais_shape):
        self._ais_shape = ais_shape
 
    def get_ais_shape(self):
        return self._ais_shape
    
    def get_shape(self):
        return self._shape
    
    def set_shape(self, topods_shape):
        ''' This method builds a DynamicShape from a TopoDS_Shape.
        '''
        self._shape = topods_shape
        props = GProp_GProps()
        BRepGProp_VolumeProperties(self._shape,props)
        # Get inertia properties of the shape
        cog = props.CentreOfMass().XYZ()
        x_cog,y_cog,z_cog = cog.X(),cog.Y(),cog.Z()
        comma=3
        x_cog = round(x_cog,comma)
        y_cog = round(y_cog,comma)
        z_cog = round(z_cog,comma)
        self.x_g = x_cog
        self.y_g = y_cog
        self.z_g = z_cog
        #
        # Set position of the body
        #
        self.setPosition([x_cog,y_cog,z_cog])
        #
        # Get inertia properties of the TopoDS_Shape
        #
        mass = props.Mass()

        inertia_matrix = props.MatrixOfInertia()
        i11 = inertia_matrix.Value(1,1)
        i22 = inertia_matrix.Value(2,2)
        i33 = inertia_matrix.Value(3,3)
        i12 = inertia_matrix.Value(1,2)
        i13 = inertia_matrix.Value(1,3)
        i23 = inertia_matrix.Value(2,3)
        # TODO : is it really necessary to round these values?
        # let me answer that question: a definitive, absolute 100% clear, *NO*
        M = ode.Mass()
        M.setParameters(mass,0,0,0,i11,i22,i33,i12,i13,i23)
        self.setMass(M)

        if not self._inf_rotation:
            #===============================================================================
            #    this is a common source of error, so defaulting to the finite rotation
            #    that avoids many cases of the common "bNormalizationResult" error
            #    a more in-depth explanation from the ODE docs:
            #
            #    - 0: An "infinitesimal" orientation update is used. This is
            #        fast to compute, but it can occasionally cause inaccuracies
            #        for bodies that are rotating at high speed, especially when
            #        those bodies are joined to other bodies. This is the default
            #        for every new body that is created.
            #
            #      - 1: A "finite" orientation update is used. This is more
            #        costly to compute, but will be more accurate for high speed
            #        rotations. Note however that high speed rotations can result
            #        in many types of error in a simulation, and this mode will
            #        only fix one of those sources of error.
            #
            #===============================================================================
            self.setFiniteRotationMode(1)

