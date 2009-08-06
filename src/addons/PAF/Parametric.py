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
    from sympy import Symbol
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

#class MyTuple(tuple):
#    """ This class allows to do the following:
#    t = (GEOM_Parameter,12)
#    t + 3 -> 15
#    t - 2 -> 10
#    t * 4 -> 48
#    etc.
#    """
#    def __add__(self,value):
#        return self[1] + value
#    
#    def __sub__(self,value):
#        return self[1] - value
#    
#    def __mul__(self,value):
#        return self[1] * value
#    
#    def __div__(self,value):
#        return self[1] / value
#
#    def get_value(self):
#        """ Returns the value of this tuple
#        """
#        return self[1]

class Relation(object):
    """ Defines a relation between two or more parameters
    """
    def __init__(self,parameter_class,string_parameter_name,relation):
        # The relation is actually a sympy equation
        self._relation = relation
        self.p1 = parameter_class
        self.p2 = string_parameter_name
        self.p1.register_relation(self)
        self.already_performed = False
        self._subs = {}
        
    def BuildSubs(self):
        """ First have to set all the parameters keys/values so that sympy can compute
        the relation
        """
        d = {}
        parameter_names = self.p1.GetAllParameters().keys()
        for parameter_name in parameter_names:
            param_tuple = self.p1.__getattribute__(parameter_name)           
            d[symb(param_tuple)] = value(param_tuple)
        self._subs = d
        
    def Perform(self):
        self.BuildSubs() #necessary to update with all current values
        new_parameter_value = float(self._relation.evalf(subs=self._subs)) #require sympy library
        # Compare with the old value to avoid setting the parameter
        # and have infinte recurrent calls 
        old_value = self.p1.__getattribute__(self.p2)[1]
        if not abs(new_parameter_value-old_value)<0.0001:
            self.p1.__setattr__(self.p2,new_parameter_value)


class Parameter(GEOM_Parameter):
    def __init__(self, name, value):
        # Check if the param name is a string
        assert(isinstance(name,str))
        # Init parameter
        self._name = name
        GEOM_Parameter.__init__(self,TCollection_AsciiString(name))
        print "Parameter %s created"%name
        
        # Create a sympy Symbol so that it's possible to include it in a relation
        # --- TODO one problem of this method is that when Undo is called
        # the ._symbol attribute will no more be in sync with the Parameter value...
        # so, to do this well we need to add a callback from Undo such that these 
        # attributes will be updated
        # Not easy at all to implement
        self._symbol = Symbol(name)
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
    
class BrokeRule(Exception):
    pass

#class Rules(object):
#    def __init__(self, parameter_class, string_parameter_name, function):#,parameter_object,p):
#        """ Adds a rule over the parameter
#        """
#        self.attach_parameter(parameter_class,string_parameter_name)
#        self.callbacks = []
#        self.register_condition(function)
#        
#    def attach_parameter(self,parameter_class,string_parameter_name):
#        """ For instance, attach_parameter(parameters,"X")
#        """
#        self.p1 = parameter_class
#        self.p2 = string_parameter_name
#        self.p1.register_rule(self)
#        
#    def register_condition(self,call):
#        assert callable(call)
#        self.callbacks.append(call)
#
#    def Check(self):
#        value = self.p1.__getattribute__(self.p2).value
#        print 'value:',value
#        assert self._function(value),'Rule broken over parameter %s'%self.p2

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
        
            

class Parameters(object):
    """ This class defines a set of parameters that are handled by both
    pythonOCC and SalomeGEOM
    """
#    def __init__(self, context ):
    def __init__(self):        
        object.__setattr__(self, '_parameters', {})
        
    def GetAllParameters(self):
        """ Returns the dict of all defined parameters
        """
        return self._parameters
    
    def _set_context(self, context):
        object.__setattr__(self, 'context', context)
    
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
        self.context.set_parameter(name,value)

        # Create the parameter (if not already done)
        if not self._parameters.has_key(name):
            self._parameters[name] = Parameter(name, value)
       
    def __getattribute__(self, name):
        
        # this is _really_ ugly and confusing
        # with getters and setters we could find out who is getting a value
        # and return Geom_Parameter when class X calls, return a Symbol when class Y calls 
        # still, its much more clear to use properties
        # such that you just use Parameter.geom / Parameter.symbol
        
        attr = object.__getattribute__(self, name)
        if isinstance(attr, int) or isinstance(attr, float):
            print 'parameter: %s value: %s' % (name, attr)                     
            #return MyTuple((self._parameters[name],attr))
            tmp = self._parameters[name]
            return self._parameters[name]
        else:
            return attr





#
#class RevealAccess(object):
#    """A data descriptor that sets and returns values
#       normally and prints a message logging their access.
#    """
#    def __init__(self, initval=None, name='var'):
#        self.val = initval
#        self.name = name
#    
#    def __get__(self, obj, objtype):
#        print 'Retrieving', self.name
#        print 'obj:', obj
#        print 'objtype:', objtype
#        return self.val
#    
#    def __set__(self, obj, val):
#        print 'obj:', obj
#        print 'Updating' , self.name
#        self.val = val
#
#class MyClass(object):
#    x = RevealAccess(10, 'var "x"')
#    y = 5
#
#m = MyClass()
#m.x = p.X








