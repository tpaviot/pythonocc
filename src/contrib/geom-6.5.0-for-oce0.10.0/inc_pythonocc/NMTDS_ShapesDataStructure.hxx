// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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


#ifndef _NMTDS_ShapesDataStructure_HeaderFile
#define _NMTDS_ShapesDataStructure_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <TopoDS_Shape.hxx>
#include <NMTDS_CArray1OfIndexRange.hxx>
#include <TopTools_DataMapOfShapeInteger.hxx>
#include <BooleanOperations_ShapesDataStructure.hxx>
#include <Standard_Integer.hxx>
#include <TopoDS_Shape.hxx>
#include <NMTDS_CArray1OfIndexRange.hxx>
#include <BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>
#include <Bnd_Box.hxx>

//=======================================================================
//class    : NMTDS_ShapesDataStructure
//purpose  : 
//=======================================================================
class NMTDS_ShapesDataStructure  : public BooleanOperations_ShapesDataStructure
{
 public:
  Standard_EXPORT
    NMTDS_ShapesDataStructure();
  
  Standard_EXPORT
    void SetCompositeShape(const TopoDS_Shape& aS) ;
  
  Standard_EXPORT
    void Init() ;
  
  Standard_EXPORT
    const NMTDS_CArray1OfIndexRange& Ranges() const;
  
  Standard_EXPORT
    const TopoDS_Shape& CompositeShape() const;
  
  Standard_EXPORT
    Standard_Integer ShapeRangeIndex(const Standard_Integer aId) const;
  
  Standard_EXPORT
    virtual  Standard_Integer Rank(const Standard_Integer anIndex) const;
  
  Standard_EXPORT
    virtual  Standard_Integer ShapeIndex(const TopoDS_Shape& aS,
					 const Standard_Integer iRank) const;
  
  Standard_EXPORT     
    void FillMap(const TopoDS_Shape& aS,
		 BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSA,
		 BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMS) const;
  
  Standard_EXPORT
    void FillSubshapes(const TopoDS_Shape& aS,
		       BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMSA,
		       BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors& aMS) const;
  
  Standard_EXPORT     
    void GetAllSuccessors(const Standard_Integer anIndex,
			  TColStd_IndexedMapOfInteger& aScrs) const;
  
  Standard_EXPORT     
    void ComputeBoxEx(const Standard_Integer anIndex,
		      Bnd_Box& aBox) const;


 protected:
  TopoDS_Shape myCompositeShape;
  NMTDS_CArray1OfIndexRange myRanges;
  TopTools_DataMapOfShapeInteger myShapeIndexMap;
};
#endif
