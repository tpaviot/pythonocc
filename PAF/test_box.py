from Context import Context
import Parametric
import Factory
import Presentation

# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Create a presentation to display geometry
my_presentation = Presentation.Presentation(my_context)

# Then creates a parameters set
p = Parametric.Parameters(my_context)
p.register_callback(my_presentation.update) #tells that viewer should be updated after each parameter modification

# The factory gives access to geometry creation using parameters
my_factory = Factory.Factory(my_context)

# Create six parameters
p.X1 = 12
p.Y1 = 70
p.Z1 = 12
p.X2 = 30
p.Y2 = 30
p.Z2 = 30

# Create the first point
my_pnt1 = my_factory.PointXYZ(p.X1,p.Y1,p.Z1,"Pnt1")

# Create the second point
my_pnt2 = my_factory.PointXYZ(p.X2,p.Y2,p.Z2,"Pnt2")

# Create the box
my_box = my_factory.BoxTwoPnt(my_pnt1,my_pnt2,"Box1")

# Displays objects
my_presentation.register_object(my_pnt1)
my_presentation.register_object(my_pnt2)
my_presentation.register_object(my_box)
