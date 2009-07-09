from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters

# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Then creates a parameters set
p = Parameters(my_context)

# Create one parameter
p.X = 10
