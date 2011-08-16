//  GEOM PARTITION : partition algorithm
//
//  Copyright (C) 2003  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
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
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
//
//
//  File   : Partition_Inter3d.hxx
//  Module : GEOM

#ifndef _Partition_Inter3d_HeaderFile
#define _Partition_Inter3d_HeaderFile

#ifndef _Handle_BRepAlgo_AsDes_HeaderFile
#include <Handle_BRepAlgo_AsDes.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeListOfShape_HeaderFile
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeShape_HeaderFile
#include <TopTools_DataMapOfShapeShape.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class BRepAlgo_AsDes;
class TopTools_ListOfShape;
class TopTools_DataMapOfShapeShape;
class TopoDS_Face;
class TopTools_MapOfShape;
class TopoDS_Shape;
class TopoDS_Vertex;
class TopoDS_Edge;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//!Computes the intersection face face in a set of faces
//!Store the result in a SD as AsDes.
class Partition_Inter3d  {

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
Standard_EXPORT Partition_Inter3d();
Standard_EXPORT Partition_Inter3d(const Handle(BRepAlgo_AsDes)& AsDes);
Standard_EXPORT   void CompletPart3d(const TopTools_ListOfShape& SetOfFaces1,const TopTools_DataMapOfShapeShape& FaceShapeMap) ;
Standard_EXPORT   void FacesPartition(const TopoDS_Face& F1,const TopoDS_Face& F2) ;

//!return True if F1-F2 pair has been processed
Standard_EXPORT   Standard_Boolean IsDone(const TopoDS_Face& F1,const TopoDS_Face& F2) const;

//!return map of faces cut by new or section edges
Standard_EXPORT   TopTools_MapOfShape& TouchedFaces() ;

Standard_EXPORT   Handle_BRepAlgo_AsDes AsDes() const;

//!return new and section edges
Standard_EXPORT   TopTools_MapOfShape& NewEdges() ;

//!Return true if F has same domain faces
Standard_EXPORT   Standard_Boolean HasSameDomainF(const TopoDS_Shape& F) const;

//!Return true if F1 and F2 are same domain faces
Standard_EXPORT   Standard_Boolean IsSameDomainF(const TopoDS_Shape& F1,const TopoDS_Shape& F2) const;

//!Return same domain faces of F
Standard_EXPORT  const TopTools_ListOfShape& SameDomain(const TopoDS_Face& F) const;

//!return same domain vertex of  V if it was replaced and make this vertex to be on E too, else return V
Standard_EXPORT   TopoDS_Vertex ReplaceSameDomainV(const TopoDS_Vertex& V,const TopoDS_Edge& E) const;

/**return an object containing info about
*   Ascendants     | Descendants
*------------------+---------------------
*1. faces          | edges cutting them
*2. sectoin edges  | new vertices on them*/
Standard_EXPORT   Handle_BRepAlgo_AsDes SectionEdgesAD() const;

//!return True if E is an edge of an initial face and E intersects aother face
Standard_EXPORT   Standard_Boolean IsSectionEdge(const TopoDS_Edge& E) const;

//!return True if  F  is  intersected  by  an edge of other face
Standard_EXPORT   Standard_Boolean HasSectionEdge(const TopoDS_Face& F) const;

//!return True if NewE is split of OldE on F no check if NewE is split of OldE :)
Standard_EXPORT   Standard_Boolean IsSplitOn(const TopoDS_Edge& NewE,const TopoDS_Edge& OldE,const TopoDS_Face& F) const;

//!return faces cut by section edge
Standard_EXPORT  const TopTools_ListOfShape& SectionEdgeFaces(const TopoDS_Edge& SecE) const;





protected:

 // Methods PROTECTED
 // 


 // Fields PROTECTED
 //


private: 

 // Methods PRIVATE
 // 
Standard_EXPORT   void Inter3D(const TopoDS_Face& F1,const TopoDS_Face& F2,TopTools_ListOfShape& LInt) ;
Standard_EXPORT   void StorePart3d(const TopoDS_Face& F1,const TopoDS_Face& F2,const TopTools_ListOfShape& LInt1) ;
Standard_EXPORT   void SetDone(const TopoDS_Face& F1,const TopoDS_Face& F2) ;
Standard_EXPORT   void Affiche(const TopTools_ListOfShape& SetOfFaces) const;


 // Fields PRIVATE
 //
Handle_BRepAlgo_AsDes myAsDes;
TopTools_DataMapOfShapeListOfShape myDone;
TopTools_MapOfShape myTouched;
TopTools_MapOfShape myNewEdges;
Handle_BRepAlgo_AsDes mySectionEdgesAD;
TopTools_DataMapOfShapeListOfShape mySameDomainFM;
TopTools_DataMapOfShapeShape mySameDomainVM;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
