//  Copyright (C) 2007-2010  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef _GEOMAlgo_WESScaler_HeaderFile
#define _GEOMAlgo_WESScaler_HeaderFile

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _TopoDS_Face_HeaderFile
#include <TopoDS_Face.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _GEOMAlgo_DataMapOfOrientedShapeShape_HeaderFile
#include <GEOMAlgo_DataMapOfOrientedShapeShape.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class TopoDS_Face;
class TopTools_ListOfShape;
class TopoDS_Shape;
class GEOMAlgo_DataMapOfOrientedShapeShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_WESScaler  : public GEOMAlgo_Algo {

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

//! Empty constructor <br>
Standard_EXPORT GEOMAlgo_WESScaler();
Standard_EXPORT virtual ~GEOMAlgo_WESScaler();


//! Modifier <br>
Standard_EXPORT   void SetScale(const Standard_Real aWES) ;


//! Selector <br>
Standard_EXPORT   Standard_Real Scale() const;


Standard_EXPORT   void SetFace(const TopoDS_Face& aF) ;


Standard_EXPORT  const TopoDS_Face& Face() const;


Standard_EXPORT   void SetEdges(const TopTools_ListOfShape& aLE) ;


Standard_EXPORT  const TopTools_ListOfShape& Edges() const;

//!  Performs the algorithm <br>
Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT  const TopoDS_Face& FaceScaled() const;


Standard_EXPORT  const TopTools_ListOfShape& EdgesScaled() const;


Standard_EXPORT  const TopoDS_Shape& Image(const TopoDS_Shape& aS) const;


Standard_EXPORT  const TopoDS_Shape& Origin(const TopoDS_Shape& aS) const;


//! Selector <br>
Standard_EXPORT  const GEOMAlgo_DataMapOfOrientedShapeShape& Images() const;


//! Selector <br>
Standard_EXPORT  const GEOMAlgo_DataMapOfOrientedShapeShape& Origins() const;





protected:

 // Methods PROTECTED
 // 

//!  Performs the algorithm <br>
Standard_EXPORT virtual  void CheckData() ;


 // Fields PROTECTED
 //
Standard_Real myScale;
TopoDS_Face myFace;
TopTools_ListOfShape myEdges;
TopoDS_Face myFaceScaled;
TopTools_ListOfShape myEdgesScaled;
GEOMAlgo_DataMapOfOrientedShapeShape myImages;
GEOMAlgo_DataMapOfOrientedShapeShape myOrigins;
TopoDS_Shape myShapeTmp;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
