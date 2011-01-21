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
//  File   : Partition_Loop3d.hxx
//  Module : GEOM

#ifndef _Partition_Loop3d_HeaderFile
#define _Partition_Loop3d_HeaderFile

#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_IndexedDataMapOfShapeListOfShape_HeaderFile
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
class TopoDS_Shape;
class TopTools_ListOfShape;
class TopTools_MapOfOrientedShape;
class TopoDS_Edge;
class TopoDS_Face;
class gp_Vec;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

//!Builds the shells from a set of faces.Provides  methods   for   comparing  faces  mutual location.
class Partition_Loop3d  {

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
Standard_EXPORT Partition_Loop3d();

//!Add faces of <S> as unique faces in the result.
Standard_EXPORT   void AddConstFaces(const TopoDS_Shape& S) ;

//!Add faces of <S> as double faces in the result.
Standard_EXPORT   void AddSectionFaces(const TopoDS_Shape& S) ;

//!Make and return shells.<AvoidFacesMap> can contain faces that must not be added to result shells.
Standard_EXPORT  const TopTools_ListOfShape& MakeShells(const TopTools_MapOfOrientedShape& AvoidFacesMap) ;

/**check if <F2> is inside <F1> by edge <E>.if <CountDot>,
*compute <Dot>: scalar production of
*normalized  vectors  pointing  inside  faces,  and
*check if faces are oriented well for sewing*/
Standard_EXPORT static  Standard_Boolean IsInside(const TopoDS_Edge& E,const TopoDS_Face& F1,const TopoDS_Face& F2,const Standard_Boolean CountDot,Standard_Real& Dot,Standard_Boolean& GoodOri) ;

Standard_EXPORT static  gp_Vec Normal(const TopoDS_Edge& E,const TopoDS_Face& F) ;





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
TopTools_ListOfShape myNewShells;
TopTools_ListOfShape myFaces;
TopTools_IndexedDataMapOfShapeListOfShape myEFMap;


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
