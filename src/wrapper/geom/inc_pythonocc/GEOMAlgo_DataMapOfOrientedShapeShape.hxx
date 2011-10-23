//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _GEOMAlgo_DataMapOfOrientedShapeShape_HeaderFile
#define _GEOMAlgo_DataMapOfOrientedShapeShape_HeaderFile

#ifndef _TCollection_BasicMap_HeaderFile
#include <TCollection_BasicMap.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
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
class TopTools_OrientedShapeMapHasher;
class GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_DataMapOfOrientedShapeShape  : public TCollection_BasicMap {

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


Standard_EXPORT GEOMAlgo_DataMapOfOrientedShapeShape(const Standard_Integer NbBuckets = 1);


Standard_EXPORT   GEOMAlgo_DataMapOfOrientedShapeShape& Assign(const GEOMAlgo_DataMapOfOrientedShapeShape& Other) ;
  GEOMAlgo_DataMapOfOrientedShapeShape& operator =(const GEOMAlgo_DataMapOfOrientedShapeShape& Other) 
{
  return Assign(Other);
}



Standard_EXPORT   void ReSize(const Standard_Integer NbBuckets) ;


Standard_EXPORT   void Clear() ;
~GEOMAlgo_DataMapOfOrientedShapeShape()
{
  Clear();
}



Standard_EXPORT   Standard_Boolean Bind(const TopoDS_Shape& K,const TopoDS_Shape& I) ;


Standard_EXPORT   Standard_Boolean IsBound(const TopoDS_Shape& K) const;


Standard_EXPORT   Standard_Boolean UnBind(const TopoDS_Shape& K) ;


Standard_EXPORT  const TopoDS_Shape& Find(const TopoDS_Shape& K) const;
 const TopoDS_Shape& operator()(const TopoDS_Shape& K) const
{
  return Find(K);
}



Standard_EXPORT   TopoDS_Shape& ChangeFind(const TopoDS_Shape& K) ;
  TopoDS_Shape& operator()(const TopoDS_Shape& K) 
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


Standard_EXPORT GEOMAlgo_DataMapOfOrientedShapeShape(const GEOMAlgo_DataMapOfOrientedShapeShape& Other);


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
