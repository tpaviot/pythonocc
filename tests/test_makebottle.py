#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

# A port from C++ sample "makebottle" to Python

from OCC import *
import math
import sys

myWidth = 50
myHeight = 70
myThickness = 30

# Profile : Define Support Points
aPnt1 = gp.gp_Pnt(-myWidth / 2. , 0 , 0)
aPnt2 = gp.gp_Pnt(-myWidth / 2. , -myThickness / 4. , 0)
aPnt3 = gp.gp_Pnt(0 , -myThickness / 2. , 0)
aPnt4 = gp.gp_Pnt(myWidth / 2. , -myThickness / 4. , 0)
aPnt5 = gp.gp_Pnt(myWidth / 2. , 0 , 0)

# Profile : Define the Geometry
aArcOfCircle = GC.GC_MakeArcOfCircle(aPnt2,aPnt3 ,aPnt4)
aSegment1 = GC.GC_MakeSegment(aPnt1 , aPnt2)
aSegment2 = GC.GC_MakeSegment(aPnt4 , aPnt5)

# Profile : Define the Topology
aEdge1 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge(aSegment1.Value())
aEdge2 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge(aArcOfCircle.Value())
aEdge3 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge(aSegment2.Value())
aWire  = BRepBuilderAPI.BRepBuilderAPI_MakeWire(aEdge1.Edge() , aEdge2.Edge() , aEdge3.Edge())

# Complete Profile
xAxis = gp.gp().OX()
aTrsf = gp.gp_Trsf()
aTrsf.SetMirror(xAxis)
aBRepTrsf = BRepBuilderAPI.BRepBuilderAPI_Transform(aWire.Shape() , aTrsf)
aMirroredShape = aBRepTrsf.Shape()
aMirroredWire = TopoDS.TopoDS().Wire(aMirroredShape)
mkWire = BRepBuilderAPI.BRepBuilderAPI_MakeWire()
mkWire.Add(aWire.Wire())
mkWire.Add(aMirroredWire)
myWireProfile = mkWire.Wire()

# Body : Prism the Profile
myFaceProfile = BRepBuilderAPI.BRepBuilderAPI_MakeFace(myWireProfile)
aPrismVec = gp.gp_Vec(0 , 0 , myHeight)
myBody = BRepPrimAPI.BRepPrimAPI_MakePrism(myFaceProfile.Shape() , aPrismVec)

# Body : Apply Fillets
mkFillet = BRepFilletAPI.BRepFilletAPI_MakeFillet(myBody.Shape())
aEdgeExplorer = TopExp.TopExp_Explorer(myBody.Shape() , TopAbs.TopAbs_EDGE)
while aEdgeExplorer.More():
    aEdge = TopoDS.TopoDS().Edge(aEdgeExplorer.Current())
    mkFillet.Add(myThickness / 12. , aEdge)
    aEdgeExplorer.Next()
myBody = mkFillet.Shape()

# Body : Add the Neck	
neckLocation = gp.gp_Pnt(0 , 0 , myHeight)
neckNormal = gp.gp().DZ()
neckAx2 = gp.gp_Ax2(neckLocation , neckNormal)
myNeckRadius = myThickness / 4.
myNeckHeight = myHeight / 10.
MKCylinder = BRepPrimAPI.BRepPrimAPI_MakeCylinder(neckAx2 , myNeckRadius , myNeckHeight)
myNeck = MKCylinder.Shape()
myBody = BRepAlgoAPI.BRepAlgoAPI_Fuse(myBody , myNeck)

# Body : Create a Hollowed Solid
faceToRemove = TopoDS.TopoDS_Face()
zMax = -1.0
aFaceExplorer = TopExp.TopExp_Explorer()
aFaceExplorer.Init(myBody.Shape(),TopAbs.TopAbs_FACE)
i = 0
while aFaceExplorer.Next():
    aFace = TopoDS.TopoDS().Face(aFaceExplorer.Current())
    faceToRemove = aFace
    i+=1
    print i
##
##	for(TopExp_Explorer aFaceExplorer(myBody , TopAbs_FACE) ; aFaceExplorer.More() ; aFaceExplorer.Next()){
##		
##		TopoDS_Face aFace = TopoDS::Face(aFaceExplorer.Current());
##
##        //Check if <aFace> is the top face of the bottle's neck
##		Handle(Geom_Surface) aSurface = BRep_Tool::Surface(aFace);
##
##		if(aSurface->DynamicType() == STANDARD_TYPE(Geom_Plane)){
##
##			Handle(Geom_Plane) aPlane = Handle(Geom_Plane)::DownCast(aSurface);
##
##			gp_Pnt		  aPnt = aPlane->Location();
##			Standard_Real aZ   = aPnt.Z();
##			
##			if(aZ > zMax){
##				
##				zMax		 = aZ;
##        faceToRemove = aFace;
##			}
##		}
##	}
##
##	TopTools_ListOfShape facesToRemove;
##	
##	facesToRemove.Append(faceToRemove);
##
##	myBody = BRepOffsetAPI_MakeThickSolid(myBody , facesToRemove , -myThickness / 50 , 1.e-3);



# Threading : Create Surfaces
neckAx2_bis = gp.gp_Ax3(neckLocation , neckNormal)
aCyl1 = Geom.Geom_CylindricalSurface(neckAx2_bis , myNeckRadius * 0.99)
aCyl2 = Geom.Geom_CylindricalSurface(neckAx2_bis , myNeckRadius * 1.05)
aCyl1_handle = aCyl1.GetHandle()
aCyl2_handle = aCyl2.GetHandle()
# Threading : Define 2D Curves
aPnt = gp.gp_Pnt2d(2. * math.pi , myNeckHeight / 2.)
aDir = gp.gp_Dir2d(2. * math.pi , myNeckHeight / 4.)
aAx2d = gp.gp_Ax2d(aPnt , aDir)
aMajor = 2. * math.pi
aMinor = myNeckHeight / 10.
anEllipse1 = Geom2d.Geom2d_Ellipse(aAx2d , aMajor , aMinor)
anEllipse2 = Geom2d.Geom2d_Ellipse(aAx2d , aMajor , aMinor / 4.)
anEllipse1_handle = anEllipse1.GetHandle()
anEllipse2_handle = anEllipse2.GetHandle()
aArc1 = Geom2d.Geom2d_TrimmedCurve(anEllipse1_handle, 0 , math.pi)
aArc2 = Geom2d.Geom2d_TrimmedCurve(anEllipse2_handle, 0 , math.pi)
aArc1_handle = aArc1.GetHandle()
aArc2_handle = aArc2.GetHandle()
anEllipsePnt1 = anEllipse1.Value(0)
anEllipsePnt2 = anEllipse1.Value(math.pi)
aSegment = GCE2d.GCE2d_MakeSegment(anEllipsePnt1 , anEllipsePnt2)

# Threading : Build Edges and Wires
aEdge1OnSurf1 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge( aArc1_handle , aCyl1_handle)
aEdge2OnSurf1 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge( aSegment.Value() , aCyl1_handle)
aEdge1OnSurf2 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge( aArc2_handle , aCyl2_handle)
aEdge2OnSurf2 = BRepBuilderAPI.BRepBuilderAPI_MakeEdge( aSegment.Value() , aCyl2_handle)

threadingWire1 = BRepBuilderAPI.BRepBuilderAPI_MakeWire(aEdge1OnSurf1.Edge() , aEdge2OnSurf1.Edge())
threadingWire2 = BRepBuilderAPI.BRepBuilderAPI_MakeWire(aEdge1OnSurf2.Edge() , aEdge2OnSurf2.Edge())
BRepLib.BRepLib().BuildCurves3d(threadingWire1.Shape())
BRepLib.BRepLib().BuildCurves3d(threadingWire2.Shape())

# Create Threading
aTool = BRepOffsetAPI.BRepOffsetAPI_ThruSections(True)
aTool.AddWire(threadingWire1.Wire())
aTool.AddWire(threadingWire2.Wire())
aTool.CheckCompatibility(False)

myThreading = aTool.Shape()

#Building the resulting compund
aRes = TopoDS.TopoDS_Compound()
aBuilder = BRep.BRep_Builder()
aBuilder.MakeCompound(aRes)
aBuilder.Add(aRes, myBody.Shape())
aBuilder.Add(aRes, myThreading)

# Export to STEP
step_export = STEPControl.STEPControl_Writer()
step_export.Transfer(aRes,STEPControl.STEPControl_AsIs)
step_export.Write('bottle.stp')
