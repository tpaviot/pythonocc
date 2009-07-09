# A sample that shows how to generate the gear geometry according
# to knowledge

from Context import Context
import Parametric
import Factory
import Presentation
from math import pi

#
# Initialization
#
my_context = Context()
my_context.Init()
my_presentation = Presentation.Presentation(my_context)
p = Parametric.Parameters(my_context)
p.register_callback(my_presentation.update) #tells that viewer should be updated after each parameter modification
my_factory = Factory.Factory(my_context)

#
# Define the first gear (actually modelized by a cylinder)
#

# location of the first gear
p.X1 = 0.0
p.Y1 = 0.0
p.Z1 = 0.0
my_pnt1 = my_factory.PointXYZ(p.X1,p.Y1,p.Z1,"Pnt1")
# Direction of the gear
p.DX1 = 0.0
p.DY1 = 0.0
p.DZ1 = 1.0
my_vec1 = my_factory.VectorDXDYDZ(p.DX1,p.DY1,p.DZ1,"Vec1")
# Parameters of the cylinder
p.R1 = 50.0 #radius
p.H1 = 100.0 #height
p.Angle1 = 0.0
gear1 = my_factory.CylinderPntVecRH(my_pnt1,my_vec1,p.R1,p.H1,p.Angle1,"Gear1")

#
# Define the second gear (actually also modelized by a cylinder)
#

# location of the second gear
p.X2 = 100
p.Y2 = 0.0
p.Z2 = 0.0
my_pnt2 = my_factory.PointXYZ(p.X2,p.Y2,p.Z2,"Pnt2")
# Direction of the second gear
p.DX2 = 0.0
p.DY2 = 0.0
p.DZ2 = 1.0
my_vec2 = my_factory.VectorDXDYDZ(p.DX2,p.DY2,p.DZ2,"Vec2")
# Parameters of the second cylinder
p.R2 = 70.0 #radius
p.H2 = 20.0 #height
p.Angle2 = 0.0
gear2 = my_factory.CylinderPntVecRH(my_pnt2,my_vec2,p.R2,p.H2,p.Angle2,"Gear2")

# Displays gears
my_presentation.register_object(gear1)
my_presentation.register_object(gear2,color=1)

# Define the parameters that drive the design of the gears
p.m = 2 #the gear modulus
p.a= 100 # the distance between gears axis
# Other parameters of the gears that it's good to know about
p.Z1 = 1 #unknown for the moment, the parameter is just created
p.Z2 = 1 # number of teeth, unknown for the moment
p.r = 0.5 # The speed ratio

def DefineRules():
    # The number of teeth must be greater than 0 and also be an integer
    def CheckZ(Z):
        return (int(Z)/Z==1.0 and Z>0)
    R1 = Parametric.Rule(p,"Z1",CheckZ)
    R2 = Parametric.Rule(p,"Z2",CheckZ)
    # The modulus cannot take any value. There's a standard value to respect
    def Checkm(m):
        return m in [0.06,0.08,0.1,1,1.25,1.5,2,2.5,3]
    R3 = Parametric.Rule(p,"m",Checkm)
        
def DefineRelations():
    # The three relations are:
    #    * d1 = 2a/(1+r) so R1=a/(1+r)
    #    * d2 = 2ar(1+r) so R2 = ar/(1+r)
    #    * p.X2 = p.X1 + p.a 
    Rel1 = Parametric.Relation(p,"R1","p.a/(p.r+1.0)")
    Rel2 = Parametric.Relation(p,"R2","(p.a*p.r.gv())/(p.r+1.0)")
    Rel3 = Parametric.Relation(p,"X2","p.X1 + p.a.gv()")

DefineRules()
DefineRelations()
