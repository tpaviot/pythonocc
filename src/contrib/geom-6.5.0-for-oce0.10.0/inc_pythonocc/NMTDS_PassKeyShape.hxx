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

// File:        NMTDS_PassKeyShape.hxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _NMTDS_PassKeyShape_HeaderFile
#define _NMTDS_PassKeyShape_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <TopTools_IndexedMapOfShape.hxx>
#include <Standard_Boolean.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_ListOfShape.hxx>

//=======================================================================
//function : NMTDS_PassKeyShape
//purpose  : 
//=======================================================================
class NMTDS_PassKeyShape  {
 public:
  Standard_EXPORT
    NMTDS_PassKeyShape();
  
  Standard_EXPORT 
    virtual ~NMTDS_PassKeyShape();
  
  Standard_EXPORT 
    NMTDS_PassKeyShape(const NMTDS_PassKeyShape& Other);
  
  Standard_EXPORT
    NMTDS_PassKeyShape& Assign(const NMTDS_PassKeyShape& Other) ;
    
  NMTDS_PassKeyShape& operator =(const NMTDS_PassKeyShape& Other) {
    return Assign(Other);
  }
  
  Standard_EXPORT     
    void SetShapes(const TopoDS_Shape& aS) ;
  
  Standard_EXPORT
    void SetShapes(const TopoDS_Shape& aS1,
		   const TopoDS_Shape& aS2) ;
  
  Standard_EXPORT
    void SetShapes(const TopoDS_Shape& aS1,
		   const TopoDS_Shape& aS2,
		   const TopoDS_Shape& aS3) ;
  
  Standard_EXPORT
    void SetShapes(const TopoDS_Shape& aS1,
		   const TopoDS_Shape& aS2,
		   const TopoDS_Shape& aS3,
		   const TopoDS_Shape& aS4) ;
  
  Standard_EXPORT
    void SetShapes(const TopTools_ListOfShape& aLS) ;
  
  Standard_EXPORT
    void Clear() ;
  
  Standard_EXPORT
    Standard_Integer NbIds() const;
  
  Standard_EXPORT
    Standard_Boolean IsEqual(const NMTDS_PassKeyShape& aOther) const;
  
  Standard_EXPORT
    Standard_Integer HashCode(const Standard_Integer Upper) const;
  
  Standard_EXPORT
    void Dump(const Standard_Integer aHex = 0) const;

 protected:
  Standard_Integer myNbIds;
  Standard_Integer mySum;
  Standard_Integer myUpper;
  TopTools_IndexedMapOfShape myMap;
};
#endif
