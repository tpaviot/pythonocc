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
//  File   : Partition_Loop2d.hxx
//  Module : GEOM

#ifndef _Partition_Loop2d_HeaderFile
#define _Partition_Loop2d_HeaderFile

#ifndef _TopoDS_Face_HeaderFile
#include <TopoDS_Face.hxx>
#endif
#ifndef _TopAbs_Orientation_HeaderFile
#include <TopAbs_Orientation.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
class TopoDS_Face;
class TopoDS_Edge;
class TopTools_ListOfShape;
class BRepAlgo_Image;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

/**Builds the loops from a set of edges on a face.
*It works in  supposition  that  all constant edges
*are split edges of  an initialization face and all
*section edges are new on the face*/
class Partition_Loop2d  {

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
Standard_EXPORT Partition_Loop2d();

//!Init with <F> the set of edges must have
Standard_EXPORT   void Init(const TopoDS_Face& F) ;

//!Add <E> as unique edge in the result.
Standard_EXPORT   void AddConstEdge(const TopoDS_Edge& E) ;

//!Add <E> as double edge in the result.
Standard_EXPORT   void AddSectionEdge(const TopoDS_Edge& E) ;

//!Make loops.
Standard_EXPORT   void Perform() ;

//!Returns the list of wires performed.can be an empty list.
Standard_EXPORT  const TopTools_ListOfShape& NewWires() const;

//!Build faces from the wires result.<EdgeImage> serves to  find  original edge by new one.
Standard_EXPORT   void WiresToFaces(const BRepAlgo_Image& EdgeImage) ;

//!Returns the list of faces.Warning: The method <WiresToFaces> as to be called before.can be an empty list.
Standard_EXPORT  const TopTools_ListOfShape& NewFaces() const;



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
TopoDS_Face myFace;
TopAbs_Orientation myFaceOri;
TopTools_ListOfShape myConstEdges;
TopTools_ListOfShape myNewWires;
TopTools_ListOfShape myNewFaces;
TopTools_ListOfShape myInternalWL;
TopTools_MapOfShape mySectionEdges;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
