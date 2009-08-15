from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters

import time

# Create and initialize a parametric context
my_params = Parameters()            # Create a parameters set
my_context = Context(my_params)     # Create and initialize a parametric context

# Create six parameters
my_params.X1 = 12
my_params.Y1 = 70
my_params.Z1 = 12
my_params.X2 = 30
my_params.Y2 = 30
my_params.Z2 = 30
my_params.RADIUS = 4

# Create the points
my_pnt1 = my_context.basic_operations.MakePointXYZ(my_params.X1, my_params.Y1, my_params.Z1, name='my_first_pnt')
my_pnt2 = my_context.basic_operations.MakePointXYZ(my_params.X2,my_params.Y2,my_params.Z2, name='second_point')

# Create the box
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2, name='my_box')

# add a fillet to the box
my_filleted_box = my_context.local_operations.MakeFilletAll(my_box, my_params.RADIUS, name='filleted_box')

for i in range(1,5):
    print 'changed parameter my_params.RADIUS from %s to %s' % ( i-1, i ) 
    my_params.RADIUS = i

for i in range(30,50, 5):
    print 'changed parameter my_params.Z2 from %s to %s' % ( i-1, i ) 
    my_params.Z2 = i

my_context.start_display()
