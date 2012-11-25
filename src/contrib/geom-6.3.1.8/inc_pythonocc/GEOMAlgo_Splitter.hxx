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
#ifndef _GEOMAlgo_Splitter_HeaderFile
#define _GEOMAlgo_Splitter_HeaderFile

#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _GEOMAlgo_Builder_HeaderFile
#include <GEOMAlgo_Builder.hxx>
#endif
class TopoDS_Shape;
class TopTools_ListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//! Implementation of Gluing Operation Algorithm (GA) <br>
class GEOMAlgo_Splitter  : public GEOMAlgo_Builder {

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

//!  Empty constructor <br>
Standard_EXPORT GEOMAlgo_Splitter();
Standard_EXPORT virtual ~GEOMAlgo_Splitter();

//!  Clears internal fields and arguments <br>
Standard_EXPORT virtual  void Clear() ;

//!  Adds Tool argument theShape of the operation <br>
Standard_EXPORT virtual  void AddTool(const TopoDS_Shape& theShape) ;

//!  Returns the arguments of the operation <br>
Standard_EXPORT  const TopTools_ListOfShape& Tools() const;


Standard_EXPORT   void SetLimit(const TopAbs_ShapeEnum aLimit) ;


Standard_EXPORT   TopAbs_ShapeEnum Limit() const;


Standard_EXPORT   void SetLimitMode(const Standard_Integer aLimitMode) ;


Standard_EXPORT   Standard_Integer LimitMode() const;

//!  Adds Tool arguments of the operation as <br>
//!           shapes of upper level of container shape theShape <br>
//! ===================================================== <br>
Standard_EXPORT   void AddToolCompound(const TopoDS_Shape& theShape) ;





protected:

 // Methods PROTECTED
 // 

//! Build the resulting shapes of type theType <br>
Standard_EXPORT virtual  void BuildResult(const TopAbs_ShapeEnum theType) ;

//!  Provides post-tratment actions <br>
Standard_EXPORT virtual  void PostTreat() ;


 // Fields PROTECTED
 //
TopTools_ListOfShape myTools;
TopTools_MapOfShape myMapTools;
TopAbs_ShapeEnum myLimit;
Standard_Integer myLimitMode;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
