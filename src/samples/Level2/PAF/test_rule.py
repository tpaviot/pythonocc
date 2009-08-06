from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters, Rule

# Create and initialize a parametric context
my_context = Context()

# Then creates a parameters set
p = Parameters(my_context)

# Define the function
def IsPositive(x):
    return x>0.0

# Create one parameter
p.X = 10

#Create a Rule
R1 = Rule(p,"X",IsPositive)
