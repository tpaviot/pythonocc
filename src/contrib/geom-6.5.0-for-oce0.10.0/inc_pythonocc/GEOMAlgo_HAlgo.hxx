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

// File:        GEOMAlgo_HAlgo.hxx
// Created:     Sat Dec 04 12:39:47 2004
// Author:      Peter KURNEV
//              <peter@PREFEX>
//

#ifndef _GEOMAlgo_HAlgo_HeaderFile
#define _GEOMAlgo_HAlgo_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>
//#include <Handle_GEOMAlgo_HAlgo.hxx>
#include <Standard_Integer.hxx>
#include <MMgt_TShared.hxx>

DEFINE_STANDARD_HANDLE(GEOMAlgo_HAlgo, MMgt_TShared);

//=======================================================================
//class    : GEOMAlgo_HAlgo
//purpose  :
//=======================================================================
class GEOMAlgo_HAlgo : public MMgt_TShared
{
 public:
  Standard_EXPORT
    virtual  void Perform()  = 0;

  Standard_EXPORT
    virtual  void CheckData() ;

  Standard_EXPORT
    virtual  void CheckResult() ;

  Standard_EXPORT
    Standard_Integer ErrorStatus() const;

  Standard_EXPORT
    Standard_Integer WarningStatus() const;

  DEFINE_STANDARD_RTTI(GEOMAlgo_HAlgo);

 protected:
  Standard_EXPORT
    GEOMAlgo_HAlgo();

  Standard_EXPORT
    virtual ~GEOMAlgo_HAlgo();

  Standard_Integer myErrorStatus;
  Standard_Integer myWarningStatus;

};
#endif
