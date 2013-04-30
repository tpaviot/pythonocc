from OCC.Utils.Construct import *
from OCC.KBE.vertex import Vertex
from OCC.KBE.edge import Edge
from OCC.KBE.face import Face

import unittest

class TestEdge_Line(unittest.TestCase):
    '''
    this test case would be much better if the methods would run on a number of test cases
    [ line, arc, closed polygon, bspline with lots of points... stuff like that... ]
    so for the moment its mostly about asserting the KBE API makes sense...
    '''
    line = make_line(gp_Pnt(), gp_Pnt(1,0,0))
    edg = Edge(line)
        
    def test_domain(self):
        domain = self.edg.domain()
        self.assertEqual((0.0, 1.0),domain)

    def test_param2pnt(self):
        pnt = self.edg.parameter_to_point(0.0)
        self.assertEqual(pnt.Coord(),(0,0,0))

    def test_pnt2param(self):
        param, pnt = self.edg.project_vertex(gp_Pnt())
        self.assertEqual(param,0.)
        self.assertEqual( gp_Pnt().IsEqual(pnt, 0.000001), 1)

    def test_length(self):
        _len = self.edg.length()
        self.assertEqual(_len, 1.)

    def test_divide_by_n_pnts(self):
        pnts = self.edg.divide_by_number_of_points(4)
        xx = [round(i[0],2) for i in pnts]
        self.assertEqual(xx,[0.0, 0.33000000000000002, 0.67000000000000004, 1.0])

    def test_trim(self):
        pnts = self.edg.divide_by_number_of_points(4)
        param1, param2 = pnts[1][0], pnts[2][0]
        trimmed = self.edg.trim(param1, param2)
        self.assertEqual(trimmed.domain(), (0.33333333333333331, 0.66666666666666663))

    def test_first_last_vertex(self):
        # TODO: should return KBE.Vertex, now just a TopoDS_Vertex
        v1 = self.edg.first_vertex()
        v2 = self.edg.last_vertex()

    def test_periodic_rational_closed(self):
        self.assertEqual(self.edg.is_periodic(), 0)
        self.assertEqual(self.edg.is_rational(), 0)
        self.assertEqual(self.edg.is_closed(), 0)

class TestFace_Sphere(unittest.TestCase):
    '''
    this test case would be much better if the methods would run on a number of test cases
    [ line, arc, closed polygon, bspline with lots of points... stuff like that... ]
    so for the moment its mostly about asserting the KBE API makes sense...
    '''
    face = Face(BRepPrimAPI_MakeSphere(1,1).Face())

    def test_domain(self):
        domain = self.face.domain()
        self.assertEqual(domain, (0.0, 1.0, -1.5707963267948966, 1.5707963267948966))
    
    def test_distance(self):
        v = make_vertex(gp_Pnt())
        self.assertEqual(self.face.distance(v)[0], 1.0)

    def test_trimmed(self):
        # test_domain show that this u,v point lies on the face
        trimmed= self.face.on_trimmed(0.1,0.1)
        self.assertEqual(trimmed, True)
        # u,v does not lie on face
        trimmed= self.face.on_trimmed(10,10)
        self.assertEqual(trimmed, False)

    def test_planar(self):
        self.assertEqual(self.face.is_planar(), False)

class TestVertex_Point(unittest.TestCase):
    def test_pnt(self):
        v1 = Vertex(1,1,1)
        v1.x = 12
        pnt = gp_Pnt(12, 1, 1)
        v2 = make_vertex(pnt)
        self.assertEqual(v1,pnt)
        
def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestEdge_Line))
   suite.addTest(unittest.makeSuite(TestFace_Sphere))
   suite.addTest(unittest.makeSuite(TestVertex_Point))
   return suite
  

if __name__ == '__main__':
    unittest.main()

