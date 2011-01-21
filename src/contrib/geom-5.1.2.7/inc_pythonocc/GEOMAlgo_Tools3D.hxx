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
#ifndef _GEOMAlgo_Tools3D_HeaderFile
#define _GEOMAlgo_Tools3D_HeaderFile

#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _TopAbs_State_HeaderFile
#include <TopAbs_State.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
class TopoDS_Shape;
class IntTools_Context;
class TopoDS_Face;
class TopoDS_Edge;
class TopTools_ListOfShape;
class TopTools_IndexedMapOfShape;
class TopoDS_Solid;
class gp_Pnt;
class TopoDS_Vertex;
class TopTools_IndexedDataMapOfShapeListOfShape;
class NMTTools_ListOfCoupleOfShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//!  Auxiliary tools for Algorithms <br>
class GEOMAlgo_Tools3D  {

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

//! Returns True if the shape theSplit has opposite <br>
//!          direction than theShape <br>
//!          theContext - cashed geometrical tools <br>
Standard_EXPORT static  Standard_Boolean IsSplitToReverse(const TopoDS_Shape& theSplit,const TopoDS_Shape& theShape,IntTools_Context& theContext) ;

//! Returns True if normal direction of the face <br>
//!          theShape is not the same as for the face <br>
//!          theSplit <br>
//!          theContext - cashed geometrical tools <br>
Standard_EXPORT static  Standard_Boolean IsSplitToReverse(const TopoDS_Face& theSplit,const TopoDS_Face& theShape,IntTools_Context& theContext) ;

//! Returns True if tangent direction of the edge <br>
//!          theEdge is not the same as for the edge <br>
//!          theSplit <br>
//!          theContext - cashed geometrical tools <br>
Standard_EXPORT static  Standard_Boolean IsSplitToReverse(const TopoDS_Edge& theEdge,const TopoDS_Edge& theSplit,IntTools_Context& theContext) ;

//! For the couple of faces theF1, theF2 <br>
//!          computes sense value <br>
//!          Returns 0 if the faces are not sensible <br>
//!          Returns 1 if the faces have same sense <br>
//!          Returns 2 if the faces have opposite sense <br>
Standard_EXPORT static  Standard_Integer Sense(const TopoDS_Face& theF1,const TopoDS_Face& theF2) ;

//! Makes new face theF2 from surface and wires <br>
//!          of the face theF1 <br>
Standard_EXPORT static  void CopyFace(const TopoDS_Face& theF1,TopoDS_Face& theF2) ;

//! Makes empty shape theShape of the type theType <br>
Standard_EXPORT static  void MakeContainer(const TopAbs_ShapeEnum theType,TopoDS_Shape& theShape) ;

//! For the list of faces theLS build block <br>
//!          theLSCB in terms of connexity by edges <br>
//!          theMapAvoid - set of edges to avoid for <br>
//!          the treatment <br>
Standard_EXPORT static  void MakeConnexityBlock(const TopTools_ListOfShape& theLS,const TopTools_IndexedMapOfShape& theMapAvoid,TopTools_ListOfShape& theLSCB) ;

//! Computes the 3-D state of the shape theShape <br>
//!          toward solid theSolid. <br>
//!          theTol - value of precision of computation <br>
//!          theContext- cahed geometrical tools <br>
//!          Returns 3-D state. <br>
Standard_EXPORT static  TopAbs_State ComputeStateByOnePoint(const TopoDS_Shape& theShape,const TopoDS_Solid& theSolid,const Standard_Real theTol,IntTools_Context& theContext) ;

//! Computes the 3-D state of the point thePoint <br>
//!          toward solid theSolid. <br>
//!          theTol - value of precision of computation <br>
//!          theContext- cahed geometrical tools <br>
//!          Returns 3-D state. <br>
Standard_EXPORT static  TopAbs_State ComputeState(const gp_Pnt& thePoint,const TopoDS_Solid& theSolid,const Standard_Real theTol,IntTools_Context& theContext) ;

//! Computes the 3-D state of the vertex theVertex <br>
//!          toward solid theSolid. <br>
//!          theTol - value of precision of computation <br>
//!          theContext- cahed geometrical tools <br>
//!          Returns 3-D state. <br>
Standard_EXPORT static  TopAbs_State ComputeState(const TopoDS_Vertex& theVertex,const TopoDS_Solid& theSolid,const Standard_Real theTol,IntTools_Context& theContext) ;

//! Computes the 3-D state of the edge theEdge <br>
//!          toward solid theSolid. <br>
//!          theTol - value of precision of computation <br>
//!          theContext- cahed geometrical tools <br>
//!          Returns 3-D state. <br>
Standard_EXPORT static  TopAbs_State ComputeState(const TopoDS_Edge& theEdge,const TopoDS_Solid& theSolid,const Standard_Real theTol,IntTools_Context& theContext) ;

//! Computes the 3-D state of the face theFace <br>
//!          toward solid theSolid. <br>
//!          theTol - value of precision of computation <br>
//!          theBounds - set of edges of theFace to avoid <br>
//!          theContext- cahed geometrical tools <br>
//!          Returns 3-D state. <br>
Standard_EXPORT static  TopAbs_State ComputeState(const TopoDS_Face& theFace,const TopoDS_Solid& theSolid,const Standard_Real theTol,const TopTools_IndexedMapOfShape& theBounds,IntTools_Context& theContext) ;

//! Returns True if the face theFace is inside of the <br>
//!          couple of faces theFace1, theFace2. <br>
//!          The faces theFace, theFace1, theFace2  must <br>
//!          share the edge theEdge <br>
Standard_EXPORT static  Standard_Boolean IsInternalFace(const TopoDS_Face& theFace,const TopoDS_Edge& theEdge,const TopoDS_Face& theFace1,const TopoDS_Face& theFace2) ;

//! Returns True if the face theFace is inside of the <br>
//!          appropriate couple of faces (from the set theLF)    . <br>
//!          The faces of the set theLF and theFace  must <br>
//!          share the edge theEdge <br>
Standard_EXPORT static  Standard_Boolean IsInternalFace(const TopoDS_Face& theFace,const TopoDS_Edge& theEdge,const TopTools_ListOfShape& theLF) ;

//! Returns True if the face theFace is inside the <br>
//!          solid theSolid. <br>
//!          theMEF - Map Edge/Faces for theSolid <br>
//!          theTol - value of precision of computation <br>
//!          theContext- cahed geometrical tools <br>
Standard_EXPORT static  Standard_Boolean IsInternalFace(const TopoDS_Face& theFace,const TopoDS_Solid& theSolid,const TopTools_IndexedDataMapOfShapeListOfShape& theMEF,const Standard_Real theTol,IntTools_Context& theContext) ;

//!  For the face theFace and its edge theEdge <br>
//!           finds the face suitable to produce shell. <br>
//!           theLCEF - set of faces to search. All faces <br>
//!           from theLCEF must share edge theEdge <br>
Standard_EXPORT static  void GetFaceOff(const TopoDS_Edge& theEdge,const TopoDS_Face& theFace,const NMTTools_ListOfCoupleOfShape& theLCEF,TopoDS_Face& theFaceOff) ;

//! For the face theFace gets the edge theEdgeOnF <br>
//!          that is the same as theEdge <br>
//!          Returns True if such edge exists <br>
//!          Returns False if there is no such edge <br>
Standard_EXPORT static  Standard_Boolean GetEdgeOnFace(const TopoDS_Edge& theEdge,const TopoDS_Face& theFace,TopoDS_Edge& theEdgeOnF) ;

//! Returns True if the face theFace contains <br>
//!          the edge theEdge but with opposite orientation. <br>
//!          If the method  returns True theEdgeOff is the <br>
//!          edge founded <br>
Standard_EXPORT static  Standard_Boolean GetEdgeOff(const TopoDS_Edge& theEdge,const TopoDS_Face& theFace,TopoDS_Edge& theEdgeOff) ;





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
