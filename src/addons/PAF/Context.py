from __future__ import with_statement
##Copyright 2009 Thomas Paviot & Jelle Feringa (tpaviot@gmail.com / jelleferinga@gmail.com)
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.GEOMImpl import GEOMImpl_Gen
from OCC.SGEOM import *
from OCC.TDF import *
from OCC.Display.wxSamplesGui import start_display, display, add_function_to_menu, add_menu
from OCC.TPrsStd import *
from OCC.TNaming import *
from wx import SafeYield

from OCC.PAF.Parametric import Relation, Rules, Parameters
from OCC.TCollection import TCollection_AsciiString

class operation(object):
    '''
    raises an assertion error when IsDone() returns false, with the error specified in error_statement
    '''
    def __init__(self, operation):
        self.operation = operation
        print 'initialized context with', self.operation.__class__
    
    def __enter__(self):
        print 'start operation'
        self.operation.StartOperation()
    
    def __exit__(self, type, value, traceback):
        print 'finish operation'
        self.operation.FinishOperation()
        if not self.operation.IsDone():
            error_code = self.operation.GetErrorCode()
            raise AssertionError('did not complete operation.\nused operation class: %s \nerror code: %s' % (self.operation.__class__, error_code) )

def _operation_decorator(context, function, _operations):
    def __operation_decorator(*args, **kwargs):
        
        print 'got *args:', args
        # getting rid of self as the first argument, a Context.*_operations instance in this case 
        args = args[1:]
        print 'modified args:', args
        print 'got **kwargs:', kwargs
        
        # stuff before the real function is called
        # in this case, we'd like the function to be executed
        # within the context of an operation
        
        undo = kwargs.get('undo')
        
        if undo: # for Undo / Redo
            _operations.NewCommand()
        
        # executes the operation in the context of Start / Finish operation
        # this will make the operations associative 
        with operation(_operations):
            res = function(*args)
            print 'result:', res
            
        # if 'name' in kwargs, set the name of the resulting Geom_object to 'name'
        if 'name' in kwargs:
            res.GetObject().SetName(kwargs['name'])
            print 'set object name:', kwargs['name']
        
        # if show, than make a presentation for the object
        # this way it will be rendered in the viewer
        if kwargs.get('show'):
            context._register_object(res)
            
        if undo: # for Undo / Redo
            _operations.CommitCommand()
        
        return res
    return __operation_decorator


class Context(object):
    """ Initialize a parametric context
    """
    def __init__(self, parameters, undo=False):

        assert isinstance(parameters, Parameters), 'expected a Parameters instance, got a ' % ( parameters.__class__)

        self.undo  = undo           # whether or not we use CommitCommand ( if used, operations can be Undo'd / Redo'd ) 
        self.docId = 100
        self.myEngine = GEOMImpl_Gen()
        self.engine = self.myEngine.GetEngine()
        self.doc    = self.myEngine.GetDocument(self.docId).GetObject()
        self.root   = self.doc.Main().Root()
        self.viewer = TPrsStd_AISViewer().New(self.root, display.Context_handle).GetObject()

        self.solvers        = []                # stores the solvers before the new operations classes are generated
        self.callbacks      = [self._update]    # callbacks, such as used for updating presentations
        self.object_names   = []                # set of all named parametric objects
        self.pres           = []                # a list of all objects currently displayed
        
        # get access to operations
        self.prim_operations = self.myEngine.GetI3DPrimOperations(self.docId)
        self.basic_operations = self.myEngine.GetIBasicOperations(self.docId)
        self.block_operations = self.myEngine.GetIBlocksOperations(self.docId)
        self.boolean_operations = self.myEngine.GetIBooleanOperations(self.docId)
        self.curve_operations = self.myEngine.GetICurvesOperations(self.docId)
        self.group_operations = self.myEngine.GetIGroupOperations(self.docId)
        self.healing_operations = self.myEngine.GetIHealingOperations(self.docId)
        self.insert_operations = self.myEngine.GetIInsertOperations(self.docId)
        self.local_operations = self.myEngine.GetILocalOperations(self.docId)
        self.measure_operations = self.myEngine.GetIMeasureOperations(self.docId)
        self.shapes_operations = self.myEngine.GetIShapesOperations(self.docId)
        self.transform_operations = self.myEngine.GetITransformOperations(self.docId)
        
        self._initialize_operation()
        parameters._set_context(self)
        print "Context initialized"
    
    def _initialize_operation(self):
        '''
        get all the solvers for all operations
        add them to self.solvers for future reference or when updating objects
        we wont be able to access these objects when they are overwritten by the newly generated classes ( wrapping with operation )
        '''
        
        for i in dir(self):
            if i.endswith('operations'):
                print 'added solver:', i
                slv = getattr(self, i).GetSolver()
                if slv not in self.solvers:
                    self.solvers.append( slv )
        
        # these are the methods that all Operations modules share
        no_ops = ('GetEngine', 'SetErrorCode', 'StartOperation', 'GetErrorCode',
                   'GetSolver', 'SetNotDone', 'AbortOperation', 'FinishOperation',
                    'IsDone', 'GetDocID', 'this', 'thisown')
        
        #===============================================================================
        # wrap all the methods in *operations such that they are executed
        # in the context of StartOperation / EndOperation
        #===============================================================================
        for i in dir(self):
            if i.endswith('operations'):
                op = i.split('_')[0]
                
                # create a new class to which the wrapped methods will be added
                # these classes will replace the self.myEngine.GetIShapesOperations(self.docId) instance
                # so self.myEngine.GetIShapesOperations(self.docId) -> self.shapes_ops
#                klass_name = "%s_ops" % (op)
                klass_name = "%s_operations" % (op)
                klass = type(klass_name, (object,), {})
                klass_instance = klass()
                
                for j in dir(getattr(self, i)):
                    # filter out the methods that aren't methods that do stuff
                    # to geometry / topology
                    if j.startswith('_'):
                        continue
                    elif j not in no_ops:
                        print 'method being wrapped:',j
                        func = _operation_decorator(
                                                    self,
                                                    getattr(getattr(self, i), j),   # for example: self.basic_operations.MakeVectorDXDYDZ
                                                    getattr(self, i)                # for example: self.basic_operations
                                                )
                        
                        #exec('klass.%s = func' % ( j ) )
                        setattr(klass, j, func)
                
                # add the newly generated klass to self
                setattr(self, klass_name, klass_instance)
    
    def register_callback(self, call):
        """ Defines a callback for the parameter
        """
        if callable(call):
            self.callbacks.append(call)
        else:
            raise TypeError('%s is not a callable object' % ( call.__class__ ) )
        print "Callback added"
    
    def register_relation(self,relation):
        """ Adds a relation to this set of parameters
        """
        if isinstance(relation,Relation):
            self.register_callback(relation.Perform)
        else:
            raise TypeError('%s is not a Relation object' % ( relation.__class__ ) )
        
    def register_rule(self,rule):
        """
        Adds a rule to this parameter. Each time the parameter is updated,
        then the rule is checked"""
        if isinstance(rule,Rule):
            self.register_callback(rule.Check)
        else:
            raise TypeError('%s is not a Rule object' % ( rule.__class__ ) )
    
    
    def set_parameter(self, name, value):
        self.doc.NewCommand()
        self.engine.SetInterpreterConstant(self.docId, TCollection_AsciiString(name), value)

        # update registered solvers
        for solver in self.solvers:
            seq = TDF_LabelSequence() 
            solver.Update(self.docId, seq)

        # call registered callbacks    
        for callback in self.callbacks:
            #print 'calling callback:', callback
            callback()

        self.doc.CommitCommand()

    def _register_object(self,obj,color=0):
        # we'll accept both Geom_object and Handle_Geom_object
        if isinstance(obj, Handle_GEOM_Object):
            obj = obj.GetObject()
        
        result_label = obj.GetLastFunction().GetObject().GetEntry().FindChild(2)
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
        prs.SetColor(color)
        prs.Display(True)
        self.pres.append(prs)
        display.FitAll()
        return prs

    def _update(self):
        for prs in self.pres:
            prs.Update()
        self.viewer.Update()
        display.FitAll()
        SafeYield() #to prevent window freeze 

if __name__=='__main__':
    c = Context()
    
