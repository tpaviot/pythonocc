// Copyright (C) 2007-2013  CEA/DEN, EDF R&D, OPEN CASCADE
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

// File:        NMTDS_InterfPool.hxx
//
// Author:      Peter KURNEV

#ifndef _NMTDS_InterfPool_HeaderFile
#define _NMTDS_InterfPool_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>

#include <Standard_Integer.hxx>
#include <XBOPTools_CArray1OfSSInterference.hxx>
#include <XBOPTools_CArray1OfESInterference.hxx>
#include <XBOPTools_CArray1OfVSInterference.hxx>
#include <XBOPTools_CArray1OfEEInterference.hxx>
#include <XBOPTools_CArray1OfVEInterference.hxx>
#include <XBOPTools_CArray1OfVVInterference.hxx>
#include <Standard_Boolean.hxx>
#include <NMTDS_InterfType.hxx>
#include <NMTDS_PairBoolean.hxx>
#include <NMTDS_MapOfPairBoolean.hxx>
#include <NMTDS_ListOfPairBoolean.hxx>

//=======================================================================
//class    : NMTDS_InterfPool
//purpose  : 
//=======================================================================
class NMTDS_InterfPool  {
 public:
  Standard_EXPORT 
    NMTDS_InterfPool();
  Standard_EXPORT 
    virtual ~NMTDS_InterfPool();
  
  Standard_EXPORT
    Standard_Boolean Add(const NMTDS_PairBoolean& aPKB,
                         const NMTDS_InterfType aType) ;
  
  Standard_EXPORT
    Standard_Boolean Add(const Standard_Integer aInd1,
                         const Standard_Integer aInd2,
                         const NMTDS_InterfType aType) ;
  
  Standard_EXPORT
    Standard_Boolean Add(const Standard_Integer aInd1,
                         const Standard_Integer aInd2,
                         const Standard_Boolean bFlag,
                         const NMTDS_InterfType aType) ;
  
  Standard_EXPORT
    Standard_Boolean Contains(const NMTDS_PairBoolean& aPKB) const;
  
  Standard_EXPORT
    Standard_Boolean Contains(const Standard_Integer aInd1,
                              const Standard_Integer aInd2) const;
  
  Standard_EXPORT
    const NMTDS_ListOfPairBoolean& Get() const;
  
  Standard_EXPORT
    const NMTDS_ListOfPairBoolean& Get(const NMTDS_InterfType aType) const;
  
  Standard_EXPORT
    const NMTDS_ListOfPairBoolean& Get(const Standard_Integer aInd) const;
  
  Standard_EXPORT
    const NMTDS_ListOfPairBoolean& Get(const Standard_Integer aInd,
                                       const NMTDS_InterfType aType) const;
  
  //! Returns the reference to array Of F/F interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfSSInterference& SSInterferences() ;
  
  //! Returns the reference to array Of E/F interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfESInterference& ESInterferences() ;
  
  //! Returns the reference to array Of V/F interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfVSInterference& VSInterferences() ;
  
  //! Returns the reference to arrray Of E/E interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfEEInterference& EEInterferences() ;
  
  //! Returns the reference to arrray Of  V/E interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfVEInterference& VEInterferences() ;
  
  //! Returns the reference to arrray Of  V/V interferences <br>
  Standard_EXPORT     XBOPTools_CArray1OfVVInterference& VVInterferences() ;
  
  Standard_EXPORT     void Purge() ;

protected:
  NMTDS_MapOfPairBoolean myTable[6];
  NMTDS_ListOfPairBoolean myList;
  Standard_Integer myMaxInd;
  XBOPTools_CArray1OfSSInterference mySSInterferences;
  XBOPTools_CArray1OfESInterference myESInterferences;
  XBOPTools_CArray1OfVSInterference myVSInterferences;
  XBOPTools_CArray1OfEEInterference myEEInterferences;
  XBOPTools_CArray1OfVEInterference myVEInterferences;
  XBOPTools_CArray1OfVVInterference myVVInterferences;

private:
};

#endif
