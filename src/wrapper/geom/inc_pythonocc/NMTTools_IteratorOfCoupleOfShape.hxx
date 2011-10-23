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
//
#ifndef _NMTTools_IteratorOfCoupleOfShape_HeaderFile
#define _NMTTools_IteratorOfCoupleOfShape_HeaderFile

#ifndef _NMTDS_PShapesDataStructure_HeaderFile
#include <NMTDS_PShapesDataStructure.hxx>
#endif
#ifndef _BOPTools_IndexedMapOfCoupleOfInteger_HeaderFile
#include <BOPTools_IndexedMapOfCoupleOfInteger.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _BOPTools_IteratorOfCoupleOfShape_HeaderFile
#include <BOPTools_IteratorOfCoupleOfShape.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
class Standard_NoSuchObject;
class NMTDS_ShapesDataStructure;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_IteratorOfCoupleOfShape  : public BOPTools_IteratorOfCoupleOfShape {

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


Standard_EXPORT NMTTools_IteratorOfCoupleOfShape();


Standard_EXPORT   void SetDS(const NMTDS_PShapesDataStructure& pDS) ;


Standard_EXPORT virtual  void Initialize(const TopAbs_ShapeEnum Type1,const TopAbs_ShapeEnum Type2) ;


Standard_EXPORT virtual  void Current(Standard_Integer& Index1,Standard_Integer& Index2,Standard_Boolean& WithSubShape) const;


Standard_EXPORT virtual  Standard_Boolean More() const;


Standard_EXPORT  const NMTDS_ShapesDataStructure& DS() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
NMTDS_PShapesDataStructure myPNMTPS;
BOPTools_IndexedMapOfCoupleOfInteger myMap;
Standard_Integer myIndex1;
Standard_Integer myIndex2;
Standard_Boolean myWithSubShapeFlag;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
