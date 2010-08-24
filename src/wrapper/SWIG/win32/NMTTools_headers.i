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

// Headers necessary to define wrapped classes.

#include<Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#include<Handle_NMTTools_ListNodeOfListOfCommonBlock.hxx>
#include<Handle_NMTTools_ListNodeOfListOfCoupleOfShape.hxx>
#include<Handle_NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#include<NMTTools_CheckerSI.hxx>
#include<NMTTools_CommonBlock.hxx>
#include<NMTTools_CommonBlockAPI.hxx>
#include<NMTTools_CommonBlockPool.hxx>
#include<NMTTools_CoupleOfShape.hxx>
#include<NMTTools_DEProcessor.hxx>
#include<NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_DataMapOfIntegerListOfPaveBlock.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx>
#include<NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx>
#include<NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx>
#include<NMTTools_IndexedDataMapOfShapePaveBlock.hxx>
#include<NMTTools_IteratorOfCoupleOfShape.hxx>
#include<NMTTools_ListIteratorOfListOfCommonBlock.hxx>
#include<NMTTools_ListIteratorOfListOfCoupleOfShape.hxx>
#include<NMTTools_ListNodeOfListOfCommonBlock.hxx>
#include<NMTTools_ListNodeOfListOfCoupleOfShape.hxx>
#include<NMTTools_ListOfCommonBlock.hxx>
#include<NMTTools_ListOfCoupleOfShape.hxx>
#include<NMTTools_MapIteratorOfMapOfPaveBlock.hxx>
#include<NMTTools_MapOfPaveBlock.hxx>
#include<NMTTools_PPaveFiller.hxx>
#include<NMTTools_PaveFiller.hxx>
#include<NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#include<NMTTools_Tools.hxx>

// Additional headers necessary for compilation.

#include<TopoDS.hxx>
#include<TopoDSToStep.hxx>
#include<TopoDSToStep_Builder.hxx>
#include<TopoDSToStep_BuilderError.hxx>
#include<TopoDSToStep_FacetedError.hxx>
#include<TopoDSToStep_FacetedTool.hxx>
#include<TopoDSToStep_MakeBrepWithVoids.hxx>
#include<TopoDSToStep_MakeEdgeError.hxx>
#include<TopoDSToStep_MakeFaceError.hxx>
#include<TopoDSToStep_MakeFacetedBrep.hxx>
#include<TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx>
#include<TopoDSToStep_MakeGeometricCurveSet.hxx>
#include<TopoDSToStep_MakeManifoldSolidBrep.hxx>
#include<TopoDSToStep_MakeShellBasedSurfaceModel.hxx>
#include<TopoDSToStep_MakeStepEdge.hxx>
#include<TopoDSToStep_MakeStepFace.hxx>
#include<TopoDSToStep_MakeStepVertex.hxx>
#include<TopoDSToStep_MakeStepWire.hxx>
#include<TopoDSToStep_MakeVertexError.hxx>
#include<TopoDSToStep_MakeWireError.hxx>
#include<TopoDSToStep_Root.hxx>
#include<TopoDSToStep_Tool.hxx>
#include<TopoDSToStep_WireframeBuilder.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_Builder3D.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_ListNodeOfListOfShape.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Wire.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

%}
