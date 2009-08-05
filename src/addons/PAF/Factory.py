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

from __future__ import with_statement
import Parametric

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

class Factory(object):
    """ This class allows to create parametrized geometry.
    """
    def __init__(self,context):
        self.context = context
        self._used_names = [] # a list with used names
        print "Factory class created."

    def CheckNameIsUsed(self,name):
        return name in self._used_names

    def SetObjectName(self,obj,name):
        assert(not self.CheckNameIsUsed(name))
        obj.GetObject().SetName(name)
        self._used_names.append(name)
        
    def PointXYZ(self,X,Y,Z,name):
        """ Create a point from its cartesian coordinates X, Y and Z
        """
        with operation(self.context.basic_operations):
            pnt = self.context.basic_operations.MakePointXYZ(X[0],Y[0],Z[0])
            self.SetObjectName(pnt,name)
        return pnt.GetObject()
    
    def VectorDXDYDZ(self,DX, DY, DZ,name):
        """ Create a vector from 
        """
        with operation(self.context.basic_operations):
            vec = self.context.basic_operations.MakeVectorDXDYDZ(DX[0],DY[0],DZ[0])
            self.SetObjectName(vec,name)
        return vec.GetObject()
    
    def BoxTwoPnt(self,pnt1,pnt2,name):
        """ Create a box
        """
        with operation(self.context.prim_operations):
            box = self.context.prim_operations.MakeBoxTwoPnt(pnt1.GetHandle(), pnt2.GetHandle())
            self.SetObjectName(box,name)
        return box.GetObject()

    def CylinderRH(self,R,H,Angle,name):
        with operation(self.context.prim_operations):
            cyl = self.context.prim_operations.MakeCylinderRH(R[0],H[0],Angle[0])
            self.SetObjectName(cyl,name)
        return cyl.GetObject()

    def CylinderPntVecRH(self, pnt , vec , R, H, Angle, name):
        with operation(self.context.prim_operations):
            cyl = self.context.prim_operations.MakeCylinderPntVecRH(pnt.GetHandle(),vec.GetHandle(),R[0],H[0],Angle[0])
            self.SetObjectName(cyl,name)
        return cyl.GetObject()
    
class Old_Factory(object):
    """ This class allows to create parametrized geometry.
    """
    def __init__(self):
        self._used_names=[] # a list with used names
        print "Factory class created."

    def CheckNameIsUsed(self,name):
        return name in self._used_names

    def SetObjectName(self,obj,name):
        assert(not self.CheckNameIsUsed(name))
        obj.GetObject().SetName(name)
        self._used_names.append(name)
        
    def PointXYZ(self,X,Y,Z,name):
        with operation(Parametric.basic_operations):
            pnt = Parametric.basic_operations.MakePointXYZ(X,Y,Z)
            self.SetObjectName(pnt,name)
        return pnt.GetObject()
        
    def Box(self,pnt1,pnt2,name):
        """ Create a box
        """
        with operation(Parametric.prim_operations):
            box = Parametric.prim_operations.MakeBoxTwoPnt(pnt1.GetHandle(), pnt2.GetHandle())
            self.SetObjectName(box,name)
        return box.GetObject()

if __name__=='__main__':
    my_factory = Factory()
    p = Parametric.parameters
    # Create the first point
    p.X1 = 10
    p.Y1 = 20
    p.Z1 = 30
    my_pnt1 = my_factory.PointXYZ(p.X1,p.Y1,p.Z1,"Pnt1")
    # Create the second point
    p.X2 = 20
    p.Y2 = 30
    p.Z2 = 40
    my_pnt2 = my_factory.PointXYZ(p.X2,p.Y2,p.Z2,"Pnt2")
    # Create the box
    my_box = my_factory.Box(my_pnt1,my_pnt2,"Box1")
    print my_pnt1
    print my_pnt2
    print my_box
        
