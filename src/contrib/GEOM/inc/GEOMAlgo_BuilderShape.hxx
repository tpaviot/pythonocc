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
#ifndef _GEOMAlgo_BuilderShape_HeaderFile
#define _GEOMAlgo_BuilderShape_HeaderFile

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _TopTools_IndexedDataMapOfShapeListOfShape_HeaderFile
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class TopoDS_Shape;
class TopTools_ListOfShape;
class TopTools_IndexedDataMapOfShapeListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//! Root class for algorithms that has shape as result <br>
class GEOMAlgo_BuilderShape  : public GEOMAlgo_Algo {

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

//!  Returns the result of algorithm <br>
Standard_EXPORT  const TopoDS_Shape& Shape() const;

//! Returns the list of shapes generated from the <br>
//!          shape theS. <br>
Standard_EXPORT virtual const TopTools_ListOfShape& Generated(const TopoDS_Shape& theS) ;

//! Returns the list of shapes modified from the <br>
//!          shape theS. <br>
Standard_EXPORT virtual const TopTools_ListOfShape& Modified(const TopoDS_Shape& theS) ;

//! Returns true if the shape theS has been deleted. <br>
Standard_EXPORT virtual  Standard_Boolean IsDeleted(const TopoDS_Shape& theS) ;

//! Returns true if the at least one shape(or subshape) <br>
//!          of arguments has been deleted. <br>
Standard_EXPORT   Standard_Boolean HasDeleted() const;

//! Returns true if the at least one shape(or subshape) <br>
//!          of arguments has generated shapes. <br>
Standard_EXPORT   Standard_Boolean HasGenerated() const;

//! Returns true if the at least one shape(or subshape) <br>
//!          of arguments has modified shapes. <br>
Standard_EXPORT   Standard_Boolean HasModified() const;


Standard_EXPORT  const TopTools_IndexedDataMapOfShapeListOfShape& ImagesResult() const;





protected:

 // Methods PROTECTED
 // 

//! Empty constructor <br>
Standard_EXPORT GEOMAlgo_BuilderShape();
Standard_EXPORT virtual ~GEOMAlgo_BuilderShape();

//!  Prepare information for history support <br>
Standard_EXPORT virtual  void PrepareHistory() ;


 // Fields PROTECTED
 //
TopoDS_Shape myShape;
TopTools_ListOfShape myHistShapes;
TopTools_MapOfShape myMapShape;
Standard_Boolean myHasDeleted;
Standard_Boolean myHasGenerated;
Standard_Boolean myHasModified;
TopTools_IndexedDataMapOfShapeListOfShape myImagesResult;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
