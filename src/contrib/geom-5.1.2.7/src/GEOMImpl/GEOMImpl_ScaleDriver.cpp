// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_ScaleDriver.hxx>
#include <GEOMImpl_IScale.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>

#include <ShapeFix_Shape.hxx>
#include <ShapeFix_ShapeTolerance.hxx>

#include <BRepBuilderAPI_Transform.hxx>
#include <BRepBuilderAPI_GTransform.hxx>
#include <BRep_Tool.hxx>
#include <BRepAlgo.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Ax1.hxx>
#include <gp_GTrsf.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_ScaleDriver::GetID()
{
  static Standard_GUID aScaleDriver("FF1BBB52-5D14-4df2-980B-3A668264EA16");
  return aScaleDriver; 
}


//=======================================================================
//function : GEOMImpl_ScaleDriver
//purpose  : 
//=======================================================================
GEOMImpl_ScaleDriver::GEOMImpl_ScaleDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_ScaleDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IScale aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == SCALE_SHAPE || aType == SCALE_SHAPE_COPY) {
    Handle(GEOM_Function) aRefShape = aCI.GetShape();
    TopoDS_Shape aShapeBase = aRefShape->GetValue();
    if (aShapeBase.IsNull()) return 0;

    gp_Pnt aP (0,0,0);
    Handle(GEOM_Function) aRefPoint = aCI.GetPoint();
    if (!aRefPoint.IsNull()) {
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.IsNull()) return 0;
      if (aShapePnt.ShapeType() != TopAbs_VERTEX) return 0;
      aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
    }

    // Bug 6839: Check for standalone (not included in faces) degenerated edges
    TopTools_IndexedDataMapOfShapeListOfShape aEFMap;
    TopExp::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, aEFMap);
    Standard_Integer i, nbE = aEFMap.Extent();
    for (i = 1; i <= nbE; i++) {
      TopoDS_Shape anEdgeSh = aEFMap.FindKey(i);
      if (BRep_Tool::Degenerated(TopoDS::Edge(anEdgeSh))) {
        const TopTools_ListOfShape& aFaces = aEFMap.FindFromIndex(i);
        if (aFaces.IsEmpty())
          Standard_ConstructionError::Raise
            ("Scaling aborted : cannot scale standalone degenerated edge");
      }
    }

    // Perform Scaling
    gp_Trsf aTrsf;
    aTrsf.SetScale(aP, aCI.GetFactor());
    BRepBuilderAPI_Transform aBRepTrsf (aShapeBase, aTrsf, Standard_False);
	aShape = aBRepTrsf.Shape();
  }
  else if (aType == SCALE_SHAPE_AFFINE || aType == SCALE_SHAPE_AFFINE_COPY) {
	Handle(GEOM_Function) aRefShape = aCI.GetShape();
	Handle(GEOM_Function) aRefVector = aCI.GetVector();
	TopoDS_Shape aShapeBase = aRefShape->GetValue();
	TopoDS_Shape aShapeVector  = aRefVector->GetValue();
	if (aShapeBase.IsNull() || aShapeVector.IsNull()) return 0;
	if (aShapeVector.ShapeType() != TopAbs_EDGE) return 0;
	TopoDS_Edge anEdgeVector = TopoDS::Edge(aShapeVector);

	// Bug 6839: Check for standalone (not included in faces) degenerated edges
	TopTools_IndexedDataMapOfShapeListOfShape aEFMap;
	TopExp::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, aEFMap);
	Standard_Integer i, nbE = aEFMap.Extent();
	for (i = 1; i <= nbE; i++) {
	  TopoDS_Shape anEdgeSh = aEFMap.FindKey(i);
	  if (BRep_Tool::Degenerated(TopoDS::Edge(anEdgeSh))) {
		const TopTools_ListOfShape& aFaces = aEFMap.FindFromIndex(i);
		if (aFaces.IsEmpty())
		  Standard_ConstructionError::Raise
			("Scaling aborted : cannot scale standalone degenerated edge");
	  }
	}

	//Get axis
	gp_Pnt aP1 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdgeVector));
	gp_Pnt aP2 = BRep_Tool::Pnt(TopExp::LastVertex(anEdgeVector));
    gp_Dir aDir(gp_Vec(aP1, aP2));
	gp_Ax2 anAx2(aP1, aDir);

	// Perform Scaling
	gp_GTrsf aGTrsf;
	aGTrsf.SetAffinity(anAx2, aCI.GetFactor());
	BRepBuilderAPI_GTransform aBRepGTrsf(aShapeBase, aGTrsf, Standard_False);
	aShape = aBRepGTrsf.Shape();
  }
  else if (aType == SCALE_SHAPE_AXES || aType == SCALE_SHAPE_AXES_COPY) {
	Handle(GEOM_Function) aRefShape = aCI.GetShape();
    TopoDS_Shape aShapeBase = aRefShape->GetValue();
    if (aShapeBase.IsNull()) return 0;

    bool isP = false;
    gp_Pnt aP (0,0,0);
    Handle(GEOM_Function) aRefPoint = aCI.GetPoint();
    if (!aRefPoint.IsNull()) {
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.IsNull()) return 0;
      if (aShapePnt.ShapeType() != TopAbs_VERTEX) return 0;
      aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
      isP = true;
    }

    // Bug 6839: Check for standalone (not included in faces) degenerated edges
    TopTools_IndexedDataMapOfShapeListOfShape aEFMap;
    TopExp::MapShapesAndAncestors(aShapeBase, TopAbs_EDGE, TopAbs_FACE, aEFMap);
    Standard_Integer i, nbE = aEFMap.Extent();
    for (i = 1; i <= nbE; i++) {
      TopoDS_Shape anEdgeSh = aEFMap.FindKey(i);
      if (BRep_Tool::Degenerated(TopoDS::Edge(anEdgeSh))) {
        const TopTools_ListOfShape& aFaces = aEFMap.FindFromIndex(i);
        if (aFaces.IsEmpty())
          Standard_ConstructionError::Raise
            ("Scaling aborted : cannot scale standalone degenerated edge");
      }
    }

    // Perform Scaling
    gp_GTrsf aGTrsf;
    gp_Mat rot (aCI.GetFactorX(), 0, 0,
                0, aCI.GetFactorY(), 0,
                0, 0, aCI.GetFactorZ());
    aGTrsf.SetVectorialPart(rot);

    if (isP) {
      gp_Pnt anO (0,0,0);
      if (anO.Distance(aP) > Precision::Confusion()) {
        gp_GTrsf aGTrsfP0;
        aGTrsfP0.SetTranslationPart(anO.XYZ() - aP.XYZ());
        gp_GTrsf aGTrsf0P;
        aGTrsf0P.SetTranslationPart(aP.XYZ());
        //aGTrsf = aGTrsf0P * aGTrsf * aGTrsfP0;
        aGTrsf = aGTrsf0P.Multiplied(aGTrsf);
        aGTrsf = aGTrsf.Multiplied(aGTrsfP0);
      }
    }

    BRepBuilderAPI_GTransform aBRepGTrsf (aShapeBase, aGTrsf, Standard_False);
    if (!aBRepGTrsf.IsDone())
      Standard_ConstructionError::Raise("Scaling not done");
	aShape = aBRepGTrsf.Shape();
  } else {
  }

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape,Precision::Confusion(),Precision::Confusion());
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->SetPrecision(Precision::Confusion());
    aSfs->Perform();
    aShape = aSfs->Shape();

    ana.Init(aShape, Standard_False);
	if (!ana.IsValid()) {
	  Standard_CString anErrStr("Scaling aborted : non valid shape result");
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
//function :  GEOMImpl_ScaleDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ScaleDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ScaleDriver",
			                                 sizeof(GEOMImpl_ScaleDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_ScaleDriver) Handle(GEOMImpl_ScaleDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ScaleDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ScaleDriver))) {
       _anOtherObject = Handle(GEOMImpl_ScaleDriver)((Handle(GEOMImpl_ScaleDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
