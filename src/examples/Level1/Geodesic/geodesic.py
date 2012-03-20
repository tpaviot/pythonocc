from OCC.DataExchange.utils import file_to_shape
from OCC.Utils.Topology import Topo
from OCC.Utils.Construct import geodesic_path
from OCC.KBE.base import Display

def geo():
    shape = file_to_shape("/Users/localadmin/Documents/workspace/pythonocc/src/examples/Level1/Geodesic/geodesic.igs")
    disp = Display()
    tp = Topo(shape, True)
    disp.display.DisplayShape(shape)
    e = tp.edges().next()
    uva, pnta = e.project_vertex(e.first_vertex())
    for edg in tp.edges():
        for uvb, pntb in edg.divide_by_number_of_points(9)[1:-1]:
            if pnta == pntb or edg == e:
                continue
            fc = tp.faces().next()
            geodesic_edg = geodesic_path(pnta, pntb, e, edg, fc, 100, 0.1, 30)
            disp.display.DisplayShape(geodesic_edg, update=False)
    disp.display.FitAll()
    disp.start_display()

if __name__ == "__main__":
    geo()