from Context import Context
import Parametric
import Factory

# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Then creates a parameters set
p = Parametric.Parameters(my_context)

# Define the function
def IsPositive(x):
    return x>0.0

# Create one parameter
p.X = 10

#Create a Rule
R1 = Parametric.Rule(p,"X",IsPositive)
