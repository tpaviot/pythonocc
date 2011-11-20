from OCC.DataExchange.utils import file_to_shape
from OCC.Utils.Topology import Topo

if __name__ == "__main__":
    shape = file_to_shape("/Users/localadmin/Documents/workspace/pythonocc/src/examples/Level1/Geodesic/geodesic.igs")
    tp = Topo(shape, True)
    from OCC.KBE.base import Display
    Display()(shape)
    e = tp.edges().next()
    uva, pnta = e.project_vertex(e.first_vertex())
    for edg in tp.edges():
        for uvb, pntb in edg.divide_by_number_of_points(5)[1:-1]:
            if pnta == pntb or edg == e:
                continue
            fc = tp.faces().next()
            geodesic_edg = geodesic_path(pnta, pntb, e, edg, fc, 140, 0.1, 30)
            geodesic_edg.show()

    import ipdb; ipdb.set_trace()
