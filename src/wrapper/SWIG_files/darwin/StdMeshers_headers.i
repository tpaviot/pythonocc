/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<StdMeshers_Arithmetic1D.hxx>
#include<StdMeshers_AutomaticLength.hxx>
#include<StdMeshers_CompositeHexa_3D.hxx>
#include<StdMeshers_CompositeSegment_1D.hxx>
#include<StdMeshers_Deflection1D.hxx>
#include<StdMeshers_Distribution.hxx>
#include<StdMeshers_FaceSide.hxx>
#include<StdMeshers_Hexa_3D.hxx>
#include<StdMeshers_LayerDistribution.hxx>
#include<StdMeshers_LengthFromEdges.hxx>
#include<StdMeshers_LocalLength.hxx>
#include<StdMeshers_MEFISTO_2D.hxx>
#include<StdMeshers_MaxElementArea.hxx>
#include<StdMeshers_MaxElementVolume.hxx>
#include<StdMeshers_MaxLength.hxx>
#include<StdMeshers_NotConformAllowed.hxx>
#include<StdMeshers_NumberOfLayers.hxx>
#include<StdMeshers_NumberOfSegments.hxx>
#include<StdMeshers_Penta_3D.hxx>
#include<StdMeshers_Prism_3D.hxx>
#include<StdMeshers_ProjectionSource1D.hxx>
#include<StdMeshers_ProjectionSource2D.hxx>
#include<StdMeshers_ProjectionSource3D.hxx>
#include<StdMeshers_ProjectionUtils.hxx>
#include<StdMeshers_Projection_1D.hxx>
#include<StdMeshers_Projection_2D.hxx>
#include<StdMeshers_Projection_3D.hxx>
#include<StdMeshers_Propagation.hxx>
#include<StdMeshers_QuadToTriaAdaptor.hxx>
#include<StdMeshers_QuadranglePreference.hxx>
#include<StdMeshers_Quadrangle_2D.hxx>
#include<StdMeshers_QuadraticMesh.hxx>
#include<StdMeshers_RadialPrism_3D.hxx>
#include<StdMeshers_Regular_1D.hxx>
#include<StdMeshers_SegmentAroundVertex_0D.hxx>
#include<StdMeshers_SegmentLengthAroundVertex.hxx>
#include<StdMeshers_StartEndLength.hxx>
#include<StdMeshers_TrianglePreference.hxx>
#include<StdMeshers_UseExisting_1D2D.hxx>

// Additional headers necessary for compilation.

#include<SMDSAbs_ElementType.hxx>
#include<SMDS_EdgePosition.hxx>
#include<SMDS_ElemIterator.hxx>
#include<SMDS_FaceOfEdges.hxx>
#include<SMDS_FaceOfNodes.hxx>
#include<SMDS_FacePosition.hxx>
#include<SMDS_Iterator.hxx>
#include<SMDS_IteratorOfElements.hxx>
#include<SMDS_Mesh.hxx>
#include<SMDS_MeshEdge.hxx>
#include<SMDS_MeshElement.hxx>
#include<SMDS_MeshElementIDFactory.hxx>
#include<SMDS_MeshFace.hxx>
#include<SMDS_MeshGroup.hxx>
#include<SMDS_MeshIDFactory.hxx>
#include<SMDS_MeshInfo.hxx>
#include<SMDS_MeshNode.hxx>
#include<SMDS_MeshObject.hxx>
#include<SMDS_MeshVolume.hxx>
#include<SMDS_PolygonalFaceOfNodes.hxx>
#include<SMDS_PolyhedralVolumeOfNodes.hxx>
#include<SMDS_Position.hxx>
#include<SMDS_QuadraticEdge.hxx>
#include<SMDS_QuadraticFaceOfNodes.hxx>
#include<SMDS_QuadraticVolumeOfNodes.hxx>
#include<SMDS_SetIterator.hxx>
#include<SMDS_SpacePosition.hxx>
#include<SMDS_TypeOfPosition.hxx>
#include<SMDS_VertexPosition.hxx>
#include<SMDS_VolumeOfFaces.hxx>
#include<SMDS_VolumeOfNodes.hxx>
#include<SMDS_VolumeTool.hxx>

// Needed headers necessary for compilation.

#include<SMESH_Gen.hxx>
#include<SMESH_Mesh.hxx>
#include<SMDS_MeshElement.hxx>
#include<SMESH_subMesh.hxx>
#include<SMESH_MesherHelper.hxx>
#include<SMDS_MeshNode.hxx>
#include<SMESHDS_Mesh.hxx>
#include<SMESH_Hypothesis.hxx>
%}
