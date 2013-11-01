// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
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
//  GEOM PARTITION : partition algorithm
//
//  File   : Partition_Spliter.hxx
//  Module : GEOM

#ifndef _Partition_Spliter_HeaderFile
#define _Partition_Spliter_HeaderFile

#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _TopoDS_Compound_HeaderFile
#include <TopoDS_Compound.hxx>
#endif
#ifndef _BRep_Builder_HeaderFile
#include <BRep_Builder.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeShape_HeaderFile
#include <TopTools_DataMapOfShapeShape.hxx>
#endif
#ifndef _Handle_BRepAlgo_AsDes_HeaderFile
#include <Handle_BRepAlgo_AsDes.hxx>
#endif
#ifndef _BRepAlgo_Image_HeaderFile
#include <BRepAlgo_Image.hxx>
#endif
#ifndef _Partition_Inter3d_HeaderFile
#include "Partition_Inter3d.hxx"
#endif
#ifndef _TopTools_MapOfOrientedShape_HeaderFile
#include <TopTools_MapOfOrientedShape.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class BRepAlgo_AsDes;
class TopoDS_Shape;
class TopTools_ListOfShape;
class TopoDS_Edge;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


//!Split solids, shells and  faces  into parts of the same  topology
//!if  reconstruction  level  is  not limited
class Partition_Spliter  {

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

//!constructor
Standard_EXPORT Partition_Spliter();

/** add object Shape to be splitted. If S  is  a  COMPOUND  or  COMPSOLID,  it  will be
* 	exploded  in  order  to  get  more  simple  object shapes. Object shapes that  are
* 	vertices,  edges or wires won't be splitted and won't be in a result. */
Standard_EXPORT   void AddShape(const TopoDS_Shape& S) ;

//!add cutting tool
Standard_EXPORT   void AddTool(const TopoDS_Shape& S) ;

/**	produce a result which  is  a compound of parts of object shapes.  A  part  can
*	be  either a vertex, edge, wire, face, shell or solid. By default, a part is  of
*	the same topology as an object  shape,   else   <Limit>   restricts  parts
*	reconstruction.If <Limit> == TopAbs_VERTEX, only new vertices are returned in the result*/
Standard_EXPORT   void Compute(const TopAbs_ShapeEnum Limit = TopAbs_SHAPE) ;

//!remove shapes that are outside of S from result. S should be an object shape.Warning: call it after Compute()
Standard_EXPORT   void KeepShapesInside(const TopoDS_Shape& S) ;

//!remove shapes that are inside S from result.S should be an object shape.Warning: call it after Compute()
Standard_EXPORT   void RemoveShapesInside(const TopoDS_Shape& S) ;

//!return resulting compound
Standard_EXPORT   TopoDS_Shape Shape() const;

//!clear fields
Standard_EXPORT   void Clear() ;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 //

//!make solids out of Shells
Standard_EXPORT   void MakeSolids(const TopoDS_Shape& Solid,TopTools_ListOfShape& Shells) ;

//!split S into shells
Standard_EXPORT   void MakeShells(const TopoDS_Shape& S,TopTools_ListOfShape& NS) ;

//!split faces of S, return compound of new faces
Standard_EXPORT   TopoDS_Shape MakeFaces(const TopoDS_Shape& S) ;

//!cut E by vertices  VOnE,  return list of new edges NE
Standard_EXPORT   void MakeEdges(const TopoDS_Edge& E,const TopTools_ListOfShape& VOnE,TopTools_ListOfShape& NE) const;

/**	return compound of faces  of other shapes that are inside <S>. <S>  must  have
*	image in myImageShape.<CheckClosed> makes avoid faces that do not form a closed shell
*	<All> makes return already added faces*/
Standard_EXPORT   TopoDS_Shape FindFacesInside(const TopoDS_Shape& S,const Standard_Boolean CheckClosed = Standard_False,const Standard_Boolean All = Standard_False) ;

//!Return True if <S>  is  a tool shape. Prepare tool faces of <S> for the search of internal faces.
Standard_EXPORT   Standard_Boolean CheckTool(const TopoDS_Shape& S) ;

//!among LE, find  equal  edges,  choose ones to keep and make them have
//!pcurves  on all faces they are shared by <LE> contains edge splits
Standard_EXPORT   void MergeEqualEdges(const TopTools_ListOfShape& LE) ;

//!Return True if the first vertex of S1 inside S2.If S1.IsNull(), check infinite point against S2.
Standard_EXPORT static  Standard_Boolean IsInside(const TopoDS_Shape& S1,const TopoDS_Shape& S2) ;

//!Return the  shape  aShape  originates from. aShape should be a face or more complex result shape
Standard_EXPORT   TopoDS_Shape GetOriginalShape(const TopoDS_Shape& aShape) const;

//!find and store  as  objects  tools which interfere with  solids
//!or   are   inside   solids  without an interference
Standard_EXPORT   void FindToolsToReconstruct() ;


 // Fields PRIVATE
 //
TopAbs_ShapeEnum myDoneStep;
TopoDS_Compound myShape;
BRep_Builder myBuilder;
TopTools_ListOfShape myListShapes;
TopTools_MapOfShape myMapFaces;
TopTools_MapOfShape myMapTools;
TopTools_MapOfShape myEqualEdges;
TopTools_MapOfShape myNewSection;
TopTools_MapOfShape myClosedShapes;
TopTools_MapOfShape mySharedFaces;
TopTools_MapOfShape myWrappingSolid;
TopTools_DataMapOfShapeShape myFaceShapeMap;
TopTools_DataMapOfShapeShape myInternalFaces;
TopTools_DataMapOfShapeShape myIntNotClFaces;
Handle_BRepAlgo_AsDes myAsDes;
BRepAlgo_Image myImagesFaces;
BRepAlgo_Image myImagesEdges;
BRepAlgo_Image myImageShape;
Partition_Inter3d myInter3d;
TopTools_MapOfOrientedShape myAddedFacesMap;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
