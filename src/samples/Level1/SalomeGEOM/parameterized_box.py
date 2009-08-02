from __future__ import with_statement
from OCC.GEOMImpl import *
from OCC.SGEOM import *
from OCC.BRep import *
from OCC.gp import *
from OCC.TDF import *

from OCC.Utils.Topology import Topo
from OCC.Display.wxSamplesGui import start_display, display, add_function_to_menu, add_menu
from OCC.TPrsStd import *
from OCC.TNaming import *
from OCC.TDocStd import *

import time

#===============================================================================
# SETUP
#===============================================================================

RESULT_LABEL = 2

# Create engine
docId = 100
myEngine = GEOMImpl_Gen()
#myEngine = MyEngine()

engine = myEngine.GetEngine()

doc = myEngine.GetDocument(docId)
doc   = doc.GetObject()



# get access to operations
prim_operations = myEngine.GetI3DPrimOperations(docId)
basic_operations = myEngine.GetIBasicOperations(docId)

#===============================================================================
# UTILITIES
#===============================================================================

class operation(object):
    '''
    raises an assertion error when IsDone() returns false, with the error specified in error_statement
    '''
    def __init__(self, operation):
        self.operation = operation
    
    def __enter__(self):
        print 'start operation'
        self.operation.StartOperation()
    
    def __exit__(self, type, value, traceback):
        print 'finish operation'
        self.operation.FinishOperation()
        if not self.operation.IsDone():
            error_code = self.operation.GetErrorCode()
            raise AssertionError('did not complete operation.\nused operation class: %s \nerror code: %s' % (self.operation.__class__, error_code) )

class undo(object):
    '''
    raises an assertion error when IsDone() returns false, with the error specified in error_statement
    '''
    def __init__(self, document):
        self.doc = document
    
    def __enter__(self):
        print 'start command'
        self.doc.OpenCommand()
        self.doc.NewCommand()
    
    def __exit__(self, type, value, traceback):
        print 'finish command'
        self.doc.CommitCommand()

def to_string(_str):
    from OCC.TCollection import TCollection_AsciiString as String
    return String(_str)

def to_param(x):
    return GEOM_Parameter(x)

class Parameters(object):
    def __init__(self, engine, docId):
        object.__setattr__(self, 'engine', engine)
        object.__setattr__(self, 'docId', docId)
        object.__setattr__(self, 'solvers', [])
        object.__setattr__(self, 'callbacks', [])
    
    def add_solver(self, solver):
        assert isinstance( solver, GEOM_Solver), '%s is not a GEOM_Solver instance' % ( solver.__class__ )
        self.solvers.append(solver)
    
    def add_callback(self, call):
        if callable(call):
            self.callbacks.append(call)
        else:
            raise TypeError('%s is not a callable object' % ( call.__class__ ) )
        
    
    def __setattr__(self, name, value):
        # if an attribute is a numerical value ( integer or float )
        # than its considered to be a parameter
        # hence, the interpreter constant is updated
        # and all solvers that have been added are updated
        if isinstance(value, int) or isinstance(value, float):
            print 'got numerical value', value
        else:
            raise TypeError('an paramter ( that is an attribute of the class Parameters ) is either a float or integer')
            
        object.__setattr__(self, name, value)
        docId = object.__getattribute__(self, 'docId')
        
        doc.NewCommand()
        self.engine.SetInterpreterConstant( docId,
                                             to_string(name),
                                              value)
    
        for solv in self.solvers:
            seq = TDF_LabelSequence() 
            print 'calling solver:', solv.__class__
            solv.Update(docId, seq)
            
        for call in self.callbacks:
            print 'calling callback:', call
            call()
        doc.CommitCommand()
                
    def __getattribute__(self, name):
        attr = object.__getattribute__(self, name)
        if isinstance(attr, int) or isinstance(attr, float):
            print 'parameter: %s value: %s' % (name, attr)
            return to_param(to_string(name))
        else:
            return attr


def print_vertices(shape):
    for i,v in enumerate(Topo(shape).vertices()):
        print 'Vertex: %s Coord: %s' % ( i, BRep_Tool().Pnt(v).Coord())

def register_presentation(geomObject):
    result_label = geomObject.GetLastFunction().GetObject().GetEntry().FindChild(RESULT_LABEL)
    prs_main = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
    prs_main.Display(True)
    return prs_main

#===============================================================================
# EXAMPLE
#===============================================================================

#def example_parametric_box(blah):

parameters = Parameters(engine, docId)
parameters.add_solver(prim_operations.GetSolver())
parameters.add_solver(basic_operations.GetSolver())

# box 1
parameters.depth    = 12
parameters.height   = 70
parameters.width    = 12
parameters.depth_a  = 30
parameters.height_a = 30
parameters.width_a  = 30

with operation(basic_operations):
    pnt1 = basic_operations.MakePointXYZ(parameters.width,
                                          parameters.depth,
                                           parameters.height)
    pnt1.GetObject().SetName("point 1")
    pnt2 = basic_operations.MakePointXYZ(parameters.width_a,
                                          parameters.depth_a,
                                           parameters.height_a)
    pnt2.GetObject().SetName("point 2")
 

Box = prim_operations.MakeBoxTwoPnt(pnt1, pnt2).GetObject()

root = doc.Main().Root()
viewer = TPrsStd_AISViewer().New(root, display.Context_handle).GetObject()


prs4 = register_presentation(Box)
prs4.SetColor(1)

def update():
    prs4.Update()
    viewer.Update()
    display.FitAll()

parameters.add_callback(update)
# Display initial state
display.FitAll()

