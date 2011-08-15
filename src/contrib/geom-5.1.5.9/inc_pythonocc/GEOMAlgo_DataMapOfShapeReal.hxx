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
#ifndef _GEOMAlgo_DataMapOfShapeReal_HeaderFile
#define _GEOMAlgo_DataMapOfShapeReal_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class Standard_DomainError;
class Standard_NoSuchObject;
class TopoDS_Shape;
class TopTools_ShapeMapHasher;
class GEOMAlgo_DataMapNodeOfDataMapOfShapeReal;
class GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_DataMapOfShapeReal  : public TCollection_BasicMap {

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


Standard_EXPORT GEOMAlgo_DataMapOfShapeReal(const Standard_Integer NbBuckets = 1);


Standard_EXPORT   GEOMAlgo_DataMapOfShapeReal& Assign(const GEOMAlgo_DataMapOfShapeReal& Other) ;
  GEOMAlgo_DataMapOfShapeReal& operator =(const GEOMAlgo_DataMapOfShapeReal& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;


Standard_EXPORT   void Clear() ;
~GEOMAlgo_DataMapOfShapeReal()
{
  Clear();
}



Standard_EXPORT   Standard_Boolean Bind(const TopoDS_Shape& K,const Standard_Real& I) ;


Standard_EXPORT   Standard_Boolean IsBound(const TopoDS_Shape& K) const;


Standard_EXPORT   Standard_Boolean UnBind(const TopoDS_Shape& K) ;


Standard_EXPORT  const Standard_Real& Find(const TopoDS_Shape& K) const;
 const Standard_Real& operator()(const TopoDS_Shape& K) const
{
  return Find(K);
}



Standard_EXPORT   Standard_Real& ChangeFind(const TopoDS_Shape& K) ;
  Standard_Real& operator()(const TopoDS_Shape& K) 
{
  return ChangeFind(K);
}






protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


Standard_EXPORT GEOMAlgo_DataMapOfShapeReal(const GEOMAlgo_DataMapOfShapeReal& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
