from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters, Rule, Relation
from OCC.PAF.Factory import Factory
from OCC.PAF.Presentation import Presentation

from OCC.TDF import *
import time

# Create and initialize a parametric context
my_context = Context()
my_context.init_display()
# Then creates a parameters set
my_params = Parameters(my_context)

# Create a presentation to display geometry
my_presentation = Presentation(my_context, my_params)

# Create six parameters
my_params.X1 = 12
my_params.Y1 = 70
my_params.Z1 = 12
my_params.X2 = 30
my_params.Y2 = 30
my_params.Z2 = 30
my_params.RADIUS = 4

# Create the points
my_pnt1 = my_context.basic_operations.MakePointXYZ(my_params.X1[0], my_params.Y1[0], my_params.Z1[0], name='my_first_pnt')
my_pnt2 = my_context.basic_operations.MakePointXYZ(my_params.X2[0],my_params.Y2[0],my_params.Z2[0], name='second_point')

# Create the box
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2, name='my_box')

# add a fillet to the box
my_filleted_box = my_context.local_operations.MakeFilletAll(my_box, my_params.RADIUS[0], name='filleted_box')

# Displays objects
my_presentation.register_object(my_pnt1)
my_presentation.register_object(my_pnt2)
my_presentation.register_object(my_filleted_box)

for i in range(1,5):
    print 'changed parameter my_params.RADIUS from %s to %s' % ( i-1, i ) 
    my_params.RADIUS = i

for i in range(30,50, 5):
    print 'changed parameter my_params.Z2 from %s to %s' % ( i-1, i ) 
    my_params.Z2 = i

my_context.start_display()
