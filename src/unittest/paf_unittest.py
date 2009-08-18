from OCC.PAF.Context import *
from OCC.PAF.Parametric import *

import unittest

# Then creates a parameters set
p = Parameters()
# Create and initialize a parametric context
my_context = ParametricModelingContext(p)


# Define the function
def IsPositive(param):
    return param>0.0


class TestPAF(unittest.TestCase):
    def test_parameter_arithmic(self):
        '''
        making sure arithmic works on the parameter object
        '''
        p.X = 10
        self.assert_(p.X/2==5)
        self.assert_(p.X*2==20)
        self.assert_(p.X+2==12)
        self.assert_(p.X-2==8)
    
    def test_Rule_simple(self):
        '''
        BrokeRule should be raised, since p.Y < 0.0
        '''
        p.X = 10
        p.Y = -10
        
        # this rule is fine
        r1 = Rule(p, "X", IsPositive )
        
        # this rule should raise exception BrokeRule
        
        # rule is evaluated while constructed
        # so, if the rule is False to start with
        # its will raise BrokeRule
        # dont know how to fix this unittest though...
        # its should work when you think of it!!!
        self.assertRaises(BrokeRule, Rule(p, "Y", IsPositive ))
        
    def test_relation_sympy(self):
        X = p.X.symbol
        first_relation = 1/ X **2 + 1
        u=Relation(p,"Y",first_relation)
        

if __name__ == '__main__':
    unittest.main()

