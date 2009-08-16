##Copyright 2009 Thomas Paviot & Jelle Feringa (tpaviot@gmail.com / jelleferinga@gmail.com)
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

from OCC.SGEOM import GEOM_Solver,GEOM_Parameter
from OCC.TDF import TDF_LabelSequence
from OCC.TCollection import TCollection_AsciiString


try:
    import sympy
    HAVE_SYMPY = True
except ImportError:
    HAVE_SYMPY = False
    print "The Relation class needs the sympy library. Please check http://code.google.com/p/sympy/"

def symb(parameter_tuple):
    """ Returns the sympy symbol to define the relations
    """
    return parameter_tuple[0].GetSymbol()

def value(parameter_tuple):
    """ Returns the value of the parameter
    """
    return parameter_tuple[1]

class RelationError(Exception):
    pass

class Relation(object):
    """ Defines a relation between two or more parameters
    """
    def __init__(self,parameters_instance,string_parameter_name,relation, tolerance=0.0001):
        '''
        @param parameters_instance:            Parameters instance
        @param string_parameter_name:      string of the argument on Parameters ( eg. Parameters.X -> "X" )
        @param relation:                   Sympy equation
        '''
        
        # assert isinstance(parameters_instance, Parameters)
        assert issubclass(relation.__class__, sympy.core.basic.Basic ), 'relation should be a subclass of sympy.core.basic.Basic, got a %s' % ( relation.__class__)
        
        self._relation = relation
        self.parameters = parameters_instance
        self.param_str = string_parameter_name
        self.tolerance = tolerance
        self.parameters.context.register_relations(self)
        
    def BuildSubs(self):
        """ First have to set all the parameters keys/values so that sympy can compute
        the relation
        """
        d = {}
        for v in self.parameters.GetAllParameters().itervalues():
            d[v.symbol.name]=v.value#            
        return d
        
    def eval(self):
        _subs = self.BuildSubs()
        try:
            # Compare with the old value to avoid setting the parameter
            # and have infinte recurrent calls 
            new_parameter_value = self._relation.evalf(subs=_subs, n=10) #require sympy library
            new_parameter_value = float(new_parameter_value)
            old_value = getattr(self.parameters, self.param_str).value
            print '%s :old parameter value, new parameter value: %s %s ', ( self.param_str, old_value, new_parameter_value ) 
            error = abs(new_parameter_value-old_value)
            print 'error',error
        except:
            print 'error evaluating relation\nrelation: %s' % (self._relation)
            raise 
        
        if error > self.tolerance:
            setattr(self.parameters, self.param_str, new_parameter_value)

    
class BrokeRule(Exception):
    pass

class RulesError(Exception):
    pass

class Rules(object):
    def __init__(self, parameters):
        self.parameters = parameters
        self._rules  = []
        
    def add_rule(self, attr, func):
        assert callable(func), 'func not a callable'
        try:
            param = getattr(self.parameters, attr)
        except AttributeError:
            raise RulesError( 'Parameter instance hasnt got attribute %s' % ( attr ) )
        
        self._rules.append((param, func))
        
    def eval(self):
        for r in self._rules:
            try:
                param, func = r
                print 'param, func:',param,func
                r = func(param)
                print 'r:',r
                if not r:
                    raise BrokeRule('the rule with function: %s broke with argument(s):%s' % ( func, param))
            except:
                print 'exception raised while evaluating rules'
                print 'the function that raised an error is:', func
                print 'with parameter:', param
                # re-raising the old exception
                raise


class Parameter(GEOM_Parameter):
    def __init__(self, name, value):
        # Check if the param name is a string
        assert(isinstance(name,str))
        # Init parameter
        self._name = name
        GEOM_Parameter.__init__(self,TCollection_AsciiString(name))
        print "Parameter %s created"%name
        
        self._symbol = sympy.Symbol(name)
        self._value = value

    def __add__(self,value):
        return self._value + value
    
    def __sub__(self,value):
        return self._value - value
    
    def __mul__(self,value):
        return self._value * value
    
    def __div__(self,value):
        return self._value / value
        
    @property
    def symbol(self):
        '''
        returns a Symbol instance based on the value of the parameter
        '''
        return self._symbol

    @property
    def value(self):
        """ Returns the value of the parameter
        """
        return self._value

class Parameters(object):
    """ This class defines a set of parameters that are handled by both
    pythonOCC and SalomeGEOM
    """
    def __init__(self):        
        object.__setattr__(self, '_parameters', {})
        object.__setattr__(self, '_commit', False)
        
    def GetAllParameters(self):
        """ Returns the dict of all defined parameters
        """
        return self._parameters
    
    def _set_context(self, context):
        object.__setattr__(self, 'context', context)
    
    def _set_commit(self, commit):
        object.__setattr__(self, '_commit', commit)
    
    def __setattr__(self, name, value):
        """if an attribute is a numerical value ( integer or float )
        than its considered to be a parameter
        hence, the interpreter constant is updated
        and all solvers that have been added are updated
        """
        # Type checking of the value passed
        if not (isinstance(value, int) or isinstance(value, float)):
            raise TypeError('A parameter ( that is an attribute of the class Parameters ) is either a float or integer')

        # Set the attribute value    
        object.__setattr__(self, name, value)
        
        # create a Parameter instance, and add it to the dict
        # that shadows self.attributes
        self._parameters[name] = Parameter(name, value)
        
        # add the parameter to the Interpreter ( which does the real work )
        self.context.set_parameter(name,value, self._commit)
       
    def __getattribute__(self, name):
        attr = object.__getattribute__(self, name)
        if isinstance(attr, int) or isinstance(attr, float):
            try:
                print 'parameter: %s value: %s' % (name, attr)                     
                return self._parameters[name]
            except KeyError:
                return attr
        else:
            return attr

