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
#ifndef _GEOMAlgo_GlueAnalyser_HeaderFile
#define _GEOMAlgo_GlueAnalyser_HeaderFile

#ifndef _GEOMAlgo_ListOfCoupleOfShapes_HeaderFile
#include <GEOMAlgo_ListOfCoupleOfShapes.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _GEOMAlgo_Gluer_HeaderFile
#include <GEOMAlgo_Gluer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
class GEOMAlgo_ListOfCoupleOfShapes;
class TopTools_ListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_GlueAnalyser  : public GEOMAlgo_Gluer {

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


Standard_EXPORT GEOMAlgo_GlueAnalyser();
Standard_EXPORT virtual ~GEOMAlgo_GlueAnalyser();


Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT   Standard_Boolean HasSolidsToGlue() const;


Standard_EXPORT  const GEOMAlgo_ListOfCoupleOfShapes& SolidsToGlue() const;


Standard_EXPORT   Standard_Boolean HasSolidsAlone() const;


Standard_EXPORT  const TopTools_ListOfShape& SolidsAlone() const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT   void DetectVertices() ;


Standard_EXPORT   void DetectEdges() ;


Standard_EXPORT   void DetectFaces() ;


Standard_EXPORT   void DetectShapes(const TopAbs_ShapeEnum aType) ;


Standard_EXPORT   void DetectSolids() ;


 // Fields PROTECTED
 //
GEOMAlgo_ListOfCoupleOfShapes mySolidsToGlue;
TopTools_ListOfShape mySolidsAlone;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
