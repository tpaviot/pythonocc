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

# Create two parameters with initial values
p.X = 10
p.Y = 12

def IsGreaterThan10(x):
    return x>10.0
#Create a Rule
R1 = Parametric.Rule(p,"Y",IsGreaterThan10)

#Create a Relation
Rel1 = Parametric.Relation(p,"Y","p.X + 12")



