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
#ifndef _NMTTools_Tools_HeaderFile
#define _NMTTools_Tools_HeaderFile

#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Handle_Geom2d_Curve_HeaderFile
#include <Handle_Geom2d_Curve.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
class TopTools_ListOfShape;
class TopoDS_Vertex;
class BOPTools_CArray1OfVVInterference;
class BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger;
class BOPTools_CArray1OfSSInterference;
class TopoDS_Edge;
class TopoDS_Face;
class IntTools_Context;
class NMTTools_ListOfCoupleOfShape;
class NMTTools_IndexedDataMapOfShapeIndexedMapOfShape;
class Geom2d_Curve;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class NMTTools_Tools  {

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


Standard_EXPORT static  void MakeNewVertex(const TopTools_ListOfShape& aLV,TopoDS_Vertex& aNewVertex) ;


Standard_EXPORT static  void FindChains(const BOPTools_CArray1OfVVInterference& aVVs,BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;


Standard_EXPORT static  void FindChains(const BOPTools_CArray1OfSSInterference& aVVs,BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;


Standard_EXPORT static  void FindChains(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCV,BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger& aMCX) ;


Standard_EXPORT static  Standard_Boolean IsSplitInOnFace(const TopoDS_Edge& aE,const TopoDS_Face& aF,IntTools_Context& aCtx) ;


Standard_EXPORT static  Standard_Boolean AreFacesSameDomain(const TopoDS_Face& aF1,const TopoDS_Face& aF2,IntTools_Context& aCtx) ;


Standard_EXPORT static  void FindChains(const NMTTools_ListOfCoupleOfShape& aLCS,NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM) ;


Standard_EXPORT static  void FindChains(const NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM1,NMTTools_IndexedDataMapOfShapeIndexedMapOfShape& aM2) ;


Standard_EXPORT static  void MakePCurve(const TopoDS_Edge& aE,const TopoDS_Face& aF,const Handle(Geom2d_Curve)& aC2D) ;


Standard_EXPORT static  void UpdateEdge(const TopoDS_Edge& aE,const Standard_Real aTol) ;





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


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
