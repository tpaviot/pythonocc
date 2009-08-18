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
from OCC.TPrsStd import *
from OCC.TNaming import *
from wx import SafeYield

from OCC.PAF.Parametric import Relation, Rule, Parameters
from OCC.TCollection import TCollection_AsciiString
import time

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


class ParametricModelingContext(object):
    """ Initialize a parametric context
    """
    
    # --- TODO get rid of commit, replace by undo ( functionality doubled )
    
    def __init__(self, parameters, undo=False, commit=False):
        '''
        Initialize a ParametricModelingContext
        a ParametricModelingContext always takes a Parameters instance as argument

        >>> from OCC.PAF.Parametric import Parameters 
        >>> p = Parameters() 
        >>> my_context = ParametricModelingContext(p) 
        ParametricModelingContext initialized
        
        Initialize context, such that every operation is added to the Undo / Redo stack
        
        Note that if in your operation, you can set an additional "undo" argument
        If this you use this argument, than that operation will be added to the Undo / Redo stack
        even if you initialized it with commit=False
        This way you have fine grained control over the Undo / Redo stack  
        
        >>> my_context = ParametricModelingContext(p, commit=True) 
        ParametricModelingContext initialized with commit enabled
                
        Since the ParametricModelingContext controls how objects are rendered
        the viewer has to be initialized by the ParametricModelingContext object
        
        >>> my_context.init_display()
        Display initialized
        
        Now you see that a my_context.display attribute is in place
        This is the same .display object you've come to learn and love
        
        >>> my_context.display # doctest: +ELLIPSIS
        <OCC.Display.OCCViewer.Viewer3d; proxy of <Swig Object of type 'Display3d *' at 0xd1f9e80> >
        
        Now we've got a viewer up and running
        To enter the GUI loop, just call .start_display from your ParametricModelingContext instance
        
        # ( cannot be run as a doctest, since it'll never return )
        #>>> my_context.start_display()   
        
        '''

        assert isinstance(parameters, Parameters), 'expected a Parameters instance, got a ' % ( parameters.__class__)

        self.undo  = undo           # whether or not we use CommitCommand ( if used, operations can be Undo'd / Redo'd ) 
        self.docId = 100
        self.myEngine = GEOMImpl_Gen()
        self.engine = self.myEngine.GetEngine()
        self.doc    = self.myEngine.GetDocument(self.docId).GetObject()
        self.root   = self.doc.Main().Root()
        # display stuff
        self.viewer = None #Set up when init_display is called
        self.DISPLAY_INITED = False

        self.solvers        = []                # stores the solvers before the new operations classes are generated
        self._old_ops_news_ops = {}             # hashes the old self.myEngine.*Operations class, to the one wrapped by ._initialize operation
        self.callbacks      = [self._update]    # callbacks, such as used for updating presentations
        self.object_names   = []                # set of all named parametric objects
        self.pres           = {}                # hash Geom_object instance to its presentation
        
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
        parameters._set_commit(commit)
        
        if commit:
            print "ParametricModelingContext initialized with commit enabled"
        else:
            print "ParametricModelingContext initialized"
    
    def _initialize_operation(self):
        '''
        get all the solvers for all operations
        add them to self.solvers for future reference or when updating objects
        we wont be able to access these objects when they are overwritten by the newly generated classes ( wrapping with operation )
        '''
        
        
        # these are the methods that all Operations modules share
        no_ops = ('GetEngine', 'SetErrorCode', 'StartOperation', 'GetErrorCode','GetSolver',
                   'SetNotDone', 'AbortOperation', 'FinishOperation',
                    'IsDone', 'GetDocID', 'this', 'thisown')
        
        #===============================================================================
        # wrap all the methods in *operations such that they are executed
        # in the context of StartOperation / EndOperation
        #===============================================================================
        for i in dir(self):
            if i.endswith('operations') and not i.startswith('register'):
                old_operation = getattr(self, i)
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
                        #print 'method being wrapped:',j
                        func = _operation_decorator(
                                                    self,
                                                    getattr(getattr(self, i), j),   # for example: self.basic_operations.MakeVectorDXDYDZ
                                                    getattr(self, i)                # for example: self.basic_operations
                                                )
                        
                        setattr(klass, j, func)
                
                # add the newly generated klass to self
                setattr(self, klass_name, klass_instance)
                # hash the old operation to the new one, such that news operation
                # instances can be registered
                self._old_ops_news_ops[klass_instance] = old_operation
    
    def init_display(self):
        from OCC.Display.wxSamplesGui import start_display, display
        self.display = display
        self._start_display = start_display
        
        self.viewer = TPrsStd_AISViewer().New(self.root, display.Context_handle).GetObject()
        self.DISPLAY_INITED = True
        print 'Display initialized'

    def start_display(self):
        if self.DISPLAY_INITED:
            self._start_display()
        else:
            print "You have to init_display first"    
    
    def register_operations(self, *_operations):
        for _operation in _operations:
            try:
                slv = self._old_ops_news_ops[_operation]
                if not slv in self.solvers:
                    self.solvers.append(slv.GetSolver())
             
            except KeyError:
                print 'no solver found for class:', _operation.__class__
                raise
    
    def register_callbacks(self, *calls):
        """ Defines a callback for the parameter
        """
        for call in calls:
            if callable(call):
                self.callbacks.append(call)
            else:
                raise TypeError('%s is not a callable object' % ( call.__class__ ) )
            print "Callback added"
    
    def register_relations(self, *relations):
        """ Adds a relation to this set of parameters
        """
        for relation in relations:
            if isinstance(relation,Relation):
                self.register_callbacks(relation.eval)
            else:
                raise TypeError('%s is not a Relation object' % ( relation.__class__ ) )
        
    def register_rules(self, rules):
        """
        Adds a rule to this parameter. Each time the parameter is updated,
        then the rule is checked"""
        if isinstance(rules,Rule):
            self.callbacks.append(rules.eval)
        else:
            raise TypeError('%s is not a Rule object' % ( rules.__class__ ) )
        
    def set_parameter(self, name, value, does_commit):
        
        if does_commit:
            self.doc.NewCommand()
        
        self.engine.SetInterpreterConstant(self.docId, TCollection_AsciiString(name), value)

        #update registered solvers
        for solver in self.solvers:
            seq = TDF_LabelSequence() 
            solver.Update(self.docId, seq)

        # call registered callbacks    
        for callback in self.callbacks:
            #print 'calling callback:', callback
            callback()
        
        if does_commit:
            self.doc.CommitCommand()            
#        self._update()

    def get_presentation(self, geom_obj):
        if hasattr(geom_obj, 'GetObject'):
            geom_obj = geom_obj.GetObject()
            print 'handle'
            
        result_label = geom_obj.GetLastFunction().GetObject().GetEntry().FindChild(2)
        # TPrsStd_AISPresentation().Set can create or retrieve the AIS_Presentation
        # so, this is not re-creating the TPrsStd_AISPresentation presentation
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
        return prs

    def _register_object(self,obj,color=0):
        # we'll accept both Geom_object and Handle_Geom_object
        if isinstance(obj, Handle_GEOM_Object):
            obj = obj.GetObject()
                
        result_label = obj.GetLastFunction().GetObject().GetEntry().FindChild(2)
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
        prs.SetColor(color)
        prs.Display(True)
        self.pres[obj]=prs
        
        if self.DISPLAY_INITED:
            self.display.FitAll()
        return prs

#    def update(self, geom_obj):
#        for slv in self.solvers:
#            seq = TDF_LabelSequence()
##            slv.Update(self.docId, seq)
##            slv.UpdateObject(geom_obj, seq)
#            slv.ComputeObject(geom_obj)
#        self._update()

    def _update(self):
        if self.DISPLAY_INITED:
            for prs in self.pres.itervalues():
                prs.Update()
                self.viewer.Update()
                #self.display.FitAll()
                SafeYield() #to prevent window freeze 

if __name__=='__main__':
    import doctest, sys
    doctest.testmod(sys.modules[__name__])
        
