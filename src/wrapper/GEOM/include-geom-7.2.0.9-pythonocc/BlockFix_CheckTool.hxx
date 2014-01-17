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

#ifndef _BlockFix_CheckTool_HeaderFile
#define _BlockFix_CheckTool_HeaderFile

#include <TopoDS_Shape.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Integer.hxx>
#include <TopTools_SequenceOfShape.hxx>
#include <Standard_OStream.hxx>

class TopoDS_Shape;

#include <Standard.hxx>
#include <Standard_Macro.hxx>

class BlockFix_CheckTool {

public:
  Standard_EXPORT BlockFix_CheckTool();
  Standard_EXPORT void SetShape(const TopoDS_Shape& aShape) ;
  Standard_EXPORT void Perform() ;
  Standard_EXPORT Standard_Integer NbPossibleBlocks() const;
  Standard_EXPORT TopoDS_Shape PossibleBlock(const Standard_Integer num) const;
  Standard_EXPORT void DumpCheckResult(Standard_OStream& S) const;

private:
  TopoDS_Shape myShape;
  Standard_Boolean myHasCheck;
  Standard_Integer myNbSolids;
  Standard_Integer myNbBlocks;
  TopTools_SequenceOfShape myPossibleBlocks;
  Standard_Integer myNbDegen;
  Standard_Integer myNbUF;
  Standard_Integer myNbUE;
  Standard_Integer myNbUFUE;
  Standard_Integer myBadRanges;
};

#endif
