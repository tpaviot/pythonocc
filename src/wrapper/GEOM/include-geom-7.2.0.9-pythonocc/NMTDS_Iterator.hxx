// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTDS_Iterator.hxx
// Author:      Peter KURNEV

#ifndef _NMTDS_Iterator_HeaderFile
#define _NMTDS_Iterator_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>

#include <Standard_Integer.hxx>
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <Standard_Boolean.hxx>
#include <NMTDS_PShapesDataStructure.hxx>
#include <NMTDS_ListOfPairBoolean.hxx>
#include <NMTDS_ListIteratorOfListOfPairBoolean.hxx>
#include <NMTDS_ShapesDataStructure.hxx>

//=======================================================================
//class : NMTDS_Iterator
//purpose  : 
//=======================================================================
class NMTDS_Iterator  {
 public:
  Standard_EXPORT   
    NMTDS_Iterator();

  Standard_EXPORT 
    virtual ~NMTDS_Iterator();
  
  Standard_EXPORT
    void SetDS(const NMTDS_PShapesDataStructure& pDS) ;
  
  Standard_EXPORT 
    const NMTDS_ShapesDataStructure& DS() const;
  
  Standard_EXPORT 
    void Initialize(const TopAbs_ShapeEnum aType1,
                    const TopAbs_ShapeEnum aType2) ;
  
  Standard_EXPORT 
    Standard_Boolean More() const;
  
  Standard_EXPORT
    void Next() ;
  
  Standard_EXPORT
    void Current(Standard_Integer& aIndex1,
                 Standard_Integer& aIndex2,
                 Standard_Boolean& aWithSubShape) const;
  
  Standard_EXPORT
    virtual  void Prepare() ;
  
  Standard_EXPORT
    Standard_Integer ExpectedLength() const;
  
  Standard_EXPORT 
    Standard_Integer BlockLength() const;
  
  Standard_EXPORT 
    const TColStd_DataMapOfIntegerListOfInteger& SDVertices() const;
  
  Standard_EXPORT 
    static  void FillMVSD(const TColStd_DataMapOfIntegerListOfInteger& aMVSD1,
                          TColStd_DataMapOfIntegerListOfInteger& aMVSD2) ;

protected:
  Standard_EXPORT  
    virtual  void Intersect() ;
  //
  
  NMTDS_PShapesDataStructure myDS;
  NMTDS_ListOfPairBoolean myLists[6];
  NMTDS_ListIteratorOfListOfPairBoolean myIterator;
  NMTDS_ListOfPairBoolean myEmptyList;
  Standard_Integer myLength;
  TColStd_DataMapOfIntegerListOfInteger myMVSD;
};

#endif
