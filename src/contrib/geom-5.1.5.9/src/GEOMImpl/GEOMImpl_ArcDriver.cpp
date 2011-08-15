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
#include <Standard_Stream.hxx>

#include <GEOMImpl_ArcDriver.hxx>
#include <GEOMImpl_IArc.hxx>
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

#include <GC_MakeArcOfCircle.hxx>
#include <GC_MakeCircle.hxx>
#include <GC_MakeArcOfEllipse.hxx>
#include <GC_MakeEllipse.hxx>
#include <Standard_ConstructionError.hxx>
#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>
#include <gp_Circ.hxx>
#include <gp_Elips.hxx>
#include <Geom_Circle.hxx>
#include <Geom_Ellipse.hxx>

#include "utilities.h"

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_ArcDriver::GetID()
{
  static Standard_GUID aArcDriver("FF1BBB35-5D14-4df2-980B-3A668264EA16");
  return aArcDriver; 
}


//=======================================================================
//function : GEOMImpl_ArcDriver
//purpose  : 
//=======================================================================
GEOMImpl_ArcDriver::GEOMImpl_ArcDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_ArcDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IArc aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  if ((aType == CIRC_ARC_THREE_PNT) || (aType == CIRC_ARC_CENTER) || (aType == ELLIPSE_ARC_CENTER_TWO_PNT))
  {
    Handle(GEOM_Function) aRefPoint1 = aCI.GetPoint1();
    Handle(GEOM_Function) aRefPoint2 = aCI.GetPoint2();
    Handle(GEOM_Function) aRefPoint3 = aCI.GetPoint3();

    TopoDS_Shape aShapePnt1 = aRefPoint1->GetValue();
    TopoDS_Shape aShapePnt2 = aRefPoint2->GetValue();
    TopoDS_Shape aShapePnt3 = aRefPoint3->GetValue();

    if (aShapePnt1.ShapeType() == TopAbs_VERTEX &&
        aShapePnt2.ShapeType() == TopAbs_VERTEX &&
        aShapePnt3.ShapeType() == TopAbs_VERTEX)
    {
      gp_Pnt aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt1));
      gp_Pnt aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt2));
      gp_Pnt aP3 = BRep_Tool::Pnt(TopoDS::Vertex(aShapePnt3));

      if (aP1.Distance(aP2) < gp::Resolution() ||
          aP1.Distance(aP3) < gp::Resolution() ||
          aP2.Distance(aP3) < gp::Resolution())
        Standard_ConstructionError::Raise("Arc creation aborted: coincident points given");

      if (gp_Vec(aP1, aP2).IsParallel(gp_Vec(aP1, aP3), Precision::Angular()))
        Standard_ConstructionError::Raise("Arc creation aborted: points lay on one line");

      if (aType == CIRC_ARC_THREE_PNT)
      {
        GC_MakeArcOfCircle arc (aP1, aP2, aP3);
        aShape = BRepBuilderAPI_MakeEdge(arc).Edge();
      } else if ( aType == CIRC_ARC_CENTER ) { // CIRC_ARC_CENTER
        Standard_Boolean sense = aCI.GetSense();

        Standard_Real aRad = aP1.Distance(aP2);
        gp_Vec aV1 (aP1, aP2);
        gp_Vec aV2 (aP1, aP3);
        gp_Vec aN = aV1 ^ aV2;

        if (sense)
          aN = -aN;

        GC_MakeCircle circ (aP1, aN, aRad);
        Handle(Geom_Circle) aGeomCirc = circ.Value();

        GC_MakeArcOfCircle arc (aGeomCirc->Circ(), aP2, aP3, Standard_True);
        aShape = BRepBuilderAPI_MakeEdge(arc).Edge();
      } else if ( aType == ELLIPSE_ARC_CENTER_TWO_PNT ) { // ELLIPSE_ARC_CENTER_TWO_PNT
	if ( aP1.Distance(aP2) <= aP1.Distance(aP3) ) {
	  // Standard_ConstructionError::Raise("Arc creation aborted: the distance from Center Point to Point 1 needs to be bigger than the distance from Center Point to Point 2");	  
	  cout << "aP1.Distance(aP2) <= aP1.Distance(aP3)" << endl;
	  gp_Pnt aTmpP = aP2;
	  aP2 = aP3;
	  aP3 = aTmpP;
	}

	GC_MakeEllipse ellipse (aP2, aP3, aP1);
	Handle(Geom_Ellipse) aGeomEllipse = ellipse.Value();

        gp_Vec aV1 (aP1, aP2);
        gp_Vec aV2 (aP1, aP3);

	double alpha = fabs(aV1.Angle(aV2));
	
	GC_MakeArcOfEllipse arc (aGeomEllipse->Elips(), aP2, aP3, Standard_True);
	aShape = BRepBuilderAPI_MakeEdge(arc).Edge();
      }
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
//function :  GEOMImpl_ArcDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ArcDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ArcDriver",
			                                 sizeof(GEOMImpl_ArcDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_ArcDriver) Handle(GEOMImpl_ArcDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ArcDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ArcDriver))) {
       _anOtherObject = Handle(GEOMImpl_ArcDriver)((Handle(GEOMImpl_ArcDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
