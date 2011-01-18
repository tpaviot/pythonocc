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
#ifndef _NMTDS_Iterator_HeaderFile
#define _NMTDS_Iterator_HeaderFile

#ifndef _NMTDS_PShapesDataStructure_HeaderFile
#include <NMTDS_PShapesDataStructure.hxx>
#endif
#ifndef _NMTDS_ListOfPassKeyBoolean_HeaderFile
#include <NMTDS_ListOfPassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_ListIteratorOfListOfPassKeyBoolean_HeaderFile
#include <NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _TColStd_DataMapOfIntegerListOfInteger_HeaderFile
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class NMTDS_ShapesDataStructure;
class TColStd_DataMapOfIntegerListOfInteger;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_Iterator  {

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


Standard_EXPORT NMTDS_Iterator();
Standard_EXPORT virtual ~NMTDS_Iterator();


Standard_EXPORT   void SetDS(const NMTDS_PShapesDataStructure& pDS) ;


Standard_EXPORT  const NMTDS_ShapesDataStructure& DS() const;


Standard_EXPORT   void Initialize(const TopAbs_ShapeEnum aType1,const TopAbs_ShapeEnum aType2) ;


Standard_EXPORT   Standard_Boolean More() const;


Standard_EXPORT   void Next() ;


Standard_EXPORT   void Current(Standard_Integer& aIndex1,Standard_Integer& aIndex2,Standard_Boolean& aWithSubShape) const;


Standard_EXPORT virtual  void Prepare() ;


Standard_EXPORT   Standard_Integer ExpectedLength() const;


Standard_EXPORT   Standard_Integer BlockLength() const;


Standard_EXPORT  const TColStd_DataMapOfIntegerListOfInteger& SDVertices() const;


Standard_EXPORT static  void FillMVSD(const TColStd_DataMapOfIntegerListOfInteger& aMVSD1,TColStd_DataMapOfIntegerListOfInteger& aMVSD2) ;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT virtual  void Intersect() ;


 // Fields PROTECTED
 //
NMTDS_PShapesDataStructure myDS;
NMTDS_ListOfPassKeyBoolean myLists[6];
NMTDS_ListIteratorOfListOfPassKeyBoolean myIterator;
NMTDS_ListOfPassKeyBoolean myEmptyList;
Standard_Integer myLength;
TColStd_DataMapOfIntegerListOfInteger myMVSD;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
