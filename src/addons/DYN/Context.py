import ode

from OCC.GProp import *
from OCC.BRepGProp import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.TopLoc import *
from OCC.TColgp import *
from OCC.GeomAPI import *

# For trimesh collision
from OCC.MSH.Mesh import *
import time

from OCC.Utils.Common import get_boundingbox

EPSILON = 1e-8
import time
    
class DynamicShape(ode.Body):
    """ Attach a TopoDS_Shape to an ode.Body
    """
    def __init__(self,*kargs):
        ''' function prototype:
        DynamicShape(self, parent_context, topods_shape, enable_collision_detection,use_boundingbox,use_trimesh )
        '''
        ode.Body.__init__(self,*kargs)

        self._parent_context = kargs[0]
        self._shape = None
        self._ais_shape = None #when the shape is displayed
        self._VIEW_COG = False
        self._cog_pos = []
       
        self._fixed = False #by default, a 'moving' shape
        self._enable_collision_detection = False #By default, collision detection is disabled for this shape
        self._use_boundingbox = False #by default
        self._use_trimesh = False #by default
        self._collision_geometry = None
    
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
        
#    def enable_view_cog(self):
#        self._VIEW_COG = True
    
    def _compute_trimesh(self,quality_factor=1.0):
        ''' Connect a ode.Trimesh to this body. The mesh is generated from the MSH subpackage. vertices lits
        and faces indices are passed to the trimesh.
        The default mesh precision is divided by the quality factor:
        - if quality_factor>1, the mesh will be more precise, i.e. more triangles (more precision, but also
        more memory consumption and time for the mesher,
        - if quality_factor<1, the mesh will be less precise.
        By default, this argument is set to 1 : the default precision of the mesher is used. 
        '''
        a_mesh = MEFISTOTriangleMesh()
        a_mesh.set_shape(self._shape)
        # define precision for the mesh
        a_mesh.set_precision(a_mesh.get_precision()/quality_factor)
        # then compute the mesh
        a_mesh.compute()
        # The results of the mesh computation are passed to the trimesh manager
        a_mesh.build_lists()
        vertices = a_mesh.get_vertices()
        # Before we set the vertices list to the trimesh, we must translate them:
        # TODO : there might be a simplier way to achieve that point
        for i in range(len(vertices)):
            v = vertices[i]
            v_x = v[0] - self.x_g
            v_y = v[1] - self.y_g
            v_z = v[2] - self.z_g
            vertices[i] = [v_x,v_y,v_z]
        # Create the trimesh data
        td = ode.TriMeshData()
        td.build(vertices,a_mesh.get_faces())
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
        BRepGProp().VolumeProperties(self._shape,props)
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
        i11 = round(i11,comma)
        i22 = round(i22,comma)
        i33 = round(i33,comma)
        i12 = round(i12,comma)
        i13 = round(i13,comma)
        i23 = round(i23,comma)
        #
        # Then pass these properties to the body
        #
        M = ode.Mass()
        M.setParameters(mass,0,0,0,i11,i22,i33,i12,i13,i23)
        self.setMass(M)
        
class DynamicSimulationContext(ode.World):
    """ Define a dynamic simulation context.
    """
    def __init__(self, **kargs):
        ode.World.__init__(self,**kargs)
        #self.setGravity([0,0,-9.81])
        #self._shapes = []
        self._dynamic_shapes = []
        self._DISPLAY_INITIALIZED = False
        self._COLLISION_DETECTION = False
        self._delta_t = 0.01 #timestep default value
        self._duration = 10.0 #default duration set to 10s
        # A joint group for the contact joints that are generated whenever
        # two bodies collide
        self._contactgroup = None
        self._space = None
        # callback after each integration step
        self._post_step_callable = []
        print 'Dynamic simulation context initialized.'
    
    def enable_gravity(self):
        self.setGravity([0,0,-9.81])
    
    def register_post_step_callback(self, function):
        ''' Append the function to a list. These functions are called after each simulation step
        is completed. It can be useful, for instance, to refersh GUI, or send results to a queue etc.
        '''
        if callable(function):
            self._post_step_callable.append(function)
        else:
            raise AssertionError('Argument must be callable (a function)')
    
    def _perform_callbacks(self):
        ''' Call each function from the self._post_step_callable list
        '''
        for function in self._post_step_callable:
            function()
            
    def enable_collision_detection(self):
        self._COLLISION_DETECTION = True
        self._space = ode.Space()
        self._contactgroup = ode.JointGroup()
    
    def get_collision_space(self):
        ''' Returns the collision space of this context
        '''
        if not self._COLLISION_DETECTION:
            raise AssertionError('Collision detection is not enabled for this DynamicContext')
        else:
            return self._space
        
    def disable_collision_detection(self):
        self._COLLISION_DETECTION = False
        
    def set_display(self,display, yield_function=None):
        ''' The renderer in which the scene will be displayed
        '''
        self._display = display
        self._DISPLAY_INITIALIZED = True
        # Register a callback so that it's possible to move the view with the mouse
        # during the simulation.
        if yield_function is not None:
            self.register_post_step_callback(yield_function)
    
    def add_shape(self, topods_shape, enable_collision_detection=False, use_boundingbox=False, use_sphere = False, use_trimesh=False):
        ''' Adds a TopoDS_Shape to the DYN context.
        
        @param topods_shape : the shape to add to the dynamic context
        @param enable_collision_detection : tells whether the shape collisions have to be computed
        @param use_bounding_box : the geometry for collision detection is the bounding box of the shape
        @param use_trimesh : the geometry for collision detection is a 3D triangle mesh.
        
        @return dynamic_shape : the dynamic_shape added to the context
        '''
        #if use_boundingbox and use_trimesh:
        #    raise AssertionError('use_boundingbox and use_mesh are exclusive')

        #if enable_collision_detection and not(use_boundingbox) and not(use_trimesh):
        #    raise AssertionError('either use_boundingbox or use_mesh has to be set')

        # create the dynamic shape
        dynamic_shape = DynamicShape(self)
        # connects the topods_shape to this dynamic_shape
        dynamic_shape.set_shape(topods_shape)
        if enable_collision_detection and self._COLLISION_DETECTION:
            dynamic_shape.enable_collision_detection()
            if use_boundingbox:
                dynamic_shape.use_bounding_box()
            elif use_sphere:
                dynamic_shape.use_sphere()
            elif use_trimesh:
                dynamic_shape.use_trimesh()
            else:
                print('Warning : collision detection enabled for this shape but no geometry provided.')
    
        if self._DISPLAY_INITIALIZED:
            ais_shape = self._display.DisplayShape(dynamic_shape.get_shape())
            dynamic_shape.set_ais_shape(ais_shape)
        # store the dynamic shape
        self._dynamic_shapes.append(dynamic_shape)

        return dynamic_shape

    def set_time_step(self,delta_t):
        self._delta_t = delta_t
    
    def set_simulation_duration(self,t):
        ''' t: time, in seconds, of the simulation
        '''
        self._duration = t
        
    # Collision callback
    def _collision_callback(self, args, geom1, geom2):
        """Callback function for the collide() method.
    
        This function checks if the given geoms do collide and
        creates contact joints if they do.
        """
        #print 'Collision detected'
        # Check if the objects do collide
        contacts = ode.collide(geom1, geom2)
        # Create contact joints
        world,contactgroup = args
        for c in contacts:
            c.setBounce(0.25)
            c.setMu(4000)
            j = ode.ContactJoint(world, contactgroup, c)
            j.attach(geom1.getBody(), geom2.getBody())

    def start_open_loop(self):
        #delta_t = 0.01
        t = 0
        while t<self._duration:
            #i = i+1
            if self._COLLISION_DETECTION: 
                self._space.collide((self,self._contactgroup), self._collision_callback)
            # step world
            self.step(self._delta_t)
            
            # call post-step callable, if its there...
            #if self.post_step_callable is not None:
            #    self.post_step_callable()
            
            # remove all contact joints
            if self._COLLISION_DETECTION:
                self._contactgroup.empty()

            if self._DISPLAY_INITIALIZED:
                for shape in self._dynamic_shapes:
                    if not shape.get_fixed():
                        x, y, z = shape.getPosition()
                        a11,a12,a13,a21,a22,a23,a31,a32,a33 = shape.getRotation()
                        #########
                        xg=shape.x_g#
                        yg=shape.y_g# COG coordinated in the local referential
                        zg=shape.z_g#
                        u=x-(xg*a11+yg*a12+zg*a13)
                        v=y-(xg*a21+yg*a22+zg*a23)#COG coordinate in the global referential
                        w=z-(xg*a31+yg*a32+zg*a33)
                        # Move the shape according to its new position/rotation
                        shape_trsf = gp_Trsf()
                        # Set new position/rotation
                        shape_trsf.SetValues(a11,a12,a13,u,
                                             a21,a22,a23,v,
                                             a31,a32,a33,w,
                                             0.1,0.1)
                        shape_location = TopLoc_Location(shape_trsf)
                        self._display.Context.SetLocation(shape.get_ais_shape(),shape_location)
                        # Store COG position for each shape
                        # Not necessary by default : shape.store_cog_position([x,y,z])
                    # Then update the viewer to show new shapes position
                self._display.Context.UpdateCurrentViewer()
                #self._display.FitAll()
            # Increment time
            self._perform_callbacks()
            # Then increment time and loop simulation
            t += self._delta_t
        # When the simulation is finished, draw cog positions for each shape
        # Should rather call a kind of 'post simulation processing' function
#        for shape in self._shapes:
#            if shape._VIEW_COG:
#                pts = TColgp_Array1OfPnt(0, len(shape._cog_pos)-1)
#                i = 0
#                for point in shape._cog_pos:
#                    P = gp_Pnt(point[0],point[1],point[2])
#                    pts.SetValue(i,P)
#                    i = i + 1
#                cog_curve = GeomAPI_PointsToBSpline(pts).Curve()
#                spline = BRepBuilderAPI_MakeEdge(cog_curve)
#                spline.Build()
#                self._display.DisplayShape(spline.Shape())
#                self._display.FitAll()

    def stop_loop(self):
        pass
    
    def clear(self):
        '''
        deletes all the ode geometry in the scene
        '''
        pass
