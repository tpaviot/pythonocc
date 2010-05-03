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
from OCC.AIS import *
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

def CoordinateCrossShape(   display, centerpoint_sphere_radius,
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
    # The origin of the coordinate system
    Origin = scipy.zeros((3,1),dtype=float)
    # The direction unit vectors of the axis
    xDir = scipy.zeros((3,1),dtype=float)
    xDir[0,0] = 1.0
    yDir = scipy.zeros((3,1),dtype=float)
    yDir[1,0] = 1.0
    zDir = scipy.zeros((3,1),dtype=float)
    zDir[2,0] = 1.0
    
    # Create the center point sphere shape at the origin
    OriginSphere = sphere_from_vector_and_radius(   Origin, 
                                                    centerpoint_sphere_radius )
    OriginSphereShape = OriginSphere.Shape()

    # Create the XAxis shape
    XAxisShape = arrowShape(    Origin - 0.5 * arrowlength * xDir, 
                                xDir,
                                arrowlength,
                                radius_of_arrow_shaft,
                                lenght_of_arrow_head,
                                radius_of_arrow_head )
    # Create the YAxis shape
    YAxisShape = arrowShape(    Origin - 0.5 * arrowlength * yDir, 
                                yDir,
                                arrowlength,
                                radius_of_arrow_shaft,
                                lenght_of_arrow_head,
                                radius_of_arrow_head )
    # Create the ZAxis shape
    ZAxisShape = arrowShape(    Origin - 0.5 * arrowlength * zDir, 
                                zDir,
                                arrowlength,
                                radius_of_arrow_shaft,
                                lenght_of_arrow_head,
                                radius_of_arrow_head )
    
    # Display these shapes
    display.DisplayColoredShape( OriginSphereShape , 'WHITE' ) 
    display.DisplayColoredShape( XAxisShape , 'BLUE' ) 
    display.DisplayColoredShape( YAxisShape , 'ORANGE' ) 
    display.DisplayColoredShape( ZAxisShape , 'GREEN' ) 


