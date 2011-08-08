#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
##
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
# $Revision$
# $Date$
# $Author$
# $HeadURL$

import time

# ode is the default dynamic engine (http://sf.net/projects/opende)
import ode

from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.TopLoc import *
from OCC.TColgp import *
from OCC.GeomAPI import *

from OCC.DYN.Shape import DynamicShape
        
class DynamicSimulationContext(ode.World):
    """ Define a dynamic simulation context.
    """
    def __init__(self, friction=4000, bounce=0.25):
        ode.World.__init__(self)
        self._dynamic_shapes = []
        self._joints = []
        self._DISPLAY_INITIALIZED = False
        self._COLLISION_DETECTION = False
        self._delta_t = 0.01 #timestep default value
        self._duration = 10.0 #default duration set to 10s
        self._frame_rate = 24 #default frame rate is 24img/sec
        # A joint group for the contact joints that are generated whenever
        # two bodies collide
        self._contactgroup = None
        self._space = None
        # callback after each integration step
        self._post_step_callable = []
        self.friction = friction
        self.bounce = bounce

        #print 'Dynamic simulation context initialized.'

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

    def set_animation_frame_rate(self, frame_rate):
        ''' Define the frame rate, i.e. the number of frames displayed in one second of simulation.
        ex: set_frame_rate(24), means 24 images/seconds are displayed.
        The number of frames displayed depends on the time step.
        For instance, if the time_step is 0.1s, the max frame rate is 10 (display updated.
        '''
        if frame_rate>1/self._delta_t:
            raise AssertionError('Frame rate can not be greater than 1/time_step')
        self._frame_rate = frame_rate
    
    def register_joint(self, the_joint):
        ''' Adds a DynamicJoint to the dynamic context
        '''
        self._joints.append(the_joint)
                
    def register_shape(self, topods_shape, enable_collision_detection=False, use_boundingbox=False, use_sphere = False, use_trimesh=False):
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
            ais_shape = self._display.DisplayShape(dynamic_shape.get_shape(), update=True)
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
            c.setBounce(self.bounce)   # Restitution parameter
            c.setMu(self.friction)       # Coulomb friction
            j = ode.ContactJoint(world, contactgroup, c)
            j.attach(geom1.getBody(), geom2.getBody())

    def start_open_loop(self, quick=False):
        #print 'Simulation started ...'
        #delta_t = 0.01
        t = 0
        current_time_step_index = 0 #it will be incremented at each time step
        frame_delta = int ( (1/self._delta_t) / float(self._frame_rate) )
        # Create the shape transformer outside the loop to have an faster algorithm
        shape_trsf = gp_Trsf()
        while t<self._duration:
            #i = i+1
            if self._COLLISION_DETECTION: 
                self._space.collide((self,self._contactgroup), self._collision_callback)
            # step world
            if not quick:
                self.step(self._delta_t)
            else:
                self.quickStep(self._delta_t)
            # call post-step callable, if its there...
            #if self.post_step_callable is not None:
            #    self.post_step_callable()
            
            # remove all contact joints
            if self._COLLISION_DETECTION:
                self._contactgroup.empty()
            # Check whether the display has to be updated.
            MUST_REDISPLAY = False
            if current_time_step_index%frame_delta==0:
                MUST_REDISPLAY = True
            
            if self._DISPLAY_INITIALIZED and MUST_REDISPLAY:
                for shape in self._dynamic_shapes:
                    if not shape.get_fixed():
                        x, y, z = shape.getPosition()
                        a11,a12,a13,a21,a22,a23,a31,a32,a33 = shape.getRotation()
                        #########
                        xg=shape.x_g#
                        yg=shape.y_g# COG coordinated in the local referential
                        zg=shape.z_g#
                        print 'xg,yg,zg',xg,yg,zg
                        u=x-(xg*a11+yg*a12+zg*a13)
                        v=y-(xg*a21+yg*a22+zg*a23)#COG coordinate in the global referential
                        w=z-(xg*a31+yg*a32+zg*a33)
                        # Move the shape according to its new position/rotation
                        GarbageCollector.garbage.push_context() #prevent memory leak
                        # Set new position/rotation
                        shape_trsf.SetValues(a11,a12,a13,u,
                                             a21,a22,a23,v,
                                             a31,a32,a33,w,
                                             0.1,0.1)
                        shape_location = TopLoc_Location(shape_trsf)
                        self._display.Context.SetLocation(shape.get_ais_shape(),shape_location)
                        # free memory and restore the gc context
                        GarbageCollector.garbage.smart_purge()
                        GarbageCollector.garbage.pop_context()
                        # Store COG position for each shape
                        # Not necessary by default : shape.store_cog_position([x,y,z])
                    # Then update the viewer to show new shapes position
                self._display.Context.UpdateCurrentViewer()
                self._display.FitAll()

            # Increment time
            self._perform_callbacks()
            # Then increment time and loop simulation
            t += self._delta_t
            print 't',t
            print 'redisply, disp init',MUST_REDISPLAY, self._DISPLAY_INITIALIZED
            # increment the step index
            current_time_step_index += 1
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
        #print 'Simulation finished'

    def stop_loop(self):
        pass
    
    def __del__(self):
        print 'Deleting current context...'
        self.clear()
        print 'Current context deleted'
        
    def clear(self):
        '''
        deletes all the ode geometry in the scene
        '''
        if self._DISPLAY_INITIALIZED:
            self._display.EraseAll()
        for i in self._dynamic_shapes:
            if i._collision_geometry is None:
                continue
            else:
                if self._space.query(i._collision_geometry):
                    self._space.remove(i._collision_geometry)
        self._dynamic_shapes = []
        self._joints = []
        self._space = ode.Space()
        self._contactgroup = ode.JointGroup()
        
        

