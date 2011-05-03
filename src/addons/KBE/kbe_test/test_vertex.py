# SVN:$REVISION$
from OCC.Utils.Common import *
from OCC.Utils.Construct import *
from nose.tools import eq_
from ..vertex import Vertex

def test_kbe_vertex():
    """
    Args:
    Returns:
    """
    v1 = Vertex(1,1,1)
    v1.topo
    v1.x
    v1.x = 12
    pnt = gp_Pnt(12, 1, 1)
    v2 = make_vertex(pnt)
    assert v1 == pnt # cool, you couldn't do that with gp_Pnt