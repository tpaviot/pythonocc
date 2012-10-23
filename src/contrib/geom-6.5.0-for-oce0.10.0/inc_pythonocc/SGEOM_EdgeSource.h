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

#ifndef GEOM_EDGESOURCE_H 
#define GEOM_EDGESOURCE_H 
 
#include "OCC2VTK.h" 
 
#include <TopoDS_Edge.hxx> 
#include <NCollection_Set.hxx> 
 
typedef NCollection_Set<TopoDS_Edge> TEdgeSet; 
 
#include <vtkPoints.h> 
#include <vtkPolyDataSource.h> 

class OCC2VTK_EXPORT GEOM_EdgeSource: public vtkPolyDataSource 
{ 
public: 
  vtkTypeMacro(GEOM_EdgeSource,vtkPolyDataSource); 
  static GEOM_EdgeSource* New(); 
 
  void AddEdge (const TopoDS_Edge& theEdge,
                bool theIsVector = false);
  void Clear(){ myEdgeSet.Clear();}
  
  void SetVectorMode(bool);

  bool GetVectorMode();
 
  static  
  void OCC2VTK(const TopoDS_Edge& theEdge,  
               vtkPolyData* thePolyData, 
               vtkPoints* thePts,
               bool theIsVector = false); 

  bool IsEmpty(){return myEdgeSet.IsEmpty();}

 
protected: 
  TEdgeSet myEdgeSet;
  // The <myIsVector> flag is common for all edges, because the shape,
  // representing a vector, can have only one edge.
  bool myIsVector, myIsVectorMode;
 
  void Execute(); 
 
  GEOM_EdgeSource(); 
  ~GEOM_EdgeSource(); 
 
private: 
  // Not implememnted 
  GEOM_EdgeSource(const GEOM_EdgeSource&); 
  void operator=(const GEOM_EdgeSource&); 
}; 
 
 
#endif //GEOM_EDGESOURCE_H 
