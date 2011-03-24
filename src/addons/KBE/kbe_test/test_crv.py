from OCC.Utils.Construct import *
from nose.tools import with_setup, raises
from ..kbe_crv import Edge

class TestEdge:
    def setup(self):
        self.line = make_line(gp_Pnt(), gp_Pnt(1,0,0))
        self.edg = Edge(self.line)

    def test_domain(self):
        domain = self.edg.domain()
        print domain
        assert (0.0, 1.0) == domain

    def test_param2pnt(self):
        print self.edg.crv
        pnt = self.edg.parameter_to_point(0.0)
        assert pnt.Coord() == (0,0,0)

    def test_pnt2param(self):
        param, pnt = self.edg.project_pnt_on_edge(gp_Pnt())
        assert param == 0.
        assert gp_Pnt().IsEqual(pnt, 0.000001) == 1

    def test_length(self):
        _len = self.edg.length()
        print _len
        assert _len == 1.

    def test_divide_by_n_pnts(self):
        pnts = self.edg.divide_by_number_of_points(4)
        xx = [round(i[0],2) for i in pnts]
        assert xx == [0.0, 0.33000000000000002, 0.67000000000000004, 1.0]




