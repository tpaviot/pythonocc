import ode
from OCC.GProp import *
from OCC.BRepGProp import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.TopLoc import *
from OCC.TColgp import *
from OCC.GeomAPI import *

EPSILON = 1e-8
import time
    
class DynamicShape(ode.Body):
    """ Attach a TopoDS_Shape to an ode.Body
    """
    def __init__(self,*kargs):
        ode.Body.__init__(self,*kargs)
        self._shape = None
        self._ais_shape = None #when the shape is displayed
        self._VIEW_COG = False
        self._cog_pos = []
        self._fixed = False #by default, a 'moving' shape
        self._max_integration_steps = 1100
        
    def store_cog_position(self,pos):
        ''' This fonction appends the cog position to a list, in order for instance
        to draw a spline from these positions, i.e. the trajectory of the point
        '''
        self._cog_pos.append(pos)
    
    #===========================================================================
    # Code style: Thomas, you should use properties rather than getter / setters...
    # an example on line:
    #===========================================================================
    
    def get_fixed(self):
        return self._fixed
    
    def set_fixed(self):
        self.disable()
        self._fixed = True
        
    def enable_view_cog(self):
        self._VIEW_COG = True
        
    def enable_collision(self):
        ''' Adds a geom to the body. In the simpliest case, the geom is the bounding box
        of the shape
        '''
        print 'enabled!'
        
    def set_ais_shape(self,ais_shape):
        self._ais_shape = ais_shape
    
    def get_ais_shape(self):
        return self._ais_shape
    
    def get_shape(self):
        return self._shape
    
    def set_shape(self, topods_shape):
        self._shape = topods_shape
        props = GProp_GProps()
        BRepGProp().VolumeProperties(self._shape,props)
        # Get intertia properties of the shape
        cog = props.CentreOfMass().XYZ()
        x_cog,y_cog,z_cog = cog.X(),cog.Y(),cog.Z()
        x_cog = round(x_cog,3)
        y_cog = round(y_cog,3)
        z_cog = round(z_cog,3)
        self.x_g = x_cog
        self.y_g = y_cog
        self.z_g = z_cog
        #
        # Set position of the body
        #
        self.setPosition([x_cog,y_cog,z_cog])
        #
        # Set inertia properties of the body
        #
        mass = props.Mass()
        #print 'Mass:',mass
        inertia_matrix = props.MatrixOfInertia()
        i11 = inertia_matrix.Value(1,1)# I11
        i22 = inertia_matrix.Value(2,2)# I22
        i33 = inertia_matrix.Value(3,3)# I33
        i12 = inertia_matrix.Value(1,2)# I12
        i13 = inertia_matrix.Value(1,3)# I13
        i23 = inertia_matrix.Value(2,3)# I23
        #print mass
        i11 = round(i11)
        i22 = round(i22)
        i33 = round(i33)
        i12 = round(i12)
        i13 = round(i13)
        i23 = round(i23)
 
        M = ode.Mass()
        M.mass = 2.
        M.setParameters(mass,0,0,0,i11,i22,i33,i12,i13,i23)
        self.setMass(M)
        
class DynamicSimulationContext(ode.World):
    """ Define a dynamic simulation context
    """
    def __init__(self, **kargs):
        ode.World.__init__(self,**kargs)
        #self.setGravity([0,0,-9.81])
        self._shapes = []
        self._DISPLAY_INITIALIZED = False
        self._COLLISION_DETECTION = False
        self._delta_t = 0.01 #timestep default value
        self._max_integration_steps = 1100
        # A joint group for the contact joints that are generated whenever
        # two bodies collide
        self._contactgroup = None
        self._space = None
        # callback after each integration step
        self.post_step_callable=None
        print 'Dynamic simulation context initialized.'
    
    def enable_gravity(self):
        self.setGravity([0,0,-9.81])
        
    def enable_collision_detection(self):
        self._COLLISION_DETECTION = True
        self._space = ode.Space()
        self._contactgroup = ode.JointGroup()
        
    def disable_collision_detection(self):
        self._COLLISION_DETECTION = False
        
    def set_display(self,display):
        self._display = display
        self._DISPLAY_INITIALIZED = True
    
    def add_shape(self, topods_shape):
        ''' Adds a TopoDS_Shape to the DYN context
        '''
        dynamic_shape = DynamicShape(self)
        dynamic_shape.set_shape(topods_shape)
        self.add_dynamic_shape(dynamic_shape)
        return dynamic_shape
    
    def add_dynamic_shape(self, dynamic_shape):
        self._shapes.append(dynamic_shape)
        if self._DISPLAY_INITIALIZED:
            ais_shape = self._display.DisplayShape(dynamic_shape.get_shape())
            dynamic_shape.set_ais_shape(ais_shape)
    
    def set_time_step(self,delta_t):
        self._delta_t = delta_t
        
    def set_integration_steps(self, value):
        self._max_integration_steps = value
        
    def set_callable_post_step(self, _callable):
        self.post_step_callable= _callable
            
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
        i = 0
        print 'number of integration steps:', self._max_integration_steps
        while i<self._max_integration_steps:
            i = i+1
            if self._COLLISION_DETECTION: 
                self._space.collide((self,self._contactgroup), self._collision_callback)
            # step world
            self.step(self._delta_t)
            
            # call post-step callable, if its there...
            if self.post_step_callable is not None:
                self.post_step_callable()
            
            # remove all contact joints
            if self._COLLISION_DETECTION:
                self._contactgroup.empty()

            if self._DISPLAY_INITIALIZED:
                for shape in self._shapes:
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
                        #########
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
                        shape.store_cog_position([x,y,z])
                    # Then update the viewer to show new shapes position
                self._display.Context.UpdateCurrentViewer()
                self._display.FitAll()
        # When the simulation is finished, draw cog positions for each shape
        for shape in self._shapes:
            if shape._VIEW_COG:
                pts = TColgp_Array1OfPnt(0, len(shape._cog_pos)-1)
                i = 0
                for point in shape._cog_pos:
                    P = gp_Pnt(point[0],point[1],point[2])
                    pts.SetValue(i,P)
                    i = i + 1
                cog_curve = GeomAPI_PointsToBSpline(pts).Curve()
                spline = BRepBuilderAPI_MakeEdge(cog_curve)
                spline.Build()
                self._display.DisplayShape(spline.Shape())
                self._display.FitAll()

    def stop_loop(self):
        pass
