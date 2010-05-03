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
from OCC.AIS import *
from OCC.Quantity import *
from OCC.Graphic3d import *
import scipy
from Step4_3_A import *
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
    
    ais_shape_MyCylinderShape = AIS_Shape( MyCylinderShape ).GetHandle()
    ais_context = display.GetContext().GetObject()
    ais_context.SetColor(  ais_shape_MyCylinderShape,  Quantity_NOC_TOMATO )
    ais_context.SetTransparency( ais_shape_MyCylinderShape, 0.3, True)
    ais_context.Display( ais_shape_MyCylinderShape ) 

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
    ais_shape_MyConeShape = AIS_Shape( MyConeShape ).GetHandle()
    ais_context = display.GetContext().GetObject()
    ais_context.SetMaterial(    ais_shape_MyConeShape,  
                                Graphic3d.Graphic3d_NOM_STONE )
    ais_context.Display( ais_shape_MyConeShape ) 

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


def draw_coordinates(event=None):
    # Hole Context
    #ais_context = display.GetContext().GetObject()
    
    # The radius of a sphere at the origin
    centerpoint_sphere_radius = 30.0
    # The length of every axis starting at -length/2 and ending at length/2
    arrowlength = 1000.0
    # Radius of the arrow shaft of every axis
    radius_of_arrow_shaft = 10.0
    # Length of every axis
    lenght_of_arrow_head = 50.0
    # Radius of the arrow heads cone
    radius_of_arrow_head = 20.0
    # Create the Coordinate and Draw it
    CoordinateCrossShape(   display, 
                            centerpoint_sphere_radius,
                            arrowlength,
                            radius_of_arrow_shaft,
                            lenght_of_arrow_head,
                            radius_of_arrow_head )

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
    add_function_to_menu('Draw', draw_coordinates)
    add_menu('Boolean')
    add_function_to_menu('Boolean', draw_fused_spheres)
    add_function_to_menu('Boolean', draw_cutted_spheres_1)
    add_function_to_menu('Boolean', draw_cutted_spheres_2)
    add_function_to_menu('Boolean', draw_common_spheres)
    add_menu('Erase')
    add_function_to_menu('Erase', erase_all)
    
    start_display()

