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

# =============================================================================
# Functions called from some menu-items
# =============================================================================

def draw_sphere_1(event=None):
    # clear the display
    display.EraseAll()
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
    # clear the display
    display.EraseAll()
    # create sphere
    Radius = 50.0
    # The sphere center as a Scipy array - 3 rows, one column
    MyPointAsArray = scipy.array([25.0, 50.0, 50.0])
    MyPointAsArray = scipy.reshape(MyPointAsArray,(3,1))
    MySphere = sphere_from_vector_and_radius(   MyPointAsArray, 
                                                Radius )
    MySphereShape = MySphere.Shape()
    display.DisplayColoredShape( MySphereShape , 'YELLOW' ) 

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
                                                Radius )
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
                                                Radius )
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
                                                Radius )
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
                                                Radius )
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
    add_menu('Boolean')
    add_function_to_menu('Boolean', draw_fused_spheres)
    add_function_to_menu('Boolean', draw_cutted_spheres_1)
    add_function_to_menu('Boolean', draw_cutted_spheres_2)
    add_function_to_menu('Boolean', draw_common_spheres)
    add_menu('Erase')
    add_function_to_menu('Erase', erase_all)
    
    start_display()
