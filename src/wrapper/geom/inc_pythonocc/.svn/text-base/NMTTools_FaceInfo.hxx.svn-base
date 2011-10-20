// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

#ifndef _NMTTools_FaceInfo_HeaderFile
#define _NMTTools_FaceInfo_HeaderFile

#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _NMTTools_MapOfPaveBlock_HeaderFile
#include <NMTTools_MapOfPaveBlock.hxx>
#endif
#ifndef _TColStd_MapOfInteger_HeaderFile
#include <TColStd_MapOfInteger.hxx>
#endif
class NMTTools_MapOfPaveBlock;
class TColStd_MapOfInteger;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_FaceInfo  {

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

//! Empty contructor <br>
//! <br>
NMTTools_FaceInfo();
virtual ~NMTTools_FaceInfo();


//!  Clears the contents <br>
Standard_EXPORT   void Clear() ;

//! Modifier <br>
//! Sets the index of the face <theI> <br>
  void SetIndex(const Standard_Integer theI) ;

//! Selector <br>
//! Returns the index of the face <br>
//! <br>
//! In <br>
//! <br>
  Standard_Integer Index() const;

//! Selector <br>
//! Returns the pave blocks of the face <br>
//! that  have state In <br>
 const NMTTools_MapOfPaveBlock& PaveBlocksIn() const;

//! Selector/Modifier <br>
//! Returns the pave blocks <br>
//!  of the face <br>
//! that  have state In <br>
  NMTTools_MapOfPaveBlock& ChangePaveBlocksIn() ;

//! Selector <br>
//! Returns the list of indices for vertices <br>
//!  of the face <br>
//! that have state In <br>
 const TColStd_MapOfInteger& VerticesIn() const;

//! Selector/Modifier <br>
//! Returns the list of indices for vertices <br>
//!  of the face <br>
//! that have state In <br>
//! <br>
//! On <br>
//! <br>
  TColStd_MapOfInteger& ChangeVerticesIn() ;

//! Selector <br>
//! Returns the pave blocks of the face <br>
//! that  have state On <br>
 const NMTTools_MapOfPaveBlock& PaveBlocksOn() const;

//! Selector/Modifier <br>
//! Returns the pave blocks <br>
//!  of the face <br>
//! that  have state On <br>
  NMTTools_MapOfPaveBlock& ChangePaveBlocksOn() ;

//! Selector <br>
//! Returns the list of indices for vertices <br>
//!  of the face <br>
//! that have state On <br>
 const TColStd_MapOfInteger& VerticesOn() const;

//! Selector/Modifier <br>
//! Returns the list of indices for vertices <br>
//!  of the face <br>
//! that have state On <br>
  TColStd_MapOfInteger& ChangeVerticesOn() ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
Standard_Integer myIndex;
NMTTools_MapOfPaveBlock myPaveBlocksIn;
TColStd_MapOfInteger myVerticesIn;
NMTTools_MapOfPaveBlock myPaveBlocksOn;
TColStd_MapOfInteger myVerticesOn;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};


#include <NMTTools_FaceInfo.lxx>



// other Inline functions and methods (like "C++: function call" methods)
//


#endif
