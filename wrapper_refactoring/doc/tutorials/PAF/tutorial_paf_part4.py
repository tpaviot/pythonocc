from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters
from OCC.PAF.Parametric import Relation
from OCC.PAF.Parametric import Rule

p = Parameters()
tutorial_context = ParametricModelingContext(p)
tutorial_context.init_display()

p.height = 43.3
p.radius = 12.9

tutorial_context.register_operations(tutorial_context.prim_operations)
my_cylinder = tutorial_context.prim_operations.MakeCylinderRH(p.radius,p.height,name="cylinder1", show=True)

radius = p.radius.symbol
height = p.height.symbol

Rel = 2*radius
Relation(p,"height",Rel)

def IsPositive(x):
    return x>0

Rule(p,"radius",IsPositive) 

   




