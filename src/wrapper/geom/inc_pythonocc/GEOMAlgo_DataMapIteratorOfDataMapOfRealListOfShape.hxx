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
#ifndef _GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape_HeaderFile
#define _GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape_HeaderFile

#ifndef _TCollection_BasicMapIterator_HeaderFile
#include <TCollection_BasicMapIterator.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_HeaderFile
#include <Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#endif
class Standard_NoSuchObject;
class TopTools_ListOfShape;
class TColStd_MapRealHasher;
class GEOMAlgo_DataMapOfRealListOfShape;
class GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape  : public TCollection_BasicMapIterator {

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


Standard_EXPORT GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape();


Standard_EXPORT GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape(const GEOMAlgo_DataMapOfRealListOfShape& aMap);


Standard_EXPORT   void Initialize(const GEOMAlgo_DataMapOfRealListOfShape& aMap) ;


Standard_EXPORT  const Standard_Real& Key() const;


Standard_EXPORT  const TopTools_ListOfShape& Value() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
