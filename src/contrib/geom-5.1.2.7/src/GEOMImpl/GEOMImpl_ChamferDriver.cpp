//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_ChamferDriver.hxx>
#include <GEOMImpl_IChamfer.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOM_Function.hxx>
#include <GEOMImpl_Block6Explorer.hxx>

#include <BRep_Tool.hxx>
#include <BRepTools.hxx>
#include <BRepFilletAPI_MakeChamfer.hxx>
#include <BRepFilletAPI_MakeFillet2d.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ChamferDriver::GetID()
{
  static Standard_GUID aChamferDriver("FF1BBB42-5D14-4df2-980B-3A668264EA16");
  return aChamferDriver;
}


//=======================================================================
//function : GEOMImpl_ChamferDriver
//purpose  :
//=======================================================================
GEOMImpl_ChamferDriver::GEOMImpl_ChamferDriver()
{
}

//=======================================================================
//function : isGoodForChamfer
//purpose  :
//=======================================================================
static Standard_Boolean isGoodForChamfer (const TopoDS_Shape& theShape)
{
  if (theShape.ShapeType() == TopAbs_SHELL ||
      theShape.ShapeType() == TopAbs_SOLID ||
      theShape.ShapeType() == TopAbs_COMPSOLID) {
    return Standard_True;
  }

  if (theShape.ShapeType() == TopAbs_COMPOUND) {
    TopTools_MapOfShape mapShape;
    TopoDS_Iterator It (theShape, Standard_False, Standard_False);
    for (; It.More(); It.Next()) {
      if (mapShape.Add(It.Value())) {
        if (!isGoodForChamfer(It.Value())) {
          return Standard_False;
        }
      }
    }
    return Standard_True;
  }

  return Standard_False;
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ChamferDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IChamfer aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShapeBase = aRefShape->GetValue();



  if (aType == CHAMFER_SHAPE_EDGES_2D)
  {
	BRepFilletAPI_MakeFillet2d fill;
	TopoDS_Face aFace;

	Standard_Boolean aWireFlag = Standard_False;
	
	if (aShapeBase.ShapeType() == TopAbs_FACE)
		aFace = TopoDS::Face(aShapeBase);
	else if (aShapeBase.ShapeType() == TopAbs_WIRE)
	{
		TopoDS_Wire aWire = TopoDS::Wire(aShapeBase);
		BRepBuilderAPI_MakeFace aMF(aWire);
		aMF.Build();
		if (!aMF.IsDone()) {
			StdFail_NotDone::Raise("Cannot build initial face from given wire");
		}
		aFace = aMF.Face();
		aWireFlag = Standard_True;
	}
	else
		StdFail_NotDone::Raise("Base shape is neither a face or a wire !");

	fill.Init(aFace);

	double aD1_2D = aCI.GetD1();
	double aD2_2D = aCI.GetD2();

	TopoDS_Shape aShapeFace1, aShapeFace2;

	if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.Get2DEdge1(), aShapeFace1) &&
		GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.Get2DEdge2(), aShapeFace2))
	{
		fill.AddChamfer(TopoDS::Edge(aShapeFace1), TopoDS::Edge(aShapeFace2), aD1_2D, aD2_2D);
	}
	else
		StdFail_NotDone::Raise("Cannot get 2d egde from sub-shape index!");

	fill.Build();
	if (!fill.IsDone()) {
		StdFail_NotDone::Raise("Chamfer can not be computed on the given shape with the given parameters");
	}
	if (aWireFlag)
	{
		BRepBuilderAPI_MakeWire MW;
		TopExp_Explorer exp (fill.Shape(), TopAbs_EDGE);
		for (; exp.More(); exp.Next())
			MW.Add(TopoDS::Edge(exp.Current()));
		MW.Build();
		if (!MW.IsDone())
			StdFail_NotDone::Raise("Resulting wire cannot be built");
			
		aShape = MW.Shape();
	}
	else
		aShape = fill.Shape();
  }
  else
  {
	  // Check the shape type. It have to be shell
	  // or solid, or compsolid, or compound of these shapes.
	  if (!isGoodForChamfer(aShapeBase)) {
		StdFail_NotDone::Raise
		  ("Wrong shape. Must be shell or solid, or compsolid or compound of these shapes");
	  }

	  BRepFilletAPI_MakeChamfer fill (aShapeBase);

	  if (aType == CHAMFER_SHAPE_ALL) {
		// symmetric chamfer on all edges
		double aD = aCI.GetD();
		TopTools_IndexedDataMapOfShapeListOfShape M;
		GEOMImpl_Block6Explorer::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, M);
		for (int i = 1; i <= M.Extent(); i++) {
		  TopoDS_Edge E = TopoDS::Edge(M.FindKey(i));
		  TopoDS_Face F = TopoDS::Face(M.FindFromIndex(i).First());
		  if (!BRepTools::IsReallyClosed(E, F) &&
			  !BRep_Tool::Degenerated(E) &&
			  M.FindFromIndex(i).Extent() == 2)
			fill.Add(aD, E, F);
		}
	  }else if (aType == CHAMFER_SHAPE_EDGE || aType == CHAMFER_SHAPE_EDGE_AD) {
		// chamfer on edges, common to two faces, with D1 on the first face

		TopoDS_Shape aFace1, aFace2;
		if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetFace1(), aFace1) &&
			GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetFace2(), aFace2))
		  {
		TopoDS_Face F = TopoDS::Face(aFace1);

		// fill map of edges of the second face
		TopTools_MapOfShape aMap;
		TopExp_Explorer Exp2 (aFace2, TopAbs_EDGE);
		for (; Exp2.More(); Exp2.Next()) {
		  aMap.Add(Exp2.Current());
		}
	
		// find edges of the first face, common with the second face
		TopExp_Explorer Exp (aFace1, TopAbs_EDGE);
		for (; Exp.More(); Exp.Next()) {
		  if (aMap.Contains(Exp.Current())) {
			TopoDS_Edge E = TopoDS::Edge(Exp.Current());
			if (!BRepTools::IsReallyClosed(E, F) && !BRep_Tool::Degenerated(E))
			  {
			if ( aType == CHAMFER_SHAPE_EDGE )
			  {
				double aD1 = aCI.GetD1();
				double aD2 = aCI.GetD2();
				fill.Add(aD1, aD2, E, F);
			  }
			else
			  {
				double aD = aCI.GetD();
				double anAngle = aCI.GetAngle();
				if ( (anAngle > 0) && (anAngle < (Standard_PI/2)) )
				  fill.AddDA(aD, anAngle, E, F);
			  }
			  }
		  }
		}
		  }
	  }
	  else if (aType == CHAMFER_SHAPE_FACES || aType == CHAMFER_SHAPE_FACES_AD) {
		// chamfer on all edges of the selected faces, with D1 on the selected face
		// (on first selected face, if the edge belongs to two selected faces)

		int aLen = aCI.GetLength();
		int ind = 1;
		TopTools_MapOfShape aMap;
		TopTools_IndexedDataMapOfShapeListOfShape M;
		GEOMImpl_Block6Explorer::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, M);
		for (; ind <= aLen; ind++)
		{
		  TopoDS_Shape aShapeFace;
		  if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetFace(ind), aShapeFace))
		{
		  TopoDS_Face F = TopoDS::Face(aShapeFace);
		  TopExp_Explorer Exp (F, TopAbs_EDGE);
		  for (; Exp.More(); Exp.Next()) {
			if (!aMap.Contains(Exp.Current()))
			  {
			TopoDS_Edge E = TopoDS::Edge(Exp.Current());
			if (!BRepTools::IsReallyClosed(E, F) &&
				!BRep_Tool::Degenerated(E) &&
				M.FindFromKey(E).Extent() == 2)
			  if (aType == CHAMFER_SHAPE_FACES)
				{
				  double aD1 = aCI.GetD1();
				  double aD2 = aCI.GetD2();
				  fill.Add(aD1, aD2, E, F);
				}
			  else
				{
				  double aD = aCI.GetD();
				  double anAngle = aCI.GetAngle();
				  if ( (anAngle > 0) && (anAngle < (Standard_PI/2)) )
				fill.AddDA(aD, anAngle, E, F);
				}
			  }
		  }
		}
		}
	  }
	else if (aType == CHAMFER_SHAPE_EDGES || aType == CHAMFER_SHAPE_EDGES_AD)
	  {
		// chamfer on selected edges with lenght param D1 & D2.

		int aLen = aCI.GetLength();
		int ind = 1;
		TopTools_MapOfShape aMap;
		TopTools_IndexedDataMapOfShapeListOfShape M;
		GEOMImpl_Block6Explorer::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, M);
		for (; ind <= aLen; ind++)
		{
		  TopoDS_Shape aShapeEdge;
		  if (GEOMImpl_ILocalOperations::GetSubShape(aShapeBase, aCI.GetEdge(ind), aShapeEdge))
		{
		  TopoDS_Edge E = TopoDS::Edge(aShapeEdge);
		  const TopTools_ListOfShape& aFacesList = M.FindFromKey(E);
		  TopoDS_Face F = TopoDS::Face( aFacesList.First() );
		  if (aType == CHAMFER_SHAPE_EDGES)
			{
			  double aD1 = aCI.GetD1();
			  double aD2 = aCI.GetD2();
			  fill.Add(aD1, aD2, E, F);
			}
		  else
			{
			  double aD = aCI.GetD();
			  double anAngle = aCI.GetAngle();
			  if ( (anAngle > 0) && (anAngle < (Standard_PI/2)) )
			fill.AddDA(aD, anAngle, E, F);
			}
		}
		}
	  }
	  else {
	  }

	  fill.Build();
	  if (!fill.IsDone()) {
		StdFail_NotDone::Raise("Chamfer can not be computed on the given shape with the given parameters");
	  }
	  aShape = fill.Shape();
  }

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
  	// 08.07.2008 added by skl during fixing bug 19761 from Mantis
	ShapeFix_ShapeTolerance aSFT;
	aSFT.LimitTolerance(aShape, Precision::Confusion(),
						Precision::Confusion(), TopAbs_SHAPE);
	Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
	aSfs->Perform();
	aShape = aSfs->Shape();
	ana.Init(aShape);
	if (!ana.IsValid()) {
	  Standard_CString anErrStr("Chamfer algorithm has produced an invalid shape result");
	  #ifdef THROW_ON_INVALID_SH
		Standard_ConstructionError::Raise(anErrStr);
	  #else
		MESSAGE(anErrStr);
		//further processing can be performed here
		//...
		//in case of failure of automatic treatment
		//mark the corresponding GEOM_Object as problematic
		TDF_Label aLabel = aFunction->GetOwnerEntry();
		if (!aLabel.IsRoot()) {
		  Handle(GEOM_Object) aMainObj = GEOM_Object::GetObject(aLabel);
		  if (!aMainObj.IsNull())
			aMainObj->SetDirty(Standard_True);
		}
	  #endif
	}
  }

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_ChamferDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ChamferDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ChamferDriver",
			                                 sizeof(GEOMImpl_ChamferDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_ChamferDriver) Handle(GEOMImpl_ChamferDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ChamferDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ChamferDriver))) {
       _anOtherObject = Handle(GEOMImpl_ChamferDriver)((Handle(GEOMImpl_ChamferDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
