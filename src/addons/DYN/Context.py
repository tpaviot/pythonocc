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

def round(x):
    if x<EPSILON:
        return 0.0
    else:
        return x
    
class DynamicShape(ode.Body):
    """ Attach a TopoDS_Shape to an ode.Body
    """
    def __init__(self,*kargs):
        ode.Body.__init__(self,*kargs)
        self._shape = None
        self._ais_shape = None #when the shape is displayed
        self._VIEW_COG = False
        self._cog_pos = []
    
    def store_cog_position(self,pos):
        ''' This fonction appends the cog position to a list, in order for instance
        to draw a spline from these positions, i.e. the trajectory of the point
        '''
        self._cog_pos.append(pos)
        
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
        x_cog = round(x_cog)
        y_cog = round(y_cog)
        z_cog = round(z_cog)
        self.x_g = x_cog
        self.y_g = y_cog
        self.z_g = z_cog
        #
        # Set position of the body
        #
        self.setPosition([x_cog,y_cog,z_cog])
        #print 'COG:',x_cog,y_cog,z_cog
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
        # A joint group for the contact joints that are generated whenever
        # two bodies collide
        self._contactgroup = None
        self._space = None
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
        
    def add_dynamic_shape(self, dynamic_shape):
        self._shapes.append(dynamic_shape)
        if self._DISPLAY_INITIALIZED:
            ais_shape = display.DisplayShape(dynamic_shape.get_shape())
            dynamic_shape.set_ais_shape(ais_shape)
    
    def set_time_step(self,delta_t):
        self._delta_t = delta_t
            
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
            c.setBounce(0.2)
            c.setMu(4000)
            j = ode.ContactJoint(world, contactgroup, c)
            j.attach(geom1.getBody(), geom2.getBody())

    def start_open_loop(self):
        #delta_t = 0.01
        i = 0
        while i<1500:
            i = i+1
            if self._COLLISION_DETECTION: 
                self._space.collide((self,self._contactgroup), self._collision_callback)
            # step world
            self.step(self._delta_t)
            # remove all contact joints
            if self._COLLISION_DETECTION:
                self._contactgroup.empty()

            if self._DISPLAY_INITIALIZED:
                for shape in self._shapes:
                    x, y, z = shape.getPosition()
                    a11,a12,a13,a21,a22,a23,a31,a32,a33 = shape.getRotation()
                    #########
                    #x,y,z=shape.getPosition()
                    #M11,M12,M13,M21,M22,M23,M31,M32,M33=shape.getRotation()
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
                    display.Context.SetLocation(shape.get_ais_shape(),shape_location)
                    # Store COG position for each shape
                    shape.store_cog_position([x,y,z])
                    # Check if the COGmust be displayed
                    #
                    #if shape._VIEW_COG:
                    #    P = gp_Pnt(x,y,z)
                    ##    vertex = BRepBuilderAPI_MakeVertex(P)
                    #    vertex.Build()
                    #    display.DisplayShape(vertex.Shape())
                # Then update the viewer to show new shapes position
                display.Context.UpdateCurrentViewer()
                display.FitAll()
        # When the simulation is finished, draw cog positions for each shape
        for shape in self._shapes:
            if shape._VIEW_COG:
                pts = TColgp_Array1OfPnt(0, len(shape._cog_pos)-1)
                i = 0
                for point in shape._cog_pos:
                    P = gp_Pnt(point[0],point[1],point[2])
                    pts.SetValue(i,P)
                    i = i + 1
                #print pts
                cog_curve = GeomAPI_PointsToBSpline(pts).Curve()
                #display.DisplayShape(make_edge(SPL1))
                spline = BRepBuilderAPI_MakeEdge(cog_curve)
                spline.Build()
                #return spline.Shape()
                display.DisplayShape(spline.Shape())
                display.FitAll()

#                        array = []
#                        array.append(P1)                                                                       
#                        array.append(P2)                                                                      
#                        array.append(P3)                                                                      
#                        array.append(P4)                                                                       
#                        array.append(P5)
#                         
#                        SPL1 = GeomAPI_PointsToBSpline(point_list_to_TColgp_Array1OfPnt(array)).Curve()
#                        display.DisplayShape(make_edge(SPL1))
    def stop_loop(self):
        pass

def rotating_box():
    display.EraseAll()
    from OCC.BRepPrimAPI import *
    from OCC.GC import *
    from OCC.Geom import *
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = DynamicShape(dyn_context)
    d.set_shape(s1)
    d.setAngularVel([-1,0,0])
    #d.setInitialVelocity(1.23)
    dyn_context.add_dynamic_shape(d)
    dyn_context.start_open_loop()

def display_cog_trajectory():
    ''' Falling rotating box with display of COG
    '''
    display.EraseAll()
    from OCC.BRepPrimAPI import *
    from OCC.GC import *
    from OCC.Geom import *
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_gravity()
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = DynamicShape(dyn_context)
    d.set_shape(s1)
    d.enable_view_cog()
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    dyn_context.add_dynamic_shape(d)
    dyn_context.start_open_loop()
        
def box_plane_collision():
    display.EraseAll()
    from OCC.BRepPrimAPI import *
    from OCC.GC import *
    from OCC.Geom import *
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = DynamicShape(dyn_context)
    # create a geombox and add it to the dynamic shape
    geom_box = ode.GeomBox(dyn_context._space, lengths=(10,20,30))
    #geom_box.setPosition([5,10,15])
    geom_box.setBody(d)
    d.set_shape(s1)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    dyn_context.add_dynamic_shape(d)
    # Draw a plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    aPlane = GC_MakePlane(PL).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 100., 100., - 100., 100., 1, 1 )
    face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
    face.Build()
    display.DisplayColoredShape(face.Shape(),'RED')
    display.FitAll()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    #Starts the simulation
    dyn_context.start_open_loop()

def two_boxes_sphere_plane_collision():
    display.EraseAll()
    from OCC.BRepPrimAPI import *
    from OCC.GC import *
    from OCC.Geom import *
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The fist box
    d = DynamicShape(dyn_context)
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    geom_box = ode.GeomBox(dyn_context._space, lengths=(10,20,30))
    geom_box.setBody(d)
    d.set_shape(s1)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    #d.setLinearVel([0.1,0,0]) # the box is moving
    #d.enable_view_cog()
    dyn_context.add_dynamic_shape(d)
    # The second box
    box2 = BRepPrimAPI_MakeBox(10,20,30)
    t = gp_Trsf()
    t.SetTranslation(gp_Vec(5, 5, 100))
    transformed_shape = BRepBuilderAPI_Transform(box2.Shape(),t).Shape()
    d2 = DynamicShape(dyn_context)
    d2.set_shape(transformed_shape)
    geom_box2 = ode.GeomBox(dyn_context._space, lengths=(10,20,30))
    geom_box2.setBody(d2)
    #d2.enable_view_cog()
    dyn_context.add_dynamic_shape(d2)
    # The sphere
    d3 = DynamicShape(dyn_context)
    sphere = BRepPrimAPI_MakeSphere(10)
    t2 = gp_Trsf()
    t2.SetTranslation(gp_Vec(0, 0, 250))
    transformed_shape_2 = BRepBuilderAPI_Transform(sphere.Shape(),t2).Shape()
    geom_sphere = ode.GeomSphere(dyn_context._space, radius=10)
    geom_sphere.setBody(d3)
    d3.set_shape(transformed_shape_2)
    #d3.enable_view_cog()
    dyn_context.add_dynamic_shape(d3)
    # Draw a plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    aPlane = GC_MakePlane(PL).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 100., 100., - 100., 100., 1, 1 )
    face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
    face.Build()
    display.DisplayColoredShape(face.Shape(),'RED')
    display.FitAll()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    #Starts the simulation
    raw_input('Hit a key when ready to start simulation')
    dyn_context.start_open_loop()

if __name__=='__main__':
    from OCC.Display.SimpleGui import *
    set_backend('qt')
    display, start_display, add_menu, add_function_to_menu = init_display()
    add_menu('rigid body simulation sample')
    add_function_to_menu('rigid body simulation sample', rotating_box)
    add_function_to_menu('rigid body simulation sample', box_plane_collision)
    add_function_to_menu('rigid body simulation sample', display_cog_trajectory)
    add_function_to_menu('rigid body simulation sample', two_boxes_sphere_plane_collision)
    start_display()