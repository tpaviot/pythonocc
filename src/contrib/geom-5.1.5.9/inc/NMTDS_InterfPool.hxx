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
#ifndef _NMTDS_InterfPool_HeaderFile
#define _NMTDS_InterfPool_HeaderFile

#ifndef _NMTDS_MapOfPassKeyBoolean_HeaderFile
#include <NMTDS_MapOfPassKeyBoolean.hxx>
#endif
#ifndef _NMTDS_ListOfPassKeyBoolean_HeaderFile
#include <NMTDS_ListOfPassKeyBoolean.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _BOPTools_CArray1OfSSInterference_HeaderFile
#include <BOPTools_CArray1OfSSInterference.hxx>
#endif
#ifndef _BOPTools_CArray1OfESInterference_HeaderFile
#include <BOPTools_CArray1OfESInterference.hxx>
#endif
#ifndef _BOPTools_CArray1OfVSInterference_HeaderFile
#include <BOPTools_CArray1OfVSInterference.hxx>
#endif
#ifndef _BOPTools_CArray1OfEEInterference_HeaderFile
#include <BOPTools_CArray1OfEEInterference.hxx>
#endif
#ifndef _BOPTools_CArray1OfVEInterference_HeaderFile
#include <BOPTools_CArray1OfVEInterference.hxx>
#endif
#ifndef _BOPTools_CArray1OfVVInterference_HeaderFile
#include <BOPTools_CArray1OfVVInterference.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _NMTDS_InterfType_HeaderFile
#include <NMTDS_InterfType.hxx>
#endif
class NMTDS_PassKeyBoolean;
class NMTDS_ListOfPassKeyBoolean;
class BOPTools_CArray1OfSSInterference;
class BOPTools_CArray1OfESInterference;
class BOPTools_CArray1OfVSInterference;
class BOPTools_CArray1OfEEInterference;
class BOPTools_CArray1OfVEInterference;
class BOPTools_CArray1OfVVInterference;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTDS_InterfPool  {

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


Standard_EXPORT NMTDS_InterfPool();
Standard_EXPORT virtual ~NMTDS_InterfPool();


Standard_EXPORT   Standard_Boolean Add(const NMTDS_PassKeyBoolean& aPKB,const NMTDS_InterfType aType) ;


Standard_EXPORT   Standard_Boolean Add(const Standard_Integer aInd1,const Standard_Integer aInd2,const NMTDS_InterfType aType) ;


Standard_EXPORT   Standard_Boolean Add(const Standard_Integer aInd1,const Standard_Integer aInd2,const Standard_Boolean bFlag,const NMTDS_InterfType aType) ;


Standard_EXPORT   Standard_Boolean Contains(const NMTDS_PassKeyBoolean& aPKB) const;


Standard_EXPORT   Standard_Boolean Contains(const Standard_Integer aInd1,const Standard_Integer aInd2) const;


Standard_EXPORT  const NMTDS_ListOfPassKeyBoolean& Get() const;


Standard_EXPORT  const NMTDS_ListOfPassKeyBoolean& Get(const NMTDS_InterfType aType) const;


Standard_EXPORT  const NMTDS_ListOfPassKeyBoolean& Get(const Standard_Integer aInd) const;


Standard_EXPORT  const NMTDS_ListOfPassKeyBoolean& Get(const Standard_Integer aInd,const NMTDS_InterfType aType) const;


//! Returns the reference to array Of F/F interferences <br>
Standard_EXPORT   BOPTools_CArray1OfSSInterference& SSInterferences() ;


//! Returns the reference to array Of E/F interferences <br>
Standard_EXPORT   BOPTools_CArray1OfESInterference& ESInterferences() ;


//! Returns the reference to array Of V/F interferences <br>
Standard_EXPORT   BOPTools_CArray1OfVSInterference& VSInterferences() ;


//! Returns the reference to arrray Of E/E interferences <br>
Standard_EXPORT   BOPTools_CArray1OfEEInterference& EEInterferences() ;


//! Returns the reference to arrray Of  V/E interferences <br>
Standard_EXPORT   BOPTools_CArray1OfVEInterference& VEInterferences() ;


//! Returns the reference to arrray Of  V/V interferences <br>
Standard_EXPORT   BOPTools_CArray1OfVVInterference& VVInterferences() ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
NMTDS_MapOfPassKeyBoolean myTable[6];
NMTDS_ListOfPassKeyBoolean myList;
Standard_Integer myMaxInd;
BOPTools_CArray1OfSSInterference mySSInterferences;
BOPTools_CArray1OfESInterference myESInterferences;
BOPTools_CArray1OfVSInterference myVSInterferences;
BOPTools_CArray1OfEEInterference myEEInterferences;
BOPTools_CArray1OfVEInterference myVEInterferences;
BOPTools_CArray1OfVVInterference myVVInterferences;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
