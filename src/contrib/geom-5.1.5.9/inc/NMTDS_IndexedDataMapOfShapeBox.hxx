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
#ifndef _NMTDS_IndexedDataMapOfShapeBox_HeaderFile
#define _NMTDS_IndexedDataMapOfShapeBox_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_HeaderFile
#include <Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class Standard_OutOfRange;
class Standard_NoSuchObject;
class TopoDS_Shape;
class Bnd_Box;
class TopTools_ShapeMapHasher;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_IndexedDataMapOfShapeBox  : public TCollection_BasicMap {

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


Standard_EXPORT NMTDS_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets = 1);


Standard_EXPORT   NMTDS_IndexedDataMapOfShapeBox& Assign(const NMTDS_IndexedDataMapOfShapeBox& Other) ;
  NMTDS_IndexedDataMapOfShapeBox& operator =(const NMTDS_IndexedDataMapOfShapeBox& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;


Standard_EXPORT   void Clear() ;
~NMTDS_IndexedDataMapOfShapeBox()
{
  Clear();
}



Standard_EXPORT   Standard_Integer Add(const TopoDS_Shape& K,const Bnd_Box& I) ;


Standard_EXPORT   void Substitute(const Standard_Integer I,const TopoDS_Shape& K,const Bnd_Box& T) ;


Standard_EXPORT   void RemoveLast() ;


Standard_EXPORT   Standard_Boolean Contains(const TopoDS_Shape& K) const;


Standard_EXPORT  const TopoDS_Shape& FindKey(const Standard_Integer I) const;


Standard_EXPORT  const Bnd_Box& FindFromIndex(const Standard_Integer I) const;
 const Bnd_Box& operator ()(const Standard_Integer I) const
{
  return FindFromIndex(I);
}



Standard_EXPORT   Bnd_Box& ChangeFromIndex(const Standard_Integer I) ;
  Bnd_Box& operator ()(const Standard_Integer I) 
{
  return ChangeFromIndex(I);
}



Standard_EXPORT   Standard_Integer FindIndex(const TopoDS_Shape& K) const;


Standard_EXPORT  const Bnd_Box& FindFromKey(const TopoDS_Shape& K) const;


Standard_EXPORT   Bnd_Box& ChangeFromKey(const TopoDS_Shape& K) ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT NMTDS_IndexedDataMapOfShapeBox(const NMTDS_IndexedDataMapOfShapeBox& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
