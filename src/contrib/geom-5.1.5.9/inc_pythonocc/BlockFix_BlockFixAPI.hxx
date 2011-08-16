//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com

#ifndef _BlockFix_BlockFixAPI_HeaderFile
#define _BlockFix_BlockFixAPI_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Handle_BlockFix_BlockFixAPI_HeaderFile
#include <Handle_BlockFix_BlockFixAPI.hxx>
#endif

#ifndef _Handle_ShapeBuild_ReShape_HeaderFile
#include <Handle_ShapeBuild_ReShape.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _MMgt_TShared_HeaderFile
#include <MMgt_TShared.hxx>
#endif

class ShapeBuild_ReShape;
class TopoDS_Shape;

//!API class to perform the fixing of the block
class BlockFix_BlockFixAPI : public MMgt_TShared
{
public:
  void* operator new(size_t,void* anAddress) 
  {
    return anAddress;
  }
  void* operator new(size_t size) 
  { 
    return Standard::Allocate(size); 
  }
  void  operator delete(void *anAddress) 
  { 
    if (anAddress) Standard::Free((Standard_Address&)anAddress); 
  }

  // Methods PUBLIC
  // 
  
  //!Empty constructor
  Standard_EXPORT BlockFix_BlockFixAPI();
  
  //!Sets the shape to be operated on
  void SetShape(const TopoDS_Shape& Shape);
  
  //!Performs the fixing
  Standard_EXPORT   void Perform();
  
  //!Returns resulting shape.
  TopoDS_Shape Shape() const;
  
  //!Returns modifiable context for storing the mofifications
  Handle_ShapeBuild_ReShape& Context();
  
  //!Returns modifiable tolerance of recognition
  Standard_Real& Tolerance();
  
  Standard_Integer& OptimumNbFaces();
  
  Standard_EXPORT ~BlockFix_BlockFixAPI();

  
  Standard_EXPORT friend Handle_Standard_Type& BlockFix_BlockFixAPI_Type_();
  Standard_EXPORT const Handle(Standard_Type)& DynamicType() const;
  Standard_EXPORT Standard_Boolean	       IsKind(const Handle(Standard_Type)&) const;
  
  
private: 
  // Fields PRIVATE
  //
  Handle_ShapeBuild_ReShape myContext;
  TopoDS_Shape myShape;
  Standard_Real myTolerance;
  Standard_Integer myOptimumNbFaces;
};

#include <BlockFix_BlockFixAPI.lxx>

#endif
