#!/usr/bin/env python

##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
from OCC.Utils.Construct import *
from OCC.BRepPrimAPI import *
import unittest

class Test(unittest.TestCase):
    ''' Testing hashing
    '''
    def testGP(self):
        p1,p2,p3 = gp_Pnt(), gp_Pnt(1,0,0),gp_Pnt()
        self.assertEqual(p1,p3)
        self.assertNotEqual(p1,p2)
        self.assertEqual( p1,[p1,p2,p3].index(p1) )
    
    def testTopoDS(self):
        box1 = BRepPrimAPI_MakeBox(1,1,1).Shape()
        box2 = BRepPrimAPI_MakeBox(1,1,1).Shape()
        topo1 = Topo(box1)
        topo2 = Topo(box2)
        faces1 = [f for f in topo1.faces()]
        faces2 = [f for f in topo2.faces()]
        #self.assertEqual(faces1[0], faces2[0])
        self.assertEqual(faces1[0], faces1.index(faces1[0]))
        self.assertNotEqual(faces1[0], faces2[1])
        for n,i in enumerate(faces1):
            if n==0:
                self.assertEqual(faces1[0], i)
            else:
                self.assertNotEqual(faces1[0], i)

if __name__ == "__main__":
    unittest.main()
    
