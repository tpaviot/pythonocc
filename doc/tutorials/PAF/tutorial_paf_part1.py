from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters

p = Parameters()
tutorial_context = ParametricModelingContext(p,commit = True)
tutorial_context.init_display()

p.height = 43.3
p.radius = 12.9

tutorial_context.register_operations(tutorial_context.prim_operations)
my_cylinder = tutorial_context.prim_operations.MakeCylinderRH(p.radius,p.height,name="cylinder1", show=True)


