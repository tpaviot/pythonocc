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
// Original work from OpenCascade Sketcher 
// (http://sourceforge.net/projects/occsketcher/)
//
// Modifications for GEOM and OCAF
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#include "Sketcher_Object.hxx"
//------------------------------------------------------------------------------
#include <Standard_GUID.hxx>
#include <TDF_Label.hxx>
#include <TDF_Tool.hxx>
#include <TDocStd_Document.hxx>
#include <TDocStd_Owner.hxx>
#include <TDataStd_Integer.hxx>
#include <TDataStd_Real.hxx>
#include <TDataStd_UAttribute.hxx>
#include <TDataXtd_Plane.hxx>

#include <TNaming_Builder.hxx>
#include <TNaming_NamedShape.HXX>

#include <AIS_Shape.hxx>

#include <gp_Circ2d.hxx>
#include <gp_Pln.hxx>

#include <ElCLib.hxx>

#include <GeomAPI.hxx>
#include <Geom_Surface.hxx>
#include <Geom_CartesianPoint.hxx>

#include <Geom2d_CartesianPoint.hxx>
#include <Sketcher_Edge.hxx>
#include <Geom2d_Circle.hxx>
#include <Sketcher_Arc.hxx>
#include <Geom2d_BezierCurve.hxx>
#include <Geom2d_TrimmedCurve.hxx>

#include <TopoDS.hxx>
#include <TopoDS_Edge.hxx>

#include <BRep_Tool.hxx>

#include <BRepBuilderAPI_MakeEdge2d.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>

#include <TPrsStd_AISPresentation.hxx>
//------------------------------------------------------------------------------
#define GEOM2D_LABEL   1
#define GEOMTYPE_LABEL 2
#define METHOD_LABEL   3
#define TYPE_LABEL     4
//------------------------------------------------------------------------------
const Standard_GUID& Sketcher_Object::GetObjectID()
{
  static Standard_GUID anObjectID("FF1BBB01-5D14-4df2-980B-DDDDDDDDDDDD");
  return anObjectID;
}
//------------------------------------------------------------------------------
Handle(Sketcher_Object) Sketcher_Object::GetObject(TDF_Label& theLabel)
{
  if (!theLabel.IsAttribute(GetObjectID()))
    return NULL;

  TCollection_AsciiString anEntry;
  TDF_Tool::Entry(theLabel, anEntry);
  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(theLabel.Data());

  if (aDoc.IsNull())
    return NULL;

  return new Sketcher_Object(theLabel);
}
//------------------------------------------------------------------------------
Sketcher_Object::Sketcher_Object(const TDF_Label& theEntry) 
    :_Ax3(gp::XOY())
{
  if (theEntry.IsAttribute(GetObjectID()))
    _label = theEntry;
  else
    Standard_Failure::Raise("Label does not contain a valid Sketcher_Object");
}
//------------------------------------------------------------------------------
Sketcher_Object::Sketcher_Object(const TDF_Label& theEntry,
                                 const Handle(Geom2d_Geometry)& theGeom2d_Geometry,
                                 const Sketcher_ObjectGeometryType theGeometryType,
                                 const Sketcher_ObjectTypeOfMethod theTypeOfMethod) 
    :_Ax3(gp::XOY())
{
  _label    = theEntry;
  _geometry = theGeom2d_Geometry;

  _label.ForgetAllAttributes(Standard_True);

  TDataStd_UAttribute::Set(_label, GetObjectID());
  TDataStd_Integer::Set(_label.FindChild(GEOMTYPE_LABEL), theGeometryType);
  TDataStd_Integer::Set(_label.FindChild(METHOD_LABEL),   theTypeOfMethod);
  TDataStd_Integer::Set(_label.FindChild(TYPE_LABEL),     MainSketcherType);

  SaveGeometry(_geometry, theGeometryType);
}
//------------------------------------------------------------------------------
Sketcher_Object::~Sketcher_Object()
{
}
//------------------------------------------------------------------------------
void Sketcher_Object::Remove()
{
  ErasePrs(Standard_True);
  _label.ForgetAllAttributes(Standard_True);
}
//------------------------------------------------------------------------------
void Sketcher_Object::SetGeometry(const Handle(Geom2d_Geometry)& theGeom2d_Geometry)
{
  _geometry = theGeom2d_Geometry;
  _label.FindChild(GEOM2D_LABEL).ForgetAllAttributes(Standard_True);
  SaveGeometry(_geometry, GetGeometryType());

  if (HasPrs())
    SaveUpdatePrs();
}
//------------------------------------------------------------------------------
Handle(Geom2d_Geometry) Sketcher_Object::GetGeometry()
{
  if (!_geometry.IsNull())
    return _geometry;
  else {
    TopoDS_Shape aShape;
    TDF_Label aResultLabel = _label.FindChild(GEOM2D_LABEL);
    Handle(TNaming_NamedShape) aNS;

    if (!aResultLabel.FindAttribute(TNaming_NamedShape::GetID(), aNS))
      return NULL;

    Handle(Geom_Surface) surface;
    TopLoc_Location      location;
    Standard_Real First, Last;
    Handle_Geom2d_Curve  aCrv;

    BRep_Tool::CurveOnSurface(TopoDS::Edge(aNS->Get()), aCrv, surface,location,First,Last);
    Sketcher_ObjectGeometryType theGeometryType = GetGeometryType();

    if (theGeometryType == LineSketcherObject) {
      Handle(Geom2d_Line) aLine = Handle(Geom2d_Line)::DownCast(aCrv);
      Handle(Geom2d_TrimmedCurve) aTrm = new Geom2d_TrimmedCurve(aLine, First, Last);
      Handle(Sketcher_Edge) anEdge = new Sketcher_Edge();
      anEdge->SetPoints(aTrm->StartPoint(), aTrm->EndPoint());
      _geometry = anEdge;
    }
    else if (theGeometryType == ArcSketcherObject) {
      Handle(Geom2d_Circle) aCirc = Handle(Geom2d_Circle)::DownCast(aCrv);
      Handle(Geom2d_TrimmedCurve) aTrm = new Geom2d_TrimmedCurve(aCirc, First, Last);
      Handle(Sketcher_Arc) anArc = new Sketcher_Arc(aCirc->Circ2d());
      gp_Pnt2d midPnt;
      aTrm->D0(((Last - First) / 2.), midPnt);
      anArc->SetParam(aTrm->StartPoint(), midPnt, aTrm->EndPoint());
      _geometry = anArc;
    }
    else
      _geometry = aCrv;

    return _geometry;
  }
}
//------------------------------------------------------------------------------
TopoDS_Shape Sketcher_Object::GetShape()
{
  TopoDS_Shape aShape;
  TDF_Label aResultLabel = _label.FindChild(GEOM2D_LABEL);
  Handle(TNaming_NamedShape) aNS;

  if (aResultLabel.FindAttribute(TNaming_NamedShape::GetID(), aNS))
    aShape = aNS->Get();

  return aShape;
}
//------------------------------------------------------------------------------
void Sketcher_Object::SaveGeometry(const Handle(Geom2d_Geometry)& theGeom2d_Geometry,const Sketcher_ObjectGeometryType theGeometryType)
{
  TNaming_Builder aBuilder(_label.FindChild(GEOM2D_LABEL));
  TopoDS_Shape aShp;

  if (theGeometryType == PointSketcherObject) {
    Handle(Geom2d_CartesianPoint) aPnt2d = Handle(Geom2d_CartesianPoint)::DownCast(theGeom2d_Geometry);
    gp_Pnt a3dPnt(aPnt2d->X(), aPnt2d->Y(), 0.);
    aShp = BRepBuilderAPI_MakeVertex(a3dPnt);
  }
  else if (theGeometryType == LineSketcherObject) {
    Handle(Sketcher_Edge) anEdge = Handle(Sketcher_Edge)::DownCast(theGeom2d_Geometry);
    Handle(Geom2d_TrimmedCurve) aTrm = new Geom2d_TrimmedCurve(anEdge, anEdge->StartParameter(), anEdge->EndParameter());
    aShp = BRepBuilderAPI_MakeEdge2d(aTrm);
  }
  else if (theGeometryType == CircleSketcherObject) {
    Handle(Geom2d_Circle) aCirc = Handle(Geom2d_Circle)::DownCast(theGeom2d_Geometry);
    aShp = BRepBuilderAPI_MakeEdge2d(aCirc);
  }
  else if (theGeometryType == ArcSketcherObject) {
    Handle(Sketcher_Arc) anArc = Handle(Sketcher_Arc)::DownCast(theGeom2d_Geometry);
    Handle(Geom2d_TrimmedCurve) aTrm = new Geom2d_TrimmedCurve(anArc, anArc->FirstParameter(), anArc->LastParameter());
    aShp = BRepBuilderAPI_MakeEdge2d(aTrm);
  }
  else if (theGeometryType == CurveSketcherObject) {
    Handle(Geom2d_BezierCurve) aBez = Handle(Geom2d_BezierCurve)::DownCast(theGeom2d_Geometry);
    aShp = BRepBuilderAPI_MakeEdge2d(aBez);
  }

  aBuilder.Generated(aShp);
}
//------------------------------------------------------------------------------
void Sketcher_Object::SetPlane(const gp_Ax3& theAx3)
{
  _Ax3 = theAx3;

  if (HasPrs())
    SaveUpdatePrs();
}
//------------------------------------------------------------------------------
const gp_Ax3 Sketcher_Object::GetPlane()
{
  return _Ax3;
}
//------------------------------------------------------------------------------
void Sketcher_Object::SetGeometryType(const Sketcher_ObjectGeometryType theGeometryType)
{
  TDataStd_Integer::Set(_label.FindChild(GEOMTYPE_LABEL), theGeometryType);
}
//------------------------------------------------------------------------------
Sketcher_ObjectGeometryType Sketcher_Object::GetGeometryType()
{
  Handle(TDataStd_Integer) aVal;
  _label.FindChild(GEOMTYPE_LABEL).FindAttribute(TDataStd_Integer::GetID(),aVal);
  return (Sketcher_ObjectGeometryType)aVal->Get();
}
//------------------------------------------------------------------------------
void Sketcher_Object::SetTypeOfMethod(const Sketcher_ObjectTypeOfMethod theTypeOfMethod)
{
  TDataStd_Integer::Set(_label.FindChild(METHOD_LABEL), theTypeOfMethod);
}
//------------------------------------------------------------------------------
Sketcher_ObjectTypeOfMethod Sketcher_Object::GetTypeOfMethod()
{
  Handle(TDataStd_Integer) aVal;
  _label.FindChild(METHOD_LABEL).FindAttribute(TDataStd_Integer::GetID(),aVal);
  return (Sketcher_ObjectTypeOfMethod)aVal->Get();
}
//------------------------------------------------------------------------------
void Sketcher_Object::SetType(const Sketcher_ObjectType theType)
{
  TDataStd_Integer::Set(_label.FindChild(TYPE_LABEL), theType);

  if (HasPrs())
    SaveUpdatePrs();
}
//------------------------------------------------------------------------------
Sketcher_ObjectType Sketcher_Object::GetType()
{
  Handle(TDataStd_Integer) aVal;
  _label.FindChild(TYPE_LABEL).FindAttribute(TDataStd_Integer::GetID(),aVal);
  return (Sketcher_ObjectType)aVal->Get();
}
//------------------------------------------------------------------------------
//  GRAPHICS IMPLEMENTATION
Handle(AIS_InteractiveObject) Sketcher_Object::GetAIS_Object()
{
  return Get_TPrsStd_AISPresentation()->GetAIS();
}
//------------------------------------------------------------------------------
Handle(TPrsStd_AISPresentation) Sketcher_Object::Get_TPrsStd_AISPresentation()
{
  if (!HasPrs())
    SaveUpdatePrs();

  Handle(TPrsStd_AISPresentation) aPresentation;
  _label.FindChild(GEOM2D_LABEL).FindAttribute(TPrsStd_AISPresentation::GetID(),aPresentation);
  return aPresentation;
}
//------------------------------------------------------------------------------
void Sketcher_Object::DisplayPrs()
{
  Get_TPrsStd_AISPresentation()->Display(Standard_False);
}
//------------------------------------------------------------------------------
void Sketcher_Object::ErasePrs(Standard_Boolean isRemove)
{
  if (HasPrs()) {
    Handle(TPrsStd_AISPresentation) aPresentation;
    _label.FindChild(GEOM2D_LABEL).FindAttribute(TPrsStd_AISPresentation::GetID(),aPresentation);
    aPresentation->Erase(isRemove);

    if (isRemove)
      _label.FindChild(GEOM2D_LABEL).ForgetAttribute(aPresentation);
  }
}
//------------------------------------------------------------------------------
void Sketcher_Object::SaveUpdatePrs()
{
  Handle(TPrsStd_AISPresentation) aPresentation = TPrsStd_AISPresentation::Set(_label.FindChild(GEOM2D_LABEL), TNaming_NamedShape::GetID());

  gp_Trsf aTrs;
  aTrs.SetDisplacement(gp::XOY(), GetPlane());
  TopLoc_Location aLoc(aTrs);

  aPresentation->Update();
  aPresentation->GetAIS()->SetLocation(aLoc);

  if (GetType() == AuxiliarySketcherType)
    aPresentation->SetColor(Quantity_NOC_GRAY);
}
//------------------------------------------------------------------------------
bool Sketcher_Object::HasPrs()
{
  Handle(TPrsStd_AISPresentation) aPresentation;
  return (_label.FindChild(GEOM2D_LABEL).FindAttribute(TPrsStd_AISPresentation::GetID(),aPresentation));
}
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
IMPLEMENT_STANDARD_HANDLE(Sketcher_Object,MMgt_TShared)
IMPLEMENT_STANDARD_RTTI(Sketcher_Object)
IMPLEMENT_STANDARD_TYPE(Sketcher_Object)
IMPLEMENT_STANDARD_SUPERTYPE(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY()
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(MMgt_TShared)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_ENTRY(Standard_Transient)
IMPLEMENT_STANDARD_SUPERTYPE_ARRAY_END()
IMPLEMENT_STANDARD_TYPE_END(Sketcher_Object)
//------------------------------------------------------------------------------

