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
#ifndef _GEOMAlgo_ShapeInfoFiller_HeaderFile
#define _GEOMAlgo_ShapeInfoFiller_HeaderFile

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _GEOMAlgo_ShapeInfo_HeaderFile
#include <GEOMAlgo_ShapeInfo.hxx>
#endif
#ifndef _GEOMAlgo_IndexedDataMapOfShapeShapeInfo_HeaderFile
#include <GEOMAlgo_IndexedDataMapOfShapeShapeInfo.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class TopoDS_Shape;
class GEOMAlgo_ShapeInfo;
class TopoDS_Face;
class gp_Pln;
class gp_Sphere;
class gp_Cylinder;
class gp_Cone;
class gp_Torus;
class TopoDS_Solid;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_ShapeInfoFiller  : public GEOMAlgo_Algo {

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


Standard_EXPORT GEOMAlgo_ShapeInfoFiller();
Standard_EXPORT virtual ~GEOMAlgo_ShapeInfoFiller();


Standard_EXPORT   void SetShape(const TopoDS_Shape& aS) ;


Standard_EXPORT  const TopoDS_Shape& Shape() const;


Standard_EXPORT   void SetTolerance(const Standard_Real aT) ;


Standard_EXPORT   Standard_Real Tolerance() const;


Standard_EXPORT  const GEOMAlgo_ShapeInfo& Info() const;


Standard_EXPORT  const GEOMAlgo_ShapeInfo& Info(const TopoDS_Shape& aS) const;


Standard_EXPORT virtual  void Perform() ;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT virtual  void CheckData() ;


Standard_EXPORT   void FillNbSubShapes(const TopoDS_Shape& aS,GEOMAlgo_ShapeInfo& aInfo) ;


Standard_EXPORT   void FillSubShapes(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillShape(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillVertex(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillEdge(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillFace(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillSolid(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillContainer(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FillDetails(const TopoDS_Face& aF,const gp_Pln& aPln) ;


Standard_EXPORT   void FillDetails(const TopoDS_Face& aF,const gp_Sphere& aSph) ;


Standard_EXPORT   void FillDetails(const TopoDS_Face& aF,const gp_Cylinder& aCyl) ;


Standard_EXPORT   void FillDetails(const TopoDS_Face& aF,const gp_Cone& aCone) ;


Standard_EXPORT   void FillDetails(const TopoDS_Face& aF,const gp_Torus& aTorus) ;


Standard_EXPORT   void FillDetails(const TopoDS_Solid& aS) ;


 // Fields PROTECTED
 //
TopoDS_Shape myShape;
GEOMAlgo_ShapeInfo myEmptyInfo;
GEOMAlgo_IndexedDataMapOfShapeShapeInfo myMapInfo;
Standard_Real myTolerance;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
