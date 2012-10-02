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

#include "GEOM_ShadingFace.h" 
 
#include <vtkObjectFactory.h> 
 
#include <vtkPoints.h> 
#include <vtkCellArray.h> 

#include <vtkPolyDataMapper.h>  
#include <vtkPolyData.h>  

#include <BRep_Tool.hxx>
#include <Poly_Triangulation.hxx>
 

vtkStandardNewMacro(GEOM_ShadingFace);
 
GEOM_ShadingFace::GEOM_ShadingFace() 
{ 
} 
 
GEOM_ShadingFace::~GEOM_ShadingFace() 
{ 
} 
 
void
GEOM_ShadingFace:: 
Execute()
{
  vtkPolyData* aPolyData = GetOutput();
  aPolyData->Allocate();
  vtkPoints* aPts = vtkPoints::New();
  aPolyData->SetPoints(aPts);
  aPts->Delete();

  TFaceSet::Iterator anIter(myFaceSet);
  for(; anIter.More(); anIter.Next()){
    const TopoDS_Face& aFace = anIter.Value();
    OCC2VTK(aFace,aPolyData,aPts);
  }
}

void  
GEOM_ShadingFace:: 
OCC2VTK(const TopoDS_Face& theFace,  
        vtkPolyData* thePolyData, 
        vtkPoints* thePts) 
{
  TopLoc_Location aLoc;
  Handle(Poly_Triangulation) aPoly = BRep_Tool::Triangulation(theFace,aLoc);
  if(aPoly.IsNull()) 
    return;
  else{
    gp_Trsf myTransf;
    Standard_Boolean identity = true;
    if(!aLoc.IsIdentity()){
      identity = false;
      myTransf = aLoc.Transformation();
    }           
      
    Standard_Integer i; 
    int aNbOfNodes = thePts->GetNumberOfPoints();
    const TColgp_Array1OfPnt& Nodes = aPoly->Nodes();
    Standard_Integer nbNodesInFace = aPoly->NbNodes(); 
    for(i = 1; i <= nbNodesInFace; i++) {
      gp_Pnt P = Nodes(i);
      if(!identity) 
        P.Transform(myTransf);
      thePts->InsertNextPoint(P.X(),P.Y(),P.Z());
    }

    const Poly_Array1OfTriangle& Triangles = aPoly->Triangles();
    Standard_Integer nbTriInFace = aPoly->NbTriangles();
    for(i = 1; i <= nbTriInFace; i++){
      // Get the triangle
      Standard_Integer N1,N2,N3;
      Triangles(i).Get(N1,N2,N3);
      N1 += aNbOfNodes - 1;
      N2 += aNbOfNodes - 1;
      N3 += aNbOfNodes - 1;
      vtkIdType anIds[3] = {N1, N2, N3};
      thePolyData->InsertNextCell(VTK_TRIANGLE,3,anIds);
    }
  } 
}
