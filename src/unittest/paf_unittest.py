#!/usr/bin/env python

##Copyright 2009-2013 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import unittest

from OCC.PAF.Context import *
from OCC.PAF.Parametric import *

# Then creates a parameters set
p = Parameters()
# Create and initialize a parametric context
my_context = ParametricModelingContext(p)


# Define the function
def IsPositive(x):
    return x > 0.0


class TestPAF(unittest.TestCase):
    def test_parameter_arithmic(self):
        '''
        making sure arithmic works on the parameter object
        '''
        p.X = 10
        self.assert_(p.X / 2 == 5)
        self.assert_(p.X * 2 == 20)
        self.assert_(p.X + 2 == 12)
        self.assert_(p.X - 2 == 8)

    def test_Rule_simple(self):
        '''
        BrokeRule should be raised, since p.Y < 0.0
        '''
        p.X = 10
        p.Y = -10
        rule1 = Rule(p, "X", IsPositive)
        rule2 = Rule(p, "Y", IsPositive)
        self.assertRaises(BrokeRule, rule2)
        # set the Y value back to a correct value
        # (otherwise the following test fails)
        p.Y = 5

    def test_relation_sympy(self):
        '''
        Test the relation: Y = X**2+1
        '''
        X = p.X.symbol
        relation = X**2 + 1
        u = Relation(p, "Y", relation)
        # set new value for X: 5
        p.X = 5
        # the new Y value should be Y = 5*5+1 = 26
        self.assert_(p.Y.value == 26)


def suite():
    suite = unittest.TestSuite()
    suite.addTest(unittest.makeSuite(TestPAF))
    return suite


if __name__ == '__main__':
    unittest.main()
