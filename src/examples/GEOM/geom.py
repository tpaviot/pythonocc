from OCC.Display.SimpleGui import init_display
from OCC.PAF.TopologyParameterizer import geomobject_from_topods
from OCC.Utils.Construct import *
from OCC.PAF.Context import Parameters, ParametricModelingContext

#===============================================================================
# the objective here is to make TopoDS_Shape subclasses ( think TopoDS_Vertex )
# instances available to the parametric
# context, which requires a SGEOM.GEOM_Object, rather than a TopoDS_* instance
#===============================================================================

# create TopoDS_Vertex, TopoDS_Edge
vertex  = make_vertex( gp_Pnt() )
lineA   = make_line( gp_Pnt(-1,0,0), gp_Pnt(1,0,0) )
lineB   = make_line( gp_Pnt(0,-1,0), gp_Pnt(0,1,0) )

display, start_display, add_menu, add_function_to_menu = init_display()

p = Parameters()
pmc = ParametricModelingContext(p)
pmc.register_operations(pmc.boolean_operations)
pmc.set_display(display)

v, lA, lB = map(lambda x: geomobject_from_topods(pmc, x), (vertex, lineA, lineB))

pmc.boolean_operations.MakeBoolean(lA.GetHandle(),lB.GetHandle(),3, show=True)

start_display()
