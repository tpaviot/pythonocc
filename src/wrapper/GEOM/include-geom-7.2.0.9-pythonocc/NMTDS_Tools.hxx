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

// File:        NMTDS_Tools.hxx
// Created:     
// Author:      Peter KURNEV

#ifndef _NMTDS_Tools_HeaderFile
#define _NMTDS_Tools_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <Standard_Integer.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <Standard_Boolean.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopoDS_Shape.hxx>
#include <TopTools_IndexedDataMapOfShapeShape.hxx>

//=======================================================================
//function : NMTDS_Tools
//purpose  : 
//=======================================================================
class NMTDS_Tools 
{
 public:
  Standard_EXPORT
    static  Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aT1,
                                           const TopAbs_ShapeEnum aT2) ;
  
  Standard_EXPORT
    static  Standard_Boolean HasBRep(const TopAbs_ShapeEnum aT) ;
  
  Standard_EXPORT
    static  Standard_Integer ComputeVV(const TopoDS_Vertex& aV1,
                                       const TopoDS_Vertex& aV2) ;
  
  Standard_EXPORT
    static  void CopyShape(const TopoDS_Shape& aS,
                           TopoDS_Shape& aSC) ;
  
  Standard_EXPORT
    static  void CopyShape(const TopoDS_Shape& aS,
                           TopoDS_Shape& aSC,
                           TopTools_IndexedDataMapOfShapeShape& aMSS) ;
};
#endif
