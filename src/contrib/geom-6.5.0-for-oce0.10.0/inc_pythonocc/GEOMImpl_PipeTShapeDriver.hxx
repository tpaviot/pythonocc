// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _GEOMImpl_PipeTShapeDriver_HXX
#define _GEOMImpl_PipeTShapeDriver_HXX

#include <TFunction_Driver.hxx>

#include "GEOMAlgo_State.hxx"

#include <TopTools_ListOfShape.hxx>
#include <TopTools_HSequenceOfShape.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <TColStd_HSequenceOfInteger.hxx>

#include <Handle_Geom_Surface.hxx>

class Handle_Standard_Type;
class GEOMImpl_PipeTShapeDriver;

Standard_EXPORT Handle_Standard_Type& STANDARD_TYPE(GEOMImpl_PipeTShapeDriver);

class Handle(GEOMImpl_PipeTShapeDriver) : public Handle(TFunction_Driver) {
public:
  inline void* operator new(size_t,void* anAddress) 
  {
    return anAddress;
  }
  inline void* operator new(size_t size) 
  { 
    return Standard::Allocate(size); 
  }
  inline void  operator delete(void *anAddress) 
  { 
    if (anAddress) Standard::Free((Standard_Address&)anAddress); 
  }
  
  Handle(GEOMImpl_PipeTShapeDriver)():Handle(TFunction_Driver)() {} 
  Handle(GEOMImpl_PipeTShapeDriver)(const Handle(GEOMImpl_PipeTShapeDriver)& aHandle) : Handle(TFunction_Driver)(aHandle) 
  {}

  Handle(GEOMImpl_PipeTShapeDriver)(const GEOMImpl_PipeTShapeDriver* anItem) : Handle(TFunction_Driver)((TFunction_Driver *)anItem) 
  {}

  Handle(GEOMImpl_PipeTShapeDriver)& operator=(const Handle(GEOMImpl_PipeTShapeDriver)& aHandle)
  {
    Assign(aHandle.Access());
    return *this;
  }
  
  Handle(GEOMImpl_PipeTShapeDriver)& operator=(const GEOMImpl_PipeTShapeDriver* anItem)
  {
    Assign((Standard_Transient *)anItem);
    return *this;
  }
  
  GEOMImpl_PipeTShapeDriver* operator->() 
  {
    return (GEOMImpl_PipeTShapeDriver *)ControlAccess();
  }
  
  GEOMImpl_PipeTShapeDriver* operator->() const 
  {
    return (GEOMImpl_PipeTShapeDriver *)ControlAccess();
  }
  
  Standard_EXPORT ~Handle(GEOMImpl_PipeTShapeDriver)() {};
  
  Standard_EXPORT static const Handle(GEOMImpl_PipeTShapeDriver) DownCast(const Handle(Standard_Transient)& AnObject);
};

class GEOMImpl_PipeTShapeDriver : public TFunction_Driver {
public:
  inline void* operator new(size_t,void* anAddress) 
  {
    return anAddress;
  }
  inline void* operator new(size_t size) 
  { 
    return Standard::Allocate(size); 
  }
  inline void  operator delete(void *anAddress) 
  { 
    if (anAddress) Standard::Free((Standard_Address&)anAddress); 
  }
  
  // Methods PUBLIC
  // 
  Standard_EXPORT GEOMImpl_PipeTShapeDriver();
  Standard_EXPORT virtual  Standard_Integer Execute(TFunction_Logbook& log) const; 
  Standard_EXPORT virtual void Validate(TFunction_Logbook&) const {}
  Standard_EXPORT Standard_Boolean MustExecute(const TFunction_Logbook&) const
  {
    return Standard_True;
  }
  Standard_EXPORT static const Standard_GUID& GetID();
  Standard_EXPORT ~GEOMImpl_PipeTShapeDriver() {};
  
  // Type management
  //
  Standard_EXPORT friend Handle_Standard_Type& GEOMImpl_PipeTShapeDriver_Type_();
  Standard_EXPORT const Handle(Standard_Type)& DynamicType() const
  {
    return STANDARD_TYPE(GEOMImpl_PipeTShapeDriver);
  }
  Standard_EXPORT Standard_Boolean IsKind(const Handle(Standard_Type)& AType) const
  {
    return (STANDARD_TYPE(GEOMImpl_PipeTShapeDriver) == AType || TFunction_Driver::IsKind(AType));
  }
private:
  /*!
   * \brief Create a T-Shape based on pipes
   * \param r1 - the internal radius of main pipe
   * \param w1 - the thickness main pipe
   * \param l1 - the half-length of main pipe
   * \param r2 - the internal radius of incident pipe
   * \param w2 - the thickness incident pipe
   * \param l2 - the half-length of main pipe
   * \retval TopoDS_Shape - Resulting shape
   */
  TopoDS_Shape MakePipeTShape(double r1, double w1, double l1, double r2, double w2, double l2) const;

  /*!
   * \brief Create a quarter of a T-Shape based on pipes
   * \param r1 - the internal radius of main pipe
   * \param w1 - the thickness main pipe
   * \param l1 - the half-length of main pipe
   * \param r2 - the internal radius of incident pipe
   * \param w2 - the thickness incident pipe
   * \param l2 - the half-length of main pipe
   * \retval TopoDS_Shape - Resulting shape
   */
  TopoDS_Shape MakeQuarterPipeTShape(double r1, double w1, double l1, double r2, double w2, double l2) const;

//=======================================================================
//function : GetShapesOnSurfaceIDs
  /*!
   * \brief Find IDs of sub-shapes complying with given status about surface
   * \param theSurface - the surface to check state of sub-shapes against
   * \param theShape - the shape to explore
   * \param theShapeType - type of sub-shape of theShape
   * \param theState - required state
   * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found sub-shapes
   */
  Handle(TColStd_HSequenceOfInteger)
    GetShapesOnSurfaceIDs(const Handle(Geom_Surface)& theSurface,
                          const TopoDS_Shape&         theShape,
                          TopAbs_ShapeEnum            theShapeType,
                          GEOMAlgo_State              theState) const;
//=======================================================================
//function : getShapesOnBoxIDs
  /*!
   * \brief Find IDs of sub-shapes complying with given status about surface
    * \param theBox - the box to check state of sub-shapes against
    * \param theShape - the shape to explore
    * \param theShapeType - type of sub-shape of theShape
    * \param theState - required state
    * \retval Handle(TColStd_HSequenceOfInteger) - IDs of found sub-shapes
   */
//=======================================================================
  Handle(TColStd_HSequenceOfInteger)
  GetShapesOnBoxIDs(const TopoDS_Shape& aBox,
                 const TopoDS_Shape& aShape,
                 const Standard_Integer theShapeType,
                 GEOMAlgo_State theState) const;

  //=======================================================================
  //function : getCommonShapesOnCylinders
  //purpose  : return the common edge between 2 cylindrical surfaces
  //           along OX and OZ
  //=======================================================================
  void GetCommonShapesOnCylinders(const TopoDS_Shape& theShape,
				  TopAbs_ShapeEnum theShapeType,
                  double r, double r2,
				  Handle(TopTools_HSequenceOfShape)& commonShapes) const;

};

#endif // _GEOMImpl_PipeTShapeDriver_HXX
