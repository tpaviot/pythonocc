#!/usr/bin/env python

##Copyright 2009-2010 Thomas Paviot (tpaviot@gmail.com)
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

import unittest
import sys
from OCC.Standard import *
from OCC.Utils.Topology import *
from OCC.BRepPrimAPI import *
from OCC.BRepBuilderAPI import *
from OCC.gp import *

class WrapperFeaturesTest(unittest.TestCase):
    
    def testHash(self):
        '''
        Check whether the __hash__ function is equal to HashCode()
        '''
        print 'Test: __hash__ overloading'
        s = Standard_Transient()
        id_s = id(s)
        hash1_s = s.__hash__()
        hash2_s = s.HashCode(pow(2,31)-1)
        self.assertNotEqual(id_s, hash1_s)
        self.assertEqual(hash1_s,hash2_s)

    def testList(self):
        '''
        Test python lists features
        '''
        print 'Test: python lists'
        P1 = gp_Pnt(1,2,3)
        P2 = gp_Pnt(2,3,4)
        P3 = gp_Pnt(5,7,8)
        l = [P1,P2]
        self.assertEqual(P1 in l, True)
        self.assertNotEqual(P3 in l, True)
        self.assertEqual(l.index(P1),0)
        self.assertEqual(l.index(P2),1)
        # Do the same for Vertices (TopoDS_Shape has a HashCode() method overloaded
        V1 = BRepBuilderAPI_MakeVertex(P1).Vertex()
        V2 = BRepBuilderAPI_MakeVertex(P2).Vertex()
        V3 = BRepBuilderAPI_MakeVertex(P3) .Vertex()
        vl = [V1,V2]
        self.assertEqual(V1 in vl, True)
        self.assertNotEqual(V3 in vl, True)
        # index test()
        self.assertEqual(vl.index(V1),0)
        self.assertEqual(vl.index(V2),1)
        # reverse() test
        vl.reverse()
        self.assertEqual(vl.index(V1),1)
        self.assertEqual(vl.index(V2),0)
        
    def  testDict(self):
        '''
        Test python dict features
        '''
        print 'Test: python dicts'
        P1 = gp_Pnt(1,2,3)
        P2 = gp_Pnt(2,3,4)
        d={P1:'P1',P2:'P2'}
        self.assertEqual(d[P1]=='P1',True)
        self.assertEqual(d[P2]=='P2',True)

    def testTopology(self):
        '''
        Checks the Topology.py utility script.
        '''
        print 'Test: Topology'
        def get_shape():
            shape = BRepPrimAPI_MakeBox(10.,10.,10.).Shape()
            self.assertEqual(shape.IsNull(), False)
            topo = Topo(shape)
            return shape
        returned_shape = get_shape()
        self.assertEqual(returned_shape.IsNull(),False)
    
    def testStaticMethod(self):
        '''
        Test wrapper for static methods.

        ... snippet from the SWIG documentation ...

        Static class members present a special problem for Python. Prior to Python-2.2, Python classes had no support for static methods and no version of Python supports static member variables in a manner that SWIG can utilize. Therefore, SWIG generates wrappers that try to work around some of these issues. To illustrate, suppose you have a class like this:
        
        class Spam {
        public:
           static void foo();
           static int bar;
        
        };
        In Python, the static member can be access in three different ways:
        
        >>> example.Spam_foo()    # Spam::foo()
        >>> s = example.Spam()
        >>> s.foo()               # Spam::foo() via an instance
        >>> example.Spam.foo()    # Spam::foo(). Python-2.2 only
        
        ... end snippet ...
        
        In order that SWIG properly wraps static methods, the keyword 'static' must be included in the interface file. For instance, in the Interface.i file, the following line:
        
        static Standard_Boolean SetCVal(const char * name, const char * val);
        
        makes possible to use the method as:
        >>> from OCC.Interface import *
        >>> Interface_Static_SetCVal("write.step.schema","AP203")
        '''
        print 'Test : wrapper for C++ static methods'
        from OCC.STEPControl import STEPControl_Writer
        from OCC.Interface import Interface_Static_setcval, Interface_Static_cval
        w = STEPControl_Writer() #needs to be inited otherwise the following does not work
        # Note : static methods are wrapped with lowercase convention
        # so SetCVal can be accessed with setcval
        r = Interface_Static_setcval("write.step.schema","AP203")
        self.assertEqual(r,1)
        l = Interface_Static_cval("write.step.schema")
        self.assertEqual(l,"AP203")
        
    def testFT1(self):
        '''
        Checks the Standard_Integer & byreference pass parameter
        '''
        print 'Test: Standard_Integer & by reference transformator'
        from OCC.gp import gp_Pnt
        P = gp_Pnt(1,2,3.2)
        self.assertEqual(P.Coord(),(1,2,3.2))
          
    def testStandardIntegerByRefPassedReturned(self):
        '''
        Checks the Standard_Integer & byreference return parameter
        '''
        print 'Test: Standard_Integer & by reference transformator'
        from OCC.ShapeFix import ShapeFix_Solid
        sfs = ShapeFix_Solid()
        sfs.SetFixShellMode(5)
        self.assertEqual(sfs.GetFixShellMode(),5)
        
    def testStandardBooleanByRefPassedReturned(self):
        '''
        Checks the Standard_Boolean & byreference return parameter
        '''
        print 'Test: Standard_Boolean & by reference transformator'
        from OCC.ShapeFix import ShapeFix_Wire
        sfw = ShapeFix_Wire()
        sfw.SetModifyGeometryMode(True)
        self.assertEqual(sfw.GetModifyGeometryMode(),True)
        sfw.SetModifyGeometryMode(False)
        self.assertEqual(sfw.GetModifyGeometryMode(),False)
    
    def testSTLVectorInt(self):
        '''
        Checks the IntVector and DoubleVector classes that are used in the StdMeshers
        module
        '''
        from OCC.StdMeshers import IntVector, StdMeshers_FixedPoints1D
        # The IntVector must be initialized from a list/tuple of integers
        i_v = IntVector([1,2,3,4])
        self.assertEqual(i_v[0],1)
        self.assertEqual(i_v[1],2)
        self.assertEqual(i_v[2],3)
        self.assertEqual(i_v[3],4)
        # If at least one item of the list is not an integer, raise an exception
        self.assertRaises(TypeError,IntVector,[1,2,3,4.0])
        # Test one method of StdMeshers that takes/returns such a parameter type
        from OCC.SMESH import SMESH_Gen
        fixed_points = StdMeshers_FixedPoints1D(1,2,SMESH_Gen())
        fixed_points.SetReversedEdges([1,2,3])
        self.assertEquals(fixed_points.GetReversedEdges(),(1,2,3))
        
    def testSTLVectorDouble(self):
        '''
        Checks the IntVector and DoubleVector classes that are used in the StdMeshers
        module
        '''
        from OCC.StdMeshers import DoubleVector, StdMeshers_FixedPoints1D
        # The IntVector must be initialized from a list/tuple of floats/integers. Integers will
        # be converted to floats
        d_v = DoubleVector([1.0,2,3.0,4])
        self.assertEqual(d_v[0],1.0)
        self.assertEqual(d_v[1],2.0)
        self.assertEqual(d_v[2],3.0)
        self.assertEqual(d_v[3],4.0)
        # If at least one item of the list is not an float or an integer, raise an exception
        self.assertRaises(TypeError,DoubleVector,[1.0,2.0,3.0,"string"])
        # Test one method of StdMeshers that takes/returns such a parameter type
        from OCC.SMESH import SMESH_Gen
        fixed_points = StdMeshers_FixedPoints1D(1,2,SMESH_Gen())
        fixed_points.SetPoints([1.0,3.0,4.0])
        self.assertEquals(fixed_points.GetPoints(),(1.0,3.0,4.0))
          
    def testDumpToString(self):
        '''
        Checks if the pickle python module works for TopoDS_Shapes
        '''
        print 'Test: pickling of TopoDS_Shapes'
        from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
        import pickle
        # Create the shape
        box_shape = BRepPrimAPI_MakeBox(100,200,300).Shape()
        pickle.dumps(box_shape)
    
    def testSubClass(self):
        '''
        Checks that OCC objects can be subclassed, and passed as parameters. In this test, we create
        a MyPoint and MyVec class, inheriting from gp_Pnt and gp_Vec.
        '''
        print 'Test: subclass'
        class MyPoint(gp_Pnt):
            def __init__(self,*kargs):
                gp_Pnt.__init__(self,*kargs)
                self.x = 4
            def get_x(self):
                return self.x
        class MyVec(gp_Vec):
            def __init__(self,*kargs):
                gp_Vec.__init__(self,*kargs)
                self._an_attribute = "something"
            def get_attribute(self):
                return self._an_attribute
        # Create the first point
        point1 = MyPoint(1,2,3)
        self.assertEqual(point1.Coord(),(1.,2.,3.))
        self.assertEqual(point1.get_x(),4)
        # Create the second point
        point2 = MyPoint(2,2,3)
        # Then create the vec from these two points
        # The magnitude of the vector should equal 1.0
        vec = MyVec(point1,point2)
        self.assertEqual(vec.Magnitude(),1.)
        self.assertEqual(vec.get_attribute(),"something")
    
    def testProtectedConstructor(self):
        ''' test if the classes with protected constructors can be created
        '''
        print 'Test: protected constructor'
        # 1st, class with no subclass
        from OCC.TopoDS import TopoDS_Builder
        tds_builder = TopoDS_Builder()
        self.assertTrue(hasattr(tds_builder,"MakeCompound"))
    
    def testAutoImportOfDependentModules(self):
        ''' when a module returns an object defined in another module,
        this module should be automatically imported in scope
        '''
        print 'Test: automatic import of dependent modules'
        from OCC.GCE2d import GCE2d_MakeSegment
        from OCC.gp import gp_Pnt2d
        returned_object = GCE2d_MakeSegment(gp_Pnt2d(1,1),gp_Pnt2d(3,4)).Value()
        # for this unittest, don't use the issinstance() function, since the OCC.Geom2d module
        # is *not* manually imported
        returned_object_type = '%s'%type(returned_object)
        self.assertEqual(returned_object_type,"<class 'OCC.Geom2d.Handle_Geom2d_TrimmedCurve'>")
    
    def testRemovedByRefFeature(self):
        ''' test that arguments returned by ref transormation is ok
        '''
        from OCC.BRepPrimAPI import BRepPrimAPI_MakeSphere
        from OCC.BRep import BRep_Tool_surface
        from OCC.GeomLProp import GeomLProp_SLProps
        from OCC.gp import gp_Pnt
        sphere_shape = BRepPrimAPI_MakeSphere(40.).Shape()
        # build a surface from this sphere
        from OCC.Utils.Topology import Topo
        t = Topo(sphere_shape)
        for f in t.faces():
                face = f
        
        surf = BRep_Tool_surface(face)
        lprop = GeomLProp_SLProps(0,1e-12)
        lprop.SetSurface(surf)
        
        # evaluate_uv_coordinates
        coords = []
        p = 0.0
        # first point
        u,v=[0,0]
        lprop.SetParameters(u,v)
        pnt = lprop.Value()
        print 'First point coords : ',pnt.Coord()
        print surf.GetObject().Value(u,v).Coord()
        # This one is [40.0,0.,0.]
        self.assertEqual(format(pnt.Coord()),'(40.0, 0.0, 0.0)')
        coords.append(pnt)        
        #second point
        u,v=[0.5,0.5]
        lprop.SetParameters(u,v)
        pnt2 = lprop.Value()
        # check then that the value has not changed (it does if returned by ref)
        self.assertEqual(format(pnt.Coord()),'(40.0, 0.0, 0.0)')
        
if __name__ == "__main__":
    unittest.main()
    
