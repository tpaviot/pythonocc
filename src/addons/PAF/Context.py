from __future__ import with_statement
##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
##
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

#from Factory import operation


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

#def operation_decorator(_operations):
#    def _operation_decorator(function):
#        def __operation_decorator(*args, **kwargs):
#            
#            print 'got *args:', args
#            print 'getting rid of self as the first argument'
#            args = args[1:]
#            print 'modified args:', args
#            print 'got **kwargs:', kwargs
#            
#            # stuff before the real function is called
#            # in this case, we'd like the function to be executed
#            # within the context of an operation
#            with operation(_operations):
#                res = function(*args, **kwargs)
#                print 'result:', res
#            return res
#        # return the sub-function
#        return __operation_decorator
#    return _operation_decorator

def _operation_decorator(function, _operations):
    def __operation_decorator(*args, **kwargs):
        
        print 'got *args:', args
        print 'getting rid of self as the first argument'
        args = args[1:]
        print 'modified args:', args
        print 'got **kwargs:', kwargs
        
        # stuff before the real function is called
        # in this case, we'd like the function to be executed
        # within the context of an operation
        with operation(_operations):
            res = function(*args)
            print 'result:', res
        if 'name' in kwargs:
            res.GetObject().SetName(kwargs['name'])
            print 'set object name:', kwargs['name']
        
        return res
    # return the sub-function
    return __operation_decorator



class Context(object):
    """ Initialize a parametric context
    """
    def __init__(self):
        self.docId = None
        self.myEngine = None
        self.engine = None
        self.doc = None
        self.prim_operations = None
        self.basic_operations = None
        self._inited = False
        self.solvers = []
        self.object_names = []

    def Init(self):
        if not self._inited:
            self.docId = 100
            self.myEngine = GEOMImpl_Gen()
            self.engine = self.myEngine.GetEngine()
            self.doc = self.myEngine.GetDocument(self.docId).GetObject()
            
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
            
            self._inited = True
            print "Context inited"
            
            # get all the solvers for all operations
            # add 'em to self.solvers for future reference / when updating objects 
            for i in dir(self):
                if i.endswith('operations'):
                    print 'added solver:', i
                    self.solvers.append( getattr(self, i).GetSolver() )
            
                 
                 
            # these are the methods that all Operations modules share
            no_ops = ('GetEngine', 'SetErrorCode', 'StartOperation', 'GetErrorCode',
                       'GetSolver', 'SetNotDone', 'AbortOperation', 'FinishOperation',
                        'IsDone', 'GetDocID', 'this', 'thisown')
            
            
            #===============================================================================
            # trying to wrap all the methods in *operations such that they are executed
            # in the context of StartOperation / EndOperation
            #===============================================================================
            for i in dir(self):
                if i.endswith('operations'):
                    op = i.split('_')[0]
                    
                    # create a new class to which the wrapped methods will be added
                    # these classes will replace the self.myEngine.GetIShapesOperations(self.docId) instance
                    # so self.myEngine.GetIShapesOperations(self.docId) -> self.shapes_ops
                    #klass_name = "%s_ops" % (op)
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
                                                        getattr(getattr(self, i), j),   # for example: self.basic_operations.MakeVectorDXDYDZ
                                                        getattr(self, i)                # for example: self.basic_operations
                                                    )
                            
                            exec('klass.%s = func' % ( j ) )
                    
                    # add the newly generated klass to self
                    setattr(self, klass_name, klass_instance)

if __name__=='__main__':
    c = Context()
    c.Init()
    
    
