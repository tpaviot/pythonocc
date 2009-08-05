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
#my_presentation = Presentation(my_context)


# Create six parameters
p.X1 = 12
p.Y1 = 70
p.Z1 = 12
p.X2 = 30
p.Y2 = 30
p.Z2 = 30

# Create the first point

import ipdb; ipdb.set_trace()

pnt1 = my_context.basic_ops.MakePointXYZ(p.X1[0], p.Y1[0], p.Z1[0])

my_pnt1 = my_factory.PointXYZ(p.X1,p.Y1,p.Z1,"Pnt1")



# Create the second point
my_pnt2 = my_factory.PointXYZ(p.X2,p.Y2,p.Z2,"Pnt2")

# Create the box
my_box = my_factory.BoxTwoPnt(my_pnt1,my_pnt2,"Box1")

# Displays objects
my_presentation.register_object(my_pnt1)
my_presentation.register_object(my_pnt2)
my_presentation.register_object(my_box)

import ipdb; ipdb.set_trace()


for i in range(31,60):
    print 'changed parameter p.Z2 and p.Y2 from %s to %s' % ( i-1, i ) 
    p.Z2, p.Y2 = i, i

start_display()