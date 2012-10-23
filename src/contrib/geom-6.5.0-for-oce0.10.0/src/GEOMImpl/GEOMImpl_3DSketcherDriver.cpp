// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

#include <GEOMImpl_3DSketcherDriver.hxx>
#include <GEOMImpl_I3DSketcher.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

// OCCT Includes
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Wire.hxx>
#include <gp_Pnt.hxx>

#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_3DSketcherDriver::GetID()
{
  static Standard_GUID a3DSketcherDriver("FF2BBB54-5D24-4df3-210B-3A678263EA26");
  return a3DSketcherDriver;
}


//=======================================================================
//function : GEOMImpl_3DSketcherDriver
//purpose  :
//=======================================================================
GEOMImpl_3DSketcherDriver::GEOMImpl_3DSketcherDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_3DSketcherDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());
  
  GEOMImpl_I3DSketcher aCI (aFunction);

  TopoDS_Shape aShape;

  Handle(TColStd_HArray1OfReal) aCoordsArray = aCI.GetCoordinates();
  int anArrayLength = aCoordsArray->Length();

  std::list<gp_Pnt> points;
  
  for (int i = 0; i <= (anArrayLength-3); i += 3) {
    gp_Pnt aPnt = gp_Pnt(aCoordsArray->Value(i+1), aCoordsArray->Value(i+2), aCoordsArray->Value(i+3));
    if (points.empty() || aPnt.Distance(points.back()) > gp::Resolution())
      points.push_back(aPnt);
  }

  if ( points.size() == 1) { // Only Start Point
    BRepBuilderAPI_MakeVertex mkVertex (points.back());
    aShape = mkVertex.Shape();
  }
  else if ( points.size() > 1) { // Make Wire
    BRepBuilderAPI_MakePolygon aMakePoly;
    std::list<gp_Pnt>::iterator it;
    for (it = points.begin(); it != points.end(); ++it) {
      aMakePoly.Add(*it);
    }

    if (points.size() > 2 && 
	points.back().X() == points.front().X() && 
	points.back().Y() == points.front().Y() && 
	points.back().Z() == points.front().Z())
      aMakePoly.Close();
    
    if (aMakePoly.IsDone())
      aShape = aMakePoly.Wire();
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);
  log.SetTouched(Label());
  return 1;
}


//=======================================================================
//function :  GEOMImpl_3DSketcherDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_3DSketcherDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_3DSketcherDriver",
                                                         sizeof(GEOMImpl_3DSketcherDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_3DSketcherDriver) Handle(GEOMImpl_3DSketcherDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_3DSketcherDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_3DSketcherDriver))) {
       _anOtherObject = Handle(GEOMImpl_3DSketcherDriver)((Handle(GEOMImpl_3DSketcherDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
