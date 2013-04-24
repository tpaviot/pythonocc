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
# $Revision: 1081 $
# $Date: 2010-08-19 18:22:39 +0200 (Thu, 19 Aug 2010) $
# $Author: tpaviot $
# $HeadURL: https://pythonocc.googlecode.com/svn/trunk/src/addons/DYN/Context.py $

# The DYN joints are dervied from ode joints
import ode

from OCC.gp import *

class BaseJoint(object):
    ''' Base class for all joints
    '''
    def set_anchor(self,gp_point_center):
        ''' Set the anchor of the ball joint
        '''
        self.setAnchor(gp_point_center.Coord())

    def attach_shapes(self,shape1,shape2):
        self.attach(shape1,shape2)

    def set_axis(self, gp_direction):
        ''' sets the hinge axis, which is a gp_Dir
        '''
        self.setAxis(gp_direction.Coord())

class DynamicHingeJoint(ode.HingeJoint, BaseJoint):
    """ Create a hinge joint between 2 dynamic shapes
    """
    def __init__(self,dyn_context):
        self.dyn_context = dyn_context
        ode.HingeJoint.__init__(self,dyn_context)

class DynamicUniversalJoint(ode.HingeJoint, BaseJoint):
    """ Create a hinge joint between 2 dynamic shapes
    """
    def __init__(self,dyn_context):
        self.dyn_context = dyn_context
        ode.UniversalJoint.__init__(self,dyn_context)

class DynamicSliderJoint(ode.SliderJoint, BaseJoint):
    """ Create a slider joint between 2 dynamic shapes
    """
    def __init__(self,dyn_context):
        self.dyn_context = dyn_context
        ode.SliderJoint.__init__(self, dyn_context)
        #del self.set_anchor # not present with a slider joint

class DynamicBallJoint(ode.BallJoint, BaseJoint):
    """ Create a joint between 2 DynamicShapes
    """
    def __init__(self,dyn_context):
        self.dyn_context = dyn_context
        ode.BallJoint.__init__(self,dyn_context)

import os

def mem(size="rss"):
    """Generalization; memory sizes: rss, rsz, vsz."""
    return int(os.popen('ps -p %d -o %s | tail -1' %
                        (os.getpid(), size)).read())
def rss():
    """Return ps -o rss (resident) memory in kB."""
    return float(mem("rss"))/1024
def print_consumed_memory():
    print 'memory consumption for current pid: %fMb'%(rss()-initial_memory)
initial_memory = rss()
print initial_memory

if __name__ == '__main__':
    # simple example : create 2 boxes connected with a ball joint
    from Shape import DynamicShape
    from Context import DynamicSimulationContext
    # Create two boxes
    from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
    from OCC.Display.SimpleGui import *
    display, start_display, add_menu, add_function_to_menu = init_display()
    
    # Create the context
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    # Create s shape and add it to the dynamic context
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d1 = dyn_context.register_shape(s1)
    # Create s shape and add it to the dynamic context
    s2 = BRepPrimAPI_MakeBox(30,10,20).Shape()
    d2 = dyn_context.register_shape(s2)
    # Create the ball joint
    #j = DynamicBallJoint(dyn_context)
    #ball_center = gp_Pnt(5,4,3)
    #j.attach_shapes(d1, d2)
    #j.set_anchor(ball_center)
    #dyn_context.register_joint(j)
    
    # Create the hinge joint
    j = DynamicHingeJoint(dyn_context)
    j.attach_shapes(d1,d2)# = DynamicHingeJoint(d1.get_parent_context(),d2)
    #dyn_context)
    #j.attach_shapes(d1,d2)
    hinge_center = gp_Pnt(5,4,3)
    hinge_direction = gp_Dir(1,0,0)
    j.set_anchor(hinge_center)
    j.set_axis(hinge_direction)
    dyn_context.register_joint(j)
    # Sets initial conditions
    d1.setAngularVel([-1,0,0])
    dyn_context.register_post_step_callback(safe_yield)
    #
    # Create a function to check the memory consumption
    # Displays the number of garbage collected objects
    i = 0
    def t():
        global i
        i += 1
        print "Simulation STEP : %i"%i
        print "\tnumber of transients : %i"%len(GarbageCollector.garbage._transients)
        print "\tnumber of handles : %i"%len(GarbageCollector.garbage._handles)
        print "\tnumber of misc : %i"%len(GarbageCollector.garbage._misc)
        print_consumed_memory()

        
        #print GarbageCollector.garbage
        # register this call back
    dyn_context.register_post_step_callback(t)
    dyn_context.start_open_loop()
            
if __name__ == '__main__':
    w = ode.World()