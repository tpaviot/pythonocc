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

#include "GEOMImpl_ArchimedeDriver.hxx"
#include "GEOMImpl_IArchimede.hxx"
#include "GEOMImpl_Types.hxx"

#include "Archimede_VolumeSection.hxx"

#include <BRepBuilderAPI_MakeFace.hxx>

#include <TopoDS_Shape.hxx>
#include <TopoDS_Face.hxx>

#include <Geom_Plane.hxx>
#include <Geom_Geometry.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>

#include <gp_Pnt.hxx>
#include <gp_Dir.hxx>

#include <StdFail_NotDone.hxx>


//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_ArchimedeDriver::GetID()
{
  static Standard_GUID aArchimedeDriver("FF1BBB59-5D14-4df2-980B-3A668264EA16");
  return aArchimedeDriver;
}


//=======================================================================
//function : GEOMImpl_ArchimedeDriver
//purpose  :
//=======================================================================

GEOMImpl_ArchimedeDriver::GEOMImpl_ArchimedeDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//=======================================================================
Standard_Integer GEOMImpl_ArchimedeDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  Standard_Integer aType = aFunction->GetType();
  if (aType != ARCHIMEDE_TYPE) return 0;

  GEOMImpl_IArchimede IA (aFunction);

  Handle(GEOM_Function) aShapeFunction = IA.GetBasicShape();
  if (aShapeFunction.IsNull()) return 0;
  TopoDS_Shape shape = aShapeFunction->GetValue();
  if(shape.IsNull()) return 0;

  Standard_Real aWaterDensity = IA.GetDensity();
  Standard_Real aWeight = IA.GetWeight();
  Standard_Real aMeshingDeflection = IA.GetDeflection();

  double cste = -1;
  if (aWaterDensity != 0.)
    cste = aWeight/aWaterDensity;
  else
    return 0;

  gp_Dir direct (0.0, 0.0, 1.0);
  gp_Pnt PosPlan (0.0, 0.0, 0.0);
  Geom_Plane PP (PosPlan, direct);
  Handle(Geom_Plane) P = Handle(Geom_Plane)::DownCast(PP.Copy());

  gp_Dir Zdirection (0.0, 0.0, 1.0);
  VolumeSection VOL (shape, aMeshingDeflection);
  VOL.SetPlane(P);
  Handle(Geom_RectangularTrimmedSurface) SurfaceTrimmee;

  if (Zdirection.IsEqual(direct, Precision::Angular()) == Standard_False) {
    VOL.MakeRotation(direct);
  }

  VOL.CenterOfGravity();
  SurfaceTrimmee = VOL.TrimSurf();
  Standard_Real Cote = VOL.Archimede(cste, aMeshingDeflection);

  if (Cote == -1) {
    double Zmin,Zmax;
    VOL.getZ(Zmin,Zmax);
    double volume = VOL.CalculateVolume(Zmax) * aWaterDensity;

    char msg[100] = "";
    std::sprintf(msg, "shape sinks to the bottom : Weigth max = %.1f", volume);

    StdFail_NotDone::Raise(msg);
  }

  SurfaceTrimmee = VOL.AjustePlan(SurfaceTrimmee,Cote,PosPlan);
  if (Zdirection.IsEqual(direct,Precision::Angular()) == Standard_False) {
    SurfaceTrimmee = VOL.InvMakeRotation(direct,SurfaceTrimmee);
  }

  Standard_Real u1,u2,v1,v2;
  SurfaceTrimmee->Bounds(u1,u2,v1,v2);
  TopoDS_Face tirant = BRepBuilderAPI_MakeFace(SurfaceTrimmee, u1, u2, v1, v2, Precision::Confusion());

  if (tirant.IsNull()) {
    StdFail_NotDone::Raise("Failed to build secant face");
  }

  aFunction->SetValue(tirant);

  log.SetTouched(Label());

  return 1;
}


//=======================================================================
//function :  GEOMImpl_ArchimedeDriver_Type_
//purpose  :
//=======================================================================
Standard_EXPORT Handle_Standard_Type& GEOMImpl_ArchimedeDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);


  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_ArchimedeDriver",
			                                 sizeof(GEOMImpl_ArchimedeDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//=======================================================================

const Handle(GEOMImpl_ArchimedeDriver) Handle(GEOMImpl_ArchimedeDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_ArchimedeDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_ArchimedeDriver))) {
       _anOtherObject = Handle(GEOMImpl_ArchimedeDriver)((Handle(GEOMImpl_ArchimedeDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


