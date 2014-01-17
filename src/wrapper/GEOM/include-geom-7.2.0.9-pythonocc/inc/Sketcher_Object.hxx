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
#ifndef Sketcher_Object_H
#define Sketcher_Object_H
//------------------------------------------------------------------------------
#include "Sketcher_ObjectGeometryType.hxx"
#include "Sketcher_ObjectTypeOfMethod.hxx"
#include "Sketcher_ObjectType.hxx"
//------------------------------------------------------------------------------
#include <Handle_AIS_Shape.hxx>
#include <Handle_Geom2d_Geometry.hxx>
#include <TDF_Label.hxx>
#include <TopoDS_Shape.hxx>
#include <gp_Ax3.hxx>

#include <TPrsStd_AISPresentation.hxx>
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_Object,MMgt_TShared)
//------------------------------------------------------------------------------
class Sketcher_Object : public MMgt_TShared
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_Object)

    Standard_EXPORT  static const Standard_GUID& GetObjectID();
    Standard_EXPORT  static Handle(Sketcher_Object) GetObject(TDF_Label& theLabel);

    Standard_EXPORT  Sketcher_Object(const TDF_Label& theEntry);
    
    Standard_EXPORT  Sketcher_Object(   const TDF_Label& theEntry,
                                        const Handle(Geom2d_Geometry)& theGeom2d_Geometry,
                                        const Sketcher_ObjectGeometryType theGeometryType,
                                        const Sketcher_ObjectTypeOfMethod theTypeOfMethod);

    Standard_EXPORT  ~Sketcher_Object();

    Standard_EXPORT  void Remove();

    Standard_EXPORT  void SetGeometry(const Handle(Geom2d_Geometry)& theGeom2d_Geometry);
    Standard_EXPORT  Handle(Geom2d_Geometry) GetGeometry();
    Standard_EXPORT  TopoDS_Shape GetShape();

    Standard_EXPORT  void SetPlane(const gp_Ax3& theAx3);
    Standard_EXPORT  const gp_Ax3 GetPlane();

    Standard_EXPORT  Handle(AIS_InteractiveObject) GetAIS_Object();
  
    Standard_EXPORT  void DisplayPrs();
    Standard_EXPORT  void ErasePrs(Standard_Boolean isRemove = Standard_True);

    Standard_EXPORT  void SetGeometryType(const Sketcher_ObjectGeometryType theGeometryType);
    Standard_EXPORT  Sketcher_ObjectGeometryType GetGeometryType();

    Standard_EXPORT  void SetTypeOfMethod(const Sketcher_ObjectTypeOfMethod theTypeOfMethod);
    Standard_EXPORT  Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

    Standard_EXPORT  void SetType(const Sketcher_ObjectType theType);
    Standard_EXPORT  Sketcher_ObjectType GetType();

  private:
    TDF_Label                 _label;
    Handle(Geom2d_Geometry)   _geometry;
    gp_Ax3                    _Ax3;

    Standard_EXPORT void SaveGeometry(const Handle(Geom2d_Geometry)& theGeom2d_Geometry,const Sketcher_ObjectGeometryType theGeometryType);

    Standard_EXPORT void SaveUpdatePrs();
    Standard_EXPORT bool HasPrs();

    Standard_EXPORT bool UpdatePrs();

    Handle(TPrsStd_AISPresentation) Get_TPrsStd_AISPresentation();
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
