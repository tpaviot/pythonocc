// Copyright (C) 2007-2011  CEA/DEN, EDF R&D, OPEN CASCADE
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
// File:        GEOMAlgo_GlueDetector.hxx
// Created:     
// Author:      Peter KURNEV
//              <pkv@irinox>
//
#ifndef _GEOMAlgo_GlueDetector_HeaderFile
#define _GEOMAlgo_GlueDetector_HeaderFile

#include <Standard.hxx>
#include <Standard_Macro.hxx>
#include <GEOMAlgo_GluerAlgo.hxx>
#include <TopAbs_ShapeEnum.hxx>
#include <GEOMAlgo_PassKeyShape.hxx>
#include <GEOMAlgo_Algo.hxx>

//=======================================================================
//function : GEOMAlgo_GlueDetector
//purpose  : 
//=======================================================================
class GEOMAlgo_GlueDetector  : public GEOMAlgo_GluerAlgo, 
                               public GEOMAlgo_Algo {
public:
  Standard_EXPORT   GEOMAlgo_GlueDetector();
  
  Standard_EXPORT virtual ~GEOMAlgo_GlueDetector();
  
  Standard_EXPORT virtual  void Perform() ;

protected:
  Standard_EXPORT void DetectVertices() ;
  
  Standard_EXPORT void DetectEdges() ;
  
  Standard_EXPORT void DetectFaces() ;
  
  Standard_EXPORT void DetectShapes(const TopAbs_ShapeEnum aType) ;
  
  Standard_EXPORT void EdgePassKey(const TopoDS_Edge& aE,
				   GEOMAlgo_PassKeyShape& aPK) ;
  
  Standard_EXPORT void FacePassKey(const TopoDS_Face& aF,
				   GEOMAlgo_PassKeyShape& aPK) ;

private:
};
#endif
