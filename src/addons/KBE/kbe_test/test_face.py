__author__ = 'jelle'
from OCC.Utils.Construct import *
from nose.tools import with_setup, raises, eq_
from ..face import Face
from ..vertex import Vertex

class TestFace_Sphere:
    '''
    this test case would be much better if the methods would run on a number of test cases
    [ line, arc, closed polygon, bspline with lots of points... stuff like that... ]
    so for the moment its mostly about asserting the KBE API makes sense...
    '''
    def setup(self):
        self.face = Face( BRepPrimAPI_MakeSphere(1,1).Face() )

    def test_domain(self):
        domain = self.face.domain()
        eq_(domain, (0.0, 1.0, -1.5707963267948966, 1.5707963267948966))

    def test_distance(self):
        v = make_vertex(gp_Pnt())
        eq_(self.face.distance(v)[0], 1.0)

    def test_trimmed(self):
        # test_domain show that this u,v point lies on the face
        trimmed= self.face.on_trimmed(0.1,0.1)
        eq_(trimmed, True)
        # u,v does not lie on face
        trimmed= self.face.on_trimmed(10,10)
        eq_(trimmed, False)

    def test_planar(self):
        is_planar, pln = self.face.is_planar()
        eq_(is_planar, False)

    def test_global_properties(self):
        centre = self.face.GlobalProperties.centre()
        eq_(centre, gp_Pnt(0.660189250701, 0.360663031426, 0.0))

#    def test_(self):
#        raise ValueError

#
#    def test_(self):
#        raise ValueError
#
#    def test_(self):
#        raise ValueError
#
#    def test_(self):
#        raise ValueError
#
