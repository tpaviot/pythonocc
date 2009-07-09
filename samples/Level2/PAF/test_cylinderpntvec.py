from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters, Rule, Relation
from OCC.PAF.Factory import Factory
from OCC.PAF.Presentation import Presentation
from math import pi

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

# Create a Point
p.X = 0.0
p.Y = 0.0
p.Z = 0.0
my_pnt = my_factory.PointXYZ(p.X,p.Y,p.Z,"Pnt")
# Create a Vector
p.DX = 0.0
p.DY = 0.0
p.DZ = 1.0
my_vec = my_factory.VectorDXDYDZ(p.DX,p.DY,p.DZ,"Vec")

# Create the parameters of the cylinder
p.R = 50.0 #radius
p.H = 100.0 #height
p.Angle = 0.0

# Create the cylinder
my_cyl = my_factory.CylinderPntVecRH(my_pnt,my_vec,p.R,p.H,p.Angle,"Cyl")

# Displays objects
my_presentation.register_object(my_pnt)
my_presentation.register_object(my_vec)
my_presentation.register_object(my_cyl,color=1)
