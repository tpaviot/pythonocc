##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.GeomAPI import *
from OCC.Geom import *
from OCC.GeomAbs import *
from OCC.TColgp import *
from OCC.Geom2d import *
from OCC.TColgp import *
from OCC.BRepOffsetAPI import *
from OCC.GeomAbs import *
from OCC.BRepPrimAPI import *
from OCC.Utils.Topology import Topo
from OCC.BRep import *
from OCC.Precision import *
from OCC.BRepLib import *

import math, sys
import unittest

class TestTopologyBuilding(unittest.TestCase):
    def test_edge(self):
        print 'Test: edge'
        # The blud edge
        BlueEdge = BRepBuilderAPI_MakeEdge(gp_Pnt(-80,-50,-20),gp_Pnt(-30,-60,-60))
        
        V1 = BRepBuilderAPI_MakeVertex(gp_Pnt(-20,10,-30))
        V2 = BRepBuilderAPI_MakeVertex(gp_Pnt(10,7,-25))
        YellowEdge = BRepBuilderAPI_MakeEdge(V1.Vertex(),V2.Vertex())
            
        #The white edge    
                
        line = gp_Lin(gp_Ax1(gp_Pnt(10,10,10),gp_Dir(1,0,0)))
        WhiteEdge = BRepBuilderAPI_MakeEdge(line,-20,10)
            
        #The red edge    
            
        Elips = gp_Elips(gp_Ax2(gp_Pnt(10,0,0),gp_Dir(1,1,1)),60,30)
        RedEdge = BRepBuilderAPI_MakeEdge(Elips,0,math.pi/2)
            
        # The green edge and the both extreme vertex    
            
        P1=gp_Pnt(-15,200,10)
        P2=gp_Pnt(5,204,0)
        P3=gp_Pnt(15,200,0)    
        P4=gp_Pnt(-15,20,15)    
        P5=gp_Pnt(-5,20,0)
        P6=gp_Pnt(15,20,0)    
        P7=gp_Pnt(24,120,0)    
        P8=gp_Pnt(-24,120,12.5)    
        array=TColgp_Array1OfPnt(1,8)
        array.SetValue(1,P1)
        array.SetValue(2,P2)
        array.SetValue(3,P3)
        array.SetValue(4,P4)
        array.SetValue(5,P5)
        array.SetValue(6,P6)
        array.SetValue(7,P7)
        array.SetValue(8,P8)
        curve = Geom_BezierCurve(array)
        ME = BRepBuilderAPI_MakeEdge(curve.GetHandle())    
        GreenEdge = ME
        V3 = ME.Vertex1()    
        V4 = ME.Vertex2()
    
    def test_wire(self):
        print 'Test: wire'
        #       The red wire is build from a single edge
        Elips = gp_Elips(gp_Ax2(gp_Pnt(250,0,0),gp_Dir(1,1,1)),160,90)
        Edge1 = BRepBuilderAPI_MakeEdge(Elips,0,math.pi/2).Edge()
        RedWire = BRepBuilderAPI_MakeWire(Edge1).Wire()
        ###       the yellow wire is build from an existing wire and an edge
        circle = gp_Circ(gp_Ax2(gp_Pnt(-300,0,0),gp_Dir(1,0,0)),80)
        Edge2 = BRepBuilderAPI_MakeEdge(circle,0,math.pi).Edge()
        ExistingWire = BRepBuilderAPI_MakeWire(Edge2).Wire()
        Edge3 = BRepBuilderAPI_MakeEdge(gp_Pnt(-300,0,-80),gp_Pnt(-90,20,-30)).Edge()
        MW1 = BRepBuilderAPI_MakeWire(ExistingWire,Edge3)
        self.assertTrue(MW1.IsDone())
        YellowWire = MW1.Wire()
        ###       the white wire is built with an existing wire and 3 edges.
        ###       we use the methods Add, Edge and Vertex from BRepBuilderAPI_MakeWire.
        circle2 = gp_Circ(gp_Ax2(gp_Pnt(0,0,0),gp_Dir(0,1,0)),200)
        Edge4 = BRepBuilderAPI_MakeEdge(circle2,0,math.pi).Edge()
        ExistingWire2 = BRepBuilderAPI_MakeWire(Edge4).Wire()
        P1 = gp_Pnt(0,0,-200)
        P2 = gp_Pnt(5,204,0)
        Edge5 = BRepBuilderAPI_MakeEdge(P1,P2).Edge()
        P3 = gp_Pnt(-15,20,15)
        Edge6 = BRepBuilderAPI_MakeEdge(P2,P3).Edge()
        P4 = gp_Pnt(15,20,0)
        Edge7 = BRepBuilderAPI_MakeEdge(P3,P4).Edge()
        MW = BRepBuilderAPI_MakeWire()
        MW.Add(ExistingWire2)
        MW.Add(Edge5)
        MW.Add(Edge6)
        MW.Add(Edge7)
        self.assertTrue(MW.IsDone())
        WhiteWire = MW.Wire()
        LastEdge = MW.Edge()
        LastVertex = MW.Vertex()
        
    def test_face(self):
        print 'Test: face'
        P1 = gp_Pnt()
        P2 = gp_Pnt()
        P3 = gp_Pnt()
        P4 = gp_Pnt()
        P5 = gp_Pnt()
        P6 = gp_Pnt()
        
        # The white Face
        sphere = gp_Sphere(gp_Ax3(gp_Pnt(0,0,0),gp_Dir(1,0,0)),150)
        WhiteFace = BRepBuilderAPI_MakeFace(sphere,0.1,0.7,0.2,0.9)
        
        # The red face    
        P1.SetCoord(-15,200,10)
        P2.SetCoord(5,204,0)    
        P3.SetCoord(15,200,0)    
        P4.SetCoord(-15,20,15)
        P5.SetCoord(-5,20,0)    
        P6.SetCoord(15,20,35)
        array = TColgp_Array2OfPnt(1,3,1,2)
        array.SetValue(1,1,P1)    
        array.SetValue(2,1,P2)    
        array.SetValue(3,1,P3)     
        array.SetValue(1,2,P4)     
        array.SetValue(2,2,P5)     
        array.SetValue(3,2,P6)    
        curve = GeomAPI_PointsToBSplineSurface(array,3,8,GeomAbs_C2,0.001).Surface()
        RedFace = BRepBuilderAPI_MakeFace(curve,0.001)
        
        #The brown face    
        circle = gp_Circ(gp_Ax2(gp_Pnt(0,0,0),gp_Dir(1,0,0)),80)
        Edge1 = BRepBuilderAPI_MakeEdge(circle,0,math.pi)    
        Edge2 = BRepBuilderAPI_MakeEdge(gp_Pnt(0,0,-80),gp_Pnt(0,-10,40))
        Edge3 = BRepBuilderAPI_MakeEdge(gp_Pnt(0,-10,40),gp_Pnt(0,0,80))
        ##
        ##TopoDS_Wire YellowWire;    
        MW1 = BRepBuilderAPI_MakeWire(Edge1.Edge(),Edge2.Edge(),Edge3.Edge())    
        self.assertTrue(MW1.IsDone())
        YellowWire = MW1.Wire()
        BrownFace = BRepBuilderAPI_MakeFace(YellowWire)
        
        #The pink face    
        P1.SetCoord(35,-200,40)
        P2.SetCoord(50,-204,30)
        P3.SetCoord(65,-200,30)
        P4.SetCoord(35,-20,45)    
        P5.SetCoord(45,-20,30)
        P6.SetCoord(65,-20,65)
        array2 = TColgp_Array2OfPnt(1,3,1,2)
        array2.SetValue(1,1,P1)
        array2.SetValue(2,1,P2)
        array2.SetValue(3,1,P3)
        array2.SetValue(1,2,P4)
        array2.SetValue(2,2,P5)
        array2.SetValue(3,2,P6)
        ##    
        BSplineSurf = GeomAPI_PointsToBSplineSurface(array2,3,8,GeomAbs_C2,0.001)
        ##    
        aFace = BRepBuilderAPI_MakeFace(BSplineSurf.Surface(),0.001).Face()
        ##
        ##//2d lines    
        P12d = gp_Pnt2d(0.9,0.1)
        P22d = gp_Pnt2d(0.2,0.7)
        P32d = gp_Pnt2d(0.02,0.1)
        ##
        line1 = Geom2d_Line(P12d,gp_Dir2d((0.2-0.9),(0.7-0.1)))
        line2 = Geom2d_Line(P22d,gp_Dir2d((0.02-0.2),(0.1-0.7)))
        line3 = Geom2d_Line(P32d,gp_Dir2d((0.9-0.02),(0.1-0.1)))
        ##        
        ##//Edges are on the BSpline surface    
        Edge1 = BRepBuilderAPI_MakeEdge(line1.GetHandle(),BSplineSurf.Surface(),0,P12d.Distance(P22d)).Edge()
        Edge2 = BRepBuilderAPI_MakeEdge(line2.GetHandle(),BSplineSurf.Surface(),0,P22d.Distance(P32d)).Edge()
        Edge3 = BRepBuilderAPI_MakeEdge(line3.GetHandle(),BSplineSurf.Surface(),0,P32d.Distance(P12d)).Edge()
        ##
        Wire1 = BRepBuilderAPI_MakeWire(Edge1,Edge2,Edge3).Wire()
        Wire1.Reverse()
        PinkFace = BRepBuilderAPI_MakeFace(aFace,Wire1).Face()
        BRepLib_BuildCurves3d(PinkFace)
        
    def test_evolved_shape(self):
        print 'Test: evolved shape'    
        P = BRepBuilderAPI_MakePolygon()
        P.Add(gp_Pnt(0.,0.,0.))
        P.Add(gp_Pnt(200.,0.,0.))
        P.Add(gp_Pnt(200.,200.,0.))
        P.Add(gp_Pnt(0.,200.,0.))
        P.Add(gp_Pnt(0.,0.,0.))
        wprof = BRepBuilderAPI_MakePolygon(gp_Pnt(0.,0.,0.),gp_Pnt(-60.,-60.,-200.))
        S = BRepOffsetAPI_MakeEvolved(P.Wire(),wprof.Wire(),GeomAbs_Arc,True,False,True,0.0001)
        S.Build()
        self.assertTrue(S.IsDone())
        
    def test_draft_angle(self):
        print 'Test: draft angle'
        S = BRepPrimAPI_MakeBox(200.,300.,150.).Shape()
        adraft = BRepOffsetAPI_DraftAngle(S)
        
        topo = Topo(S)
        for f in topo.faces():
            surf = Handle_Geom_Plane_DownCast(BRep_Tool_Surface(f)).GetObject()
            dirf = surf.Pln().Axis().Direction()
            print 'direction',dirf.Coord()
            ddd = gp_Dir(0,0,1)
            if dirf.IsNormal(ddd, Precision_Angular()):
                adraft.Add(f, ddd, math.radians(15), gp_Pln(gp_Ax3(gp_XOY())))         
        adraft.Build()
        self.assertTrue(adraft.IsDone())
    
    def test_through_sections(self):
        print 'Test: through sections'
        c1 = gp_Circ(gp_Ax2(gp_Pnt(-100.,0.,-100.),gp_Dir(0.,0.,1.)),40.)
        W1 = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c1).Edge()).Wire()
        
        c2 = gp_Circ(gp_Ax2(gp_Pnt(-10.,0.,-0.),gp_Dir(0.,0.,1.)),40.)
        W2 = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c2).Edge()).Wire()
        
        c3 = gp_Circ(gp_Ax2(gp_Pnt(-75.,0.,100.),gp_Dir(0.,0.,1.)),40.)
        W3 = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c3).Edge()).Wire()
        
        c4= gp_Circ(gp_Ax2(gp_Pnt(0.,0.,200.),gp_Dir(0.,0.,1.)),40.)
        W4 = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c4).Edge()).Wire()
        
        generatorA = BRepOffsetAPI_ThruSections(False, True)
        map(generatorA.AddWire, [W1,W2,W3,W4])
        generatorA.Build()
        self.assertTrue(generatorA.IsDone())
        self.assertFalse(generatorA.Shape().IsNull())
    
        #smooth
        c1b = gp_Circ(gp_Ax2(gp_Pnt(100.,0.,-100.),gp_Dir(0.,0.,1.)),40.) 
        W1b = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c1b).Edge()).Wire()
        
        c2b = gp_Circ(gp_Ax2(gp_Pnt(210.,0.,-0.),gp_Dir(0.,0.,1.)),40.) 
        W2b = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c2b).Edge()).Wire()
         
        c3b = gp_Circ(gp_Ax2(gp_Pnt(275.,0.,100.),gp_Dir(0.,0.,1.)),40.)
        W3b = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c3b).Edge()).Wire()
        
        c4b= gp_Circ(gp_Ax2(gp_Pnt(200.,0.,200.),gp_Dir(0.,0.,1.)),40.)
        W4b = BRepBuilderAPI_MakeWire(BRepBuilderAPI_MakeEdge(c4b).Edge()).Wire()
        generatorB = BRepOffsetAPI_ThruSections(True, False)
        map(generatorB.AddWire, [W1b,W2b,W3b,W4b])
        generatorB.Build()
        self.assertTrue(generatorB.IsDone())
        self.assertFalse(generatorB.Shape().IsNull())
        
    def test_prism(self):
        print 'Test: prism'        
        #Prism a vertex > result is an edge
        V1  = BRepBuilderAPI_MakeVertex(gp_Pnt(200.,200.,0.)) 
        S1  = BRepPrimAPI_MakePrism(V1.Shape(),gp_Vec(0.,0.,100.)) 
    
        #Prism an edge > result is a face  
        E   = BRepBuilderAPI_MakeEdge(gp_Pnt(150.,150,0.), gp_Pnt(50.,50,0.)) 
        S2  = BRepPrimAPI_MakePrism(E.Shape(),gp_Vec(0.,0.,100.)) 
    
        #Prism an wire > result is a shell  
        E1  = BRepBuilderAPI_MakeEdge(gp_Pnt(0.,0.,0.), gp_Pnt(50.,0.,0.)) 
        E2  = BRepBuilderAPI_MakeEdge(gp_Pnt(50.,0.,0.), gp_Pnt(50.,50.,0.)) 
        E3  = BRepBuilderAPI_MakeEdge(gp_Pnt(50.,50.,0.), gp_Pnt(0.,0.,0.)) 
        W   = BRepBuilderAPI_MakeWire(E1.Edge(),E2.Edge(),E3.Edge()) 
        S3  = BRepPrimAPI_MakePrism(W.Shape(),gp_Vec(0.,0.,100.)) 
        
        #Prism a face or a shell > result is a solid  
        c   = gp_Circ(gp_Ax2(gp_Pnt(200.,200.,0.),gp_Dir(0.,0.,1.)), 80.) 
        Ec  = BRepBuilderAPI_MakeEdge(c) 
        Wc  = BRepBuilderAPI_MakeWire(Ec.Edge())
        F   = BRepBuilderAPI_MakeFace(gp_Pln(gp_Ax3(gp_XOY())),Wc.Wire()) 
        S4  = BRepPrimAPI_MakePrism(F.Shape(),gp_Vec(0.,0.,100.))
        self.assertTrue(S4.IsDone())

def suite():
   suite = unittest.TestSuite()
   suite.addTest(unittest.makeSuite(TestTopologyBuilding))
   return suite

if __name__== '__main__':
    unittest.main()
