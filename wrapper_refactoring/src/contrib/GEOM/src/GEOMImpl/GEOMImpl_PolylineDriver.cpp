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
    int aLen = aCI.GetLength();
    int ind = 1;
    BRepBuilderAPI_MakePolygon aMakePoly;
    for (; ind <= aLen; ind++)
    {
      Handle(GEOM_Function) aRefPoint = aCI.GetPoint(ind);
      TopoDS_Shape aShapePnt = aRefPoint->GetValue();
      if (aShapePnt.ShapeType() == TopAbs_VERTEX) {
        aMakePoly.Add(TopoDS::Vertex(aShapePnt));
        //if (!aMakePoly.Added()) return 0;
      }
    }
    if (aCI.GetIsClosed()) aMakePoly.Close();
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
