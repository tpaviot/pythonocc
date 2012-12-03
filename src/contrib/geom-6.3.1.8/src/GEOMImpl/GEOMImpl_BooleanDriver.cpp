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
#include "utilities.h"

#include <GEOMImpl_BooleanDriver.hxx>
#include <GEOMImpl_IBoolean.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_GlueDriver.hxx>
#include <GEOM_Function.hxx>
#include <GEOM_Object.hxx>

#include <BRep_Builder.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepAlgoAPI_Common.hxx>
#include <BRepAlgoAPI_Cut.hxx>
#include <BRepAlgoAPI_Fuse.hxx>
#include <BRepAlgoAPI_Section.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Iterator.hxx>
#include <TopoDS_Face.hxx>
#include <TopTools_MapOfShape.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopExp_Explorer.hxx>
#include <Precision.hxx>
#include <BRepAlgo_Fuse.hxx>
#include <BRepAlgo_Common.hxx>
#include <BRepAlgo_Cut.hxx>
#include <BRepAlgo_Section.hxx>

#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>

#include <Standard_ConstructionError.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_BooleanDriver::GetID()
{
  static Standard_GUID aBooleanDriver("FF1BBB21-5D14-4df2-980B-3A668264EA16");
  return aBooleanDriver;
}


//=======================================================================
//function : GEOMImpl_BooleanDriver
//purpose  :
//=======================================================================
GEOMImpl_BooleanDriver::GEOMImpl_BooleanDriver()
{
}

void AddSimpleShapes(TopoDS_Shape theShape, TopTools_ListOfShape& theList)
{
  if (theShape.ShapeType() != TopAbs_COMPOUND &&
      theShape.ShapeType() != TopAbs_COMPSOLID) {
    theList.Append(theShape);
    return;
  }

  TopTools_MapOfShape mapShape;
  TopoDS_Iterator It (theShape, Standard_True, Standard_True);

  for (; It.More(); It.Next()) {
    TopoDS_Shape aShape_i = It.Value();
    if (mapShape.Add(aShape_i)) {
      if (aShape_i.ShapeType() == TopAbs_COMPOUND ||
          aShape_i.ShapeType() == TopAbs_COMPSOLID) {
        AddSimpleShapes(aShape_i, theList);
      } else {
        theList.Append(aShape_i);
      }
    }
  }
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_BooleanDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IBoolean aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape1 = aCI.GetShape1();
  Handle(GEOM_Function) aRefShape2 = aCI.GetShape2();
  TopoDS_Shape aShape1 = aRefShape1->GetValue();
  TopoDS_Shape aShape2 = aRefShape2->GetValue();
  if (!aShape1.IsNull() && !aShape2.IsNull()) {

    // check arguments for Mantis issue 0021019
    BRepCheck_Analyzer ana (aShape1, Standard_True);
    if (!ana.IsValid())
      StdFail_NotDone::Raise("Common operation will not be performed, because argument shape is not valid");
    ana.Init(aShape2);
    if (!ana.IsValid())
      StdFail_NotDone::Raise("Common operation will not be performed, because argument shape is not valid");

    // perform COMMON operation
    if (aType == BOOLEAN_COMMON) {
      BRep_Builder B;
      TopoDS_Compound C;
      B.MakeCompound(C);

      TopTools_ListOfShape listShape1, listShape2;
      AddSimpleShapes(aShape1, listShape1);
      AddSimpleShapes(aShape2, listShape2);

      Standard_Boolean isCompound =
        (listShape1.Extent() > 1 || listShape2.Extent() > 1);

      TopTools_ListIteratorOfListOfShape itSub1 (listShape1);
      for (; itSub1.More(); itSub1.Next()) {
        TopoDS_Shape aValue1 = itSub1.Value();
        TopTools_ListIteratorOfListOfShape itSub2 (listShape2);
        for (; itSub2.More(); itSub2.Next()) {
          TopoDS_Shape aValue2 = itSub2.Value();
          BRepAlgoAPI_Common BO (aValue1, aValue2);
          if (!BO.IsDone()) {
            StdFail_NotDone::Raise("Common operation can not be performed on the given shapes");
          }
          if (isCompound) {
            TopoDS_Shape aStepResult = BO.Shape();

            // check result of this step: if it is a compound (boolean operations
            // allways return a compound), we add all sub-shapes of it.
            // This allows to avoid adding empty compounds,
            // resulting from COMMON on two non-intersecting shapes.
            if (aStepResult.ShapeType() == TopAbs_COMPOUND) {
              TopoDS_Iterator aCompIter (aStepResult);
              for (; aCompIter.More(); aCompIter.Next()) {
                // add shape in a result
                B.Add(C, aCompIter.Value());
              }
            }
            else {
              // add shape in a result
              B.Add(C, aStepResult);
            }
          }
          else
            aShape = BO.Shape();
        }
      }

      if (isCompound) {
        /*
        TopTools_ListOfShape listShapeC;
        AddSimpleShapes(C, listShapeC);
        TopTools_ListIteratorOfListOfShape itSubC (listShapeC);
        bool isOnlySolids = true;
        for (; itSubC.More(); itSubC.Next()) {
          TopoDS_Shape aValueC = itSubC.Value();
          if (aValueC.ShapeType() != TopAbs_SOLID) isOnlySolids = false;
        }
        if (isOnlySolids)
          aShape = GEOMImpl_GlueDriver::GlueFaces(C, Precision::Confusion());
        else
          aShape = C;
        */

        // As GlueFaces has been improved to keep all kind of shapes
        TopExp_Explorer anExp (C, TopAbs_VERTEX);
        if (anExp.More())
          aShape = GEOMImpl_GlueDriver::GlueFaces(C, Precision::Confusion(), Standard_True);
        else
		  aShape = C;
      }
    }

    // perform CUT operation
    else if (aType == BOOLEAN_CUT) {
      BRep_Builder B;
      TopoDS_Compound C;
      B.MakeCompound(C);

      TopTools_ListOfShape listShapes, listTools;
      AddSimpleShapes(aShape1, listShapes);
      AddSimpleShapes(aShape2, listTools);

      Standard_Boolean isCompound = (listShapes.Extent() > 1);

      TopTools_ListIteratorOfListOfShape itSub1 (listShapes);
      for (; itSub1.More(); itSub1.Next()) {
        TopoDS_Shape aCut = itSub1.Value();
        // tools
        TopTools_ListIteratorOfListOfShape itSub2 (listTools);
        for (; itSub2.More(); itSub2.Next()) {
          TopoDS_Shape aTool = itSub2.Value();
          BRepAlgoAPI_Cut BO (aCut, aTool);
          if (!BO.IsDone()) {
            StdFail_NotDone::Raise("Cut operation can not be performed on the given shapes");
          }
          aCut = BO.Shape();
        }
        if (isCompound) {
		  // check result of this step: if it is a compound (boolean operations
          // allways return a compound), we add all sub-shapes of it.
          // This allows to avoid adding empty compounds,
          // resulting from CUT of parts
          if (aCut.ShapeType() == TopAbs_COMPOUND) {
            TopoDS_Iterator aCompIter (aCut);
            for (; aCompIter.More(); aCompIter.Next()) {
              // add shape in a result
              B.Add(C, aCompIter.Value());
            }
          }
          else {
            // add shape in a result
            B.Add(C, aCut);
          }
        }
        else
          aShape = aCut;
      }

      if (isCompound) {
        /*
        TopTools_ListOfShape listShapeC;
        AddSimpleShapes(C, listShapeC);
        TopTools_ListIteratorOfListOfShape itSubC (listShapeC);
        bool isOnlySolids = true;
        for (; itSubC.More(); itSubC.Next()) {
          TopoDS_Shape aValueC = itSubC.Value();
          if (aValueC.ShapeType() != TopAbs_SOLID) isOnlySolids = false;
        }
        if (isOnlySolids)
          aShape = GEOMImpl_GlueDriver::GlueFaces(C, Precision::Confusion());
        else
          aShape = C;
        */

        // As GlueFaces has been improved to keep all kind of shapes
        TopExp_Explorer anExp (C, TopAbs_VERTEX);
        if (anExp.More())
          aShape = GEOMImpl_GlueDriver::GlueFaces(C, Precision::Confusion(), Standard_True);
        else
          aShape = C;
      }
    }

    // perform FUSE operation
    else if (aType == BOOLEAN_FUSE) {
      /* Fix for NPAL15379: refused
      // Check arguments
      TopTools_ListOfShape listShape1, listShape2;
      AddSimpleShapes(aShape1, listShape1);
      AddSimpleShapes(aShape2, listShape2);

      Standard_Boolean isIntersect = Standard_False;

      if (listShape1.Extent() > 1 && !isIntersect) {
        // check intersections inside the first compound
        TopTools_ListIteratorOfListOfShape it1 (listShape1);
        for (; it1.More() && !isIntersect; it1.Next()) {
          TopoDS_Shape aValue1 = it1.Value();
          TopTools_ListIteratorOfListOfShape it2 (listShape1);
          for (; it2.More() && !isIntersect; it2.Next()) {
            TopoDS_Shape aValue2 = it2.Value();
            if (aValue2 != aValue1) {
              BRepAlgoAPI_Section BO (aValue1, aValue2);
              if (BO.IsDone()) {
                TopoDS_Shape aSect = BO.Shape();
                TopExp_Explorer anExp (aSect, TopAbs_EDGE);
                if (anExp.More()) {
                  isIntersect = Standard_True;
                }
              }
            }
          }
        }
      }

      if (listShape2.Extent() > 1 && !isIntersect) {
        // check intersections inside the second compound
        TopTools_ListIteratorOfListOfShape it1 (listShape2);
        for (; it1.More() && !isIntersect; it1.Next()) {
          TopoDS_Shape aValue1 = it1.Value();
          TopTools_ListIteratorOfListOfShape it2 (listShape2);
          for (; it2.More() && !isIntersect; it2.Next()) {
            TopoDS_Shape aValue2 = it2.Value();
            if (aValue2 != aValue1) {
              BRepAlgoAPI_Section BO (aValue1, aValue2);
              if (BO.IsDone()) {
                TopoDS_Shape aSect = BO.Shape();
                TopExp_Explorer anExp (aSect, TopAbs_EDGE);
                if (anExp.More()) {
                  isIntersect = Standard_True;
                }
              }
            }
          }
        }
      }

      if (isIntersect) {
        // have intersections inside compounds
        // check intersections between compounds
        TopTools_ListIteratorOfListOfShape it1 (listShape1);
        for (; it1.More(); it1.Next()) {
          TopoDS_Shape aValue1 = it1.Value();
          TopTools_ListIteratorOfListOfShape it2 (listShape2);
          for (; it2.More(); it2.Next()) {
            TopoDS_Shape aValue2 = it2.Value();
            if (aValue2 != aValue1) {
              BRepAlgoAPI_Section BO (aValue1, aValue2);
              if (BO.IsDone()) {
                TopoDS_Shape aSect = BO.Shape();
                TopExp_Explorer anExp (aSect, TopAbs_EDGE);
                if (anExp.More()) {
                  StdFail_NotDone::Raise("Bad argument for Fuse: compound with intersecting sub-shapes");
                }
              }
            }
          }
        }
      }
      */

      // Perform
      BRepAlgoAPI_Fuse BO (aShape1, aShape2);
      if (!BO.IsDone()) {
        StdFail_NotDone::Raise("Fuse operation can not be performed on the given shapes");
      }
      aShape = BO.Shape();
    }

    // perform SECTION operation
    else if (aType == BOOLEAN_SECTION) {
      BRep_Builder B;
      TopoDS_Compound C;
      B.MakeCompound(C);

      TopTools_ListOfShape listShape1, listShape2;
      AddSimpleShapes(aShape1, listShape1);
      AddSimpleShapes(aShape2, listShape2);

      Standard_Boolean isCompound =
        (listShape1.Extent() > 1 || listShape2.Extent() > 1);

      TopTools_ListIteratorOfListOfShape itSub1 (listShape1);
      for (; itSub1.More(); itSub1.Next()) {
        TopoDS_Shape aValue1 = itSub1.Value();
        TopTools_ListIteratorOfListOfShape itSub2 (listShape2);
        for (; itSub2.More(); itSub2.Next()) {
          TopoDS_Shape aValue2 = itSub2.Value();
          BRepAlgoAPI_Section BO (aValue1, aValue2, Standard_False);
          // Set approximation to have an attached 3D BSpline geometry to each edge,
          // where analytic curve is not possible. Without this flag in some cases
          // we obtain BSpline curve of degree 1 (C0), which is slowly
          // processed by some algorithms (Partition for example).
          BO.Approximation(Standard_True);
          BO.Build();
          if (!BO.IsDone()) {
            StdFail_NotDone::Raise("Section operation can not be performed on the given shapes");
          }
          if (isCompound) {
            TopoDS_Shape aStepResult = BO.Shape();

            // check result of this step: if it is a compound (boolean operations
            // allways return a compound), we add all sub-shapes of it.
            // This allows to avoid adding empty compounds,
            // resulting from SECTION on two non-intersecting shapes.
            if (aStepResult.ShapeType() == TopAbs_COMPOUND) {
              TopoDS_Iterator aCompIter (aStepResult);
              for (; aCompIter.More(); aCompIter.Next()) {
                // add shape in a result
                B.Add(C, aCompIter.Value());
              }
            }
            else {
              // add shape in a result
              B.Add(C, aStepResult);
            }
          }
          else
            aShape = BO.Shape();
        }
      }

      if (isCompound){
        //aShape = C;

        // As GlueFaces has been improved to keep all kind of shapes
        TopExp_Explorer anExp (C, TopAbs_VERTEX);
        if (anExp.More())
          aShape = GEOMImpl_GlueDriver::GlueFaces(C, Precision::Confusion(), Standard_True);
        else
          aShape = C;
      }
    }

	else if (aType == BOOLEAN_FUSE_OLD)
	{
      BRepAlgo_Fuse BO (aShape1, aShape2);
      if (!BO.IsDone()) {
        StdFail_NotDone::Raise("Fuse operation can not be performed on the given shapes");
      }
      aShape = BO.Shape();
	}
	else if (aType == BOOLEAN_SECTION_OLD)
	{
      BRepAlgo_Section BO (aShape1, aShape2);
      if (!BO.IsDone()) {
        StdFail_NotDone::Raise("Section operation can not be performed on the given shapes");
      }
      aShape = BO.Shape();
	}
	else if (aType == BOOLEAN_COMMON_OLD)
	{
      BRepAlgo_Common BO (aShape1, aShape2);
      if (!BO.IsDone()) {
        StdFail_NotDone::Raise("Common operation can not be performed on the given shapes");
      }
      aShape = BO.Shape();
	}
	else if (aType == BOOLEAN_CUT_OLD)
	{
      BRepAlgo_Cut BO (aShape1, aShape2);
      if (!BO.IsDone()) {
        StdFail_NotDone::Raise("Cut operation can not be performed on the given shapes");
      }
      aShape = BO.Shape();
	}
    // UNKNOWN operation
    else {
    }
  }

  if (aShape.IsNull()) return 0;

  //Alternative case to check shape result Mantis 0020604: EDF 1172
  TopoDS_Iterator It (aShape, Standard_True, Standard_True);
  int nbSubshapes=0;
  for (; It.More(); It.Next())
    nbSubshapes++;
  if (!nbSubshapes)
    Standard_ConstructionError::Raise("Boolean operation aborted : result object is empty compound");
  //end of 0020604: EDF 1172
  //! the changes temporary commented because of customer needs (see the same mantis bug)


  // as boolean operations always produce compound, lets simplify it
  // for the case, if it contans only one sub-shape
  TopTools_ListOfShape listShapeRes;
  AddSimpleShapes(aShape, listShapeRes);
  if (listShapeRes.Extent() == 1) {
    aShape = listShapeRes.First();
    if (aShape.IsNull()) return 0;
  }

  // 08.07.2008 skl for bug 19761 from Mantis
  BRepCheck_Analyzer ana (aShape, Standard_True);
  ana.Init(aShape);
  if (!ana.IsValid()) {
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape, Precision::Confusion(),
                        Precision::Confusion(), TopAbs_SHAPE);
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->Perform();
    aShape = aSfs->Shape();
	ana.Init(aShape);
	if (!ana.IsValid()) {
	  Standard_CString anErrStr("Boolean operation algorithm has produced an invalid shape result");
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
//function :  GEOMImpl_BooleanDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_BooleanDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_BooleanDriver",
			                                 sizeof(GEOMImpl_BooleanDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_BooleanDriver) Handle(GEOMImpl_BooleanDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_BooleanDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_BooleanDriver))) {
       _anOtherObject = Handle(GEOMImpl_BooleanDriver)((Handle(GEOMImpl_BooleanDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
