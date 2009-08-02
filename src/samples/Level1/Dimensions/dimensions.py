from OCC.gp import *
from OCC.TopoDS import *
from OCC.AIS import *
from OCC.TCollection import TCollection_ExtendedString

from OCC.Display.wxSamplesGui import *
from OCC.BRepBuilderAPI import *

def make_edge(*args):
    return BRepBuilderAPI_MakeEdge(*args).Edge()

c = gp_Circ(gp_Ax2(gp_Pnt(200.,200.,0.),gp_Dir(0.,0.,1.)), 80)
ec = make_edge(c)
ais7 = AIS_Shape(ec)
display.Context.Display(ais7.GetHandle())
rd = AIS_RadiusDimension(ec,80,TCollection_ExtendedString("radius"))
display.Context.Display(rd.GetHandle())
display.FitAll()
start_display()
 
