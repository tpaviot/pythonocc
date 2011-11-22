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
#ifndef _GEOMAlgo_WireSplitter_HeaderFile
#define _GEOMAlgo_WireSplitter_HeaderFile

#ifndef _TopoDS_Face_HeaderFile
#include <TopoDS_Face.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _BOPTColStd_ListOfListOfShape_HeaderFile
#include <BOPTColStd_ListOfListOfShape.hxx>
#endif
#ifndef _BOP_IndexedDataMapOfVertexListEdgeInfo_HeaderFile
#include <BOP_IndexedDataMapOfVertexListEdgeInfo.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class TopoDS_Face;
class TopTools_ListOfShape;
class BOPTColStd_ListOfListOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


//!  the algorithm to split multiconnexed set of edges <br>
//!  wires on a face onto simple connexed wires <br>
//!  . <br>
class GEOMAlgo_WireSplitter  : public GEOMAlgo_Algo {

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


Standard_EXPORT GEOMAlgo_WireSplitter();
Standard_EXPORT virtual ~GEOMAlgo_WireSplitter();


Standard_EXPORT   void SetFace(const TopoDS_Face& aF) ;


Standard_EXPORT   void SetEdges(const TopTools_ListOfShape& aLE) ;


Standard_EXPORT  const TopTools_ListOfShape& Edges() const;


Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT   Standard_Boolean IsNothingToDo() const;


Standard_EXPORT  const TopoDS_Face& Face() const;


Standard_EXPORT  const BOPTColStd_ListOfListOfShape& Shapes() const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //
TopoDS_Face myFace;
Standard_Boolean myIsDone;
Standard_Boolean myNothingToDo;
BOPTColStd_ListOfListOfShape myShapes;
BOP_IndexedDataMapOfVertexListEdgeInfo mySmartMap;
TopTools_ListOfShape myEdges;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
