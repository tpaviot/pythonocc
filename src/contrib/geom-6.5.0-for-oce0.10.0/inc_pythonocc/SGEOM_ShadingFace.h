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

#ifndef GEOM_SHADINGFACE_H 
#define GEOM_SHADINGFACE_H 
 
#include "OCC2VTK.h" 
#include "SGEOM_FaceSource.h" 

class OCC2VTK_EXPORT GEOM_ShadingFace: public GEOM_FaceSource 
{ 
public: 
  vtkTypeMacro(GEOM_ShadingFace,GEOM_FaceSource); 
  static GEOM_ShadingFace* New(); 
 
  static  
  void OCC2VTK(const TopoDS_Face& theFace,  
               vtkPolyData* theCells, 
               vtkPoints* thePts); 
 
protected: 
  void Execute(); 
 
  GEOM_ShadingFace(); 
  ~GEOM_ShadingFace(); 
 
private: 
  // Not implememnted 
  GEOM_ShadingFace(const GEOM_ShadingFace&); 
  void operator=(const GEOM_ShadingFace&); 
}; 
 
 
#endif //GEOM_SHADINGFACE_H 
