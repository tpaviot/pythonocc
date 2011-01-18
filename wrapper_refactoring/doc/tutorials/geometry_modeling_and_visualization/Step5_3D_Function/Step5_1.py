# =============================================================================
# Packages to import
# =============================================================================
import wx
import sys

from OCC import VERSION
from OCC.Display.wxDisplay import wxViewer3d

import OCC.gp 
import OCC.BRepPrimAPI 
import OCC.BRepAlgoAPI
import OCC.BRepOffsetAPI

import scipy

from Step5_1_A import *

# =============================================================================
# Functions called from some menu-items
# =============================================================================


def draw_cylinder(event=None):
    # cylinder radius
    Radius = 250.0
    # cylinder length
    Length = 700.0
    # The center point at one of the flat cylinder faces 
    Point = scipy.array([0.0, 0.0, -350.0])
    Point = scipy.reshape(Point,(3,1))
    # The direction of the cylinder from the point given above 
    DirectionFromPoint = scipy.array([0.0, 0.0, 1.0])
    DirectionFromPoint = scipy.reshape(DirectionFromPoint,(3,1))
    # create the cylinder object
    MyCylinder = cylinder_from_point_directionvector_length_and_radius( \
                                                                Point, 
                                                                DirectionFromPoint,
                                                                Length,
                                                                Radius )
    MyCylinderShape = MyCylinder.Shape()
    display.DisplayColoredShape( MyCylinderShape , 'BLACK' ) 



def draw_coordinates(event=None):
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



def draw_spiral(event=None):
    # 1. The curve parameter t
    # ------------------------
    # The curve is parametrized by parameter t
    # curve parameter t Minimum
    t_min = -6.0 * scipy.pi
    # curve parameter t Maximum
    t_max = 6.0 * scipy.pi
    # We need to compute the curve at discrete points so
    # we divide our intervall ]t_min, t_min] to equal steps.
    t_stepwidth = scipy.pi / 24.0
    # This leads to the amount of discrete points where we
    # want to compute our cuve values
    number_of_points = int( ( t_max - t_min ) / t_stepwidth)
    # Lets generate an array holding the curve parameter values
    t = scipy.zeros(( number_of_points, 1), dtype = float)
    for i in range (0, number_of_points):
        t[i, 0] = t_min + i * t_stepwidth

    # 2. The function values and the tangent of the curve
    # ---------------------------------------------------
    # The curve should be a spiral around the z-axis. The spirals
    # radius is set to SpiralRadius. So the distance from every point 
    # on the curve is SpiralRadius.
    SpiralRadius = 250.0
    # x(t) and y(t) form a circle if you look at the curve from 
    # positive or negative z-direction without perspective. So
    # x(t) and y(t) are set to
    x_t = SpiralRadius * scipy.cos(t)
    y_t = SpiralRadius * scipy.sin(t)
## ** ERROR Reproduction **    
    # In the z-direction the curve is linear so we define the progess
    # I receive a memory protection exception with m=20!
    # If m = 21.0 is choosen there is absolutely no problem.
    m = 21.0 
##    m = 20.0 
    z_t = m * t
    # Note: Because t is an array the scipy.cos(t) and scipy.sin(t)
    #       are also arrays. We need no loop for that. That's cool! 
    
    # To get the tangent of the curve we compute the derivatives
    # accoding to the parameter t
    diff_x_t = SpiralRadius * (-1.0) * scipy.sin(t)
    diff_y_t = SpiralRadius * scipy.cos(t)
    diff_z_t = m * scipy.ones(( number_of_points, 1), dtype = float)
    
    # 3. Displaying the function
    # --------------------------
    # We want to draw the function pretty smooth. So we need to
    # define cross sections of discrete values and extrude these
    # cross sections. The cross sections are circles with radius
    CurveRadius = 10.0
    # Every n-th point should be shown. We name that number n and
    # assign an integer
    points_shown = 10
    # The shown points should appear as a sphere with radius
    SphereRadius = 20.0
    # At every point shown an arrow indicates the direction of the
    # corresponding tangent. The parameters to build the arrow are
    arrowlength = 200.0
    radius_of_arrow_shaft = 10
    lenght_of_arrow_head = 40.0
    radius_of_arrow_head = 20.0

    # The extrusion process needs a cross section. This cross section
    # is created at every point as a circular wire. In order to assign
    # that extrusion some ThruSections-object has to be created. We call 
    # it a generator.
    #
    # Taken from the OCC documentation:
    # ---------------------------------
    # BRepOffsetAPI_ThruSections
    # Describes functions to build a loft. This is a shell or a
    # solid passing through a set of sections in a given
    # sequence. Usually sections are wires, but the first and
    # the last sections may be vertices (punctual sections).
    # 
    # The constructor Initializes an algorithm for building a shell 
    # or a solid passing through a set of sections, where: 
    # - isSolid is set to true if the construction algorithm is 
    # required to build a solid or to false if it is required to build 
    # a shell (the default value), 
    # - ruled is set to true if the faces generated between 
    # the edges of two consecutive wires are ruled surfaces or to 
    # false (the default value) if they are smoothed out by approximation, 
    # - pres3d defines the precision criterion used by the 
    # approximation algorithm; the default value is 1.0e-6. 
    # Use AddWire and AddVertex to define the 
    # successive sections of the shell or solid to be built. 

    # can't tell why this construction works with that parameters
    # but I received errors with other settings.
    ExtrusionGenerator = \
        OCC.BRepOffsetAPI.BRepOffsetAPI_ThruSections(True, True)
    
    # Lets loop through all discrete points of the function
    for i in range (0, number_of_points):
        
        # We do not draw every point and every tangent. If we would 
        # do that our drawing will be overloaded. So we restrict us
        # to show every (points_shown)th point, i.e. point number 0
        # is drawn, next point number (points_shown) is drawn, next
        # point number (2 * points_shown) is drawn and so on
        if i % points_shown == 0:
            # Extract the points from the arrays x_t, y_t, z_t and 
            # form a Scipy array (3,1)
            PointAsScipyArray = scipy.array([ x_t[i], y_t[i], z_t[i]])
            PointAsScipyArray = scipy.reshape(PointAsScipyArray,(3,1))

            # Extract the tangents from the arrays diff_x_t, diff_y_t, 
            # diff_z_t, form a Scipy array (3,1) and normalize it.
            TangentAsScipyArray = \
                scipy.array([ diff_x_t[i], diff_y_t[i], diff_z_t[i]])
            TangentAsScipyArray = scipy.reshape(TangentAsScipyArray,(3,1))
            TangentAsScipyArray = NormVector(TangentAsScipyArray)
        
            # Draw the point as a sphere
            SphereAtComputedPoint = \
                sphere_from_vector_and_radius(  PointAsScipyArray, 
                                                SphereRadius )
            SphereAtComputedPointShape = SphereAtComputedPoint.Shape()
            display.DisplayColoredShape(    SphereAtComputedPointShape, 
                                            'BLUE' ) 
            
            # Draw the tangent from the corresponding point as an arrow
            TangentArrowShape = arrowShape( PointAsScipyArray, 
                                            TangentAsScipyArray,
                                            arrowlength,
                                            radius_of_arrow_shaft,
                                            lenght_of_arrow_head,
                                            radius_of_arrow_head)
            display.DisplayColoredShape( TangentArrowShape , 'RED' ) 
        
        # The circular cross sections for the extrusion process
        # are created at every discrete point.
        # Extract the points from the arrays x_t, y_t, z_t and 
        # form an OCC-point-object
        xPnt = float( x_t[i] )
        yPnt = float( y_t[i] )
        zPnt = float( z_t[i] )
        PointAsOCCPointObject = OCC.gp.gp_Pnt( xPnt, yPnt, zPnt)
        
        # Extract the tangents from the arrays diff_x_t, diff_y_t, 
        # diff_z_t, form an OCC-direction-object
        xDir = float( diff_x_t[i] )
        yDir = float( diff_y_t[i] )
        zDir = float( diff_z_t[i] )
        TangentAsOCCDirectionObject = OCC.gp.gp_Dir( xDir, yDir, zDir)
        
        # Create an OCC-axes-object from the OCC-point-object and the
        # OCC-direction-object
        CircAx = OCC.gp.gp_Ax2( PointAsOCCPointObject, 
                                TangentAsOCCDirectionObject)
        
        # Lets build a circle perpendicular to the tangent of
        # the curve at the discrete point
        Circ = \
            OCC.gp.gp_Circ( OCC.gp.gp_Ax2(  PointAsOCCPointObject, 
                                            TangentAsOCCDirectionObject), 
                                            CurveRadius )
        # We need am Edge object of the circle which ...
        CircEdge = \
            OCC.BRepBuilderAPI.BRepBuilderAPI_MakeEdge( Circ ).Edge()
        # ... forms a wire object.
        Wire = \
            OCC.BRepBuilderAPI.BRepBuilderAPI_MakeWire( CircEdge ).Wire()

        # Taken from the OCC documentation:
        # ---------------------------------
        # map(generatorB.AddWire, [W1b,W2b,W3b,W4b])
        #   AddWire (const TopoDS_Wire &wire)
        # Adds the wire wire to the set of
        # sections through which the shell or solid is built.
        # Use the Build function to construct the shape.
        map( ExtrusionGenerator.AddWire, [Wire] )
    
    # Build the shell
    ExtrusionGenerator.Build()
    ExtrusionGeneratorShape = ExtrusionGenerator.Shape()
    display.DisplayColoredShape( ExtrusionGeneratorShape, 'GREEN' )



def erase_all(event=None):
    display.EraseAll()


def exit(event=None):
    sys.exit()

# =============================================================================
# This is the Application Frame class for wx
# =============================================================================
class AppFrame(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, 
                          parent, 
                          -1, 
                        "pythonOCC-%s 3d viewer"%VERSION, 
                        style=wx.DEFAULT_FRAME_STYLE,
                        size = (640,480))
        self.canva = wxViewer3d(self)      
        self.menuBar = wx.MenuBar()
        self._menus = {}
        self._menu_methods = {}
    
    # Function for creating new menus like File, Edit, View, and so on
    # The stuff appearing at the top    
    def add_menu(self, menu_name):
        _menu = wx.Menu()
        self.menuBar.Append(_menu, "&"+menu_name)
        self.SetMenuBar(self.menuBar)
        self._menus[menu_name]=_menu

    # Function for creating new menu items like File-New, File-Exit, Edit-Copy, 
    # Edit-Cut, Edit-paste, and so on
    # The stuff appearing if a menu is selected
    def add_function_to_menu(self, menu_name, _callable):
        _id = wx.NewId()
        assert callable(_callable), 'the function supplied isnt callable'
        try:
            self._menus[menu_name].Append( _id, 
                                           _callable.__name__.replace('_', ' ').lower() )
        except KeyError:
            raise ValueError, 'the menu item %s doesnt exist' % (menu_name) 
        self.Bind(wx.EVT_MENU, _callable, id=_id)


# =============================================================================
# Called from Main-part. Calls itself frame methods.
# =============================================================================
def add_menu(*args, **kwargs):
    frame.add_menu(*args, **kwargs)
    
def add_function_to_menu(*args, **kwargs):
    frame.add_function_to_menu(*args, **kwargs)

def start_display():    
    '''
    call the mainloop
    '''
    global app
    app.MainLoop()
    
# =============================================================================
# Main-part
# If this script is running as a main script, i.e. it is directly called
# by Python the following is executed.
# =============================================================================
if __name__ == '__main__':
    # Create Application - with wx.PySimpleApp() we do not need an OnInit
    app = wx.PySimpleApp()
    wx.InitAllImageHandlers()
    # Create Application Frame
    frame = AppFrame(None)
    frame.Show(True)
    wx.SafeYield()
    frame.canva.InitDriver()
    app.SetTopWindow(frame)
    display = frame.canva._display
    # Show a background image
    display.SetBackgroundImage("bg.bmp")  
    # This is the place where we hook our functionality to menus
    # ----------------------------------------------------------
    add_menu('File')
    add_function_to_menu('File',  exit)
    add_menu('Draw')
    add_function_to_menu('Draw', draw_cylinder)
    add_function_to_menu('Draw', draw_coordinates)
    add_function_to_menu('Draw', draw_spiral)
    add_menu('Erase')
    add_function_to_menu('Erase', erase_all)
    
    start_display()
