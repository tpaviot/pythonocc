// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

#include <GEOMImpl_FilletDriver.hxx>
#include <GEOMImpl_IFillet.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOMImpl_ILocalOperations.hxx>
#include <GEOM_Function.hxx>

#include <BRepFilletAPI_MakeFillet.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRep_Tool.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopAbs.hxx>
#include <TopExp_Explorer.hxx>

#include <ShapeFix_ShapeTolerance.hxx>
#include <ShapeFix_Shape.hxx>

#include <Precision.hxx>
#include <gp_Pnt.hxx>
#include <StdFail_NotDone.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_FilletDriver::GetID()
{
  static Standard_GUID aFilletDriver("FF1BBB41-5D14-4df2-980B-3A668264EA16");
  return aFilletDriver;
}


//=======================================================================
//function : GEOMImpl_FilletDriver
//purpose  :
//=======================================================================
GEOMImpl_FilletDriver::GEOMImpl_FilletDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_FilletDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IFillet aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  Handle(GEOM_Function) aRefShape = aCI.GetShape();
  TopoDS_Shape aShapeBase = aRefShape->GetValue();
  BRepFilletAPI_MakeFillet fill (aShapeBase);

  if (aType == FILLET_SHAPE_ALL) {
    TopExp_Explorer Exp (aShapeBase, TopAbs_EDGE);
    for (; Exp.More(); Exp.Next()) {
      TopoDS_Edge E = TopoDS::Edge(Exp.Current());
      fill.Add(E);
    }
  }
  else if (aType == FILLET_SHAPE_EDGES || aType == FILLET_SHAPE_EDGES_2R) {
    int aLen = aCI.GetLength();
    int ind = 1;
    for (; ind <= aLen; ind++) {
      TopoDS_Shape aShapeEdge;
      if (GEOMImpl_ILocalOperations::GetSubShape
          (aShapeBase, aCI.GetEdge(ind), aShapeEdge)) {
          fill.Add(TopoDS::Edge(aShapeEdge));
      }
    }
  }
  else if (aType == FILLET_SHAPE_FACES || aType == FILLET_SHAPE_FACES_2R) {
    int aLen = aCI.GetLength();
    int ind = 1;
    for (; ind <= aLen; ind++) {
      TopoDS_Shape aShapeFace;
      if (GEOMImpl_ILocalOperations::GetSubShape
          (aShapeBase, aCI.GetFace(ind), aShapeFace)) {
        TopExp_Explorer Exp (aShapeFace, TopAbs_EDGE);
        for (; Exp.More(); Exp.Next()) {
          fill.Add(TopoDS::Edge(Exp.Current()));
        }
      }
    }
  }
  else {
  }

  if (aType == FILLET_SHAPE_FACES || aType == FILLET_SHAPE_EDGES || aType == FILLET_SHAPE_ALL) {
    for (int i = 1; i <= fill.NbContours(); i++)
      fill.SetRadius(aCI.GetR(), i, 1);
  }
  else if (aType == FILLET_SHAPE_FACES_2R || aType == FILLET_SHAPE_EDGES_2R) {
    for (int i = 1; i <= fill.NbContours(); i++) {
      fill.SetRadius(aCI.GetR1(), aCI.GetR2(), i, 1);
    }
  }

  fill.Build();
  if (!fill.IsDone()) {
    StdFail_NotDone::Raise("Fillet can't be computed on the given shape with the given radius");
  }
  aShape = fill.Shape();

  if (aShape.IsNull()) return 0;

  // Check shape validity
  BRepCheck_Analyzer ana (aShape, false);
  if (!ana.IsValid()) {
    // 08.07.2008 added by skl during fixing bug 19761 from Mantis
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape, Precision::Confusion(),
                        Precision::Confusion(), TopAbs_SHAPE);
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->Perform();
    aShape = aSfs->Shape();
    ana.Init(aShape);
    if (!ana.IsValid())
      StdFail_NotDone::Raise("Fillet algorithm have produced an invalid shape result");
  }

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_FilletDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_FilletDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_FilletDriver",
                                                         sizeof(GEOMImpl_FilletDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_FilletDriver) Handle(GEOMImpl_FilletDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_FilletDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_FilletDriver))) {
       _anOtherObject = Handle(GEOMImpl_FilletDriver)((Handle(GEOMImpl_FilletDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
