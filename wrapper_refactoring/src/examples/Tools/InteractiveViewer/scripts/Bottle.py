#!C:/Python24/Python.exe
# -*- coding: utf-8 -*-

'''
Bottle example converted to work with the viewer
'''

__author__ = "Andrew Haywood"
__date__ = "15 November 2007"

# --------------------------------------------------
import os
import os.path
import math
# --------------------------------------------------

display.EraseAll()

# --------------------------------------------------

myWidth = 50
myHeight = 70
myThickness = 30

# Profile : Define Support Points
aPnt1 = gp_Pnt(-myWidth / 2. , 0 , 0)
aPnt2 = gp_Pnt(-myWidth / 2. , -myThickness / 4. , 0)
aPnt3 = gp_Pnt(0 , -myThickness / 2. , 0)
aPnt4 = gp_Pnt(myWidth / 2. , -myThickness / 4. , 0)
aPnt5 = gp_Pnt(myWidth / 2. , 0 , 0)

# Profile : Define the Geometry
aArcOfCircle = GC_MakeArcOfCircle(aPnt2,aPnt3 ,aPnt4)
aSegment1 = GC_MakeSegment(aPnt1 , aPnt2)
aSegment2 = GC_MakeSegment(aPnt4 , aPnt5)

# Profile : Define the Topology
aEdge1 = BRepBuilderAPI_MakeEdge(aSegment1.Value())
aEdge2 = BRepBuilderAPI_MakeEdge(aArcOfCircle.Value())
aEdge3 = BRepBuilderAPI_MakeEdge(aSegment2.Value())
aWire  = BRepBuilderAPI_MakeWire(aEdge1.Edge() , aEdge2.Edge() , aEdge3.Edge())

# Complete Profile
xAxis = gp().OX()
aTrsf = gp_Trsf()
aTrsf.SetMirror(xAxis)
aBRepTrsf = BRepBuilderAPI_Transform(aWire.Shape() , aTrsf)
aMirroredShape = aBRepTrsf.Shape()
aMirroredWire = TopoDS().Wire(aMirroredShape)
mkWire = BRepBuilderAPI_MakeWire()
mkWire.Add(aWire.Wire())
mkWire.Add(aMirroredWire)
myWireProfile = mkWire.Wire()

# Body : Prism the Profile
myFaceProfile = BRepBuilderAPI_MakeFace(myWireProfile)
aPrismVec = gp_Vec(0 , 0 , myHeight)
myBody = BRepPrimAPI_MakePrism(myFaceProfile.Shape() , aPrismVec)

# Body : Apply Fillets
mkFillet = BRepFilletAPI_MakeFillet(myBody.Shape())
aEdgeExplorer = TopExp_Explorer(myBody.Shape() , TopAbs_EDGE)
while aEdgeExplorer.More():
    aEdge = TopoDS().Edge(aEdgeExplorer.Current())
    mkFillet.Add(myThickness / 12. , aEdge)
    aEdgeExplorer.Next()
myBody = mkFillet.Shape()

# Body : Add the Neck	
neckLocation = gp_Pnt(0 , 0 , myHeight)
neckNormal = gp().DZ()
neckAx2 = gp_Ax2(neckLocation , neckNormal)
myNeckRadius = myThickness / 4.
myNeckHeight = myHeight / 10.
MKCylinder = BRepPrimAPI_MakeCylinder(neckAx2 , myNeckRadius , myNeckHeight)
myNeck = MKCylinder.Shape()
myBody = BRepAlgoAPI_Fuse(myBody , myNeck)

# Threading : Create Surfaces
neckAx2_bis = gp_Ax3(neckLocation , neckNormal)
aCyl1 = Geom_CylindricalSurface(neckAx2_bis , myNeckRadius * 0.99)
aCyl2 = Geom_CylindricalSurface(neckAx2_bis , myNeckRadius * 1.05)

# Threading : Define 2D Curves
aPnt = gp_Pnt2d(2. * math.pi , myNeckHeight / 2.)
aDir = gp_Dir2d(2. * math.pi , myNeckHeight / 4.)
aAx2d = gp_Ax2d(aPnt , aDir)
aMajor = 2. * math.pi
aMinor = myNeckHeight / 10.
anEllipse1 = Geom2d_Ellipse(aAx2d , aMajor , aMinor)
anEllipse2 = Geom2d_Ellipse(aAx2d , aMajor , aMinor / 4)
aArc1 = Geom2d_TrimmedCurve(Handle_Geom2d_Ellipse(anEllipse1) , 0 , math.pi)
aArc2 = Geom2d_TrimmedCurve(Handle_Geom2d_Ellipse(anEllipse2) , 0 , math.pi)
aArc1_handle = Handle_Geom2d_Curve(aArc1)
aArc2_handle = Handle_Geom2d_Curve(aArc2)
anEllipsePnt1 = anEllipse1.Value(0)
anEllipsePnt2 = anEllipse1.Value(math.pi)
aSegment = GCE2d_MakeSegment(anEllipsePnt1 , anEllipsePnt2)

# Threading : Build Edges and Wires
aEdge1OnSurf1 = BRepBuilderAPI_MakeEdge( aArc1_handle , Handle_Geom_Surface(aCyl1))
aEdge2OnSurf1 = BRepBuilderAPI_MakeEdge( aSegment.Value() , Handle_Geom_Surface(aCyl1))
aEdge1OnSurf2 = BRepBuilderAPI_MakeEdge( aArc2_handle , Handle_Geom_Surface(aCyl2))
aEdge2OnSurf2 = BRepBuilderAPI_MakeEdge( aSegment.Value() , Handle_Geom_Surface(aCyl2))

threadingWire1 = BRepBuilderAPI_MakeWire(aEdge1OnSurf1.Edge() , aEdge2OnSurf1.Edge())
threadingWire2 = BRepBuilderAPI_MakeWire(aEdge1OnSurf2.Edge() , aEdge2OnSurf2.Edge())
BRepLib().BuildCurves3d(threadingWire1.Shape())
BRepLib().BuildCurves3d(threadingWire2.Shape())

# Create Threading
aTool = BRepOffsetAPI_ThruSections(True)
aTool.AddWire(threadingWire1.Wire())
aTool.AddWire(threadingWire2.Wire())
aTool.CheckCompatibility(False)

myThreading = aTool.Shape()

display.DisplayShape(myBody.Shape())
display.DisplayShape(myThreading)

display.View_Iso()
display.Zoom_FitAll()

# --------------------------------------------------
