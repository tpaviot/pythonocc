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

#include <GEOMImpl_TranslateDriver.hxx>
#include <GEOMImpl_ITranslate.hxx>
#include <GEOMImpl_ITransformOperations.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <ShapeFix_Shape.hxx>
#include <ShapeFix_ShapeTolerance.hxx>

#include <BRep_Tool.hxx>
#include <BRep_Builder.hxx>
#include <BRepCheck_Analyzer.hxx>
#include <BRepBuilderAPI_Transform.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Compound.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Edge.hxx>

#include <gp_Trsf.hxx>
#include <gp_Pnt.hxx>
#include <gp_Vec.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_TranslateDriver::GetID()
{
  static Standard_GUID aTranslateDriver("FF1BBB03-5D14-4df2-980B-3A668264EA16");
  return aTranslateDriver;
}


//=======================================================================
//function : GEOMImpl_TranslateDriver
//purpose  :
//=======================================================================

GEOMImpl_TranslateDriver::GEOMImpl_TranslateDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_TranslateDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  if (aFunction.IsNull()) return 0;

  GEOMImpl_ITranslate TI (aFunction);
  gp_Trsf aTrsf;
  gp_Pnt aP1, aP2;
  Standard_Integer aType = aFunction->GetType();

  Handle(GEOM_Function) anOriginalFunction = TI.GetOriginal();
  if (anOriginalFunction.IsNull()) return 0;
  TopoDS_Shape aShape, anOriginal = anOriginalFunction->GetValue();
  if (anOriginal.IsNull()) return 0;

  if (aType == TRANSLATE_TWO_POINTS || aType == TRANSLATE_TWO_POINTS_COPY) {
    Handle(GEOM_Function) aPoint1 = TI.GetPoint1();
    Handle(GEOM_Function) aPoint2 = TI.GetPoint2();
    if(aPoint1.IsNull() || aPoint2.IsNull()) return 0;
    TopoDS_Shape aV1 = aPoint1->GetValue();
    TopoDS_Shape aV2 = aPoint2->GetValue();
    if(aV1.IsNull() || aV1.ShapeType() != TopAbs_VERTEX) return 0;
    if(aV2.IsNull() || aV2.ShapeType() != TopAbs_VERTEX) return 0;

    aP1 = BRep_Tool::Pnt(TopoDS::Vertex(aV1));
    aP2 = BRep_Tool::Pnt(TopoDS::Vertex(aV2));

    aTrsf.SetTranslation(aP1, aP2);
    //NPAL18620: performance problem: multiple locations are accumulated
    //           in shape and need a great time to process
    //BRepBuilderAPI_Transform aTransformation(anOriginal, aTrsf, Standard_False);
    //aShape = aTransformation.Shape();
    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();
    TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
    aShape = anOriginal.Located(aLocRes);
  }
  else if (aType == TRANSLATE_VECTOR || aType == TRANSLATE_VECTOR_COPY) {
    Handle(GEOM_Function) aVector = TI.GetVector();
    if(aVector.IsNull()) return 0;
    TopoDS_Shape aV = aVector->GetValue();
    if(aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) return 0;
    TopoDS_Edge anEdge = TopoDS::Edge(aV);

    aP1 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdge));
    aP2 = BRep_Tool::Pnt(TopExp::LastVertex(anEdge));

    aTrsf.SetTranslation(aP1, aP2);
    //NPAL18620: performance problem: multiple locations are accumulated
    //           in shape and need a great time to process
    //BRepBuilderAPI_Transform aTransformation(anOriginal, aTrsf, Standard_False);
    //aShape = aTransformation.Shape();
    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();
    TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
    aShape = anOriginal.Located(aLocRes);
  }
  else if (aType == TRANSLATE_VECTOR_DISTANCE) {
    Handle(GEOM_Function) aVector = TI.GetVector();
    double aDistance = TI.GetDistance();
    if(aVector.IsNull()) return 0;
    TopoDS_Shape aV = aVector->GetValue();
    if(aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) return 0;
    TopoDS_Edge anEdge = TopoDS::Edge(aV);

    aP1 = BRep_Tool::Pnt(TopExp::FirstVertex(anEdge));
    aP2 = BRep_Tool::Pnt(TopExp::LastVertex(anEdge));

    gp_Vec aVec (aP1, aP2);
    aVec.Normalize();
    aTrsf.SetTranslation(aVec * aDistance);

    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();
    TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
    aShape = anOriginal.Located(aLocRes);
  }
  else if (aType == TRANSLATE_XYZ || aType == TRANSLATE_XYZ_COPY) {
    gp_Vec aVec (TI.GetDX(), TI.GetDY(), TI.GetDZ());
    aTrsf.SetTranslation(aVec);
    //NPAL18620: performance problem: multiple locations are accumulated
    //           in shape and need a great time to process
    //BRepBuilderAPI_Transform aTransformation (anOriginal, aTrsf, Standard_False);
    //aShape = aTransformation.Shape();
    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();
    TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
    aShape = anOriginal.Located(aLocRes);
  }
  else if (aType == TRANSLATE_1D) {
    Standard_Real DX, DY, DZ, step = TI.GetStep1();
    Standard_Integer nbtimes = TI.GetNbIter1();
    gp_Vec aVec;
    TopoDS_Compound aCompound;
    BRep_Builder B;
    B.MakeCompound( aCompound );

    Handle(GEOM_Function) aVector = TI.GetVector();
    if(aVector.IsNull()) return 0;
    TopoDS_Shape aV = aVector->GetValue();
    if(aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) return 0;
    TopoDS_Edge anEdge = TopoDS::Edge(aV);

    gp_Vec Vec(BRep_Tool::Pnt(TopExp::FirstVertex(anEdge)), BRep_Tool::Pnt(TopExp::LastVertex(anEdge)));
    Vec.Normalize();

    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();

    for (int i = 0; i < nbtimes; i++) {
      DX = i * step * Vec.X();
      DY = i * step * Vec.Y();
      DZ = i * step * Vec.Z();
      aVec.SetCoord( DX, DY, DZ );
      aTrsf.SetTranslation(aVec);
      //NPAL18620: performance problem: multiple locations are accumulated
      //           in shape and need a great time to process
      //BRepBuilderAPI_Transform aTransformation(anOriginal, aTrsf, Standard_False);
      //B.Add(aCompound, aTransformation.Shape());
      TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
      B.Add(aCompound, anOriginal.Located(aLocRes));
    }
    aShape = aCompound;
    //aShape = GEOMImpl_ITransformOperations::TranslateShape1D(anOriginal, &TI);
  }
  else if (aType == TRANSLATE_2D) {
    Standard_Integer nbtimes1 = TI.GetNbIter1(), nbtimes2 = TI.GetNbIter2();
    Standard_Real DX, DY, DZ,  step1 = TI.GetStep1(),  step2 = TI.GetStep2();
    gp_Vec aVec;
    Handle(GEOM_Function) aVector = TI.GetVector();
    if(aVector.IsNull()) return 0;
    TopoDS_Shape aV = aVector->GetValue();
    if(aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) return 0;
    TopoDS_Edge anEdge = TopoDS::Edge(aV);

    gp_Vec Vec1(BRep_Tool::Pnt(TopExp::FirstVertex(anEdge)), BRep_Tool::Pnt(TopExp::LastVertex(anEdge)));
    Vec1.Normalize();

    Handle(GEOM_Function) aVector2 = TI.GetVector2();
    if(aVector2.IsNull()) return 0;
    aV = aVector2->GetValue();
    if(aV.IsNull() || aV.ShapeType() != TopAbs_EDGE) return 0;
    anEdge = TopoDS::Edge(aV);

    gp_Vec Vec2(BRep_Tool::Pnt(TopExp::FirstVertex(anEdge)), BRep_Tool::Pnt(TopExp::LastVertex(anEdge)));
    Vec2.Normalize();

    TopoDS_Compound aCompound;
    BRep_Builder B;
    B.MakeCompound( aCompound );

    TopLoc_Location aLocOrig = anOriginal.Location();
    gp_Trsf aTrsfOrig = aLocOrig.Transformation();

    for (int i = 0; i < nbtimes1; i++) {
      for (int j = 0; j < nbtimes2; j++) {
        DX = i * step1 * Vec1.X() + j * step2 * Vec2.X();
        DY = i * step1 * Vec1.Y() + j * step2 * Vec2.Y();
        DZ = i * step1 * Vec1.Z() + j * step2 * Vec2.Z();
        aVec.SetCoord( DX, DY, DZ );
        aTrsf.SetTranslation(aVec);
        //NPAL18620: performance problem: multiple locations are accumulated
        //           in shape and need a great time to process
        //BRepBuilderAPI_Transform aBRepTransformation(anOriginal, aTrsf, Standard_False);
        //B.Add(aCompound, aBRepTransformation.Shape());
        TopLoc_Location aLocRes (aTrsf * aTrsfOrig);
        B.Add(aCompound, anOriginal.Located(aLocRes));
      }
    }
    aShape = aCompound;
    //aShape = GEOMImpl_ITransformOperations::TranslateShape2D(anOriginal, &TI);
  }
  else return 0;

  if (aShape.IsNull()) return 0;

  BRepCheck_Analyzer ana (aShape, Standard_True);
  if (!ana.IsValid()) {
    ShapeFix_ShapeTolerance aSFT;
    aSFT.LimitTolerance(aShape,Precision::Confusion(),Precision::Confusion());
    Handle(ShapeFix_Shape) aSfs = new ShapeFix_Shape(aShape);
    aSfs->SetPrecision(Precision::Confusion());
    aSfs->Perform();
    aShape = aSfs->Shape();

    ana.Init(aShape, Standard_False);
    if (!ana.IsValid())
      Standard_ConstructionError::Raise("Scaling aborted : algorithm has produced an invalid shape result");
  }

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_TranslateDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_TranslateDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_TranslateDriver",
                                                         sizeof(GEOMImpl_TranslateDriver),
                                                         1,
                                                         (Standard_Address)_Ancestors,
                                                         (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_TranslateDriver) Handle(GEOMImpl_TranslateDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_TranslateDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_TranslateDriver))) {
       _anOtherObject = Handle(GEOMImpl_TranslateDriver)((Handle(GEOMImpl_TranslateDriver)&)AnObject);
     }
  }

  return _anOtherObject;
}
