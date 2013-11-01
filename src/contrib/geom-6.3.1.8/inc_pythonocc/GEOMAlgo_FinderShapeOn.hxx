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
#ifndef _GEOMAlgo_FinderShapeOn_HeaderFile
#define _GEOMAlgo_FinderShapeOn_HeaderFile

#ifndef _Handle_Geom_Surface_HeaderFile
#include <Handle_Geom_Surface.hxx>
#endif
#ifndef _TopAbs_ShapeEnum_HeaderFile
#include <TopAbs_ShapeEnum.hxx>
#endif
#ifndef _GEOMAlgo_State_HeaderFile
#include <GEOMAlgo_State.hxx>
#endif
#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TopTools_ListOfShape_HeaderFile
#include <TopTools_ListOfShape.hxx>
#endif
#ifndef _TopTools_DataMapOfShapeShape_HeaderFile
#include <TopTools_DataMapOfShapeShape.hxx>
#endif
#ifndef _GEOMAlgo_IndexedDataMapOfShapeState_HeaderFile
#include <GEOMAlgo_IndexedDataMapOfShapeState.hxx>
#endif
#ifndef _Standard_Boolean_HeaderFile
#include <Standard_Boolean.hxx>
#endif
#ifndef _GEOMAlgo_ShapeAlgo_HeaderFile
#include <GEOMAlgo_ShapeAlgo.hxx>
#endif
class Geom_Surface;
class TopTools_ListOfShape;
class TopoDS_Shape;
class TopTools_DataMapOfShapeShape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_FinderShapeOn  : public GEOMAlgo_ShapeAlgo {

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


Standard_EXPORT GEOMAlgo_FinderShapeOn();
Standard_EXPORT virtual ~GEOMAlgo_FinderShapeOn();


Standard_EXPORT virtual  void Perform() ;


Standard_EXPORT   void SetSurface(const Handle(Geom_Surface)& aS) ;


Standard_EXPORT   void SetShapeType(const TopAbs_ShapeEnum aST) ;


Standard_EXPORT   void SetState(const GEOMAlgo_State aSF) ;


Standard_EXPORT  const Handle_Geom_Surface& Surface() const;


Standard_EXPORT   TopAbs_ShapeEnum ShapeType() const;


Standard_EXPORT   GEOMAlgo_State State() const;


Standard_EXPORT  const TopTools_ListOfShape& Shapes() const;


Standard_EXPORT static  void CopySource(const TopoDS_Shape& aS,TopTools_DataMapOfShapeShape& aImages,TopTools_DataMapOfShapeShape& aOriginals,TopoDS_Shape& aSC) ;

Standard_EXPORT static  bool BuildTriangulation (const TopoDS_Shape& theShape);

protected:

 // Methods PROTECTED
 // 


Standard_EXPORT virtual  void CheckData() ;


Standard_EXPORT   void MakeArgument1() ;


Standard_EXPORT   void MakeArgument2() ;


Standard_EXPORT   void Find() ;


Standard_EXPORT   void Find(const TopoDS_Shape& aS) ;


Standard_EXPORT   void FindVertices() ;


 // Fields PROTECTED
 //
Handle_Geom_Surface mySurface;
TopAbs_ShapeEnum myShapeType;
GEOMAlgo_State myState;
TopoDS_Shape myArg1;
TopoDS_Shape myArg2;
TopTools_ListOfShape myLS;
TopTools_DataMapOfShapeShape myImages;
GEOMAlgo_IndexedDataMapOfShapeState myMSS;
Standard_Boolean myIsAnalytic;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
