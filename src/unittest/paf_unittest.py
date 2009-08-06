from OCC.PAF.Context import *
from OCC.PAF.Parametric import *

import unittest
# Then creates a parameters set
p = Parameters()
# Create and initialize a parametric context
my_context = Context(p)


# Define the function
def IsPositive(param):
    return param.value>0.0


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
        rule = Rule(p)
        p.X = 10
        p.Y = -10
        rule.add_rule( "X", IsPositive )
        rule.add_rule( "Y", IsPositive )
        self.assertRaises(BrokeRule, rule.eval)
        
#    NOT DONE

    def test_relation_sympy(self):
        X = symb(p.X)
        first_relation = 1/ X **2 + 1
        u=Relation(p,"Y",first_relation)
        

if __name__ == '__main__':
    unittest.main()

