from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters, Rule, Relation
from OCC.PAF.Factory import Factory
from OCC.PAF.Presentation import Presentation

from OCC.Display.wxSamplesGui import start_display, display
import time

# Create and initialize a parametric context
my_context = Context()
my_context.Init()


# Then creates a parameters set
p = Parameters(my_context)
#p.register_callback(my_presentation.update) #tells that viewer should be updated after each parameter modification


# The factory gives access to geometry creation using parameters
my_factory = Factory(my_context)

# Create a presentation to display geometry
my_presentation = Presentation(my_context)


# Create six parameters
p.X1 = 12
p.Y1 = 70
p.Z1 = 12
p.X2 = 30
p.Y2 = 30
p.Z2 = 30
p.RADIUS = 4

# Create the first point

my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1[0], p.Y1[0], p.Z1[0], name='my_first_pnt')
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2[0],p.Y2[0],p.Z2[0], name='second_point')

# Create the box
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2, name='my_box')

# Displays objects
my_presentation.register_object(my_pnt1)
my_presentation.register_object(my_pnt2)

my_filleted_box = my_context.local_operations.MakeFilletAll(my_box, p.RADIUS[0], name='filleted_box')
my_presentation.register_object(my_filleted_box)


for i in range(31,60):
    print 'changed parameter p.Z2 and p.Y2 from %s to %s' % ( i-1, i ) 
    #p.Z2, p.Y2 = i, i
    p.Z2 = i

start_display()
