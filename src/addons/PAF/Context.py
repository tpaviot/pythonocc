##Copyright 2009-2010 Thomas Paviot & Jelle Feringa (tpaviot@gmail.com / jelleferinga@gmail.com)
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

from __future__ import with_statement
from OCC.GEOMImpl import GEOMImpl_Gen
from OCC.SGEOM import *
from OCC.TDF import *
from OCC.TPrsStd import *
from OCC.TNaming import *
from OCC.AIS import *
from OCC.TopoDS import *

from OCC.PAF.Parametric import Relation, Rule, Parameters
from OCC.TCollection import TCollection_AsciiString
import time

class operation(object):
    ''' Raises an assertion error when IsDone() returns false, with the error specified in error_statement
    '''
    def __init__(self, operation):
        self.operation = operation
        print '[PAF] initialized context with', self.operation.__class__
    
    def __enter__(self):
        print '[PAF] start operation'
        self.operation.StartOperation()
    
    def __exit__(self, type, value, traceback):
        print '[PAF] finish operation'
        self.operation.FinishOperation()
        if not self.operation.IsDone():
            error_code = self.operation.GetErrorCode()
            raise AssertionError('did not complete operation.\nused operation class: %s \nerror code: %s' % (self.operation.__class__, error_code) )

def _operation_decorator(context, function, _operations):
    def __operation_decorator(*args, **kwargs):
        
        print '[PAF] got *args:', args
        # getting rid of self as the first argument, a Context.*_operations instance in this case 
        args = args[1:]
        print '[PAF] modified args:', args
        print '[PAF] got **kwargs:', kwargs
        
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
            print '[PAF] result:', res
            
        # if 'name' in kwargs, set the name of the resulting Geom_object to 'name'
        if 'name' in kwargs:
            res.GetObject().SetName(kwargs['name'])
            print '[PAF] set object name:', kwargs['name']
        
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
    def __init__(self, parameters, undo=False, commit=False, register_all_operations=True):
        '''
        Initialize a ParametricModelingContext
        a ParametricModelingContext always takes a Parameters instance as argument

        >>> from OCC.PAF.Parametric import Parameters 
        >>> p = Parameters() 
        
        Initialize context, such that every operation is added to the Undo / Redo stack
        
        Note that if in your operation, you can set an additional "undo" argument
        If this you use this argument, than that operation will be added to the Undo / Redo stack
        even if you initialized it with commit=False
        This way you have fine grained control over the Undo / Redo stack  
        
        >>> my_context = ParametricModelingContext(p, commit=True) 
        [PAF] all operations registered
        [PAF] ParametricModelingContext initialized with commit enabled
        
        Create parameters to build a simple box
   
        >>> p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2 = 12,70,12,30,30,30
        Parameter X1 created
        parameter: _commit value: True
        Parameter Y1 created
        parameter: _commit value: True
        Parameter Z1 created
        parameter: _commit value: True
        Parameter X2 created
        parameter: _commit value: True
        Parameter Y2 created
        parameter: _commit value: True
        Parameter Z2 created
        parameter: _commit value: True

        Create geometry
        
        >>> my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)
        >>> my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)
        >>> my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2, name="Box1", show=True)
        
        Then display the box shape
        
        >>> box_shape = my_context.get_shape(my_box)
                    
        '''
        #assert isinstance(parameters, Parameters), '[PAF] expected a Parameters instance, got a ' % ( parameters.__class__)

        self.undo  = undo           # whether or not we use CommitCommand ( if used, operations can be Undo'd / Redo'd ) 
        self.docId = 100
        self.myEngine = GEOMImpl_Gen()
        self.doc    = self.myEngine.GetDocument(self.docId).GetObject()
        self.root   = self.doc.Main().Root()
        # display stuff
        self.viewer = None #Set up when init_display is called
        self.DISPLAY_INITED = False
        self.AUTOMATIC_UPDATE = True #whenever a parameter is modified, solvers and display are updated

        self._registered_objects = []  # all objects added to the Parametric Context
        self.solvers        = []                # stores the solvers before the new operations classes are generated
        self._old_ops_news_ops = {}             # hashes the old self.myEngine.*Operations class, to the one wrapped by ._initialize operation
        
        self.pre_solver_callbacks = [] #callbacks called *before* the solver is updated (e.g. Relations, Rules)
        self.post_solver_callbacks = [] #callbacks called *after* the solver is updated
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
        if register_all_operations:
            self._register_all_operations()
            
        parameters._set_context(self)
        parameters._set_commit(commit)
           
        if commit:
            print "[PAF] ParametricModelingContext initialized with commit enabled"
        else:
            print "[PAF] ParametricModelingContext initialized"
    
    def _register_all_operations(self):
        self.register_operations(self.prim_operations)
        self.register_operations(self.basic_operations)# = self.myEngine.GetIBasicOperations(self.docId)
        self.register_operations(self.block_operations)# = self.myEngine.GetIBlocksOperations(self.docId)
        self.register_operations(self.boolean_operations)# = self.myEngine.GetIBooleanOperations(self.docId)
        self.register_operations(self.curve_operations)# = self.myEngine.GetICurvesOperations(self.docId)
        self.register_operations(self.group_operations)# = self.myEngine.GetIGroupOperations(self.docId)
        self.register_operations(self.healing_operations)# = self.myEngine.GetIHealingOperations(self.docId)
        self.register_operations(self.insert_operations)# = self.myEngine.GetIInsertOperations(self.docId)
        self.register_operations(self.local_operations)# = self.myEngine.GetILocalOperations(self.docId)
        self.register_operations(self.measure_operations)# = self.myEngine.GetIMeasureOperations(self.docId)
        self.register_operations(self.shapes_operations)# = self.myEngine.GetIShapesOperations(self.docId)
        self.register_operations(self.transform_operations)#
        print '[PAF] all operations registered'
        
    def _initialize_operation(self):
        ''' Get all the solvers for all operations
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
    
    def set_display(self, Viewer3d_instance):
        ''' Sets the viewer3d used to render the display
        '''
        # Check that the parameter is of type Viewer3d
        if Viewer3d_instance.__class__.__name__!='Viewer3d':
            raise NameError, 'The instance must be of type Viewer3d'
        self.display = Viewer3d_instance
        # init the viewer
        self.viewer = TPrsStd_AISViewer().New(self.root, self.display.Context_handle).GetObject()
        self.DISPLAY_INITED = True
        print '[PAF] Display properly initialized'
        # If geom were already created before the display is initialized, create presentations
        for obj in self._registered_objects:
            self._create_presentation(obj)
        self.display.FitAll()
    
    def set_automatic_update(self, boolean_value):
        ''' Sets the AUTOMATIC_DISPLAY variable. Default is True. If set to False, the .solve() and
        .update_display() methods will have to be explicitely called.
        '''
        self.AUTOMATIC_UPDATE = boolean_value
        
    def register_operations(self, *_operations):
        for _operation in _operations:
            try:
                slv = self._old_ops_news_ops[_operation]
                if not slv in self.solvers:
                    self.solvers.append(slv.GetSolver())
            except KeyError:
                print '[PAF] no solver found for class:', _operation.__class__
                raise

    def register_pre_solver_callback(self, *calls):
        ''' Defines a callback for the parameter
        '''
        for call in calls:
            if callable(call):
                self.pre_solver_callbacks.append(call)
            else:
                raise TypeError('[PAF] %s is not a callable object' % ( call.__class__ ) )
            print "[PAF] Pre-Solver callback added"

    def register_post_solver_callback(self, *calls):
        ''' Defines a callback for the parameter
        '''
        for call in calls:
            if callable(call):
                self.post_solver_callbacks.append(call)
            else:
                raise TypeError('%s is not a callable object' % ( call.__class__ ) )
            print "Post-Solver callback added"
    
    def register_relations(self, *relations):
        ''' Adds a relation to this set of parameters
        '''
        for relation in relations:
            if isinstance(relation,Relation):
                #self.register_callbacks(relation.eval)
                self.register_pre_solver_callback(relation.eval)
            else:
                raise TypeError('%s is not a Relation object' % ( relation.__class__ ) )
#
#    def register_presentation(self, geomObject):
#        '''
#        returns the 
#        @param geomObject: a GEOM_Object instance
#        '''
#        result_label = geomObject.GetLastFunction().GetObject().GetEntry().FindChild(RESULT_LABEL)
#        prs_main = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
#        prs_main.Display(True)
#        return prs_main
        
    def register_rules(self, rules):
        ''' Adds a rule to this parameter. Each time the parameter is updated,
        then the rule is checked
        '''
        if isinstance(rules,Rule):
            # the Rule callback has to be prepended to the callbacks list.
            #self.callbacks = [rules.eval]+self.callbacks
            self.pre_solver_callbacks = [rules.eval]+self.pre_solver_callbacks
        else:
            raise TypeError('[PAF] %s is not a Rule object' % ( rules.__class__ ) )
    
    def solve(self):
        ''' Update registered solvers
        '''
        for solver in self.solvers:
            seq = TDF_LabelSequence() 
            solver.Update(self.docId, seq)    
        
    def set_parameter(self, name, value, does_commit):
        # call registered callbacks. Rules/Relations have to be updated before the geometry is modified. 
        # Be careful: just rules and Callbacks have to be called before the geometry is modified
        for pre_solver_callback in self.pre_solver_callbacks:
            pre_solver_callback()

        if does_commit:
            self.doc.NewCommand()
        # "" and True, here after are maybe to change
        self.myEngine.SetInterpreterConstant(self.docId, TCollection_AsciiString(name), value,TCollection_AsciiString(""),True)

        #update registered solvers
        if self.AUTOMATIC_UPDATE:
            self.solve()       
            
            if does_commit:
                self.doc.CommitCommand()            
            
            self.update_display()
        
        #Call post_solver callbacks
        for post_solver_callback in self.post_solver_callbacks:
            post_solver_callback()
    
    def get_shape(self,registered_object):
        ''' Returns the TopoDS_Shape for the registered object. This method enables interoperability
        with the OCC kernel. For instance for topology traversing, STEP export etc.
        '''
        return registered_object.GetObject().GetValue()

    def _register_object(self,obj_handle,color=0):
        # we'll accept both Geom_object and Handle_Geom_object
        if isinstance(obj_handle, Handle_GEOM_Object):
            obj = obj_handle.GetObject()
        # the object is stored
        self._registered_objects.append(obj)
        # if display inited, create presentation and update display
        if self.DISPLAY_INITED:
            # display object
            self._create_presentation(obj,color)
            #self.pres[obj]=prs
            self.display.FitAll()

    def _create_presentation(self,obj,color=0):
        ''' Create a presentation and add it to the presentation list
        '''
        result_label = obj.GetLastFunction().GetObject().GetEntry().FindChild(2)
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()
        prs.SetColor(color)
        prs.Display(True)
        self.pres[obj]=prs
        #return True
    
    def get_presentation(self, geom_obj):           
        if hasattr(geom_obj, 'GetObject'):
            geom_obj = geom_obj.GetObject()        
            #print 'handle'
        result_label = geom_obj.GetLastFunction().GetObject().GetEntry().FindChild(2)        
        # TPrsStd_AISPresentation().Set can create or retrieve the AIS_Presentation        
        # so, this is not re-creating the TPrsStd_AISPresentation presentation        
        prs = TPrsStd_AISPresentation().Set(result_label, TNaming_NamedShape().GetID()).GetObject()        
        return prs
    
    def update_display(self):
        ''' Update each viewer
        '''
        if self.DISPLAY_INITED:
            for prs in self.pres.itervalues():
                prs.Update()
                self.viewer.Update()
            self.display.FitAll()

if __name__=='__main__':
    def test_with_viewer():
         # init viewer
        from OCC.Display.SimpleGui import init_display
        display, start_display, add_menu, add_function_to_menu = init_display()
        # create parameters
        p = Parameters()
        # create parametric modeling context
        c = ParametricModelingContext(p)
        # set graphics
        c.set_display(display)
        # create simple box
        p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4  
        my_pnt1 = c.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)
        my_pnt2 = c.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)   # Create the second point
        my_box = c.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=True)            # Create the box
        start_display()
    
    def test_with_viewer_after():
        # create parameters
        p = Parameters()
        c = ParametricModelingContext(p)
        # create simple box
        p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4  
        my_pnt1 = c.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)
        my_pnt2 = c.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)   # Create the second point
        my_box = c.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=True)
        #Init display after geometry is created
        from OCC.Display.SimpleGui import init_display
        display, start_display, add_menu, add_function_to_menu = init_display()
        c.set_display(display)
        start_display()
        
    def test_without_viewer():
        # create parameters
        p = Parameters()
        # create parametric modeling context
        c = ParametricModelingContext(p)
   
        p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4  
        my_pnt1 = c.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)
        my_pnt2 = c.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)   # Create the second point
        my_box = c.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2, name="Box1", show=True)            # Create the box

        box_shape = c.get_shape(my_box)
        print box_shape
    
    test_without_viewer()
    test_with_viewer_after()
    import doctest, sys
    doctest.testmod(sys.modules[__name__])
        
