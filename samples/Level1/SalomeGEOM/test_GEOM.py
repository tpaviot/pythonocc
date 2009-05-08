from OCC.GEOMImpl import *
from OCC.SGEOM import *
from OCC.BRep import *
from OCC.gp import *
from OCC.TDF import *

from OCC.Utils.Topology import Topo
from OCC.Display.wxSamplesGui import start_display, display

import time

#===============================================================================
# SETUP
#===============================================================================

RESULT_LABEL = 2

# Create engine
docId = 100
myEngine = GEOMImpl_Gen()
engine = myEngine.GetEngine()
doc_h = myEngine.GetDocument(docId)
doc   = doc_h.GetObject()

# get access to operations
prim_operations = myEngine.GetI3DPrimOperations(docId)
basic_operations = myEngine.GetIBasicOperations(docId)

#===============================================================================
# UTILITIES
#===============================================================================

def print_vertices(shape):
#    import ipdb; ipdb.set_trace()
    for i,v in enumerate(Topo(shape).vertices()):
        print 'Vertex: %s Coord: %s' % ( i, BRep_Tool().Pnt(v).Coord())
    

from OCC.TCollection import TCollection_AsciiString as String
def to_string(_str):
    return String(_str)

def to_param(x):
    return GEOM_Parameter(x)

def add_variabele_to_engine(engine, docId, varString, varValue):
    '''
    '''
    engine.SetInterpreterConstant(docId, to_string(varString), varValue)

def set_param_update(param, new_value):
    SetParameterValue(param, new_value)

#===============================================================================
# EXAMPLE
#===============================================================================

add_variabele_to_engine(engine, docId, "WIDTH", 12)
add_variabele_to_engine(engine, docId, "HEIGHT", 70)
add_variabele_to_engine(engine, docId, "DEPTH", 12)

basic_operations.StartOperation()
pnt1 = basic_operations.MakePointXYZ(to_param(to_string("WIDTH")),
                                     to_param(to_string("DEPTH")),
                                     to_param(to_string("HEIGHT"))
                                    )
pnt1.GetObject().SetName("point 1")
basic_operations.FinishOperation()

add_variabele_to_engine(engine, docId, "WIDTH_A", 0)
add_variabele_to_engine(engine, docId, "HEIGHT_A", 0)
add_variabele_to_engine(engine, docId, "DEPTH_A", 0)

basic_operations.StartOperation()
pnt2 = basic_operations.MakePointXYZ(to_param(to_string("WIDTH_A")),
                                     to_param(to_string("DEPTH_A")),
                                     to_param(to_string("HEIGHT_A"))
                                    )
pnt2.GetObject().SetName("point 2")
basic_operations.FinishOperation()


prim_operations.StartOperation()
Box = prim_operations.MakeBoxTwoPnt(pnt1, pnt2).GetObject()
prim_operations.FinishOperation()

if prim_operations.IsDone():
    print 'build a box'
    print_vertices(Box.GetValue())
    display.DisplayColoredShape(Box.GetValue(), "BLUE")
else:
    print 'did not build box'

add_variabele_to_engine(engine, docId, "HEIGHT", 24)
add_variabele_to_engine(engine, docId, "DEPTH", 24)
solver = prim_operations.GetSolver()

seq = TDF_LabelSequence() 
solver.Update(docId, seq)
if prim_operations.IsDone():
    print 'update box height'
    print_vertices(Box.GetValue())
    display.DisplayColoredShape(Box.GetValue(), "RED")
else:
    print 'did not update box'

add_variabele_to_engine(engine, docId, "WIDTH", 11)
add_variabele_to_engine(engine, docId, "HEIGHT", 33)
add_variabele_to_engine(engine, docId, "DEPTH", 66)
add_variabele_to_engine(engine, docId, "WIDTH_A", -11)
add_variabele_to_engine(engine, docId, "HEIGHT_A", -80)
add_variabele_to_engine(engine, docId, "DEPTH_A", -110)
solver = prim_operations.GetSolver()

seq = TDF_LabelSequence() 
solver.Update(docId, seq)
if prim_operations.IsDone():
    print 'update box width'
    print_vertices(Box.GetValue())
    display.DisplayColoredShape(Box.GetValue(), "GREEN")
else:
    print 'did not update box'


print 'something seriously f*cked up with the topology module!!!'
print 'most likely because of failed hashing...'

from OCC.BRepPrimAPI import *
bx = BRepPrimAPI_MakeBox(12,5,3).Shape()
print 'print vertices'
print_vertices(bx)

from OCC.TopExp import *
from OCC.TopAbs import *
from OCC.TopoDS import TopoDS
tds = TopoDS()

print 'TopExp_Explorer' 

te = TopExp_Explorer(bx, TopAbs_VERTEX)

n = 0
while te.More():
    print 'vertex:', n, ' --- ', BRep_Tool().Pnt(tds.Vertex(te.Current())).Coord()
    te.Next(); n+=1


start_display()














