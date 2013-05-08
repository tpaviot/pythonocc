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

#include <GEOM_SubShapeDriver.hxx>
#include <GEOM_ISubShape.hxx>
#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepGProp.hxx>

#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopExp_Explorer.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <TopTools_Array1OfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>

#include <GProp_GProps.hxx>
#include <gp_Pnt.hxx>
#include <TColStd_Array1OfReal.hxx>

#include <Precision.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_TypeMismatch.hxx>


//=======================================================================
//function : GEOM_SubShapeDriver
//purpose  :
//=======================================================================
GEOM_SubShapeDriver::GEOM_SubShapeDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOM_SubShapeDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOM_ISubShape aCI (aFunction);

  TDF_Label aLabel = aCI.GetMainShape()->GetOwnerEntry();
  if (aLabel.IsRoot()) return 0;
  Handle(GEOM_Object) anObj = GEOM_Object::GetObject(aLabel);
  if (anObj.IsNull()) return 0;
  TopoDS_Shape aMainShape = anObj->GetValue();
  if (aMainShape.IsNull()) return 0;

  Handle(TColStd_HArray1OfInteger) anIndices = aCI.GetIndices();
  if (anIndices.IsNull() || anIndices->Length() <= 0) return 0;

  BRep_Builder B;
  TopoDS_Compound aCompound;
  TopoDS_Shape aShape;

  if (anIndices->Length() == 1 && anIndices->Value(1) == -1) { //The empty subshape
    B.MakeCompound(aCompound);
    aShape = aCompound;
  }
  else {
    TopTools_IndexedMapOfShape aMapOfShapes;
    TopExp::MapShapes(aMainShape, aMapOfShapes);

    if (anIndices->Length() > 1) {

      B.MakeCompound(aCompound);

      for (int i = anIndices->Lower(); i<= anIndices->Upper(); i++) {
	if (aMapOfShapes.Extent() < anIndices->Value(i))
	  Standard_NullObject::Raise("GEOM_SubShapeDriver::Execute: Index is out of range");
	TopoDS_Shape aSubShape = aMapOfShapes.FindKey(anIndices->Value(i));
	if (aSubShape.IsNull()) continue;
	B.Add(aCompound,aSubShape);
      }

      aShape = aCompound;
    }
    else {
      int i = anIndices->Lower();
      if (aMapOfShapes.Extent() < anIndices->Value(i))
        Standard_NullObject::Raise("GEOM_SubShapeDriver::Execute: Index is out of range");
      aShape = aMapOfShapes.FindKey(anIndices->Value(i));
    }
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOM_SubShapeDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOM_SubShapeDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOM_SubShapeDriver",
			                                 sizeof(GEOM_SubShapeDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOM_SubShapeDriver) Handle(GEOM_SubShapeDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOM_SubShapeDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOM_SubShapeDriver))) {
       _anOtherObject = Handle(GEOM_SubShapeDriver)((Handle(GEOM_SubShapeDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
