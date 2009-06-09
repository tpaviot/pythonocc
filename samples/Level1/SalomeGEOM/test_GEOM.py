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

from OCC.TPrsStd import *
from OCC.TNaming import *

def register_presentation(geomObject):
    result_label = geomObject.GetLastFunction().GetObject().GetEntry().FindChild(RESULT_LABEL)
    prs_main = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
    prs_main.Display(True)
    return prs_main
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

#def solve(prim_operations):
#    solver = prim_operations.GetSolver()
#    seq = TDF_LabelSequence() 
#    solver.Update(docId, seq)

solver = prim_operations.GetSolver()
root = doc.Main().Root()
viewer = TPrsStd_AISViewer().New(root, display.Context_handle).GetObject()
prs = register_presentation(Box)

def update():
    seq = TDF_LabelSequence() 
    solver.Update(docId, seq)
    prs.Update()
    viewer.Update()
    
for i in range(-66, -11):
    add_variabele_to_engine(engine, docId, "DEPTH_A", i)
    update()
    display.FitAll()
    time.sleep(.05)

for i in range(-80, 0):
    add_variabele_to_engine(engine, docId, "HEIGHT_A", i)
    update()
    display.FitAll()
    time.sleep(.05)
    
for i in range(-44, 0):
    add_variabele_to_engine(engine, docId, "WIDTH_A", i)
    update()
    display.FitAll()
    time.sleep(.05)

start_display()

