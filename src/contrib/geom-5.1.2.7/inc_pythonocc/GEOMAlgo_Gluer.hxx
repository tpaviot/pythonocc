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
#ifndef _GEOMAlgo_Gluer_HeaderFile
#define _GEOMAlgo_Gluer_HeaderFile

#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeListOfShape_HeaderFile
#include <TopTools_DataMapOfShapeListOfShape.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeShape_HeaderFile
#include <TopTools_DataMapOfShapeShape.hxx>
#endif
#ifndef _Standard_Integer_HeaderFile
#include <Standard_Integer.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_MapOfShape_HeaderFile
#include <TopTools_MapOfShape.hxx>
#endif
#ifndef _GEOMAlgo_ShapeAlgo_HeaderFile
#include <GEOMAlgo_ShapeAlgo.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _TopoDS_Compound_HeaderFile
#include <TopoDS_Compound.hxx>
#endif
class TopTools_ListOfShape;
class TopoDS_Shape;
class TopoDS_Edge;
class GEOMAlgo_PassKeyShape;
class TopoDS_Face;
class TopoDS_Vertex;
class TopTools_DataMapOfShapeListOfShape;
class TopTools_DataMapOfShapeShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_Gluer  : public GEOMAlgo_ShapeAlgo {

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


Standard_EXPORT GEOMAlgo_Gluer();
Standard_EXPORT virtual ~GEOMAlgo_Gluer();


Standard_EXPORT   void SetCheckGeometry(const Standard_Boolean aFlag) ;


Standard_EXPORT   Standard_Boolean CheckGeometry() const;


Standard_EXPORT   void SetKeepNonSolids(const Standard_Boolean aFlag) ;


Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT   Standard_Integer AloneShapes() const;


Standard_EXPORT  const TopTools_ListOfShape& Modified(const TopoDS_Shape& S) ;


Standard_EXPORT  const TopTools_ListOfShape& Generated(const TopoDS_Shape& S) ;


Standard_EXPORT   Standard_Boolean IsDeleted(const TopoDS_Shape& S) ;


Standard_EXPORT  const TopTools_DataMapOfShapeListOfShape& Images() const;


Standard_EXPORT  const TopTools_DataMapOfShapeShape& Origins() const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT virtual  void CheckData() ;


Standard_EXPORT virtual  void CheckResult() ;


Standard_EXPORT   void MakeVertices() ;


Standard_EXPORT   void MakeEdges() ;


Standard_EXPORT   void MakeFaces() ;


Standard_EXPORT   void MakeShapes(const TopAbs_ShapeEnum aType) ;


Standard_EXPORT   void MakeShells() ;


Standard_EXPORT   void MakeSubShapes(const TopoDS_Shape& theShape,
                                     TopTools_MapOfShape& theMS,
                                     TopoDS_Compound& theResult);


Standard_EXPORT   void MakeSolids() ;


Standard_EXPORT   void InnerTolerance() ;


Standard_EXPORT   void EdgePassKey(const TopoDS_Edge& aE,GEOMAlgo_PassKeyShape& aPK) ;


Standard_EXPORT   void FacePassKey(const TopoDS_Face& aF,GEOMAlgo_PassKeyShape& aPK) ;


Standard_EXPORT   void MakeVertex(const TopTools_ListOfShape& aLV,TopoDS_Vertex& aNewV) ;


Standard_EXPORT   void MakeEdge(const TopoDS_Edge& aEdge,TopoDS_Edge& aNewEdge) ;


Standard_EXPORT   void MakeFace(const TopoDS_Face& aFace,TopoDS_Face& aNewEdge) ;


Standard_EXPORT   Standard_Boolean IsToReverse(const TopoDS_Face& aFR,const TopoDS_Face& aF) ;


Standard_EXPORT   Standard_Boolean HasNewSubShape(const TopoDS_Shape& aS) const;


 // Fields PROTECTED
 //
Standard_Boolean myCheckGeometry;
Standard_Boolean myKeepNonSolids;
Standard_Real myTol;
TopTools_DataMapOfShapeListOfShape myImages;
TopTools_DataMapOfShapeShape myOrigins;
Standard_Integer myNbAlone;
TopTools_ListOfShape myGenerated;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
