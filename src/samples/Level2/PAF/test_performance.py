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

#===============================================================================
# EXPERIMENT GONE WRONG
#===============================================================================

#class MyDocument(object):
##    def __init__(self, t_doc_std_document):
###        self.doc = t_doc_std_document
##        self.callbacks = []
#    
#    def Redo(self):
#        self.doc.Undo()
#        for i in self.callbacks: i()
#        
#    def Undo(self):
#        self.doc.Redo()
#        for i in self.callbacks: i()
#    
#    def add_callback(self, callback):
#        if callable(callback):
#            self.callbacks.append(callback)
#        else:
#            raise TypeError('expected a callable')
#    
#
#
#from OCC._GEOMImpl import *
#
#
#class MyEngine(GEOMImpl_Gen):
#    def __init__(self):
#        #super(self, GEOMImpl_Gen).__init__()
##        this = GEOMImpl_Gen
#        self.__class__ = GEOMImpl_Gen
##        GEOMImpl_Gen.__init__(tmp)
#    
#    def GetDocument(self, docId):
#        return MyDocument(self.GetDocument(docId))

#class CThreadPtr(GEOMImpl_Gen):
#    def __init__(self,this):
#        self.this = this
#        if not hasattr(self,"thisown"): self.thisown = 0
#        self.__class__ = GEOMImpl_Gen
#
#    
#CThreadPtr(GEOMImpl_Gen)
#===============================================================================
# EXPERIMENT GONE WRONG
#===============================================================================



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
bool_operations = myEngine.GetIBooleanOperations(docId)
block_operations = myEngine.GetIBlocksOperations(docId)
curves_operations = myEngine.GetICurvesOperations(docId)
group_operations = myEngine.GetIGroupOperations(docId)
insert_operations = myEngine.GetIInsertOperations(docId)
local_operations = myEngine.GetILocalOperations(docId)
measure_operations = myEngine.GetIMeasureOperations(docId)

display.EnableAntiAliasing()

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

def main():
    parameters = Parameters(engine, docId)
    parameters.add_solver(prim_operations.GetSolver())
    parameters.add_solver(basic_operations.GetSolver())
    parameters.add_solver(bool_operations.GetSolver())
    parameters.add_solver(local_operations.GetSolver())
    
    # box 1
    parameters.depth    = 12
    parameters.height   = 70
    parameters.width    = 12
    parameters.depth_a  = 0
    parameters.height_a = 0
    parameters.width_a  = 0
    
    # box 2
    parameters.lower  = -100
    parameters.upper  = 100
    parameters.fixed_height_lower = 0
    parameters.fixed_height_higher = 10
    
    parameters.fillet_radius = 1
    
    
    with operation(basic_operations):
        pnt1 = basic_operations.MakePointXYZ(parameters.width,
                                              parameters.depth,
                                               parameters.height)
        pnt1.GetObject().SetName("point 1")
        pnt2 = basic_operations.MakePointXYZ(parameters.width_a,
                                              parameters.depth_a,
                                               parameters.height_a)
        pnt2.GetObject().SetName("point 2")
        
        pnt3 = basic_operations.MakePointXYZ(parameters.lower,
                                              parameters.lower,
                                               parameters.fixed_height_lower)
        pnt3.GetObject().SetName("point 3")
        pnt4 = basic_operations.MakePointXYZ(parameters.upper,
                                              parameters.upper,
                                               parameters.fixed_height_higher)
        pnt4.GetObject().SetName("point 4")
        
    
    with operation(prim_operations):
        Box = prim_operations.MakeBoxTwoPnt(pnt1, pnt2).GetObject()
        BoxBool = prim_operations.MakeBoxTwoPnt(pnt3, pnt4).GetObject()
    
    root = doc.Main().Root()
    viewer = TPrsStd_AISViewer().New(root, display.Context_handle).GetObject()
    
    with operation(bool_operations):
        fff = bool_operations.MakeBoolean(Box.GetHandle(), BoxBool.GetHandle(), 1).GetObject()
        
    with operation(local_operations):
        ggg = local_operations.MakeFilletAll(fff.GetHandle(), parameters.fillet_radius).GetObject()
    
    #    dt = TPrsStd_DriverTable()
    #    dt.Get()
    #    dt.InitStandardDrivers()
    
    prs1 = register_presentation(Box)
    prs1.SetTransparency(0.8)
    prs1.SetColor(12)
    
    prs2 = register_presentation(BoxBool)
    prs2.SetTransparency(0.8)
    prs2.SetColor(200)
    #
    #prs3 = register_presentation(fff)
    #prs3.SetTransparency(0.6)
    #prs3.SetColor(100)
    
    prs4 = register_presentation(ggg)
    prs4.SetColor(1)
    
    def update():
        prs1.Update()
        prs2.Update()
    #    prs3.Update()
        prs4.Update()
        viewer.Update()
        display.FitAll()
    
    parameters.add_callback(update)
            
    #for i in range(-66, -11):
    #    parameters.depth_a = i
    #
    #for i in range(-80, 0):
    #    parameters.height_a = i
        
    for i in range(-44, 0):
        tA = time.time()
        parameters.width_a = i
        print 'operation took:', time.time() - tA
    
    
    #add_menu('GEOM')
    #add_function_to_menu('GEOM', example_parametric_box)
    #start_display()


def profile_main():
     # This is the main function for profiling 
     # We've renamed our original main() above to real_main()
     import cProfile, pstats
     prof = cProfile.Profile()
     prof = prof.runctx("main()", globals(), locals())
     print "<pre>"
     stats = pstats.Stats(prof)
     stats.sort_stats("time")  # Or cumulative
     stats.print_stats(80)  # 80 = how many to print
     # The rest is optional.
     stats.print_callees()
      stats.print_callers()
     print "</pre>"

profile_main()
