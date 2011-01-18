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

#include <GEOMImpl_MarkerDriver.hxx>
#include <GEOMImpl_IMarker.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRep_Tool.hxx>

#include <TopAbs.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopExp.hxx>

#include <GC_MakePlane.hxx>
#include <Geom_Surface.hxx>

#include <Precision.hxx>
#include <gp_Ax3.hxx>
#include <gp_Pnt.hxx>
#include <gp_Pln.hxx>
#include <gp_Vec.hxx>

#include <Standard_ConstructionError.hxx>

//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_MarkerDriver::GetID()
{
  static Standard_GUID aMarkerDriver("FF1BBB07-5D14-4df2-980B-3A668264EA16");
  return aMarkerDriver;
}


//=======================================================================
//function : GEOMImpl_MarkerDriver
//purpose  :
//=======================================================================
GEOMImpl_MarkerDriver::GEOMImpl_MarkerDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_MarkerDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull())  return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IMarker aPI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == MARKER_CS) {
    double OX, OY, OZ;
    double XDX, XDY, XDZ;
    double YDX, YDY, YDZ;
    aPI.GetOrigin(OX, OY, OZ);
    aPI.GetXDir(XDX, XDY, XDZ);
    aPI.GetYDir(YDX, YDY, YDZ);

    gp_Pnt aPO (OX, OY, OZ);
    gp_Vec aVX (XDX, XDY, XDZ);
    gp_Vec aVY (YDX, YDY, YDZ);
    Standard_Real aTol = Precision::Confusion();
    if (aVX.Magnitude() < aTol ||
        aVY.Magnitude() < aTol ||
        aVX.IsParallel(aVY, Precision::Angular())) {
      Standard_ConstructionError::Raise("Degenerated or parallel directions given");
    }

    gp_Vec aN = aVX ^ aVY;
    gp_Ax3 anA (aPO, aN, aVX);
    gp_Pln aPln (anA);

    double aTrimSize = 100.0;
    aShape = BRepBuilderAPI_MakeFace(aPln, -aTrimSize, +aTrimSize, -aTrimSize, +aTrimSize).Shape();
  } else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_MarkerDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_MarkerDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_MarkerDriver",
			                                 sizeof(GEOMImpl_MarkerDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================
const Handle(GEOMImpl_MarkerDriver) Handle(GEOMImpl_MarkerDriver)::DownCast
       (const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_MarkerDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_MarkerDriver))) {
       _anOtherObject = Handle(GEOMImpl_MarkerDriver)((Handle(GEOMImpl_MarkerDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}
