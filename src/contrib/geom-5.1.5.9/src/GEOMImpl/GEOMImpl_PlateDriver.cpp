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
//Author : Sioutis Fotios
//Date : 5/8/2008
//for the salome geom win32 port

#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_PlateDriver.hxx>
#include <GEOMImpl_IPlate.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>
#include <StdFail_NotDone.hxx>

#include <TopoDS.hxx>
#include <BRep_Tool.hxx>
#include <TopExp_Explorer.hxx>

#include <BRepAdaptor_Curve.hxx>
#include <BRepAdaptor_HCurve.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepCheck_Analyzer.hxx>

#include <GeomPlate_BuildPlateSurface.hxx>
#include <GeomPlate_PointConstraint.hxx>
#include <GeomPlate_CurveConstraint.hxx>
#include <GeomPlate_MakeApprox.hxx>

#define DEFAULT_CONTINUITY 	0
#define DEFAULT_Nbmax	4
#define DEFAULT_dgmax	7
#define DEFAULT_dmax	0.001


//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_PlateDriver::GetID()
{
  static Standard_GUID aPlateDriver("FF1BBB73-5D14-4df2-980B-3A668264EA16");
  return aPlateDriver;
}


//=======================================================================
//function : GEOMImpl_PlateDriver
//purpose  : 
//=======================================================================

GEOMImpl_PlateDriver::GEOMImpl_PlateDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_PlateDriver::Execute(TFunction_Logbook& log) const
{
	if (Label().IsNull()) return 0;
	Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());
	if(aFunction.IsNull()) return 0;

	GEOMImpl_IPlate aPI (aFunction);
	Standard_Integer aType = aFunction->GetType();

	TopoDS_Shape aShape;

	if (aType == PLATE_BY_SHAPES_LIST) {
		int ind, aLen = aPI.GetLength();

		if (aLen < 1)
			return 0;

		GeomPlate_BuildPlateSurface aPlate;
		Handle(GeomPlate_Surface) myPlateSurf;

		Handle(GEOM_Function) aRefInitialShape = aPI.GetInitialShape();
		if (!aRefInitialShape.IsNull()) {
			TopoDS_Shape anInitialShape = aRefInitialShape->GetValue();
			if (!anInitialShape.IsNull() && anInitialShape.ShapeType() == TopAbs_FACE)
			{
				aPlate.LoadInitSurface(BRep_Tool::Surface(TopoDS::Face(anInitialShape)));

				TopExp_Explorer exp (anInitialShape, TopAbs_EDGE); //in case we have an init surface we must pass all of it's edges as constrains
				for (; exp.More(); exp.Next()) {                   //otherwise exception is risen from the plate driver
					BRepAdaptor_Curve aCurve(TopoDS::Edge(exp.Current()));
					Handle(BRepAdaptor_HCurve) aHCurve = new BRepAdaptor_HCurve(aCurve);
					Handle(GeomPlate_CurveConstraint) aCrvConstr = new GeomPlate_CurveConstraint(aHCurve, DEFAULT_CONTINUITY);
					aPlate.Add(aCrvConstr);
				}
			}
		}

		for (ind = 1; ind <= aLen; ind++) {
			Handle(GEOM_Function) aRefShape = aPI.GetShape(ind);
			TopoDS_Shape aShape = aRefShape->GetValue();
			if (aShape.ShapeType() == TopAbs_VERTEX) { //case a simple point
				gp_Pnt aP = BRep_Tool::Pnt(TopoDS::Vertex(aShape));
				Handle(GeomPlate_PointConstraint) aPntConstr = new GeomPlate_PointConstraint(aP, DEFAULT_CONTINUITY);
				aPlate.Add(aPntConstr);
			}
			else {
				TopExp_Explorer exp (aShape, TopAbs_EDGE); //this case treats all cases where edges can be found
				Standard_Boolean hasEdge = Standard_False;
				for (; exp.More(); exp.Next()) {
					BRepAdaptor_Curve aCurve(TopoDS::Edge(exp.Current()));
					Handle(BRepAdaptor_HCurve) aHCurve = new BRepAdaptor_HCurve(aCurve);
					Handle(GeomPlate_CurveConstraint) aCrvConstr = new GeomPlate_CurveConstraint(aHCurve, DEFAULT_CONTINUITY);
					aPlate.Add(aCrvConstr);
					hasEdge = Standard_True;
				}
				if (!hasEdge) { //this case treats a compound of points
					exp.Init(aShape, TopAbs_VERTEX);
					for (; exp.More(); exp.Next()) {
						gp_Pnt aP = BRep_Tool::Pnt(TopoDS::Vertex(exp.Current()));
						Handle(GeomPlate_PointConstraint) aPntConstr = new GeomPlate_PointConstraint(aP, DEFAULT_CONTINUITY);
						aPlate.Add(aPntConstr);
					}
				}
			}
		}
		aPlate.Perform();
		if (!aPlate.IsDone())
			Standard_ConstructionError::Raise("Plate surface cannot be created using the specific shapes !");
		else
			myPlateSurf = aPlate.Surface();
		GeomPlate_MakeApprox aMKS( myPlateSurf, Precision::Approximation(), DEFAULT_Nbmax, DEFAULT_dgmax, DEFAULT_dmax);
		BRepBuilderAPI_MakeFace MK (aMKS.Surface());
		MK.Build();
		if (!MK.IsDone())
			Standard_ConstructionError::Raise("Plate topology cannot be created !");
		else {
			aShape = MK.Shape();
			BRepCheck_Analyzer ana (aShape, false);
			if (!ana.IsValid()) {
			  Standard_CString anErrStr("Plate algorithm has produced an invalid shape result");
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
	}
	if (aShape.IsNull()) return 0;
	aFunction->SetValue(aShape);
	log.SetTouched(Label());
	return 1;
}

//=======================================================================
//function :  GEOMImpl_PlateDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PlateDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_PlateDriver",
			                                 sizeof(GEOMImpl_PlateDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 

const Handle(GEOMImpl_PlateDriver) Handle(GEOMImpl_PlateDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PlateDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PlateDriver))) {
	   _anOtherObject = Handle(GEOMImpl_PlateDriver)((Handle(GEOMImpl_PlateDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


