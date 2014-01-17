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

// File:        GEOMAlgo_Algo.hxx
// Created:     Sat Dec 04 12:39:47 2004
// Author:      Peter KURNEV
//              <peter@PREFEX>
//
#ifndef _GEOMAlgo_Algo_HeaderFile
#define _GEOMAlgo_Algo_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <Standard_Boolean.hxx>

//=======================================================================
//class    : GEOMAlgo_Algo
//purpose  :
//=======================================================================
class GEOMAlgo_Algo
{
 public:
  Standard_EXPORT
    virtual  void Perform()  = 0;

  Standard_EXPORT
    Standard_Integer ErrorStatus() const;

  Standard_EXPORT
    Standard_Integer WarningStatus() const;

  //! Allows to omit of creation of internal shapes (manifold topology). <br>
  //!          Needed for the SALOME/TRIPOLI module. <br>
  Standard_EXPORT
    void ComputeInternalShapes(const Standard_Boolean theFlag) ;

protected:
  Standard_EXPORT
    GEOMAlgo_Algo();

  Standard_EXPORT
    virtual ~GEOMAlgo_Algo();

  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    virtual  void CheckResult() ;


  Standard_Integer myErrorStatus;
  Standard_Integer myWarningStatus;
  Standard_Boolean myComputeInternalShapes;
};
#endif
