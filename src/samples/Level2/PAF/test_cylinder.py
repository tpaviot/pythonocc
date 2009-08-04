from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters, Rule, Relation
from OCC.PAF.Factory import Factory
from OCC.PAF.Presentation import Presentation
from math import pi

from OCC.Display.wxSamplesGui import start_display, display


# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Create a presentation to display geometry
my_presentation = Presentation(my_context)

# Then creates a parameters set
p = Parameters(my_context)
p.register_callback(my_presentation.update) #tells that viewer should be updated after each parameter modification

# The factory gives access to geometry creation using parameters
my_factory = Factory(my_context)

# Create six parameters
p.R = 50 #radius
p.H = 100 #height
p.Angle = 3*pi/2 #angle

# Create the cylinder
my_cyl = my_factory.CylinderRH(p.R,p.H,p.Angle,"Cyl1")

# Displays objects
my_presentation.register_object(my_cyl)

for i,j in zip(range(50,100), range(1,50)):
    p.R, p.H = i, j
    print 'update p.R, p.H from %s, %s to %s, %s' % ( p.R[1], p.H[1], i, j)

start_display()