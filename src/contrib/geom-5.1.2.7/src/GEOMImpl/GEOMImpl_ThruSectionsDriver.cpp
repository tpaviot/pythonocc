// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,F
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

#include <GEOMImpl_ThruSectionsDriver.hxx>
#include <GEOMImpl_IThruSections.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>

#include <TColStd_HSequenceOfTransient.hxx>
#include <Precision.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepOffsetAPI_ThruSections.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Shape.hxx>

#include <Standard_NullObject.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>
#include <ShapeFix_Shape.hxx>
#include <ShapeFix_ShapeTolerance.hxx>
#include <Precision.hxx>
//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ThruSectionsDriver::GetID()
{
  static Standard_GUID aThruSectionsDriver("FF1BB971-E99C-4f89-B989-5B48E061049B");
  return aThruSectionsDriver;
}


//=======================================================================
//function : GEOMImpl_ThruSectionsDriver
//purpose  :
//=======================================================================
GEOMImpl_ThruSectionsDriver::GEOMImpl_ThruSectionsDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ThruSectionsDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IThruSections aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  Standard_Boolean isSolid = (aCI.GetSolidMode() == 1);
  Handle(TColStd_HSequenceOfTransient) aSeqSections = aCI.GetSections();

  if( aSeqSections.IsNull())
    return 0;

  Standard_Integer aNbSections = aSeqSections->Length();
  Standard_Real aPreci = Max(aCI.GetPrecision(),Precision::Confusion());
  if(!aNbSections )
    return 0;

  BRepOffsetAPI_ThruSections aBuilder(isSolid,aType ==THRUSECTIONS_RULED,aPreci);
  
 
  aBuilder.CheckCompatibility(Standard_False);
  //added sections for building surface
  Standard_Integer i =1;
  Standard_Integer nbAdded =0;
  for( ; i <= aNbSections; i++,nbAdded++)
  {
    Handle(Standard_Transient) anItem = aSeqSections->Value(i);
    if(anItem.IsNull())
      continue;

    Handle(GEOM_Function) aSection = Handle(GEOM_Function)::DownCast(anItem);
    if(aSection.IsNull())
      continue;

    TopoDS_Shape aShapeSection = aSection->GetValue();
    TopAbs_ShapeEnum aTypeSect = aShapeSection.ShapeType();
    if(aTypeSect == TopAbs_WIRE)
      aBuilder.AddWire(TopoDS::Wire(aShapeSection));

    else if(aTypeSect == TopAbs_EDGE) {
      TopoDS_Edge anEdge = TopoDS::Edge(aShapeSection);
      TopoDS_Wire aWire = BRepBuilderAPI_MakeWire(anEdge);
      aBuilder.AddWire(aWire);
    }
    else if(aTypeSect == TopAbs_VERTEX) {
      TopoDS_Vertex aVert = TopoDS::Vertex(aShapeSection);
      aBuilder.AddVertex(aVert);
    }
    else
       nbAdded--; 
  }  
  if(!nbAdded)
     Standard_TypeMismatch::Raise("ThruSections aborted : invalid types of sections");
  //make surface by sections
  aBuilder.Build();
  TopoDS_Shape aShape = aBuilder.Shape();
  if (aShape.IsNull()) {
    return 0;
  }

  BRepCheck_Analyzer ana (aShape, Standard_False);
  if (!ana.IsValid()) {
    //algoritm thru section creats on the arcs invalid shapes gka
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape,Precision::Confusion(),Precision::Confusion());
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->SetPrecision(Precision::Confusion());
    aSfs->Perform();
	aShape = aSfs->Shape();

	ana.Init(aShape, Standard_False);
	if (!ana.IsValid()) {
	  Standard_CString anErrStr("Algorithm has produced an invalid shape result");
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
//function :  GEOMImpl_ThruSectionsDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ThruSectionsDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ThruSectionsDriver",
			                                 sizeof(GEOMImpl_ThruSectionsDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_ThruSectionsDriver) Handle(GEOMImpl_ThruSectionsDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ThruSectionsDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ThruSectionsDriver))) {
       _anOtherObject = Handle(GEOMImpl_ThruSectionsDriver)((Handle(GEOMImpl_ThruSectionsDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
