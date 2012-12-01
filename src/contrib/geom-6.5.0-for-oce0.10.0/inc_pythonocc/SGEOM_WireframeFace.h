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

#ifndef GEOM_WIREFRAME_FACE_H 
#define GEOM_WIREFRAME_FACE_H 
 
#include "OCC2VTK.h" 
#include "SGEOM_FaceSource.h" 

#include <GeomAbs_IsoType.hxx>
#include <BRepAdaptor_Surface.hxx>
 
#include <vtkPolyDataSource.h> 

class OCC2VTK_EXPORT GEOM_WireframeFace: public GEOM_FaceSource 
{ 
public: 
  vtkTypeMacro(GEOM_WireframeFace,GEOM_FaceSource); 
  static GEOM_WireframeFace* New(); 
 
  /*  vtkSetMacro(NbIso,int); 
      vtkGetMacro(NbIso,int);*/
 
  vtkSetMacro(Discret,int); 
  vtkGetMacro(Discret,int); 
 
  static  
  void OCC2VTK(const TopoDS_Face& theFace,  
               vtkPolyData* thePolyData, 
               vtkPoints* thePts, 
               const int theNbIso[2], 
               const int theDiscret = 15);

  //! IsoLines management
  // theNb[0] - number of U lines
  // theNb[1] - number of V lines
  virtual void SetNbIso(const int theNb[2]);
  virtual void GetNbIso(int &theNbU,int &theNbV);

protected: 
  int NbIso[2], Discret; 
 
  static  
  void 
  CreateIso(const TopoDS_Face& theFace,
            const int theNbIso[2], 
            const int theDiscret, 
            vtkPolyData* thePolyData,
            vtkPoints* thePts);
 
  static  
  void 
  CreateIso_(const TopoDS_Face& theFace,
             GeomAbs_IsoType theIsoType, 
             Standard_Real Par, 
             Standard_Real T1,
             Standard_Real T2,
             const int theDiscret, 
             vtkPolyData* thePolyData,
             vtkPoints* thePts);
 
  static  
  void 
  CreateIso__(const BRepAdaptor_Surface& theSurface, 
              GeomAbs_IsoType theIsoType,
                                    Standard_Real& theU, 
                                    Standard_Real& theV, 
                                      Standard_Real theStep, 
              vtkPolyData* thePolyData,
              vtkPoints* thePts);

  void Execute(); 
 
  GEOM_WireframeFace(); 
  ~GEOM_WireframeFace(); 
 
private: 
  // Not implememnted 
  GEOM_WireframeFace(const GEOM_WireframeFace&); 
  void operator=(const GEOM_WireframeFace&); 
}; 
 
 
#endif //GEOM_WFACEACTOR_H 
