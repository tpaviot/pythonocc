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
#ifndef _GEOMAlgo_WESCorrector_HeaderFile
#define _GEOMAlgo_WESCorrector_HeaderFile

#ifndef _GEOMAlgo_PWireEdgeSet_HeaderFile
#include <GEOMAlgo_PWireEdgeSet.hxx>
#endif
#ifndef _GEOMAlgo_WireEdgeSet_HeaderFile
#include <GEOMAlgo_WireEdgeSet.hxx>
#endif
#ifndef _BOP_ListOfConnexityBlock_HeaderFile
#include <BOP_ListOfConnexityBlock.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class GEOMAlgo_WireEdgeSet;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


//!  The algorithm to change the Wire Edges Set (WES) contents. <br>
//!   The NewWES will contain only wires instead of wires and edges. <br>
class GEOMAlgo_WESCorrector  : public GEOMAlgo_Algo {

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


//! Empty constructor; <br>
//! <br>
Standard_EXPORT GEOMAlgo_WESCorrector();
Standard_EXPORT virtual ~GEOMAlgo_WESCorrector();


//! Modifier <br>
Standard_EXPORT   void SetWES(const GEOMAlgo_WireEdgeSet& aWES) ;


//! Performs the algorithm that  consists  of  two  steps <br>
//! 1. Make conexity blocks (  DoConnexityBlocks()  ) <br>
//! 2. Make corrections     (  DoCorrections()  ) <br>
Standard_EXPORT virtual  void Perform() ;


//! Selector <br>
Standard_EXPORT   GEOMAlgo_WireEdgeSet& WES() ;


//! Selector <br>
Standard_EXPORT   GEOMAlgo_WireEdgeSet& NewWES() ;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT   void DoConnexityBlocks() ;


Standard_EXPORT   void DoCorrections() ;


 // Fields PROTECTED
 //
GEOMAlgo_PWireEdgeSet myWES;
GEOMAlgo_WireEdgeSet myNewWES;
BOP_ListOfConnexityBlock myConnexityBlocks;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
