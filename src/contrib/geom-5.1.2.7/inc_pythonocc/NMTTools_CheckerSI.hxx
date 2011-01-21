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
#ifndef _NMTTools_CheckerSI_HeaderFile
#define _NMTTools_CheckerSI_HeaderFile

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _NMTTools_PaveFiller_HeaderFile
#include <NMTTools_PaveFiller.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_CheckerSI  : public NMTTools_PaveFiller {

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


Standard_EXPORT NMTTools_CheckerSI();
Standard_EXPORT virtual ~NMTTools_CheckerSI();


Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT   Standard_Integer StopStatus() const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT virtual  void Init() ;


Standard_EXPORT virtual  void Clear() ;


Standard_EXPORT virtual  void PreparePaveBlocks(const Standard_Integer nE) ;


Standard_EXPORT virtual  void PreparePaveBlocks(const TopAbs_ShapeEnum aType1,const TopAbs_ShapeEnum aType2) ;


 // Fields PROTECTED
 //
Standard_Integer myStopStatus;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
