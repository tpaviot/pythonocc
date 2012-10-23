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

#ifndef _BlockFix_HeaderFile
#define _BlockFix_HeaderFile

#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif

class TopoDS_Shape;
class BlockFix_SphereSpaceModifier;
class BlockFix_UnionFaces;
class BlockFix_UnionEdges;
class BlockFix_BlockFixAPI;
class BlockFix_PeriodicSurfaceModifier;
class BlockFix_CheckTool;

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif

class BlockFix  {

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

  Standard_EXPORT static  TopoDS_Shape RotateSphereSpace(const TopoDS_Shape& S,const Standard_Real Tol);
  Standard_EXPORT static  TopoDS_Shape RefillProblemFaces(const TopoDS_Shape& S);
  Standard_EXPORT static  TopoDS_Shape FixRanges(const TopoDS_Shape& S,const Standard_Real Tol);

protected:

private:

friend class BlockFix_SphereSpaceModifier;
friend class BlockFix_UnionFaces;
friend class BlockFix_UnionEdges;
friend class BlockFix_BlockFixAPI;
friend class BlockFix_PeriodicSurfaceModifier;
friend class BlockFix_CheckTool;

};

// other Inline functions and methods (like "C++: function call" methods)

#endif
