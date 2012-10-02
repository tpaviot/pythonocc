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

#include "GEOM_VertexSource.h" 
 
#include <vtkObjectFactory.h> 

#include <vtkPoints.h> 
#include <vtkCellArray.h> 
#include <vtkPolyData.h> 
#include <vtkPolyDataMapper.h> 
 
#include <gp_Pnt.hxx>
#include <BRep_Tool.hxx>
 
vtkStandardNewMacro(GEOM_VertexSource);
 
GEOM_VertexSource::GEOM_VertexSource() 
{ 
} 
 
GEOM_VertexSource::~GEOM_VertexSource() 
{ 
} 
 
void  
GEOM_VertexSource:: 
AddVertex(const TopoDS_Vertex& theVertex) 
{ 
  myVertexSet.Add(theVertex); 
} 
 
void
GEOM_VertexSource:: 
Execute()
{
  vtkPolyData* aPolyData = GetOutput();
  aPolyData->Allocate();
  vtkPoints* aPts = vtkPoints::New();
  aPolyData->SetPoints(aPts);
  aPts->Delete();

  TVertexSet::Iterator anIter(myVertexSet);
  for(; anIter.More(); anIter.Next()){
    const TopoDS_Vertex& aVertex = anIter.Value();
    OCC2VTK(aVertex,aPolyData,aPts);
  }
}

void  
GEOM_VertexSource:: 
OCC2VTK(const TopoDS_Vertex& theVertex,  
        vtkPolyData* thePolyData, 
        vtkPoints* thePts) 
{ 
  gp_Pnt aPnt = BRep_Tool::Pnt(theVertex);
  vtkIdType anId = thePts->InsertNextPoint(aPnt.X(),aPnt.Y(),aPnt.Z());
  thePolyData->InsertNextCell(VTK_VERTEX,1,&anId);
}
