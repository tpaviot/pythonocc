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

//  File:       NMTTools_CheckerSI.hxx
//  Created:    Mon Feb 19 11:32:08 2007
//  Author:     Peter KURNEV
//
#ifndef _NMTTools_CheckerSI_HeaderFile
#define _NMTTools_CheckerSI_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <NMTTools_PaveFiller.hxx>
#include <TopAbs_ShapeEnum.hxx>

//=======================================================================
//class    : NMTTools_CheckerSI
//purpose  :
//=======================================================================
class NMTTools_CheckerSI  : public NMTTools_PaveFiller
{
 public:
  Standard_EXPORT
    NMTTools_CheckerSI();

  Standard_EXPORT
    virtual ~NMTTools_CheckerSI();

  Standard_EXPORT
    virtual  void Perform() ;

  Standard_EXPORT
    Standard_Integer StopStatus() const;

 protected:
  Standard_EXPORT
    virtual  void Init() ;

  Standard_EXPORT
    virtual  void Clear() ;

  Standard_EXPORT
    virtual  void PreparePaveBlocks(const Standard_Integer nE) ;

  Standard_EXPORT
    virtual  void PreparePaveBlocks(const TopAbs_ShapeEnum aType1,
                                    const TopAbs_ShapeEnum aType2) ;


  Standard_Integer myStopStatus;
};
#endif
