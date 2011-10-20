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
#ifndef _NMTTools_DEProcessor_HeaderFile
#define _NMTTools_DEProcessor_HeaderFile

#ifndef _NMTTools_PPaveFiller_HeaderFile
#include <NMTTools_PPaveFiller.hxx>
#endif
#ifndef _NMTDS_PShapesDataStructure_HeaderFile
#include <NMTDS_PShapesDataStructure.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _BOPTools_IndexedDataMapOfIntegerDEInfo_HeaderFile
#include <BOPTools_IndexedDataMapOfIntegerDEInfo.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
class NMTTools_PaveFiller;
class BOPTools_ListOfPaveBlock;
class TopoDS_Edge;
class TopoDS_Face;
class TopoDS_Vertex;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


//! <br>
//!  The  Algorithm to compute and store in interferences' pool <br>
//! and in the Data  Structure  the following values <br>
//! for degenerated edges <br>
//!         1.  Paves/Pave set(s) <br>
//!         2.  Split parts <br>
//!         3.  States (3D) for split parts <br>
//! <br>
class NMTTools_DEProcessor  {

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


//! Constructor <br>
//! <br>
//! Constructor <br>
//! <br>
Standard_EXPORT NMTTools_DEProcessor(NMTTools_PaveFiller& aFiller);


//! Launches the processor <br>
Standard_EXPORT   void Do() ;


//! Returns TRUE if it is Ok <br>
Standard_EXPORT   Standard_Boolean IsDone() const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT   void FindDegeneratedEdges() ;


Standard_EXPORT   void DoPaves() ;


Standard_EXPORT   void FindPaveBlocks(const Standard_Integer nED,const Standard_Integer nVD,const Standard_Integer nFD,BOPTools_ListOfPaveBlock& aLPB) ;


Standard_EXPORT   void FillPaveSet(const Standard_Integer nED,const Standard_Integer nVD,const Standard_Integer nFD,const BOPTools_ListOfPaveBlock& aLPB) ;


Standard_EXPORT   void FillSplitEdgesPool(const Standard_Integer nED) ;


Standard_EXPORT   void MakeSplitEdges(const Standard_Integer nED,const Standard_Integer nFD) ;


Standard_EXPORT   void MakeSplitEdge(const TopoDS_Edge& aS1,const TopoDS_Face& aF,const TopoDS_Vertex& aV1,const Standard_Real aP1,const TopoDS_Vertex& aV2,const Standard_Real aP2,TopoDS_Edge& aNewEdge) ;


 // Fields PROTECTED
 //
NMTTools_PPaveFiller myFiller;
NMTDS_PShapesDataStructure myDS;
Standard_Boolean myIsDone;
BOPTools_IndexedDataMapOfIntegerDEInfo myDEMap;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
