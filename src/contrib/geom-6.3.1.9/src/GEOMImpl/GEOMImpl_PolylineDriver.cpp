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

#include <GEOMImpl_PolylineDriver.hxx>
#include <GEOMImpl_IPolyline.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <TColgp_Array1OfPnt.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Wire.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_PolylineDriver::GetID()
{
  static Standard_GUID aPolylineDriver("FF1BBB31-5D14-4df2-980B-3A668264EA16");
  return aPolylineDriver; 
}


//=======================================================================
//function : GEOMImpl_PolylineDriver
//purpose  : 
//=======================================================================
GEOMImpl_PolylineDriver::GEOMImpl_PolylineDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_PolylineDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IPolyline aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == POLYLINE_POINTS) {

    bool useCoords = aCI.GetConstructorType() == COORD_CONSTRUCTOR;
    TColgp_Array1OfPnt points(1, (useCoords ? aCI.GetLength() : 1) );
    if(useCoords) {
      Handle(TColStd_HArray1OfReal) aCoordsArray = aCI.GetCoordinates();
      int anArrayLength = aCoordsArray->Length();
      for (int i = 0, j = 1; i <= (anArrayLength-3); i += 3) {
	gp_Pnt aPnt = gp_Pnt(aCoordsArray->Value(i+1), aCoordsArray->Value(i+2), aCoordsArray->Value(i+3));
	points.SetValue(j,aPnt);
	j++;
      } 
    }

    int aLen = aCI.GetLength();
    int ind = 1;
    BRepBuilderAPI_MakePolygon aMakePoly;
    for (; ind <= aLen; ind++)
    {
      if(useCoords) {
	aMakePoly.Add(BRepBuilderAPI_MakeVertex(points.Value(ind)));
      } else {
      Handle(GEOM_Function) aRefPoint = aCI.GetPoint(ind);
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.ShapeType() != TopAbs_VERTEX) {
	  Standard_TypeMismatch::Raise
	    ("Polyline creation aborted : arguments are not a vertexes");
        return 0;
      }
      if (aShapePnt.ShapeType() == TopAbs_VERTEX) {
        aMakePoly.Add(TopoDS::Vertex(aShapePnt));
        //if (!aMakePoly.Added()) return 0;
      }
    }
    }
    // Compare first and last point coordinates and close polyline if it's the same.
    if ( aLen > 2 ) {
      TopoDS_Vertex aV1;
      if( useCoords ) {
	aV1 = BRepBuilderAPI_MakeVertex(points.Value(1));
      } else {
      Handle(GEOM_Function) aFPoint = aCI.GetPoint(1);
      TopoDS_Shape aFirstPnt = aFPoint->GetValue();
	aV1 = TopoDS::Vertex(aFirstPnt);
      }

      TopoDS_Vertex aV2;
      if( useCoords ) {
	aV2 = BRepBuilderAPI_MakeVertex(points.Value(aLen));
      } else {
      Handle(GEOM_Function) aLPoint = aCI.GetPoint(aLen);
      TopoDS_Shape aLastPnt = aLPoint->GetValue();
	aV2 = TopoDS::Vertex(aLastPnt);
      }

      if ( (!aV1.IsNull() && !aV2.IsNull() && aV1.IsSame(aV2)) ||
           aCI.GetIsClosed())
        aMakePoly.Close();
    }

    if (aMakePoly.IsDone()) {
      aShape = aMakePoly.Wire();
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
//function :  GEOMImpl_PolylineDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PolylineDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_PolylineDriver",
			                                 sizeof(GEOMImpl_PolylineDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_PolylineDriver) Handle(GEOMImpl_PolylineDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PolylineDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PolylineDriver))) {
       _anOtherObject = Handle(GEOMImpl_PolylineDriver)((Handle(GEOMImpl_PolylineDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
