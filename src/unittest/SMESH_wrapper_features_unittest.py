#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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
import sys

from OCC.Standard import *
from OCC.Utils.Topology import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *
from OCC.gp import *
from OCC.StdMeshers import *

class TestSMESHWrapperFeatures(unittest.TestCase):

    def testSTLVectorInt(self):
        '''
        Checks the IntVector and DoubleVector classes that are used in the StdMeshers
        module
        '''
        # The IntVector must be initialized from a list/tuple of integers
        i_v = IntVector([1,2,3,4])
        self.assertEqual(i_v[0],1)
        self.assertEqual(i_v[1],2)
        self.assertEqual(i_v[2],3)
        self.assertEqual(i_v[3],4)
        # If at least one item of the list is not an integer, raise an exception
        self.assertRaises(TypeError,IntVector,[1,2,3,4.0])
        
    def testSTLVectorDouble(self):
        '''
        Checks the IntVector and DoubleVector classes that are used in the StdMeshers
        module
        '''
        # The IntVector must be initialized from a list/tuple of floats/integers. Integers will
        # be converted to floats
        d_v = DoubleVector([0.1,0.2,0.6,0.7])
        self.assertEqual(d_v[0],0.1)
        self.assertEqual(d_v[1],0.2)
        self.assertEqual(d_v[2],0.6)
        self.assertEqual(d_v[3],0.7)
        # If at least one item of the list is not an float or an integer, raise an exception
        self.assertRaises(TypeError,DoubleVector,[1.0,2.0,3.0,"string"])
        # Test one method of StdMeshers that takes/returns such a parameter type
        from OCC.SMESH import SMESH_Gen
        number_of_segments = StdMeshers_NumberOfSegments(1,10,SMESH_Gen())
        number_of_segments.SetTableFunction(d_v)
        self.assertEquals(number_of_segments.GetTableFunction(),(0.1,0.2,0.6,0.7))
          
def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestSMESHWrapperFeatures))
   return suite

if __name__ == "__main__":
    unittest.main()
    
