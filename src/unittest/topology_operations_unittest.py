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

import time
import math
import sys
import unittest

from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.TopOpeBRepTool import *
from OCC.BRepBuilderAPI import *
from OCC.BRepFilletAPI import *
from OCC.Geom import *
from OCC.TopoDS import *
from OCC.TopExp import *
from OCC.TopAbs import *
from OCC.TColgp import *
from OCC.Utils.Construct import *

class TestTopologyOperations(unittest.TestCase):    
    def test_fuse(self):
        print 'Test: fuse'
        box1 = BRepPrimAPI_MakeBox(2,1,1).Shape()
        box2 = BRepPrimAPI_MakeBox(2,1,1).Shape()
        box1 = translate_topods_from_vector(box1, gp_Vec(.5,.5,0))
        #sph = BRepPrimAPI_MakeSphere(.5,.5,.5).Shape()
        fuse = BRepAlgoAPI_Fuse(box1,box2).Shape()
        self.assertFalse(fuse.IsNull())
        
    def test_common(self):
        print 'Test: common'
        # Create Box
        axe = gp_Ax2(gp_Pnt(10,10,10),gp_Dir(1,2,1))
        Box = BRepPrimAPI_MakeBox(axe,60,80,100).Shape()
        # Create wedge
        Wedge = BRepPrimAPI_MakeWedge(60.,100.,80.,20.).Shape()
        # Common surface
        CommonSurface = BRepAlgoAPI_Common(Box,Wedge).Shape()
        self.assertFalse(CommonSurface.IsNull())
        
    def test_slicer(self):
        print 'Test: slicer'
        # Param
        Zmin,Zmax,deltaZ = -100, 100, 5
        # Note: the shape can also come from a shape selected from InteractiveViewer
        shape = BRepPrimAPI_MakeSphere(60.).Shape()
        # Define the direction
        D = gp_Dir(0.,0.,1.) # the z direction
        # Perform slice
        sections = []
        init_time = time.time() # for total time computation
        for z in range(Zmin,Zmax,deltaZ):
            # Create Plane defined by a point and the perpendicular direction
            P = gp_Pnt(0,0,z)
            Pln = gp_Pln(P,D)
            face = BRepBuilderAPI_MakeFace(Pln).Shape()
            # Computes Shape/Plane intersection
            section = BRepAlgoAPI_Section(shape,face)
            self.assertTrue(section.IsDone())
            sections.append(section)
        
    def test_section(self):
        print 'Test: section'
        Torus = BRepPrimAPI_MakeTorus(120,20).Shape()
        V1 = gp_Vec(1,1,1)
        radius = 120.0
        sections = []
        for i in range(-3,4):
            # Create Sphere
            Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(26*3*i,0,0),radius).Shape()
            # Computes Torus/Sphere section
            PerformNow = 0
            section = BRepAlgoAPI_Section(Torus,Sphere,PerformNow)
            section.ComputePCurveOn1(1)
            section.Approximation(TopOpeBRepTool_APPROX)
            section.Build()
            self.assertTrue(section.IsDone())
            sections.append(section)
        
    def test_fillet(self):
        print 'Test: fillet'
        Box = BRepPrimAPI_MakeBox(gp_Pnt(-400,0,0),200,230,180).Shape()
        fillet = BRepFilletAPI_MakeFillet(Box)
        # Add fillet on each edge
        Ex = TopExp_Explorer(Box,TopAbs_EDGE)
        while Ex.More():
            Edge =TopoDS_edge(Ex.Current())
            fillet.Add(20,Edge)
            Ex.Next()
        
        blendedBox = fillet.Shape()
        
        P1 = gp_Pnt(250,150,75)
        S1 = BRepPrimAPI_MakeBox(300,200,200).Shape()
        S2 = BRepPrimAPI_MakeBox(P1,120,180,70).Shape()
        Fuse = BRepAlgoAPI_Fuse(S1,S2)
        FusedShape = Fuse.Shape()
        self.assertTrue(Fuse.IsDone())
        
        fill = BRepFilletAPI_MakeFillet(FusedShape)
        ex1 = TopExp_Explorer(FusedShape,TopAbs_EDGE)
        while ex1.More():
            E =TopoDS_edge(ex1.Current())
            fill.Add(E)
            ex1.Next()
    
        for i in range(1,fill.NbContours()+1):
            longueur = fill.Length(i)
            Rad = 0.15*longueur
            fill.SetRadius(Rad,i,1)
        
        blendedFusedSolids = fill.Shape()
        self.assertFalse(blendedFusedSolids.IsNull())
        
    def test_cut(self):
        print 'Test: cut'
        # Create Box
        Box = BRepPrimAPI_MakeBox(200,60,60).Shape()
        # Create Sphere
        Sphere = BRepPrimAPI_MakeSphere(gp_Pnt(100,20,20),80).Shape()
        # Cut: the shere is cut 'by' the box
        Cut = BRepAlgoAPI_Cut(Sphere,Box).Shape()
        self.assertFalse(Cut.IsNull())
        
    def test_variable_filleting(self):
        print 'Test: varable filleting'
        # Create Box
        Box = BRepPrimAPI_MakeBox(200,200,200).Shape()
        # Fillet
        Rake = BRepFilletAPI_MakeFillet(Box)      
        ex = TopExp_Explorer(Box,TopAbs_EDGE)
        ex.Next()
        ex.Next()
        ex.Next()
        ex.Next()
        Rake.Add(8,50,TopoDS_edge(ex.Current()))
        Rake.Build()
        self.assertTrue(Rake.IsDone())
        evolvedBox = Rake.Shape()
        # Create Cylinder
        Cylinder = BRepPrimAPI_MakeCylinder(gp_Ax2(gp_Pnt(-300,0,0),gp_Dir(0,0,1)),100,200).Shape()
        fillet = BRepFilletAPI_MakeFillet(Cylinder)
        
        TabPoint2 = TColgp_Array1OfPnt2d(0,20)
        for i in range(0,20):
            Point2d = gp_Pnt2d(i*2*math.pi/19,60*math.cos(i*math.pi/19-math.pi/2)+10)
            TabPoint2.SetValue(i,Point2d)
        #    append(Point2d)
        exp2 = TopExp_Explorer(Cylinder,TopAbs_EDGE)
        fillet.Add(TabPoint2,TopoDS_edge(exp2.Current()))
        fillet.Build()
        self.assertTrue(fillet.IsDone())
        LawEvolvedCylinder = fillet.Shape()
        
        P = gp_Pnt(350,0,0)
        Box2 = BRepPrimAPI_MakeBox(P,200,200,200).Shape()
        afillet = BRepFilletAPI_MakeFillet(Box2)
        
        TabPoint = TColgp_Array1OfPnt2d(1,6)
        P1 = gp_Pnt2d(0.,8.)
        P2 = gp_Pnt2d(0.2,16.)
        P3 = gp_Pnt2d(0.4,25.)
        P4 = gp_Pnt2d(0.6,55.)
        P5 = gp_Pnt2d(0.8,28.)
        P6 = gp_Pnt2d(1.,20.)
        TabPoint.SetValue(1,P1)
        TabPoint.SetValue(2,P2)
        TabPoint.SetValue(3,P3)
        TabPoint.SetValue(4,P4)
        TabPoint.SetValue(5,P5)
        TabPoint.SetValue(6,P6)
               
        exp = TopExp_Explorer(Box2,TopAbs_EDGE)
        exp.Next()
        exp.Next()
        exp.Next()
        exp.Next()
        afillet.Add(TabPoint, TopoDS_edge(exp.Current()))
        afillet.Build()
        self.assertTrue(afillet.IsDone())
        LawEvolvedBox = afillet.Shape()

def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestTopologyOperations))
   return suite
        
if __name__ == '__main__':
    unittest.main()