##Copyright 2009 Thomas Paviot & Jelle Feringa (tpaviot@gmail.com / jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

# A sample that shows how to generate the gear geometry according
# to knowledge

from OCC.Display import SimpleGui, OCCViewer
from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters, Rule, Relation, symb
from math import pi
from trait_editor import OCCTraitViewer
from sympy import *
from enthought.traits.ui.editor import Editor
from enthought.traits.trait_types import Instance, Bool, Button, Int, Str
from enthought.traits.ui.editor_factory import EditorFactory
from enthought.traits.has_traits import HasTraits
from enthought.traits.ui.item import Item
from enthought.traits.ui.view import View

class PAFContextEditor(Editor):
    display = Instance(OCCViewer)
    initialized = Bool
    
    parameters = Instance(Parameters)
    context = Instance(ParametricModelingContext)

    def init ( self, parent):
        self.control = OCCTraitViewer(self)
        self.sync_value(self.name, 'parameters', 'both')
        self.sync_value(self.factory.context, 'context', 'both')
        if self.factory.display:
            self.sync_value(self.factory.display, 'display', 'both')
        print self.display
    
    def _initialized_changed(self):
        '''when display has been set on the first paint event'''
        self.context.set_display(self.control._display)
        print 'Display initialiazed'
        
     
class ToolkitEditorFactory ( EditorFactory ):
    context = Str
    display = Str
    def _get_simple_editor_class(self):
        return PAFContextEditor

PAFContextEditorFactory = ToolkitEditorFactory

class PAFTest(HasTraits):
    context = Instance(ParametricModelingContext)
    parameters = Instance(Parameters)
    run = Button
    step = Button
    pause = Button
    stop = Button
    stepsize = Int
    pos = Int(4)
    view = View(Item("parameters", editor=PAFContextEditorFactory(context='context')),
                Item("step"))
    
    def _step_changed(self):
        self.pos += 1
        self.parameters.a = self.pos

# Initialization
p = Parameters()
my_context = ParametricModelingContext( p )
#my_context.set_display(display)
#my_context.set_display_loop_function(SimpleGui.start_display)

#create trait viewer
paftest = PAFTest(context=my_context, parameters=p)
my_context.register_operations(my_context.basic_operations)

# Define the first gear (actually modelized by a cylinder)
# location of the first gear
p.X1 = 0.0001 #sympy have sometimes problems with 0 value
p.Y1 = 0.0
p.Z1 = 0.0
my_pnt1 = my_context.basic_operations.MakePointXYZ( p.X1, p.Y1, p.Z1, name="Pnt1" )

# Direction of the gear
p.DX1 = 0.0
p.DY1 = 0.0
p.DZ1 = 1.0
my_vec1 = my_context.basic_operations.MakeVectorDXDYDZ( p.DX1, p.DY1, p.DZ1, name="Vec1" )


# Parameters of the cylinder
p.R1 = 50.0 #radius
p.H1 = 20.0 #height
p.Angle1 = 0.0
gear1 = my_context.prim_operations.MakeCylinderPntVecRH( my_pnt1, my_vec1, p.R1, p.H1, p.Angle1, name="Gear1", show=True )

# Define the second gear (actually also modelized by a cylinder)

# location of the second gear
p.X2 = 100
p.Y2 = 0.0
p.Z2 = 0.0
my_pnt2 = my_context.basic_operations.MakePointXYZ( p.X2, p.Y2, p.Z2, name ="Pnt2" )

# Direction of the second gear
p.DX2 = 0.0
p.DY2 = 0.0
p.DZ2 = 1.0
my_vec2 = my_context.basic_operations.MakeVectorDXDYDZ( p.DX2, p.DY2, p.DZ2, name ="Vec2" )

# Parameters of the second cylinder
p.R2 = 70.0  #radius
p.H2 = 20.0  #height
p.Angle2 = 0.0
gear2 = my_context.prim_operations.MakeCylinderPntVecRH( my_pnt2, my_vec2, p.R2, p.H2, p.Angle2, name="Gear2", show=True )

# Define the parameters that drive the design of the gears
p.m = 2     #the gear modulus
p.a = 100   # the distance between gears axis

# Other parameters of the gears that it's good to know about
p.Z1 = 1    #unknown for the moment, the parameter is just created
p.Z2 = 1    # number of teeth, unknown for the moment
p.r = 0.5   # The speed ratio

def DefineRules():
    # The number of teeth must be greater than 0 and also be an integer
    def CheckZ( Z ):
        print 'checking Z for param:',Z
        return ( int( Z ) / Z == 1.0 and Z > 0 )
    
    # The modulus cannot take any value (notice that this list is not exhaustive.
    def Checkm( m ):
        print 'checking M for param:', m
        return m in [0.06, 0.08, 0.1, 1, 1.25, 1.5, 2, 2.5, 3]
    
    Rule(p, "Z1", CheckZ )
    Rule(p, "Z2", CheckZ )
    Rule(p, "m", Checkm )
        
def DefineRelations():
    # The three relations are:
    #    * d1 = 2a/(1+r) so R1=a/(1+r)    (Rel1)
    #    * d2 = 2ar(1+r) so R2 = ar/(1+r) (Rel2)
    #    * X2 = X1 + a   so R3 = X1 + a   (Rel3)
    
    r,a,X1 = p.r.symbol, p.a.symbol, p.X1.symbol
    
    Rel1 = a / ( 1 + r )
    Rel2 = a * r / ( 1 + r )    
    Rel3 = X1 + a
     
    Relation( p, "R1", Rel1 )
    Relation( p, "R2", Rel2 )
    Relation( p, "X2", Rel3 )

DefineRules()
DefineRelations()

#for i in range( 40, 120, 3 ):
#p.a = 1
#    print 'updated p.a from %s to %s ' % ( p.a.value, i )


paftest.configure_traits()
#my_context.start_display()