// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
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

#ifndef OCC2VTK_TOOLS_H
#define OCC2VTK_TOOLS_H

#include "OCC2VTK.h" 

#include <TopoDS_Shape.hxx>
#include <TopTools_IndexedDataMapOfShapeListOfShape.hxx>

class GEOM_EdgeSource;
class GEOM_WireframeFace;
class GEOM_ShadingFace;

namespace GEOM
{
  // moved from GEOM_AssemblyBuilder
  OCC2VTK_EXPORT void MeshShape(const TopoDS_Shape theShape,
                                float& theDeflection,
				bool theForced = true);
  
  // moved from GEOM_Actor
  OCC2VTK_EXPORT void SetShape(const TopoDS_Shape& theShape,
                               const TopTools_IndexedDataMapOfShapeListOfShape& theEdgeMap,
                               bool theIsVector,
                               GEOM_EdgeSource* theIsolatedEdgeSource,
                               GEOM_EdgeSource* theOneFaceEdgeSource,
                               GEOM_EdgeSource* theSharedEdgeSource,
                               GEOM_WireframeFace* theWireframeFaceSource,
                               GEOM_ShadingFace* theShadingFaceSource);
}

#endif // OCC2VTK_TOOLS_H
