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

#include <Standard_Stream.hxx>

#include <GEOMImpl_EllipseDriver.hxx>
#include <GEOMImpl_IEllipse.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>

#include <gp_Pnt.hxx>
#include <gp_Elips.hxx>
#include <GC_MakeEllipse.hxx>
#include <Geom_TrimmedCurve.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_EllipseDriver::GetID()
{
  static Standard_GUID aEllipseDriver("FF1BBB34-5D14-4df2-980B-3A668264EA16");
  return aEllipseDriver; 
}


//=======================================================================
//function : GEOMImpl_EllipseDriver
//purpose  : 
//=======================================================================
GEOMImpl_EllipseDriver::GEOMImpl_EllipseDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_EllipseDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IEllipse aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == ELLIPSE_PNT_VEC_RR) {
    // Center
    gp_Pnt aP = gp::Origin();
    Handle(GEOM_Function) aRefPoint = aCI.GetCenter();
    if (!aRefPoint.IsNull()) {
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.ShapeType() != TopAbs_VERTEX) {
        Standard_ConstructionError::Raise
          ("Ellipse creation aborted: invalid center argument, must be a point");
      }
      aP = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt));
    }
    // Normal
    gp_Vec aV = gp::DZ();
    Handle(GEOM_Function) aRefVector = aCI.GetVector();
    if (!aRefVector.IsNull()) {
      TopoDS_Shape aShapeVec = aRefVector->GetValue();
      if (aShapeVec.ShapeType() != TopAbs_EDGE) {
        Standard_ConstructionError::Raise
          ("Ellipse creation aborted: invalid normal vector argument, must be a vector or an edge");
      }
      TopoDS_Edge anE = TopoDS::Edge(aShapeVec);
      TopoDS_Vertex V1, V2;
      TopExp::Vertices(anE, V1, V2, Standard_True);
      if (!V1.IsNull() && !V2.IsNull()) {
        aV = gp_Vec(BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
        if (aV.Magnitude() < gp::Resolution()) {
          Standard_ConstructionError::Raise
            ("Ellipse creation aborted: normal vector of zero length is given");
        }
      }
    }

    // Axes
    gp_Ax2 anAxes (aP, aV);

    // Main Axis vector
    Handle(GEOM_Function) aRefVectorMaj = aCI.GetVectorMajor();
    if (!aRefVectorMaj.IsNull()) {
      TopoDS_Shape aShapeVec = aRefVectorMaj->GetValue();
      if (aShapeVec.ShapeType() != TopAbs_EDGE) {
        Standard_ConstructionError::Raise
          ("Ellipse creation aborted: invalid major axis vector argument, must be a vector or an edge");
      }
      TopoDS_Edge anE = TopoDS::Edge(aShapeVec);
      TopoDS_Vertex V1, V2;
      TopExp::Vertices(anE, V1, V2, Standard_True);
      if (!V1.IsNull() && !V2.IsNull()) {
	gp_Vec aVM (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
        if (aVM.Magnitude() < gp::Resolution()) {
          Standard_ConstructionError::Raise
            ("Ellipse creation aborted: major axis vector of zero length is given");
        }
	if (aV.IsParallel(aVM, Precision::Angular())) {
	  Standard_ConstructionError::Raise
	    ("Ellipse creation aborted: normal and major axis vectors are parallel");
	}
	// Axes defined with main axis vector
	anAxes  = gp_Ax2 (aP, aV, aVM);
      }
    }
    // Radiuses
    double radiusMaj = aCI.GetRMajor();
    double radiusMin = aCI.GetRMinor();
    if ( radiusMaj < radiusMin )
      Standard_ConstructionError::Raise
        ("Ellipse creation aborted: a major radius is less that a minor one");
    if ( radiusMin < 0.0 )
      Standard_ConstructionError::Raise
        ("Ellipse creation aborted: raduis must be positive");

    // Ellipse
    gp_Elips anEll (anAxes, radiusMaj, radiusMin);
    aShape = BRepBuilderAPI_MakeEdge(anEll).Edge();
  } 
  else if(aType == ELLIPSE_THREE_PNT) {
    Handle(GEOM_Function) aRefPoint  = aCI.GetCenter();
    Handle(GEOM_Function) aRefPMajor = aCI.GetPMajor();
    Handle(GEOM_Function) aRefPMinor = aCI.GetPMinor();
    TopoDS_Shape aShCenter = aRefPoint->GetValue();
    TopoDS_Shape aShMajor = aRefPMajor->GetValue();
    TopoDS_Shape aShMinor = aRefPMinor->GetValue();
    if (aShCenter.ShapeType() == TopAbs_VERTEX &&
        aShMajor.ShapeType() == TopAbs_VERTEX && 
        aShMinor.ShapeType() == TopAbs_VERTEX ) {
      gp_Pnt aCenter = BRep_Tool::Pnt(TopoDS::Vertex(aShCenter));
      gp_Pnt aMajor = BRep_Tool::Pnt(TopoDS::Vertex(aShMajor));
      gp_Pnt aMinor = BRep_Tool::Pnt(TopoDS::Vertex(aShMinor));
      GC_MakeEllipse aEllipse( aMajor, aMinor, aCenter );
   	  if (!aEllipse.IsDone()) {
		StdFail_NotDone::Raise("Ellipse operation can not be performed on the given vertices");
	  }
      Handle_Geom_TrimmedCurve aCurve = new Geom_TrimmedCurve(aEllipse.Value(), .0, 2*M_PI, Standard_True);
      aShape = BRepBuilderAPI_MakeEdge( aCurve ).Edge();
    }
  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label()); 

  return 1;    
}


//=======================================================================
//function :  GEOMImpl_EllipseDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_EllipseDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_EllipseDriver",
			                                 sizeof(GEOMImpl_EllipseDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_EllipseDriver) Handle(GEOMImpl_EllipseDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_EllipseDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_EllipseDriver))) {
       _anOtherObject = Handle(GEOMImpl_EllipseDriver)((Handle(GEOMImpl_EllipseDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
