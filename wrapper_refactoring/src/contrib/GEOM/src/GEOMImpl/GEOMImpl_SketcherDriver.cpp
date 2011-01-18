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

#include <GEOMImpl_SketcherDriver.hxx>
#include <GEOMImpl_ISketcher.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

// OCCT Includes
#include <BRepBuilderAPI_Transform.hxx>
#include <BRep_Tool.hxx>
#include <Geom_Plane.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <gp_Pln.hxx>

#include <Sketcher_Profile.hxx>

#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_SketcherDriver::GetID()
{
  static Standard_GUID aSketcherDriver("FF1BBB64-5D14-4df2-980B-3A668264EA16");
  return aSketcherDriver;
}


//=======================================================================
//function : GEOMImpl_SketcherDriver
//purpose  :
//=======================================================================
GEOMImpl_SketcherDriver::GEOMImpl_SketcherDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_SketcherDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_ISketcher aCI (aFunction);
  //Standard_Integer aType = aFunction->GetType();

  // retrieve the command
  TCollection_AsciiString aCommand = aCI.GetCommand();
  if (aCommand.IsEmpty())
    return 0;

  TopoDS_Shape aShape;

  // create sketcher
  Sketcher_Profile aProfile (aCommand.ToCString());

  if (!aProfile.IsDone()) {
    Standard_ConstructionError::Raise("Sketcher creation failed");
  }

  aShape = aProfile.GetShape();
  if (aShape.IsNull())
    return 0;

  gp_Ax3 aWPlane;
  if ( aFunction->GetType() == SKETCHER_NINE_DOUBLS )
  {
    gp_Pnt aOrigin =
      gp_Pnt(aCI.GetWorkingPlane(1), aCI.GetWorkingPlane(2), aCI.GetWorkingPlane(3));
    gp_Dir aDirZ =
      gp_Dir(aCI.GetWorkingPlane(4), aCI.GetWorkingPlane(5), aCI.GetWorkingPlane(6));
    gp_Dir aDirX =
      gp_Dir(aCI.GetWorkingPlane(7), aCI.GetWorkingPlane(8), aCI.GetWorkingPlane(9));
    aWPlane = gp_Ax3(aOrigin, aDirZ, aDirX);
  }
  else
  {
    Handle(GEOM_Function) aRefFace = aCI.GetWorkingPlane();
    TopoDS_Shape aShape = aRefFace->GetValue();
    //if ( aShape.IsNull() || aShape.ShapeType() != TopAbs_FACE )
    //  return 0;
    //Handle(Geom_Surface) aGS = BRep_Tool::Surface( TopoDS::Face( aShape ));
    //if ( aGS.IsNull() || !aGS->IsKind( STANDARD_TYPE( Geom_Plane )))
    //  return 0;
    //Handle(Geom_Plane) aGPlane = Handle(Geom_Plane)::DownCast( aGS );
    //aWPlane = aGPlane->Pln().Position();
    aWPlane = GEOMImpl_IMeasureOperations::GetPosition(aShape);
  }
  gp_Trsf aTrans;
  aTrans.SetTransformation(aWPlane);
  aTrans.Invert();
  BRepBuilderAPI_Transform aTransformation (aShape, aTrans, Standard_False);
  aShape = aTransformation.Shape();

  if (aShape.IsNull())
    return 0;

  // set the function result
  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_SketcherDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_SketcherDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_SketcherDriver",
			                                 sizeof(GEOMImpl_SketcherDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_SketcherDriver) Handle(GEOMImpl_SketcherDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_SketcherDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_SketcherDriver))) {
       _anOtherObject = Handle(GEOMImpl_SketcherDriver)((Handle(GEOMImpl_SketcherDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
