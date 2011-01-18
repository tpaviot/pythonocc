# =============================================================================
# Packages to import
# =============================================================================
import OCC.Display.SimpleGui 
import sys
from OCC import VERSION
from OCC.Display.wxDisplay import wxViewer3d
import OCC.gp 
import OCC.BRepPrimAPI 
import OCC.BRepAlgoAPI
import scipy
# =============================================================================
# Some geometric functionality needed
# =============================================================================

def length_column_vector(a):
    """
    Compute length of column vector with 3 rows

    @param a: column vector
    @type  a: scipy array(3,1)
    @return: length column vector

    sample:

       >>> a = scipy.array([-3.0, 0.0, 4.0])
       >>> a = scipy.reshape(a,(3,1))
       >>> a
       array([[-3.],
              [ 0.],
              [ 4.]])
       >>> length_column_vector(a)
       5.0
    """
    return ( scipy.sqrt( a[0,0] * a[0,0] + a[1,0] * a[1,0] + a[2,0] * a[2,0] ) )


def NormVector(Vector):
    """
    Normalize column vector with 3 rows.

    @param Vector: column vector with 3 rows.
    @type  Vector: scipy array(3,1)
    @return: normalized vector

    sample:

       >>> Vektor = scipy.array([-4.0, -2.0, 4.0])
       >>> Vektor = scipy.reshape(Vektor,(3,1))
       >>> Vektor
       array([[-4.],
              [-2.],
              [ 4.]])
       >>> NormVector(Vektor)
       array([[-0.66666667],
              [-0.33333333],
              [ 0.66666667]])
    """
    return( ( 1.0 / length_column_vector(Vector) ) * Vector )

# =============================================================================
# Functions generating primitives from Scipy arrays
# =============================================================================
def sphere_from_vector_and_radius(  vector, 
                                    radius ):
    '''
    Creates a sphere from a scipy vector and a radius

    @param vector: center of a sphere as a scipy array
    @type  vector: array(3,1)
    @param radius: radius of the sphere
    @type  radius: scalar
    '''
    # write the components of vector in float values
    X1 = float( vector[ 0, 0] )
    Y1 = float( vector[ 1, 0] )
    Z1 = float( vector[ 2, 0] )
    # create OCC.gp.gp_Pnt-Point from vector
    Point = OCC.gp.gp_Pnt( X1, Y1, Z1 )
    # create sphere
    sphere = OCC.BRepPrimAPI.BRepPrimAPI_MakeSphere( Point, radius )
    # retrurn the sphere
    return sphere 

def cylinder_from_point_directionvector_length_and_radius(  vector, 
                                                            directionvector,
                                                            length,
                                                            radius ):
    """
    Creates a cylinder utilising OCC.BRepPrimAPI.BRepPrimAPI_MakeCylinder out 
    of scipy arrays
    
    @param vector: vektor of starting point on the cylinder main axis
    @type  vector: scipy array(3,1)
    @param directionvector: direction vector of the cylinder main axis
    @type  directionvector: scipy array(3,1)
    @param length: cylinder length
    @type  length: float
    @param radius: cylinder radius
    @type  radius: float
    @return: cylinder

    sample::
    
        Vector = scipy.array([ 10.0, 10.0, 10.0 ])
        Vector = scipy.reshape( Vector, (3,1))
        
        TangUnitVector = scipy.array([  (1/scipy.sqrt(3)) , 
                                         1/scipy.sqrt(3)) , 
                                         1/scipy.sqrt(3)) ])
        TangUnitVector = scipy.reshape( TangUnitVector, (3,1))

        CylLength = 200
        CylRadius = 3
    
        Cyli = cylinder_from_point_directionvector_length_and_radius(Vector, 
                                                                     TangUnitVector,
                                                                     CylLength,
                                                                     CylRadius ) 
        CyliShape = Cyli.Shape()
        display.DisplayColoredShape( CyliShape , 'RED' ) 
    """
    # Normalize the direction
    directionunitvector = NormVector(directionvector)
    # determine the second point
    vector2 = vector + length * directionunitvector    
    # components of vector in float values
    X1 = float( vector[ 0, 0] )
    Y1 = float( vector[ 1, 0] )
    Z1 = float( vector[ 2, 0] )
    # components of vector2 in float values
    X2 = float( vector2[ 0, 0] )
    Y2 = float( vector2[ 1, 0] )
    Z2 = float( vector2[ 2, 0] )
    # create OCC.gp.gp_Pnt-points
    P1 = OCC.gp.gp_Pnt( X1, Y1, Z1 )
    P2 = OCC.gp.gp_Pnt( X2, Y2, Z2 )
    # create direction unit vector from these points (not neccessary but if 
    # the directionunitvector is not of length 1 ...)
    directionP1P2 = scipy.array([   ( X2 - X1 ),
                                    ( Y2 - Y1 ),  
                                    ( Z2 - Z1 ) ])
    directionP1P2 = scipy.reshape( directionP1P2,(3,1))
    # distance between the points (X1, Y1, Z1) and (X2, Y2, Z2)
    length = length_column_vector(directionP1P2)
    # normalize direction
    directionP1P2 = NormVector(directionP1P2)                                                
    # origin at point 1 with OCC.gp.gp_Pnt
    origin_local_coordinate_system = OCC.gp.gp_Pnt( X1, Y1, Z1)
    # z-direction of the local coordinate system with OCC.gp.gp_Dir
    z_direction_local_coordinate_system = OCC.gp.gp_Dir(directionP1P2[0, 0], 
                                                        directionP1P2[1, 0], 
                                                        directionP1P2[2, 0])
    # local coordinate system with OCC.gp.gp_Ax2
    local_coordinate_system = OCC.gp.gp_Ax2(origin_local_coordinate_system, 
                                            z_direction_local_coordinate_system)
    # create cylinder utilising OCC.BRepPrimAPI.BRepPrimAPI_MakeCylinder
    cylinder = OCC.BRepPrimAPI.BRepPrimAPI_MakeCylinder(local_coordinate_system, 
                                                        radius, 
                                                        length, 
                                                        2 * scipy.pi )
    # return cylinder
    return cylinder


def cone_from_point_height_directionvector_and_two_radii( vector, 
                                                          directionvector,
                                                          height,
                                                          radius1,
                                                          radius2 ):
    """
    Creates a cone OCC.BRepPrimAPI.BRepPrimAPI_MakeCone.
        
    @param vector: vector at the beginning
    @type  vector: scipy array(3,1)
    @param directionvector: direction vector of the cone maina axis 
    @type  directionvector: scipy array(3,1)
    @param height: cone height
    @type  height: float
    @param radius1: radius at the cone bottom
    @type  radius1: float
    @param radius1: cone tip radius
    @type  radius1: float
    @return: cone 
    """
    # Normalize the direction
    directionunitvector = NormVector(directionvector)
    # Determine the second point
    vector2 = vector + height * directionunitvector    
    # components in floats
    X1 = float( vector[ 0, 0] )
    Y1 = float( vector[ 1, 0] )
    Z1 = float( vector[ 2, 0] )
    # components in floats
    X2 = float( directionunitvector[ 0, 0] )
    Y2 = float( directionunitvector[ 1, 0] )
    Z2 = float( directionunitvector[ 2, 0] )
    # create OCC.gp.gp_Pnt-point
    P1 = OCC.gp.gp_Pnt( X1, Y1, Z1 )
    # Read the direction unit vector (has to be done, but I do not know why)
    directionunit = scipy.array([   ( X2 ),
                                    ( Y2 ),  
                                    ( Z2 ) ])
    directionunit = scipy.reshape( directionunit,(3,1))
    # normalize - to be sure 
    directionunit = NormVector(directionunit)
    # origin at point 1 with OCC.gp.gp_Pnt
    origin_local_coordinate_system = OCC.gp.gp_Pnt( X1, Y1, Z1)
    # z-direction of the local coordinate system with OCC.gp.gp_Dir
    z_direction_local_coordinate_system = OCC.gp.gp_Dir(directionunit[0, 0], 
                                                        directionunit[1, 0], 
                                                        directionunit[2, 0])
    # local coordinate system with OCC.gp.gp_Ax2
    local_coordinate_system = OCC.gp.gp_Ax2(origin_local_coordinate_system, 
                                            z_direction_local_coordinate_system)

    # create cone utilising OCC.BRepPrimAPI.BRepPrimAPI_MakeCone
    cone = OCC.BRepPrimAPI.BRepPrimAPI_MakeCone(    local_coordinate_system, 
                                                    radius1, 
                                                    radius2, 
                                                    height )
    # return cone
    return cone


def arrowShape( vector, 
                directionvector,
                arrowlength,
                radius_of_arrow_shaft,
                lenght_of_arrow_head,
                radius_of_arrow_head ):
    '''
    Function arrowshape creates the shape of an arrow starting at vector
    pointing into diretcion. We create a cylinder and a cone and combine the 
    utilising OCC.BRepAlgoAPI.BRepAlgoAPI_Fuse.

    @param vector: starting point of the arrow
    @type  vector: scipy array(3,1)
    @param directionvector: direction of the arrow
    @type  directionvector: scipy  array(3,1)
    @param arrowlength: length of the arrow
    @type  arrowlength: scalar
    @param radius_of_arrow_shaft: radius of the arrow shaft
    @type  radius_of_arrow_shaft: scalar
    @param lenght_of_arrow_head: length of the arrow head
    @type  lenght_of_arrow_head: scalar
    @param radius_of_arrow_head: radius of the arrow head
    @type  radius_of_arrow_head: scalar
    @return: Pfeil als Shape Objekt
    '''
    # Normalize the direction
    directionunitvector = NormVector(directionvector)
    # the shaft length
    cylinder_length = arrowlength - lenght_of_arrow_head
    # create shaft
    arrow_shaft = cylinder_from_point_directionvector_length_and_radius( \
                                                    vector, 
                                                    directionunitvector,
                                                    cylinder_length,
                                                    radius_of_arrow_shaft ) 
    arrow_shaft_Shape = arrow_shaft.Shape()
    # begin of arrow head (flat suface)
    arrow_head_point = vector + cylinder_length * directionunitvector
    # create arrow head
    arrow_head = cone_from_point_height_directionvector_and_two_radii(  \
                                                    arrow_head_point, 
                                                    directionunitvector,
                                                    lenght_of_arrow_head,
                                                    radius_of_arrow_head,
                                                    0.0 )
    arrow_head_Shape = arrow_head.Shape()
    # combine shaft and head
    arrow = OCC.BRepAlgoAPI.BRepAlgoAPI_Fuse(   arrow_shaft_Shape, 
                                                arrow_head_Shape )       
    arrowShape = arrow.Shape() 
    # return Shape of the arrow
    return arrowShape


# =============================================================================
# Functions called from some menu-items
# =============================================================================

def draw_sphere_1(event=None):
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    # Note we use the scipy.zeros function
    PointZeroArray = scipy.zeros((3,1), dtype=float)
    MySphere = sphere_from_vector_and_radius(   PointZeroArray, 
                                                Radius )
    MySphereShape = MySphere.Shape()
    display.DisplayColoredShape( MySphereShape , 'RED' ) 

def draw_sphere_2(event=None):
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere = sphere_from_vector_and_radius(   MyPointAsArray, 
                                                Radius / 1.2 )
    MySphereShape = MySphere.Shape()
    display.DisplayColoredShape( MySphereShape , 'YELLOW' ) 

def draw_cylinder(event=None):
    # cylinder radius
    Radius = 50.0
    # cylinder length
    Length = 200.0
    # The center point at one of the flat cylinder faces 
    Point = scipy.array([45.0, 80.0, 50.0])
    Point = scipy.reshape(Point,(3,1))
    # The direction of the cylinder from the point given above 
    DirectionFromPoint = scipy.array([25.0, 50.0, 150.0])
    DirectionFromPoint = scipy.reshape(DirectionFromPoint,(3,1))
    # create the cylinder object
    MyCylinder = cylinder_from_point_directionvector_length_and_radius( \
                                                                Point, 
                                                                DirectionFromPoint,
                                                                Length,
                                                                Radius )
    MyCylinderShape = MyCylinder.Shape()
    display.DisplayColoredShape( MyCylinderShape , 'BLUE' ) 

def draw_cone(event=None):
    # cone radius 1
    Radius1 = 30.0
    # cone radius 2
    Radius2 = 70.0
    # cone height
    Height = 90.0
    # The center point at one of the flat cone faces 
    Point = scipy.array([-25.0, -50.0, 50.0])
    Point = scipy.reshape(Point,(3,1))
    # The direction of the cone from the point given above 
    DirectionFromPoint = scipy.array([25.0, 50.0, 150.0])
    DirectionFromPoint = scipy.reshape(DirectionFromPoint,(3,1))
    # create the cone object
    MyCone = cone_from_point_height_directionvector_and_two_radii( \
                                                            Point, 
                                                            DirectionFromPoint,
                                                            Height,
                                                            Radius1,
                                                            Radius2 )

    MyConeShape = MyCone.Shape()
    display.DisplayColoredShape( MyConeShape , 'ORANGE' ) 

def draw_arrow(event=None):
    # Length of the Arrow
    Arrowlength = 400.0
    # Shaft radius 
    RadiusOfArrowShaft = 20.0
    # Length of the the arrow heads cone
    LenghtOfArrowHead = 100.0
    # Radius of the the arrow heads cone
    RadiusOfArrowHead = 50.0
    # The center point at one of the flat cone faces 
    Point = scipy.array([-50.0, -50.0, 0.0])
    Point = scipy.reshape(Point,(3,1))
    # The direction of the cone from the point given above 
    DirectionFromPoint = scipy.array([-25.0, -50.0, -150.0])
    DirectionFromPoint = scipy.reshape(DirectionFromPoint,(3,1))
    # create the arrow shape
    # Look at the difference to the other functions and note that it is
    # also possible to create the shape in a function. If we do that we 
    # get a shape and not the object. 
    MyArrowShape = arrowShape(  Point, 
                                DirectionFromPoint,
                                Arrowlength,
                                RadiusOfArrowShaft,
                                LenghtOfArrowHead,
                                RadiusOfArrowHead )

    display.DisplayColoredShape( MyArrowShape , 'BLACK' ) 

def draw_fused_spheres(event=None):
    # clear the display
    display.EraseAll()
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    # Note we use the scipy.zeros function
    PointZeroArray = scipy.zeros((3,1), dtype=float)
    MySphere1 = sphere_from_vector_and_radius(  PointZeroArray, 
                                                Radius )
    MySphere1Shape = MySphere1.Shape()

    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere2 = sphere_from_vector_and_radius(  MyPointAsArray, 
                                                Radius / 1.2 )
    MySphere2Shape = MySphere2.Shape()
    # Combine the spheres
    FusedSpheres = OCC.BRepAlgoAPI.BRepAlgoAPI_Fuse(    MySphere1Shape, 
                                                        MySphere2Shape )
    # Shape of combined spheres
    FusedSpheres = FusedSpheres.Shape()
    # Display 
    display.DisplayColoredShape( FusedSpheres , 'RED' ) 

def draw_cutted_spheres_1(event=None):
    # clear the display
    display.EraseAll()
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    # Note we use the scipy.zeros function
    PointZeroArray = scipy.zeros((3,1), dtype=float)
    MySphere1 = sphere_from_vector_and_radius(  PointZeroArray, 
                                                Radius )
    MySphere1Shape = MySphere1.Shape()

    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere2 = sphere_from_vector_and_radius(  MyPointAsArray, 
                                                Radius / 1.2 )
    MySphere2Shape = MySphere2.Shape()
    # Combine the spheres
    CuttedSpheres = OCC.BRepAlgoAPI.BRepAlgoAPI_Cut(    MySphere1Shape, 
                                                        MySphere2Shape )
    # Shape of combined spheres
    CuttedSpheres = CuttedSpheres.Shape()
    # Display 
    display.DisplayColoredShape( CuttedSpheres , 'YELLOW' ) 

def draw_cutted_spheres_2(event=None):
    # clear the display
    display.EraseAll()
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    # Note we use the scipy.zeros function
    PointZeroArray = scipy.zeros((3,1), dtype=float)
    MySphere1 = sphere_from_vector_and_radius(  PointZeroArray, 
                                                Radius )
    MySphere1Shape = MySphere1.Shape()

    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere2 = sphere_from_vector_and_radius(  MyPointAsArray, 
                                                Radius / 1.2 )
    MySphere2Shape = MySphere2.Shape()
    # Combine the spheres
    CuttedSpheres = OCC.BRepAlgoAPI.BRepAlgoAPI_Cut(    MySphere2Shape, 
                                                        MySphere1Shape )
    # Shape of combined spheres
    CuttedSpheres = CuttedSpheres.Shape()
    # Display 
    display.DisplayColoredShape( CuttedSpheres , 'BLUE' ) 

def draw_common_spheres(event=None):
    # clear the display
    display.EraseAll()
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    # Note we use the scipy.zeros function
    PointZeroArray = scipy.zeros((3,1), dtype=float)
    MySphere1 = sphere_from_vector_and_radius(  PointZeroArray, 
                                                Radius / 1.2 )
    MySphere1Shape = MySphere1.Shape()

    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere2 = sphere_from_vector_and_radius(  MyPointAsArray, 
                                                Radius )
    MySphere2Shape = MySphere2.Shape()
    # Combine the spheres
    CommonSpheres = OCC.BRepAlgoAPI.BRepAlgoAPI_Common( MySphere1Shape, 
                                                        MySphere2Shape )
    # Shape of combined spheres
    CommonSpheres = CommonSpheres.Shape()
    # Display 
    display.DisplayColoredShape( CommonSpheres , 'GREEN' ) 


def erase_all(event=None):
    display.EraseAll()


def exit(event=None):
    sys.exit()

# =============================================================================
# Main-part: If this script is running as a main script, i.e. it 
# is directly called by Python the following is executed.
# =============================================================================
if __name__ == '__main__':
    # OCC.Display.SimpleGuiinit_display() returns multiple
    # values which are assigned here
    display, start_display, add_menu, add_function_to_menu = \
        OCC.Display.SimpleGui.init_display()
    # This is the place where we hook our functionality to menus
    # ----------------------------------------------------------
    add_menu('File')
    add_function_to_menu('File',  exit)
    add_menu('Draw')
    add_function_to_menu('Draw', draw_sphere_1)
    add_function_to_menu('Draw', draw_sphere_2)
    add_function_to_menu('Draw', draw_cylinder)
    add_function_to_menu('Draw', draw_cone)
    add_function_to_menu('Draw', draw_arrow)
    add_menu('Boolean')
    add_function_to_menu('Boolean', draw_fused_spheres)
    add_function_to_menu('Boolean', draw_cutted_spheres_1)
    add_function_to_menu('Boolean', draw_cutted_spheres_2)
    add_function_to_menu('Boolean', draw_common_spheres)
    add_menu('Erase')
    add_function_to_menu('Erase', erase_all)
    
    start_display()

