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

#ifndef _BlockFix_BlockFixAPI_HeaderFile
#define _BlockFix_BlockFixAPI_HeaderFile

#include <Standard.hxx>
#include <Standard_DefineHandle.hxx>

#include <Handle_ShapeBuild_ReShape.hxx>
#include <TopoDS_Shape.hxx>
#include <Standard_Real.hxx>
#include <MMgt_TShared.hxx>

DEFINE_STANDARD_HANDLE(BlockFix_BlockFixAPI, MMgt_TShared);

class BlockFix_BlockFixAPI : public MMgt_TShared
{
public:
  Standard_EXPORT BlockFix_BlockFixAPI();
  Standard_EXPORT ~BlockFix_BlockFixAPI();

  void SetShape(const TopoDS_Shape& Shape);
  TopoDS_Shape Shape() const;
  Handle_ShapeBuild_ReShape& Context();
  Standard_Real& Tolerance();
  Standard_Integer& OptimumNbFaces();
  Standard_EXPORT void Perform();

  DEFINE_STANDARD_RTTI(BlockFix_BlockFixAPI);

private:
  Handle_ShapeBuild_ReShape myContext;
  TopoDS_Shape myShape;
  Standard_Real myTolerance;
  Standard_Integer myOptimumNbFaces;
};

//=======================================================================
//function : SetShape
//purpose  :
//=======================================================================
inline void BlockFix_BlockFixAPI::SetShape(const TopoDS_Shape& Shape)
{
  myShape = Shape;
}

//=======================================================================
//function : Shape
//purpose  :
//=======================================================================
inline TopoDS_Shape BlockFix_BlockFixAPI::Shape() const
{
  return myShape;
}

//=======================================================================
//function : Context
//purpose  :
//=======================================================================
inline Handle(ShapeBuild_ReShape)& BlockFix_BlockFixAPI::Context()
{
  return myContext;
}

//=======================================================================
//function : Tolerance
//purpose  :
//=======================================================================
inline Standard_Real& BlockFix_BlockFixAPI::Tolerance()
{
  return myTolerance;
}

//=======================================================================
//function : OptimumNbFaces
//purpose  :
//=======================================================================
inline Standard_Integer& BlockFix_BlockFixAPI::OptimumNbFaces()
{
  return myOptimumNbFaces;
}

#endif
