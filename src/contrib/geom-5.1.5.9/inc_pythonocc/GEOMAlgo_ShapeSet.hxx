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
#ifndef _GEOMAlgo_ShapeSet_HeaderFile
#define _GEOMAlgo_ShapeSet_HeaderFile

#ifndef _TopTools_MapOfOrientedShape_HeaderFile
#include <TopTools_MapOfOrientedShape.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class TopTools_ListOfShape;
class TopoDS_Shape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//! Implementation some formal <br>
//!          opereations with Set of shapes <br>
class GEOMAlgo_ShapeSet  {

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

//! Empty constructor <br>
Standard_EXPORT GEOMAlgo_ShapeSet();

//! Adds shapes from the list theLS to the Set <br>
Standard_EXPORT   void Add(const TopTools_ListOfShape& theLS) ;

//! Adds shape theShape to the Set <br>
Standard_EXPORT   void Add(const TopoDS_Shape& theShape) ;

//! Adds sub-shapes of shape theShape, <br>
//!          that have type theType to the Set <br>
Standard_EXPORT   void Add(const TopoDS_Shape& theShape,const TopAbs_ShapeEnum theType) ;

//! Removes shapes of theSet from the Set <br>
Standard_EXPORT   void Subtract(const GEOMAlgo_ShapeSet& theSet) ;

//! Clears internal fields <br>
Standard_EXPORT   void Clear() ;

//! Returns True if the Set contains <br>
//!          all shapes of theSet <br>
Standard_EXPORT   Standard_Boolean Contains(const GEOMAlgo_ShapeSet& theSet) const;

//! Returns the Set <br>
Standard_EXPORT  const TopTools_ListOfShape& GetSet() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
TopTools_MapOfOrientedShape myMap;
TopTools_ListOfShape myList;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
