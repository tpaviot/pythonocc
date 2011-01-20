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
//  File   : Partition_Inter2d.hxx
//  Module : GEOM

#ifndef _Partition_Inter2d_HeaderFile
#define _Partition_Inter2d_HeaderFile

#ifndef _Handle_BRepAlgo_AsDes_HeaderFile
#include <Handle_BRepAlgo_AsDes.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
class BRepAlgo_AsDes;
class TopoDS_Face;
class TopTools_MapOfShape;
class TopoDS_Vertex;
class TopTools_ListOfShape;
class TopoDS_Edge;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//!Computes the intersections between edges on a face
//!stores result is SD as AsDes from BRepAlgo.
class Partition_Inter2d  {

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

//!Computes the intersections between the edges stored
//!is AsDes as descendants of <F> . Intersections is computed
//!between two edges if one of them is bound in NewEdges.
Standard_EXPORT static  void CompletPart2d(const Handle(BRepAlgo_AsDes)& AsDes,const TopoDS_Face& F,const TopTools_MapOfShape& NewEdges) ;

//!Returns a vertex  from  <VertList> having parameter on
//!<E> most close  to  <f>  or  <l>.  <First>  is True if
//!found vertex is closer  to <f>. <DU> returns parameter
//!difference.
Standard_EXPORT static  TopoDS_Vertex FindEndVertex(const TopTools_ListOfShape& VertList,const Standard_Real f,const Standard_Real l,const TopoDS_Edge& E,Standard_Boolean& First,Standard_Real& DU) ;


/**		   Put V in AsDes as intersection of E1 and E2.
*          Check that vertex equal to V already exists on one
*          of edges, in  such  a  case,  V  is  not added but
*          existing vertex is updated to  be on E1 and E2 and
*          is returned insead of V.
*          Optional F is a face  E1  and  E2  are on. If F is
*          provided, it is used  to  find  new vertices on E1
*          and E2 resulting from intersection of new edges on
*          the two  other  faces  the  F  interferes with and
*          through which E1 and  E2  pass  too. This helps to
*          avoid small edges.*/
Standard_EXPORT static  TopoDS_Vertex AddVonE(const TopoDS_Vertex& V,const TopoDS_Edge& E1,const TopoDS_Edge& E2,const Handle(BRepAlgo_AsDes)& AsDes,const TopoDS_Face& F) ;

//!Returns  tolerance  theV   must   have  atfer  its
//!addition to theE with  theU parameter. theAsDes is used to find pcurves of theE
Standard_EXPORT static  Standard_Real GetTolerance(const TopoDS_Vertex& theV,const Standard_Real theU,const TopoDS_Edge& theE,const Handle(BRepAlgo_AsDes)& theAsDes) ;


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
