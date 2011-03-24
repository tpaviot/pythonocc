from OCC.Utils.Common import *
from OCC.Utils.Construct import *
from ..kbe_vertex import Vertex

def test_kbe_vertex():
    """

    Args:


    Returns:

    """
    v1 = Vertex(1,1,1)
    v1.topo
    v1.x
    v1.x = 12
    v2 = make_vertex(gp_Pnt(1,1,1))
    import ipdb; ipdb.set_trace()