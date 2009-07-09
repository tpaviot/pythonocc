from Context import Context
from Parametric import Parameters, symb, value, Relation
import Factory
from sympy import *

# Create and initialize a parametric context
my_context = Context()
my_context.Init()

# Then creates a parameters set
p = Parameters(my_context)

# Define the function
def IsPositive(x):
    return x>0.0

# Create two parameters with initial values
p.X = 10
p.Y = 12

# define a sympy relation based on one parameter
X = symb(p.X)
first_relation = 1/ X **2 + 1
u=Relation(p,"Y",first_relation)

