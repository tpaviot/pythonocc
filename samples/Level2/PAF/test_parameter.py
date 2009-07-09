from Context import Context
import Parametric
import Factory

# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Then creates a parameters set
p = Parametric.Parameters(my_context)

# Create one parameter
p.X = 10
