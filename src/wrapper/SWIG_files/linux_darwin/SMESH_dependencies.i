/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{
#include <SMDSAbs_ElementType.hxx>
#include <SMESHDS_Command.hxx>
#include <SMESHDS_Command.hxx>
#include <SMESHDS_CommandType.hxx>
#include <SMESHDS_CommandType.hxx>
#include <SMESHDS_DataMapOfShape.hxx>
#include <SMESHDS_DataMapOfShape.hxx>
#include <SMESHDS_Document.hxx>
#include <SMESHDS_Document.hxx>
#include <SMESHDS_Group.hxx>
#include <SMESHDS_Group.hxx>
#include <SMESHDS_GroupBase.hxx>
#include <SMESHDS_GroupBase.hxx>
#include <SMESHDS_GroupOnGeom.hxx>
#include <SMESHDS_GroupOnGeom.hxx>
#include <SMESHDS_Hypothesis.hxx>
#include <SMESHDS_Hypothesis.hxx>
#include <SMESHDS_Mesh.hxx>
#include <SMESHDS_Mesh.hxx>
#include <SMESHDS_Script.hxx>
#include <SMESHDS_Script.hxx>
#include <SMESHDS_SubMesh.hxx>
#include <SMESHDS_SubMesh.hxx>
#include <SMESH_0D_Algo.hxx>
#include <SMESH_1D_Algo.hxx>
#include <SMESH_2D_Algo.hxx>
#include <SMESH_3D_Algo.hxx>
#include <SMESH_Algo.hxx>
#include <SMESH_Array1.hxx>
#include <SMESH_Array2.hxx>
#include <SMESH_Block.hxx>
#include <SMESH_Comment.hxx>
#include <SMESH_ComputeError.hxx>
#include <SMESH_Controls.hxx>
#include <SMESH_ControlsDef.hxx>
#include <SMESH_DataMapOfElemPtrSequenceOfElemPtr.hxx>
#include <SMESH_DefineArray2.hxx>
#include <SMESH_DefineIndexedMap.hxx>
#include <SMESH_DriverDAT.hxx>
#include <SMESH_DriverSTL.hxx>
#include <SMESH_DriverUNV.hxx>
#include <SMESH_ExceptHandlers.hxx>
#include <SMESH_Exception.hxx>
#include <SMESH_Gen.hxx>
#include <SMESH_Group.hxx>
#include <SMESH_HypoFilter.hxx>
#include <SMESH_Hypothesis.hxx>
#include <SMESH_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include <SMESH_IndexedMap.hxx>
#include <SMESH_Mesh.hxx>
#include <SMESH_MeshEditor.hxx>
#include <SMESH_MeshVSLink.hxx>
#include <SMESH_MesherHelper.hxx>
#include <SMESH_Octree.hxx>
#include <SMESH_OctreeNode.hxx>
#include <SMESH_Pattern.hxx>
#include <SMESH_SMDS.hxx>
#include <SMESH_SMESH.hxx>
#include <SMESH_SMESHDS.hxx>
#include <SMESH_SequenceOfElemPtr.hxx>
#include <SMESH_SequenceOfNode.hxx>
#include <SMESH_StdMeshers.hxx>
#include <SMESH_subMesh.hxx>
#include <SMESH_subMeshEventListener.hxx>
%};

%import MeshVS.i
%import SMDSAbs.i
%import TopAbs.i
%import Standard.i
%import math.i
%import SMESHDS.i
%import GeomAbs.i
