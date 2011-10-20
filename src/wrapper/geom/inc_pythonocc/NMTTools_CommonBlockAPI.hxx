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
#ifndef _NMTTools_CommonBlockAPI_HeaderFile
#define _NMTTools_CommonBlockAPI_HeaderFile

#ifndef _Standard_Address_HeaderFile
#include <Standard_Address.hxx>
#endif
#ifndef _BOPTools_ListOfPaveBlock_HeaderFile
#include <BOPTools_ListOfPaveBlock.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class NMTTools_ListOfCommonBlock;
class BOPTools_ListOfPaveBlock;
class BOPTools_PaveBlock;
class NMTTools_CommonBlock;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_CommonBlockAPI  {

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


Standard_EXPORT NMTTools_CommonBlockAPI(const NMTTools_ListOfCommonBlock& aList);


//! Selector <br>
Standard_EXPORT  const NMTTools_ListOfCommonBlock& List() const;


//! Returns all PaveBlock-s (from the list) that are <br>
//! common for the given edge with  DS-index <anE> <br>
Standard_EXPORT  const BOPTools_ListOfPaveBlock& CommonPaveBlocks(const Standard_Integer anE) const;


//! Returns TRUE if given PaveBlock <aPB> is <br>
//! common for the Blocks from the list <br>
Standard_EXPORT   Standard_Boolean IsCommonBlock(const BOPTools_PaveBlock& aPB) const;


Standard_EXPORT   NMTTools_CommonBlock& CommonBlock(const BOPTools_PaveBlock& aPB) const;





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
Standard_Address myListOfCommonBlock;
BOPTools_ListOfPaveBlock myListOfPaveBlock;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
