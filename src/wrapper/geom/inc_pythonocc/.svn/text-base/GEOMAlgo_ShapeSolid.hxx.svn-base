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
#ifndef _GEOMAlgo_ShapeSolid_HeaderFile
#define _GEOMAlgo_ShapeSolid_HeaderFile

#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _BOPTools_PDSFiller_HeaderFile
#include <BOPTools_PDSFiller.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
#ifndef _TopAbs_State_HeaderFile
#include <TopAbs_State.hxx>
#endif
class BOPTools_DSFiller;
class TopTools_ListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_ShapeSolid  : public GEOMAlgo_Algo {

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


Standard_EXPORT   void SetFiller(const BOPTools_DSFiller& aDSF) ;
Standard_EXPORT virtual ~GEOMAlgo_ShapeSolid();


Standard_EXPORT  const TopTools_ListOfShape& Shapes(const TopAbs_State aState) const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT GEOMAlgo_ShapeSolid();


Standard_EXPORT virtual  void BuildResult()  = 0;


Standard_EXPORT virtual  void Prepare()  = 0;


 // Fields PROTECTED
 //
TopTools_ListOfShape myLSIN;
TopTools_ListOfShape myLSOUT;
TopTools_ListOfShape myLSON;
Standard_Integer myRank;
BOPTools_PDSFiller myDSFiller;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
