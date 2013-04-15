from OCC.Visualization import *
from OCC.BRepPrimAPI import *

import unittest

class TestTesselator(unittest.TestCase):
    def test_tesselate_box(self):
        a_box = BRepPrimAPI_MakeBox(10,20,30).Shape()
        tess = Tesselator(a_box,atNormal,1.0,1,0.01,0.1,0.1,0.1,0.1,0.1,0.1,0.)
        self.assertTrue(tess.ObjGetTriangleCount() == 12)
        self.assertTrue(tess.ObjGetNormalCount() == 24)
        
def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestTesselator))
   return suite

if __name__ == '__main__':
    unittest.main()

