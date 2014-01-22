"""
Description
-----------
ccad viewer designed to work under ipython or called from a python
program.  View model.py for a full description of ccad.

It is meant to handle viewers from a variety of GUIs via the view
function.  Currently, however, it only supports gtk.

Author
------
Charles Sharman

License
-------
Distributed under the GNU LESSER GENERAL PUBLIC LICENSE Version 3.
View LICENSE for details.

Revision History
----------------
12/17/11: Began
to 1/11/14: Various Updates
"""

import os
import time
import sys
import math as sysmath  # import * on OCC redefines math

try:
    import pygtk, gtk, gtk.gtkgl, gobject
except ImportError:
    print "Please install (see http://www.pygtk.org)."
    sys.exit(0)

from OCC.AIS import *
from OCC.Aspect import *
from OCC.BRepTools import *
from OCC.gp import *
from OCC.Graphic3d import *
from OCC.HLRAlgo import *
from OCC.HLRBRep import *
from OCC.Image import *
from OCC.Prs3d import *
from OCC.Quantity import *
from OCC.TCollection import *
from OCC.TopAbs import *
from OCC.TopExp import *
from OCC.V3d import *
from OCC.Visual3d import *
from OCC.Xw import *

import ccad.model as cm

# Globals
version = '0.1'
interactive = True


class view_gtk(object):
    """
    A gtk-based viewer
    """

    REGULAR_CURSOR = gtk.gdk.Cursor(gtk.gdk.LEFT_PTR)
    WAIT_CURSOR = gtk.gdk.Cursor(gtk.gdk.WATCH)

    def __init__(self, perspective=False):
        """
        Perspective doesn't seem to work in pythonocc ***.  Don't use.
        """

        self.key_table = {'redraw()': 'KP_Page_Up',
                          'orbitup()': 'KP_Up',
                          'panup()': 'KP_8',
                          'orbitdown()': 'KP_Down',
                          'pandown()': 'KP_2',
                          'orbitleft()': 'KP_Left',
                          'panleft()': 'KP_4',
                          'orbitright()': 'KP_Right',
                          'panright()': 'KP_6',
                          'rotateccw()': 'KP_Divide',
                          'rotatecw()': 'KP_Multiply',
                          'zoomin()': 'KP_Add',
                          'zoomout()': 'KP_Subtract',
                          'fit()': 'KP_Delete',
                          'query()': 'q',
                          'viewstandard("top")': 'KP_Home',
                          'viewstandard("bottom")': 'KP_7',
                          'viewstandard("front")': 'KP_End',
                          'viewstandard("back")': 'KP_1',
                          'viewstandard("right")': 'KP_Page_Down',
                          'viewstandard("left")': 'KP_3',
                          'quit()': '<Control>q'}

        self.occ_viewer = None
        self.occ_view = None
        self.selected = None
        self.selected_shape = None
        self.selection_type = 'shape'
        self.selection_index = -1
        self.foreground = (1.0, 1.0, 0.0)  # Bright-Yellow is default
        self.SCR = (400, 400)  # initial screen size
        self.display_shapes = []

        # Main Window
        self.win = gtk.Window()
        self.win.set_title('ccad viewer')
        self.win.connect('destroy', self.quit)
        self.win.connect('key_press_event', self.keypress)
        #self.win.set_resize_mode(gtk.RESIZE_IMMEDIATE)
        self.win.show()
        #window_handle = self.win.window.xid
        #print 'window_handle', window_handle

        # Vertical Container
        vbox1 = gtk.VBox()
        self.win.add(vbox1)
        vbox1.show()

        hbox1 = gtk.HBox(False)
        hbox1.show()
        vbox1.pack_start(hbox1, False)

        ## Menu Space
        accel_group = gtk.AccelGroup()
        self.win.add_accel_group(accel_group)

        menubar = gtk.MenuBar()
        hbox1.pack_start(menubar, False)
        menubar.show()

        ### File

        file_container = gtk.Menu()

        file_save = gtk.ImageMenuItem(gtk.STOCK_SAVE)
        file_save.connect('activate', self.save)
        file_container.append(file_save)

        file_quit = gtk.ImageMenuItem(gtk.STOCK_QUIT)
        file_quit.connect('activate', self.quit)
        keyval, keymod = self.key_lookup('quit()')
        file_quit.add_accelerator('activate', accel_group, keyval,
                                  keymod, gtk.ACCEL_VISIBLE)
        file_container.append(file_quit)

        file_menu = gtk.MenuItem('_File')
        file_menu.set_submenu(file_container)
        file_menu.show()
        menubar.append(file_menu)

        ### view
        view_container = gtk.Menu()

        view_mode = gtk.MenuItem('Mode')
        view_mode_container = gtk.Menu()
        view_mode.set_submenu(view_mode_container)
        view_container.append(view_mode)

        view_wireframe = gtk.RadioMenuItem(None, 'Wireframe')
        view_wireframe.connect('activate', self.mode_wireframe)
        view_mode_container.append(view_wireframe)

        self.view_shaded = gtk.RadioMenuItem(view_wireframe, 'Shaded')
        self.view_shaded.set_active(True)
        self.view_shaded.connect('activate', self.mode_shaded)
        view_mode_container.append(self.view_shaded)

        view_hlr = gtk.RadioMenuItem(self.view_shaded, 'Hidden Line Removal')
        view_hlr.connect('activate', self.mode_hlr)
        view_mode_container.append(view_hlr)

        #self.view_drawing = gtk.RadioMenuItem(view_hlr, 'Drawing')
        #self.view_drawing.connect('activate', self.mode_drawing)
        #view_mode_container.append(self.view_drawing)

        view_side = gtk.MenuItem('Side')
        view_side_container = gtk.Menu()
        view_side.set_submenu(view_side_container)
        view_container.append(view_side)

        view_front = gtk.MenuItem('Front')
        view_front.connect('activate', self.viewstandard, 'front')
        keyval, keymod = self.key_lookup('viewstandard("front")')
        view_front.add_accelerator('activate', accel_group, keyval,
                                   keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_front)

        view_top = gtk.MenuItem('Top')
        view_top.connect('activate', self.viewstandard, 'top')
        keyval, keymod = self.key_lookup('viewstandard("top")')
        view_top.add_accelerator('activate', accel_group, keyval,
                                 keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_top)

        view_right = gtk.MenuItem('Right')
        view_right.connect('activate', self.viewstandard, 'right')
        keyval, keymod = self.key_lookup('viewstandard("right")')
        view_right.add_accelerator('activate', accel_group, keyval,
                                   keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_right)

        view_back = gtk.MenuItem('Back')
        view_back.connect('activate', self.viewstandard, 'back')
        keyval, keymod = self.key_lookup('viewstandard("back")')
        view_back.add_accelerator('activate', accel_group, keyval,
                                  keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_back)

        view_bottom = gtk.MenuItem('Bottom')
        view_bottom.connect('activate', self.viewstandard, 'bottom')
        keyval, keymod = self.key_lookup('viewstandard("bottom")')
        view_bottom.add_accelerator('activate', accel_group, keyval,
                                    keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_bottom)

        view_left = gtk.MenuItem('Left')
        view_left.connect('activate', self.viewstandard, 'left')
        keyval, keymod = self.key_lookup('viewstandard("left")')
        view_left.add_accelerator('activate', accel_group, keyval,
                                  keymod, gtk.ACCEL_VISIBLE)
        view_side_container.append(view_left)

        view_orbit = gtk.MenuItem('Orbit')
        view_orbit_container = gtk.Menu()
        view_orbit.set_submenu(view_orbit_container)
        view_container.append(view_orbit)

        view_orbitup = gtk.MenuItem('Up')
        view_orbitup.connect('activate', self.orbitup)
        keyval, keymod = self.key_lookup('orbitup()')
        view_orbitup.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitup)

        view_orbitdown = gtk.MenuItem('Down')
        view_orbitdown.connect('activate', self.orbitdown)
        keyval, keymod = self.key_lookup('orbitdown()')
        view_orbitdown.add_accelerator('activate', accel_group, keyval,
                                       keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitdown)

        view_orbitleft = gtk.MenuItem('Left')
        view_orbitleft.connect('activate', self.orbitleft)
        keyval, keymod = self.key_lookup('orbitleft()')
        view_orbitleft.add_accelerator('activate', accel_group, keyval,
                                       keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitleft)

        view_orbitright = gtk.MenuItem('Right')
        view_orbitright.connect('activate', self.orbitright)
        keyval, keymod = self.key_lookup('orbitright()')
        view_orbitright.add_accelerator('activate', accel_group, keyval,
                                        keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitright)

        view_orbitccw = gtk.MenuItem('CCW')
        view_orbitccw.connect('activate', self.rotateccw)
        keyval, keymod = self.key_lookup('rotateccw()')
        view_orbitccw.add_accelerator('activate', accel_group, keyval,
                                      keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitccw)

        view_orbitcw = gtk.MenuItem('CW')
        view_orbitcw.connect('activate', self.rotatecw)
        keyval, keymod = self.key_lookup('rotatecw()')
        view_orbitcw.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        view_orbit_container.append(view_orbitcw)

        view_pan = gtk.MenuItem('Pan')
        view_pan_container = gtk.Menu()
        view_pan.set_submenu(view_pan_container)
        view_container.append(view_pan)

        view_panup = gtk.MenuItem('Up')
        view_panup.connect('activate', self.panup)
        keyval, keymod = self.key_lookup('panup()')
        view_panup.add_accelerator('activate', accel_group, keyval,
                                   keymod, gtk.ACCEL_VISIBLE)
        view_pan_container.append(view_panup)

        view_pandown = gtk.MenuItem('Down')
        view_pandown.connect('activate', self.pandown)
        keyval, keymod = self.key_lookup('pandown()')
        view_pandown.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        view_pan_container.append(view_pandown)

        view_panleft = gtk.MenuItem('Left')
        view_panleft.connect('activate', self.panleft)
        keyval, keymod = self.key_lookup('panleft()')
        view_panleft.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        view_pan_container.append(view_panleft)

        view_panright = gtk.MenuItem('Right')
        view_panright.connect('activate', self.panright)
        keyval, keymod = self.key_lookup('panright()')
        view_panright.add_accelerator('activate', accel_group,
                                      keyval, keymod, gtk.ACCEL_VISIBLE)
        view_pan_container.append(view_panright)

        view_zoom = gtk.MenuItem('Zoom')
        view_zoom_container = gtk.Menu()
        view_zoom.set_submenu(view_zoom_container)
        view_container.append(view_zoom)

        view_zoomin = gtk.MenuItem('In')
        view_zoomin.connect('activate', self.zoomin)
        keyval, keymod = self.key_lookup('zoomin()')
        view_zoomin.add_accelerator('activate', accel_group, keyval,
                                    keymod, gtk.ACCEL_VISIBLE)
        view_zoom_container.append(view_zoomin)

        view_zoomout = gtk.MenuItem('Out')
        view_zoomout.connect('activate', self.zoomout)
        keyval, keymod = self.key_lookup('zoomout()')
        view_zoomout.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        view_zoom_container.append(view_zoomout)

        view_fit = gtk.MenuItem('Fit to Screen')
        view_fit.connect('activate', self.fit)
        keyval, keymod = self.key_lookup('fit()')
        view_fit.add_accelerator('activate', accel_group, keyval,
                                 keymod, gtk.ACCEL_VISIBLE)
        view_zoom_container.append(view_fit)

        view_menu = gtk.MenuItem('_View')
        view_menu.set_submenu(view_container)
        view_menu.show()
        menubar.append(view_menu)

        ### select
        select_container = gtk.Menu()

        select_vertex = gtk.RadioMenuItem(None, 'Select Vertex')
        select_vertex.connect('activate', self.select_vertex)
        select_container.append(select_vertex)

        select_edge = gtk.RadioMenuItem(select_vertex, 'Select Edge')
        select_edge.connect('activate', self.select_edge)
        select_container.append(select_edge)

        select_wire = gtk.RadioMenuItem(select_vertex, 'Select Wire')
        select_wire.connect('activate', self.select_wire)
        select_container.append(select_wire)

        select_face = gtk.RadioMenuItem(select_edge, 'Select Face')
        select_face.connect('activate', self.select_face)
        select_container.append(select_face)

        select_shape = gtk.RadioMenuItem(select_face, 'Select Shape')
        select_shape.set_active(True)
        select_shape.connect('activate', self.select_shape)
        select_container.append(select_shape)

        select_query = gtk.MenuItem('Query')
        select_query.connect('activate', self.query)
        keyval, keymod = self.key_lookup('query()')
        select_query.add_accelerator('activate', accel_group, keyval,
                                     keymod, gtk.ACCEL_VISIBLE)
        select_container.append(select_query)

        select_menu = gtk.MenuItem('_Select')
        select_menu.set_submenu(select_container)
        select_menu.show()
        menubar.append(select_menu)

        ### help
        help_container = gtk.Menu()

        help_manual = gtk.ImageMenuItem('_Manual')
        help_manual.set_image(gtk.image_new_from_stock(gtk.STOCK_HELP, gtk.ICON_SIZE_MENU))
        help_manual.connect('activate', self.display_manual)
        help_container.append(help_manual)

        help_about = gtk.ImageMenuItem(gtk.STOCK_ABOUT)
        help_about.connect('activate', self.about)
        help_container.append(help_about)

        help_menu = gtk.MenuItem('_Help')
        help_menu.set_submenu(help_container)
        help_menu.show()
        menubar.append(help_menu)

        menubar.show_all()

        # OpenGL Space
        glconfig = gtk.gdkgl.Config(mode=gtk.gdkgl.MODE_RGBA | gtk.gdkgl.MODE_DEPTH | gtk.gdkgl.MODE_DOUBLE)
        self.glarea = gtk.gtkgl.DrawingArea(glconfig)
        self.glarea.set_size_request(self.SCR[0], self.SCR[1])
        # Set up the events
        self.glarea.connect_after('realize', self.realize)
        self.glarea.connect('configure-event', self.resize)
        self.glarea.connect('expose-event', self.draw)
        self.glarea.connect('map-event', self.draw)
        self.glarea.connect('button_press_event', self.mousepress)
        self.glarea.connect('button_release_event', self.mouserelease)
        self.glarea.connect('motion_notify_event', self.mousemotion)
        self.glarea.add_events(gtk.gdk.BUTTON_PRESS_MASK | gtk.gdk.BUTTON_RELEASE_MASK | gtk.gdk.POINTER_MOTION_MASK)
        gtk.gtkgl.widget_set_gl_capability(self.glarea, glconfig)
        self.glarea.show()
        vbox1.pack_start(self.glarea)

        # Status Line
        hbox_status = gtk.HBox()
        hbox_status.show()
        vbox1.pack_start(hbox_status, False, False)

        self.status_bar = gtk.Label()
        self.status_bar.set_text('')
        self.status_bar.show()
        hbox_status.pack_start(self.status_bar, False, False)

        # Set up the OCC hooks to the OpenGL space
        # Get the handle IMMEDIATELY after creating an object.
        # Otherwise, this shows very strange behavior (usually seg
        # faults!)
        window_handle = self.glarea.window.xid

        gd = Graphic3d_GraphicDevice(os.environ['DISPLAY'])
        window = Xw_Window(gd.GetHandle(), window_handle >> 16, window_handle & 0xffff, Xw_WQ_3DQUALITY)
        self.occ_viewer = V3d_Viewer(gd.GetHandle(), TCollection_ExtendedString('Viewer').ToExtString())

        # This works now, by reading the handle first.  Go figure . . .
        #print 'Viewer created'
        handle_occ_viewer = self.occ_viewer.GetHandle()
        self.occ_viewer.Init()
        #print 'Viewer inited"
        #self.handle_view = self.occ_viewer.CreateView()
        if perspective:
            self.handle_view = self.occ_viewer.DefaultPerspectiveView()
        else:
            self.handle_view = self.occ_viewer.DefaultOrthographicView()
        #print 'View handle created"
        self.occ_view = self.handle_view.GetObject()
        #print 'view created'
        self.occ_view.SetWindow(window.GetHandle())
        #print 'View window set'

        if not window.IsMapped():
            window.Map()
        self.occ_context = AIS_InteractiveContext(handle_occ_viewer)
        handle_occ_context = self.occ_context.GetHandle()

        # Some Initial Values
        self.occ_view.SetComputedMode(False)
        self.mode_shaded()
        self.occ_view.SetBackgroundColor(Quantity_TOC_RGB, 0.0, 0.0, 0.0)
        self.set_triedron(1)
        
        self.occ_view.MustBeResized()

        # Set up some initial states
        self.morbit = sysmath.pi/12.0
        self.set_scale(10.0)

    # Event Functions
    def realize(self, widget):
        """
        Called on a window realize
        """
        pass  # Adding the glcontext checking here didn't help

    def resize(self, widget, event):
        """
        Called on a window resize
        """
        #print 'Resize called'

        glcontext = gtk.gtkgl.widget_get_gl_context(self.glarea)
        gldrawable = gtk.gtkgl.widget_get_gl_drawable(self.glarea)
        if not gldrawable.gl_begin(glcontext):
            return

        w = widget.allocation.width
        h = widget.allocation.height

        self.SCR = (w, h)
        self.mpan = max(w, h) / 10

        if self.occ_view:
            #print 'Resize'
            self.occ_view.MustBeResized()

        gldrawable.gl_end()

    def draw(self, widget, event):
        """
        Called on a window draw
        """
        #print 'Draw called'

        # For some reason, this check made the display blank on init
        #glcontext = gtk.gtkgl.widget_get_gl_context(self.glarea)
        #gldrawable = gtk.gtkgl.widget_get_gl_drawable(self.glarea)
        #if not gldrawable.gl_begin(glcontext):return

        if self.occ_viewer:
            #print 'Draw'
            self.occ_viewer.Redraw()

        #gldrawable.gl_end()

    def redraw(self, widget=None):
        """
        Called from a user request
        """
        self.glarea.queue_draw()

    def key_lookup(self, func_call):
        """
        Connects a key press to a function in the key_table
        """
        key = self.key_table[func_call]
        retval = gtk.accelerator_parse(key)
        #print key
        if key not in ['KP_Up', 'KP_Down', 'KP_Left', 'KP_Right', 'KP_Delete']:  # Avoids pygtk bug that kind of and kind of doesn't recognize these keys
            #del self.key_table[key]
            del self.key_table[func_call]
        return retval

    def keypress(self, widget, event):
        """
        Called when a key is pressed
        """
        key = gtk.accelerator_name(event.keyval, event.state & gtk.gdk.MODIFIER_MASK)
        self.status_bar.set_text('Key ' + key)
        if key in self.key_table.values():
            try:
                cmd = self.key_table.keys()[self.key_table.values().index(key)]
                eval('self.' + cmd)
            except:
                self.status_bar.set_text('Command unknown ' + cmd)

    def mousepress(self, widget, event):
        """
        Called when a mouse button is pressed
        """
        self.beginx, self.beginy = int(event.x), int(event.y)
        self.occ_view.StartRotation(self.beginx, self.beginy)

    def mouserelease(self, widget, event):
        """
        Called when a mouse button is released
        """
        x, y = int(event.x), int(event.y)
        if event.state & gtk.gdk.BUTTON3_MASK:  # Selection
            self.occ_context.Select()
            self.occ_context.InitSelected()
            if self.occ_context.MoreSelected():
                if self.occ_context.HasSelectedShape():
                    self.selected = self.occ_context.SelectedShape()
                    #print "Current selection (single):",self.selected_shape
            else:
                self.selected = None
            self.make_selection()

    def mousemotion(self, widget, event):
        """
        Called when a mouse button is pressed and the mouse is moving
        """
        x, y = int(event.x), int(event.y)
        if event.state & gtk.gdk.BUTTON2_MASK:  # Mouse-Controlled Projection
            if event.state & gtk.gdk.SHIFT_MASK:  # Mouse-Controlled Pan
                self.occ_view.Pan(x - self.beginx, -y + self.beginy)
                self.beginx, self.beginy = x, y
            else:  # Mouse-Controlled Orbit
                self.occ_view.Rotation(x, y)
        self.occ_context.MoveTo(x, y, self.handle_view)

    # View Functions
    def viewstandard(self, widget=None, viewtype='front'):
        """
        Sets up the viewing projection according to a standard set of views
        """
        if viewtype == 'front':
            self.occ_view.SetProj(V3d_Yneg)
        elif viewtype == 'back':
            self.occ_view.SetProj(V3d_Ypos)
        elif viewtype == 'top':
            self.occ_view.SetProj(V3d_Zpos)
        elif viewtype == 'bottom':
            self.occ_view.SetProj(V3d_Zneg)
        elif viewtype == 'right':
            self.occ_view.SetProj(V3d_Xpos)
        elif viewtype == 'left':
            self.occ_view.SetProj(V3d_Xneg)
        elif viewtype == 'iso':
            self.occ_view.SetProj(V3d_XposYnegZpos)
        elif viewtype == 'iso_back':
            self.occ_view.SetProj(V3d_XnegYposZneg)
        else:
            self.status_bar.set_text('Unknown view' + viewtype)

    def orbitup(self, widget=None, rapid=False):
        """
        The observer has moved up

        All orbits orbit with respect to (0,0,0).  That means points
        far from (0,0,0) will translate as you orbit.  I'd prefer it
        orbiting with respect to the center of the screen.  That
        should be possible using the Gravity method from occ_view, but
        pythonocc doesn't implement OCC's Gravity.
        """
        # The better way
        #gravity = self.occ_view.Gravity() # pythonocc doesn't implement
        #self.occ_view.Rotate(0.0, -self.morbit, 0.0, gravity[0], gravity[1], gravity[2])
        self.occ_view.Rotate(0.0, -self.morbit, 0.0)

    def panup(self, widget=None, rapid=False):
        """
        The scene is panned up
        """
        self.occ_view.Pan(0, -self.mpan)

    def orbitdown(self, widget=None, rapid=False):
        """
        The observer has moved down
        """
        self.occ_view.Rotate(0.0, self.morbit, 0.0)

    def pandown(self, widget=None, rapid=False):
        """
        The scene is panned down
        """
        self.occ_view.Pan(0, self.mpan)

    def orbitright(self, widget = None, rapid=False):
        """
        The observer has moved to the right
        """
        self.occ_view.Rotate(-self.morbit, 0.0, 0.0)

    def panright(self, widget=None, rapid=False):
        """
        The scene is panned right
        """
        self.occ_view.Pan(-self.mpan, 0)

    def orbitleft(self, widget=None, rapid=False):
        """
        The observer has moved to the left
        """
        self.occ_view.Rotate(self.morbit, 0.0, 0.0)

    def panleft(self, widget=None, rapid=False):
        """
        The scene is panned to the left
        """
        self.occ_view.Pan(self.mpan, 0)

    def zoomin(self, widget=None, rapid=False):
        """
        Zoom in
        """
        self.occ_view.SetZoom(sysmath.sqrt(2.0))

    def zoomout(self, widget=None, rapid=False):
        """
        Zoom out
        """
        self.occ_view.SetZoom(sysmath.sqrt(0.5))

    def rotateccw(self, widget=None, rapid=False):
        """
        The scene is rotated counter clockwise
        """
        self.occ_view.Rotate(0.0, 0.0, -self.morbit)

    def rotatecw(self, widget=None, rapid=False):
        """
        The scene is rotated clockwise
        """
        self.occ_view.Rotate(0.0, 0.0, self.morbit)

    def fit(self, widget=None):
        """
        Fit the scene to the screen
        """
        self.occ_view.ZFitAll()
        self.occ_view.FitAll()

    def query(self, widget=None):
        """
        Reports the properties of a selection
        Should do something other than print (popup?) ***
        """
        if self.selected is not None:
            if self.selection_type == 'vertex':
                s = cm.vertex(self.selected)
                retval = 'center' + s.center() + '\ntolerance' + s.tolerance()
            elif self.selection_type == 'edge':
                s = cm.vertex(self.selected)
                retval = 'center' + s.center() + '\ntolerance', + s.tolerance() + 'length' + s.length()
            elif self.selection_type == 'wire':
                s = cm.face(self.selected)
                retval = 'center' + s.center() + 'length' + s.length()
            elif self.selection_type == 'face':
                s = cm.face(self.selected)
                retval = 'center' + s.center() + '\ntolerance', + s.tolerance() + '\ntype', + s.type() + 'area' + s.area()
            else:
                retval = 'No properties for type ' + self.selection_type
            print retval

    # Direct Call (not from GUI) Functions
    def set_projection(self, vcenter, vout, vup):
        """
        Set the projection to a custom view given

        vcenter, the scene coordinates in the center of the window,
        vout, the vector from vcenter in scene coordinates out of the window,
        vup, the vector from vcenter in scene coordinates that show straight up
        """

        projection = Visual3d_ViewOrientation(Graphic3d_Vertex(vcenter[0], vcenter[1], vcenter[2]), Graphic3d_Vector(vout[0], vout[1], vout[2]), Graphic3d_Vector(vup[0], vup[1], vup[2]))
        self.occ_view.SetViewOrientation(projection)

    def set_scale(self, scale):
        """
        Set the screen scale.  I'm not certain, but it looks to me
        like scale is the number of scene-coordinates in the
        x-direction.  For example, if you have a block 8.0 wide in the
        x-direction, and you set the scale to 8.0, the block will
        exactly fill the screen in the x-direction.
        """
        self.occ_view.SetSize(scale)

    def set_size(self, size):
        """
        Sets the size of the window in pixels.  Size is a 2-tuple
        """
        self.win.resize(max(1, size[0]-1), max(1, size[1]-1))
        self.glarea.set_size_request(size[0], size[1])

    def set_background(self, color):
        """
        Sets the background color.
        color is a 3-tuple with each value from 0.0 to 1.0
        """
        self.occ_view.SetBackgroundColor(Quantity_TOC_RGB, color[0], color[1], color[2])

    def set_foreground(self, color):
        """
        Sets the default shape color.
        color is a 3-tuple with each value from 0.0 to 1.0
        """
        self.foreground = color

    def set_triedron(self, state, position='down_right', color=(1.0, 1.0, 1.0), size=0.08):
        """
        Controls the triedron, the little x, y, z coordinate display.

        state (1 or 0) turns it on or off
        position sets the position of the triedron in the window.
        color sets the triedron color (only black or white, currently)
        size sets the triedron size in scene-coordinates
        """
        if not state:
            self.occ_view.TriedronErase()
        else:
            local_position = {'down_right': Aspect_TOTP_RIGHT_LOWER,
                              'down_left': Aspect_TOTP_LEFT_LOWER,
                              'up_right': Aspect_TOTP_RIGHT_UPPER,
                              'up_left': Aspect_TOTP_LEFT_UPPER}[position]
            # Can't set Triedron color RGB-wise!
            #qcolor = Quantity_Color(color[0], color[1], color[2], Quantity_TOC_RGB)
            if color == (1.0, 1.0, 1.0):
                qcolor = Quantity_NOC_WHITE
            else:
                qcolor = Quantity_NOC_BLACK
            self.occ_view.TriedronDisplay(local_position, qcolor, size, V3d_WIREFRAME)

    # Things to Show Functions
    def display(self, shape, color=None, material='default', transparency=0.0, line_type='solid', line_width=1, logging=True):
        """
        Displays a ccad shape.

        color is used for all shape types.  It is a tuple of (R, G, B)
        from 0.0 to 1.0.

        material sets the solid material (unused for non-solids).
        Material can be:

        brass
        bronze
        copper
        gold
        pewter
        plaster
        plastic
        silver
        steel
        stone
        shiny_plastic
        satin
        metallized
        neon_gnc
        chrome
        aluminum
        obsidian
        neon_phc
        jade
        default

        transparency sets the solid transparency; 0 is opaque; 1 is
        transparent

        line_type can be solid, dash, or dot for edges and wires

        line_width sets the edge or wire width in pixels

        logging allows you to keep a list of all shapes displayed
        """
        if hasattr(shape, 'shape'):
            s = shape.shape
        else:
            s = shape
        self.selected_shape = s
        display_shape = {'shape': s,
                         'color': color,
                         'material': material,
                         'transparency': transparency,
                         'line_type': line_type,
                         'line_width': line_width}
        if logging:
            self.display_shapes.append(display_shape)
        aisshape = AIS_Shape(s)
        handle_aisshape = aisshape.GetHandle()

        # Set Color
        if not color:
            color = self.foreground
        #print 'color', color

        #drawer = AIS_Drawer()
        #handle_drawer = drawer.GetHandle()

        handle_drawer = aisshape.Attributes()
        drawer = handle_drawer.GetObject()

        qcolor = Quantity_Color(color[0], color[1], color[2], Quantity_TOC_RGB)

        # Set Point Type
        aspect_point = Prs3d_PointAspect(Aspect_TOM_PLUS, qcolor, 1.0)
        handle_aspect_point = aspect_point.GetHandle()
        drawer.SetPointAspect(handle_aspect_point)

        # Set Line Type
        local_line_type = {'solid': Aspect_TOL_SOLID,
                           'dash': Aspect_TOL_DASH,
                           'dot': Aspect_TOL_DOT}[line_type]
        aspect_line = Prs3d_LineAspect(qcolor, local_line_type, line_width)
        handle_aspect_line = aspect_line.GetHandle()
        #drawer = self.occ_context.DefaultDrawer().GetObject()
        drawer.SetSeenLineAspect(handle_aspect_line)
        drawer.SetWireAspect(handle_aspect_line)

        # Set Shading Type
        aspect_shading = Prs3d_ShadingAspect()
        handle_aspect_shading = aspect_shading.GetHandle()
        #print 'shading color', color
        aspect_shading.SetColor(qcolor, Aspect_TOFM_BOTH_SIDE)
        local_material = {'brass': Graphic3d_NOM_BRASS,
                          'bronze': Graphic3d_NOM_BRONZE,
                          'copper': Graphic3d_NOM_COPPER,
                          'gold': Graphic3d_NOM_GOLD,
                          'pewter': Graphic3d_NOM_PEWTER,
                          'plaster': Graphic3d_NOM_PLASTER,
                          'plastic': Graphic3d_NOM_PLASTIC,
                          'silver': Graphic3d_NOM_SILVER,
                          'steel': Graphic3d_NOM_STEEL,
                          'stone': Graphic3d_NOM_STONE,
                          'shiny_plastic': Graphic3d_NOM_SHINY_PLASTIC,
                          'satin': Graphic3d_NOM_SATIN,
                          'metallized': Graphic3d_NOM_METALIZED,
                          'neon_gnc': Graphic3d_NOM_NEON_GNC,
                          'chrome': Graphic3d_NOM_CHROME,
                          'aluminum': Graphic3d_NOM_ALUMINIUM,
                          'obsidian': Graphic3d_NOM_OBSIDIAN,
                          'neon_phc': Graphic3d_NOM_NEON_PHC,
                          'jade': Graphic3d_NOM_JADE,
                          'default': Graphic3d_NOM_DEFAULT}[material]
        aspect_shading.SetMaterial(local_material)
        aspect_shading.SetTransparency(transparency)
        drawer.SetShadingAspect(handle_aspect_shading)

        self.occ_context.Display(handle_aisshape, True)

    def clear(self, display_shapes=True):
        """
        Clears all shapes from the window
        """
        self.select_shape()
        self.occ_context.PurgeDisplay()
        self.occ_context.EraseAll()
        if display_shapes:
            self.display_shapes = []

    # Selection Functions
    def _build_hashes(self, htype):
        if htype == 'face':
            ex_type = TopAbs_FACE
        elif htype == 'wire':
            ex_type = TopAbs_WIRE
        elif htype == 'edge':
            ex_type = TopAbs_EDGE
        elif htype == 'vertex':
            ex_type = TopAbs_VERTEX
        else:
            print 'Error: Unknown hash type', htype
        if self.selected_shape.ShapeType == TopAbs_WIRE and htype == 'edge':
            ex = BRepTools_WireExplorer(selected_shape)  # Ordered this way
        else:
            ex = TopExp_Explorer(self.selected_shape, ex_type)
        self.hashes = []
        self.positions = []
        while ex.More():
            s1 = ex.Current()
            # Calculate hash
            s1_hash = s1.__hash__()
            if s1_hash not in self.hashes:
                self.hashes.append(s1_hash)
                # Calculate position
                if htype == 'face':
                    f = cm.face(s1)
                    c = (' type ' + f.type(), f.center())
                elif htype == 'wire':
                    w = cm.wire(s1)
                    c = ('', w.center())
                elif htype == 'edge':
                    e = cm.edge(s1)
                    c = ('', e.center())
                elif htype == 'vertex':
                    c = ('', cm.vertex(s1).center())
                self.positions.append(c)
            ex.Next()

    def make_selection(self, event=None):
        """
        Called when a shape is selected
        """
        if self.selected is not None:
            if self.selection_type == 'shape':
                self.selected_shape = self.selected
            else:
                h = self.selected.__hash__()
                try:
                    index = self.hashes.index(h)
                except ValueError:
                    index = -1
                if index == -1:
                    self.status_bar.set_text('Select shape first.')
                else:
                    status = self.selection_type + ' ' + str(index) + self.positions[index][0] + ' at (%.9f, %.9f, %.9f)' % self.positions[index][1]
                    print status
                    self.status_bar.set_text(status)
                self.selection_index = index

    def select_vertex(self, event=None):
        """
        Changes to a mode where only vertices can be selected
        """
        self.glarea.window.set_cursor(self.WAIT_CURSOR)
        self.occ_context.CloseAllContexts()
        self.occ_context.OpenLocalContext()
        self.occ_context.ActivateStandardMode(TopAbs_VERTEX)
        self._build_hashes('vertex')
        self.selection_type = 'vertex'
        self.glarea.window.set_cursor(self.REGULAR_CURSOR)

    def select_edge(self, event=None):
        """
        Changes to a mode where only edges can be selected
        """
        self.glarea.window.set_cursor(self.WAIT_CURSOR)
        self.occ_context.CloseAllContexts()
        self.occ_context.OpenLocalContext()
        self.occ_context.ActivateStandardMode(TopAbs_EDGE)
        self._build_hashes('edge')
        self.selection_type = 'edge'
        self.glarea.window.set_cursor(self.REGULAR_CURSOR)

    def select_wire(self, event=None):
        """
        Changes to a mode where only wires can be selected
        """
        self.glarea.window.set_cursor(self.WAIT_CURSOR)
        self.occ_context.CloseAllContexts()
        self.occ_context.OpenLocalContext()
        self.occ_context.ActivateStandardMode(TopAbs_WIRE)
        self._build_hashes('wire')
        self.selection_type = 'wire'
        self.glarea.window.set_cursor(self.REGULAR_CURSOR)

    def select_face(self, event=None):
        """
        Changes to a mode where only faces can be selected
        """
        self.glarea.window.set_cursor(self.WAIT_CURSOR)
        self.occ_context.CloseAllContexts()
        self.occ_context.OpenLocalContext()
        self.occ_context.ActivateStandardMode(TopAbs_FACE)
        self._build_hashes('face')
        self.selection_type = 'face'
        self.glarea.window.set_cursor(self.REGULAR_CURSOR)

    def select_shape(self, event=None):
        """
        Changes to a mode where only shapes can be selected
        """
        self.glarea.window.set_cursor(self.WAIT_CURSOR)
        self.occ_context.CloseAllContexts()
        self.selection_type = 'shape'
        self.glarea.window.set_cursor(self.REGULAR_CURSOR)

    # Viewing Mode Functions
    def mode_wireframe(self, widget=None):
        """
        Changes the display to view shapes as wireframes
        """
        if not widget or (widget and widget.get_active()):
            self.occ_view.SetComputedMode(False)
            self.occ_context.SetDisplayMode(AIS_WireFrame)

    def mode_shaded(self, widget=None):
        """
        Changes the display to view shapes as shaded (filled) shapes.
        """
        if not widget or (widget and widget.get_active()):
            self.occ_view.SetComputedMode(False)
            self.occ_context.SetDisplayMode(AIS_Shaded)

    def mode_hlr(self, widget=None):
        """
        Changes the display to view shapes in hidden line removal
        mode, where the part outline, sharp edges, and face barriers
        are shown as lines.
        """
        if not widget or (widget and widget.get_active()):
            self.occ_view.SetComputedMode(True)
            self.occ_context.SetDisplayMode(AIS_ExactHLR)

        # Draws hidden lines
        #presentation = Prs3d_LineAspect(Quantity_NOC_BLACK, Aspect_TOL_DASH, 3)
        #self.occ_context.SetHiddenLineAspect(presentation.GetHandle())
        #self.occ_context.EnableDrawHiddenLine()

    def reset_mode_drawing(self):
        """
        Call this after mode_drawing to reset everything.
        """
        self.view_shaded.set_active(True)
        self.clear(0)
        self.occ_view.SetViewOrientation(self.saved_projection)
        for display_shape in self.display_shapes:
            self.display(display_shape['shape'], display_shape['color'], display_shape['material'], display_shape['transparency'], display_shape['line_type'], display_shape['line_width'], logging = 0)

    def mode_drawing(self):
        """
        This is a stand-alone call to make a drafting-like drawing of
        the shape.  It's better than HLR, because HLR shows creases at
        edges where shapes are tangent.  If this must be a menu call,
        pop up a separate window for it.
        """
        self.saved_projection = self.occ_view.ViewOrientation()
        vcenter = self.saved_projection.ViewReferencePoint()  # Graphic3d_Vertex
        vout = self.saved_projection.ViewReferencePlane()  # Graphic3d_Vector
        vup = self.saved_projection.ViewReferenceUp()  # Graphic3d_Vector
        vout_gp = gp_Vec(vout.X(), vout.Y(), vout.Z())
        vright = gp_Vec(vup.X(), vup.Y(), vup.Z())
        vright.Cross(vout_gp)
        projection = HLRAlgo_Projector(gp_Ax2(gp_Pnt(vcenter.X(), vcenter.Y(), vcenter.Z()), gp_Dir(vout.X(), vout.Y(), vout.Z()), gp_Dir(vright.X(), vright.Y(), vright.Z())))
        hlr_algo = HLRBRep_Algo()
        handle_hlr_algo = hlr_algo.GetHandle()
        for display_shape in self.display_shapes:
            hlr_algo.Add(display_shape['shape'])
        hlr_algo.Projector(projection)
        hlr_algo.Update()
        hlr_algo.Hide()
        hlr_toshape = HLRBRep_HLRToShape(handle_hlr_algo)
        vcompound = hlr_toshape.VCompound()
        outlinevcompound = hlr_toshape.OutLineVCompound()
        self.clear(0)
        self.display(vcompound, color=display_shape['color'], line_type=display_shape['line_type'], line_width=display_shape['line_width'], logging=False)
        self.display(outlinevcompound, color=display_shape['color'], line_type=display_shape['line_type'], line_width=display_shape['line_width'], logging=False)
        self.viewstandard(viewtype='top')

    # Helps
    def display_manual(self, widget):
        pass

    def about(self, widget):
        global version
        dialog = gtk.AboutDialog()
        dialog.set_name('ccad viewer')
        dialog.set_version(str(version))
        dialog.set_copyright('\302\251 Copyright 2013 Seven:Twelve Engineering, LLC')
        dialog.run()
        dialog.destroy()

    def save(self, name=''):
        """
        Saves a screen shot
        """

        if isinstance(name, str):
            filename = name
        else:
            dialog = gtk.FileChooserDialog(title=None,
                                           action=gtk.FILE_CHOOSER_ACTION_SAVE,
                                           buttons=(gtk.STOCK_CANCEL,
                                                    gtk.RESPONSE_CANCEL,
                                                    gtk.STOCK_SAVE,
                                                    gtk.RESPONSE_OK))
            for file_type in ['png', 'bmp', 'jpg', 'gif']:
                filter = gtk.FileFilter()
                filter.set_name(file_type)
                filter.add_pattern('*.' + file_type)
                dialog.add_filter(filter)

            response = dialog.run()
            if response == gtk.RESPONSE_OK:
                filename = dialog.get_filename()
            else:
                filename = ''
            dialog.destroy()

        if filename:

            while gtk.events_pending():
                gtk.main_iteration()
            retval = self.occ_view.Dump(filename)
            if not retval:
                self.status_bar.set_text('Error: Couldn\'t save ' + filename)
            else:
                self.status_bar.set_text('Saved ' + filename)

            # This works and allows higher resolutions
            #pixmap = Image_AlienPixMap()
            #self.occ_view.ToPixMap(pixmap, self.SCR[0], self.SCR[1])
            #pixmap.Save(TCollection_AsciiString(name)

    def perspective_length(self, distance):
        """
        Sets the focal length for perspective views
        """
        self.occ_view.SetFocale(distance)

    def perspective_angle(self, angle):
        """
        Sets the focal length for perspective views
        """
        self.occ_view.SetAngle(angle)

    def quit(self, widget=None):
        """
        Closes the viewer
        """
        global __name__
        if __name__ == '__main__' or not interactive:
            gtk.main_quit()
        else:
            self.win.destroy()


def view(manager='gtk', perspective=False):
    if manager == 'gtk':
        v1 = view_gtk(perspective)
        return v1
    else:
        print 'Error: Manager', manager, 'not supported'
        sys.exit()


def start():  # For non-interactive sessions (don't run in ipython)
    global interactive
    interactive = False
    gtk.main()

if __name__ == '__main__':
    import model as cm
    view = view()
    view.set_background((0.35, 0.35, 0.35))
    s1 = cm.sphere(1.0)
    view.display(s1, (0.5, 0.0, 0.0), line_type='solid', line_width=3)
    s2 = cm.box(1, 2, 3)
    view.display(s2, (0.0, 0.0, 0.5), transparency=0.5, line_type='dash', line_width=1)
    start()
