from OCC.Display.wxSamplesGui import start_display, display

from OCC.GEOMImpl import *
from OCC.SGEOM import *
from OCC.Utils.Topology import Topo
from OCC.BRep import *
from OCC.gp import *
from OCC.TDF import *

RESULT_LABEL = 2


def print_vertices(shape):
    for i,v in enumerate(Topo(shape).vertices()):
        print 'Vertex: %s Coord: %s' % ( i, BRep_Tool().Pnt(v).Coord())
    



#
# Create engine
#
docId = 100
myEngine = GEOMImpl_Gen()
engine = myEngine.GetEngine()


doc_h = myEngine.GetDocument(docId)


doc   = doc_h.GetObject()
###
### Create 2 points 'P1' and 'P2'
###
prim_operations = myEngine.GetI3DPrimOperations(docId)
prim_operations.StartOperation() #for undo/redo
basic_operations = myEngine.GetIBasicOperations(docId)

# is the same solver as prim_operations
solver = basic_operations.GetSolver()

####### Create point 1
x1 = GEOM_Parameter(0.0)
y1 = GEOM_Parameter(0.0)
z1 = GEOM_Parameter(0.0)
P1 = basic_operations.MakePointXYZ(x1,y1,z1).GetObject()
P1.SetName("Point 1")
####### Create point 2
x2 = GEOM_Parameter(2.0)
y2 = GEOM_Parameter(2.0)
z2 = GEOM_Parameter(2.0)
P2 = basic_operations.MakePointXYZ(x2,y2,z2).GetObject()
P2.SetName("Point 2")
####### Create a box from these points
Box = prim_operations.MakeBoxTwoPnt(P1.GetHandle(),P2.GetHandle()).GetObject()
prim_operations.FinishOperation()

print 'old shape'
print_vertices(Box.GetValue())

if prim_operations.IsDone():
    shp = Box.GetValue()
    display.DisplayShape(shp)
else:
    print 'you fool, you messed up!'
    print prim_operations.GetErrorCode()

#result_label = Box.GetLastFunction().GetEntry().FindChild(1)

# print the number of functions of each GEOM_Object
# check if it is is the main shape
P1.GetNbFunctions(); P1.IsMainShape()
P2.GetNbFunctions(); P2.IsMainShape()
Box.GetNbFunctions(); Box.IsMainShape()



basic_slv   = basic_operations.GetSolver()
prim_slv    = prim_operations.GetSolver()

SetParameterValue(x2, 4)
basic_slv.ComputeObject(P2.GetHandle())
prim_slv.ComputeObject(Box.GetHandle())
solver.ComputeObject(Box.GetHandle())

seq = TDF_LabelSequence() 
seq.Append(Box.GetEntry())
seq.Append(P1.GetEntry())
seq.Append(P2.GetEntry())

solver.Update(True, seq)


prim_slv.Update(True, seq)
basic_slv.Update(True, seq)

if prim_operations.IsDone():
    print 'added another box, hopefully updated...'
    display.DisplayShape(Box.GetValue())

print 'new shape'
print_vertices(Box.GetValue())

def set_param_update(param, new_value):
    SetParameterValue(param, new_value)
#    if prim_operations.


# all salome geom classes
#from OCC.Sketcher import *
#from OCC.Partition import *
#from OCC.NMTTools import *
#from OCC.NMTDS import *
#from OCC.BlockFix import *
#from OCC.GEOMAlgo import *
#from OCC.SGEOM import *
#from OCC.Archimede import *

start_display()



'''

Learning from Fiotis

a)
MakePointXYZ("100.55+50", "100*2", "300-100")

b)
int a = 100;
double b = 200.50;
MakePointXYZ(a, b, "300-100")

c) "and most interesting"
by use of 
GEOM_Engine::SetInterpreterConstant(int theDocID, "WIDTH", double theValue)
where thedocid is the document id created by geoM engine, and theValue the arithmetic value assigned to WIDTH

MakePointXYZ("WIDTH", "WIDTH*2", "300-100")


'''
from OCC.TCollection import TCollection_AsciiString as String
def to_string(_str):
    return String(_str)

def to_param(x):
    return GEOM_Parameter(x)

def add_variabele_to_engine(engine, docId, varString, varValue):
    '''
    '''
    engine.SetInterpreterConstant(docId, to_string(varString), varValue)



add_variabele_to_engine(engine, docId, "WIDTH", 12)
add_variabele_to_engine(engine, docId, "HEIGHT", 70)
add_variabele_to_engine(engine, docId, "DEPTH", 12)


# segfaults
pnt = basic_operations.MakePointXYZ(to_param(to_string("WIDTH")),
                                    to_param(to_string("DEPTH")),
                                    to_param(to_string("HEIGHT"))
                                    )



x2 = GEOM_Parameter(2.0)
y2 = GEOM_Parameter(2.0)
z2 = GEOM_Parameter(2.0)
P2 = basic_operations.MakePointXYZ(x2,y2,z2).GetObject()
P2.SetName("Point 2")



aaa = [to_string(str(i)) for i in range(1,4)]
a,b,c = map(to_param, aaa)



# fails
basic_operations.MakePointXYZ("1","2","3")

# returns, but GetDouble return NotDone
expr = to_param(to_string('100*12'))

# segfaults
basic_operations.MakePointXYZ(expr,expr,expr)


























