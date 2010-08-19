/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{
#include <SMDSAbs_ElementType.hxx>
#include <SMDS_EdgePosition.hxx>
#include <SMDS_ElemIterator.hxx>
#include <SMDS_FaceOfEdges.hxx>
#include <SMDS_FaceOfNodes.hxx>
#include <SMDS_FacePosition.hxx>
#include <SMDS_Iterator.hxx>
#include <SMDS_IteratorOfElements.hxx>
#include <SMDS_Mesh.hxx>
#include <SMDS_Mesh0DElement.hxx>
#include <SMDS_MeshEdge.hxx>
#include <SMDS_MeshElement.hxx>
#include <SMDS_MeshElementIDFactory.hxx>
#include <SMDS_MeshFace.hxx>
#include <SMDS_MeshGroup.hxx>
#include <SMDS_MeshIDFactory.hxx>
#include <SMDS_MeshInfo.hxx>
#include <SMDS_MeshNode.hxx>
#include <SMDS_MeshObject.hxx>
#include <SMDS_MeshVolume.hxx>
#include <SMDS_PolygonalFaceOfNodes.hxx>
#include <SMDS_PolyhedralVolumeOfNodes.hxx>
#include <SMDS_Position.hxx>
#include <SMDS_QuadraticEdge.hxx>
#include <SMDS_QuadraticFaceOfNodes.hxx>
#include <SMDS_QuadraticVolumeOfNodes.hxx>
#include <SMDS_SetIterator.hxx>
#include <SMDS_SpacePosition.hxx>
#include <SMDS_TypeOfPosition.hxx>
#include <SMDS_VertexPosition.hxx>
#include <SMDS_VolumeOfFaces.hxx>
#include <SMDS_VolumeOfNodes.hxx>
#include <SMDS_VolumeTool.hxx>
%};

%import SMDSAbs.i
%import SMDS.i
%import TopAbs.i
