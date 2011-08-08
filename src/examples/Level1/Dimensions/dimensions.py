from OCC.gp import *
from OCC.AIS import *
from OCC.TCollection import TCollection_ExtendedString
from OCC.Utils.Construct import make_edge
from OCC.Utils.Common import to_string

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()

c = gp_Circ(gp_Ax2(gp_Pnt(200.,200.,0.),gp_Dir(0.,0.,1.)), 80)
ec = make_edge(c)
ais7 = AIS_Shape(ec)
display.Context.Display(ais7.GetHandle())
rd = AIS_RadiusDimension(ec,80,to_string("radius"))
rd.SetArrowSize(12)
display.Context.Display(rd.GetHandle())
display.FitAll()
start_display()
 
