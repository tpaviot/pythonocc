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

//#include <Standard_Stream.hxx>

#include <GEOMImpl_PositionDriver.hxx>
#include <GEOMImpl_IPosition.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <GEOMImpl_IMeasureOperations.hxx>

// OCCT Includes
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <gp_Pln.hxx>
#include <Geom_Plane.hxx>
#include <GProp_GProps.hxx>
#include <BRepGProp.hxx>

#include <GeomFill_TrihedronLaw.hxx>
#include <GeomFill_CorrectedFrenet.hxx>
#include <GeomFill_CurveAndTrihedron.hxx>

#include <BRepFill_LocationLaw.hxx>
#include <BRepFill_Edge3DLaw.hxx>
#include <BRepFill_SectionPlacement.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_PositionDriver::GetID()
{
  static Standard_GUID aPositionDriver("FF1BBB69-5D14-4df2-980B-3A668264EA16");
  return aPositionDriver;
}


//=======================================================================
//function : GEOMImpl_PositionDriver
//purpose  :
//=======================================================================
GEOMImpl_PositionDriver::GEOMImpl_PositionDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_PositionDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IPosition aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == POSITION_SHAPE || aType == POSITION_SHAPE_COPY) {
    Handle(GEOM_Function) aRefShape = aCI.GetShape();
    Handle(GEOM_Function) aRefStartLCS = aCI.GetStartLCS();
    Handle(GEOM_Function) aRefEndLCS = aCI.GetEndLCS();

    TopoDS_Shape aShapeBase = aRefShape->GetValue();
    TopoDS_Shape aShapeStartLCS = aRefStartLCS->GetValue();
    TopoDS_Shape aShapeEndLCS = aRefEndLCS->GetValue();

    if (aShapeBase.IsNull() || aShapeStartLCS.IsNull() ||
	aShapeEndLCS.IsNull() || aShapeEndLCS.ShapeType() != TopAbs_FACE)
      return 0;

    gp_Trsf aTrsf;
    gp_Ax3 aStartAx3, aDestAx3;

    // End LCS
    aDestAx3 = GEOMImpl_IMeasureOperations::GetPosition(aShapeEndLCS);

    // Start LCS
    aStartAx3 = GEOMImpl_IMeasureOperations::GetPosition(aShapeStartLCS);

    // Set transformation
    aTrsf.SetDisplacement(aStartAx3, aDestAx3);

    // Perform transformation
    BRepBuilderAPI_Transform aBRepTrsf (aShapeBase, aTrsf, Standard_False);
    aShape = aBRepTrsf.Shape();
  }
  else if (aType == POSITION_SHAPE_FROM_GLOBAL ||
           aType == POSITION_SHAPE_FROM_GLOBAL_COPY) {
    Handle(GEOM_Function) aRefShape = aCI.GetShape();
    Handle(GEOM_Function) aRefEndLCS = aCI.GetEndLCS();

    TopoDS_Shape aShapeBase = aRefShape->GetValue();
    TopoDS_Shape aShapeEndLCS = aRefEndLCS->GetValue();

    if (aShapeBase.IsNull() || aShapeEndLCS.IsNull() ||
        aShapeEndLCS.ShapeType() != TopAbs_FACE)
      return 0;

    gp_Trsf aTrsf;
    gp_Ax3 aStartAx3, aDestAx3;

    // End LCS
    aDestAx3 = GEOMImpl_IMeasureOperations::GetPosition(aShapeEndLCS);

    // Set transformation
    aTrsf.SetDisplacement(aStartAx3, aDestAx3);

    // Perform transformation
    BRepBuilderAPI_Transform aBRepTrsf (aShapeBase, aTrsf, Standard_False);
    aShape = aBRepTrsf.Shape();
  }
  else if (aType == POSITION_ALONG_PATH) {
    Handle(GEOM_Function) aRefShape = aCI.GetShape();
    Handle(GEOM_Function) aPathShape = aCI.GetPath();
    Standard_Real aParameter = aCI.GetDistance();
    bool aReversed = aCI.GetReverse();
    if (aReversed)
      aParameter = 1 - aParameter;

    TopoDS_Shape aShapeBase = aRefShape->GetValue();
    TopoDS_Shape aPath = aPathShape->GetValue();
    TopoDS_Wire aWire;

    if (aShapeBase.IsNull() || aPath.IsNull())
      return 0;

    if ( aPath.ShapeType() == TopAbs_EDGE ) {
      TopoDS_Edge anEdge = TopoDS::Edge(aPath);
      aWire = BRepBuilderAPI_MakeWire(anEdge);
    }
    else if ( aPath.ShapeType() == TopAbs_WIRE)
      aWire = TopoDS::Wire(aPath);
    else
      return 0;

    Handle(GeomFill_TrihedronLaw) TLaw = new GeomFill_CorrectedFrenet();
    Handle(GeomFill_CurveAndTrihedron) aLocationLaw = new GeomFill_CurveAndTrihedron( TLaw );
    Handle(BRepFill_LocationLaw) aLocation = new BRepFill_Edge3DLaw(aWire, aLocationLaw);

    aLocation->TransformInCompatibleLaw( 0.01 );

    //Calculate a Parameter
    Standard_Real aFirstParam1 = 0, aLastParam1 = 0; // Parameters of the First edge
    Standard_Real aFirstParam2 = 0, aLastParam2 = 0; // Parameters of the Last edge
    aLocation->CurvilinearBounds(aLocation->NbLaw(), aFirstParam2, aLastParam2);

    if ( aLocation->NbLaw() > 1)
      aLocation->CurvilinearBounds(1, aFirstParam1, aLastParam1);
    else if ( aLocation->NbLaw() == 1 )
      aFirstParam1 = aFirstParam2;
    else
      return 0;

    Standard_Real aParam = (aFirstParam1 + (aLastParam2 - aFirstParam1)*aParameter );

    TopoDS_Shape CopyShape = aShapeBase;
    BRepFill_SectionPlacement Place( aLocation, aShapeBase );
    TopLoc_Location Loc2(Place.Transformation()), Loc1;
    Loc1 = CopyShape.Location();
    CopyShape.Location(Loc2.Multiplied(Loc1));

    aLocation->D0( aParam, CopyShape );
    aShape = CopyShape;
  }
  else
    return 0;

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_PositionDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_PositionDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_PositionDriver",
			                                 sizeof(GEOMImpl_PositionDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_PositionDriver) Handle(GEOMImpl_PositionDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_PositionDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_PositionDriver))) {
       _anOtherObject = Handle(GEOMImpl_PositionDriver)((Handle(GEOMImpl_PositionDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
