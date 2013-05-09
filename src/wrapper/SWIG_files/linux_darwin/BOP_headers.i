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

// Headers necessary to define wrapped classes.

#include<BOPAlgo_Algo.hxx>
#include<BOPAlgo_ArgumentAnalyzer.hxx>
#include<BOPAlgo_BOP.hxx>
#include<BOPAlgo_Builder.hxx>
#include<BOPAlgo_BuilderArea.hxx>
#include<BOPAlgo_BuilderFace.hxx>
#include<BOPAlgo_BuilderShape.hxx>
#include<BOPAlgo_BuilderSolid.hxx>
#include<BOPAlgo_CheckResult.hxx>
#include<BOPAlgo_CheckStatus.hxx>
#include<BOPAlgo_CheckerSI.hxx>
#include<BOPAlgo_ListOfCheckResult.hxx>
#include<BOPAlgo_Operation.hxx>
#include<BOPAlgo_PArgumentAnalyzer.hxx>
#include<BOPAlgo_PBOP.hxx>
#include<BOPAlgo_PBuilder.hxx>
#include<BOPAlgo_PPaveFiller.hxx>
#include<BOPAlgo_PWireEdgeSet.hxx>
#include<BOPAlgo_PaveFiller.hxx>
#include<BOPAlgo_SectionAttribute.hxx>
#include<BOPAlgo_Tools.hxx>
#include<BOPAlgo_WireEdgeSet.hxx>
#include<BOPAlgo_WireSplitter.hxx>
#include<BOPCol_Array1.hxx>
#include<BOPCol_BaseAllocator.hxx>
#include<BOPCol_DataMapOfIntegerInteger.hxx>
#include<BOPCol_DataMapOfIntegerListOfInteger.hxx>
#include<BOPCol_DataMapOfIntegerListOfShape.hxx>
#include<BOPCol_DataMapOfIntegerMapOfInteger.hxx>
#include<BOPCol_DataMapOfIntegerShape.hxx>
#include<BOPCol_DataMapOfShapeAddress.hxx>
#include<BOPCol_DataMapOfShapeInteger.hxx>
#include<BOPCol_DataMapOfShapeListOfShape.hxx>
#include<BOPCol_DataMapOfShapeShape.hxx>
#include<BOPCol_DataMapOfTransientAddress.hxx>
#include<BOPCol_IndexedDataMapOfIntegerListOfInteger.hxx>
#include<BOPCol_IndexedDataMapOfShapeBox.hxx>
#include<BOPCol_IndexedDataMapOfShapeInteger.hxx>
#include<BOPCol_IndexedDataMapOfShapeListOfShape.hxx>
#include<BOPCol_IndexedMapOfInteger.hxx>
#include<BOPCol_IndexedMapOfShape.hxx>
#include<BOPCol_ListOfInteger.hxx>
#include<BOPCol_ListOfListOfShape.hxx>
#include<BOPCol_ListOfShape.hxx>
#include<BOPCol_MapOfInteger.hxx>
#include<BOPCol_MapOfOrientedShape.hxx>
#include<BOPCol_MapOfShape.hxx>
#include<BOPCol_PInteger.hxx>
#include<BOPCol_PListOfInteger.hxx>
#include<BOPCol_SequenceOfPnt2d.hxx>
#include<BOPCol_SequenceOfReal.hxx>
#include<BOPCol_SequenceOfShape.hxx>
#include<BOPCol_VectorOfInteger.hxx>
#include<BOPDS_BoxBndTree.hxx>
#include<BOPDS_CommonBlock.hxx>
#include<BOPDS_CoupleOfPaveBlocks.hxx>
#include<BOPDS_Curve.hxx>
#include<BOPDS_DS.hxx>
#include<BOPDS_DataMapOfIntegerListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfPassKeyListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfPaveBlockListOfInteger.hxx>
#include<BOPDS_DataMapOfPaveBlockListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfShapeCoupleOfPaveBlocks.hxx>
#include<BOPDS_FaceInfo.hxx>
#include<BOPDS_IndexRange.hxx>
#include<BOPDS_IndexedDataMapOfPaveBlockListOfInteger.hxx>
#include<BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock.hxx>
#include<BOPDS_IndexedDataMapOfShapeCoupleOfPaveBlocks.hxx>
#include<BOPDS_IndexedMapOfPaveBlock.hxx>
#include<BOPDS_Interf.hxx>
#include<BOPDS_Iterator.hxx>
#include<BOPDS_IteratorSI.hxx>
#include<BOPDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#include<BOPDS_ListOfPassKeyBoolean.hxx>
#include<BOPDS_ListOfPave.hxx>
#include<BOPDS_ListOfPaveBlock.hxx>
#include<BOPDS_MapOfCommonBlock.hxx>
#include<BOPDS_MapOfPassKey.hxx>
#include<BOPDS_MapOfPassKeyBoolean.hxx>
#include<BOPDS_MapOfPave.hxx>
#include<BOPDS_MapOfPaveBlock.hxx>
#include<BOPDS_PDS.hxx>
#include<BOPDS_PIterator.hxx>
#include<BOPDS_PassKey.hxx>
#include<BOPDS_PassKeyBoolean.hxx>
#include<BOPDS_PassKeyMapHasher.hxx>
#include<BOPDS_Pave.hxx>
#include<BOPDS_PaveBlock.hxx>
#include<BOPDS_PaveMapHasher.hxx>
#include<BOPDS_Point.hxx>
#include<BOPDS_ShapeInfo.hxx>
#include<BOPDS_SubIterator.hxx>
#include<BOPDS_Tools.hxx>
#include<BOPDS_VectorOfCurve.hxx>
#include<BOPDS_VectorOfFaceInfo.hxx>
#include<BOPDS_VectorOfIndexRange.hxx>
#include<BOPDS_VectorOfInterfEE.hxx>
#include<BOPDS_VectorOfInterfEF.hxx>
#include<BOPDS_VectorOfInterfFF.hxx>
#include<BOPDS_VectorOfInterfVE.hxx>
#include<BOPDS_VectorOfInterfVF.hxx>
#include<BOPDS_VectorOfInterfVV.hxx>
#include<BOPDS_VectorOfListOfPassKeyBoolean.hxx>
#include<BOPDS_VectorOfListOfPaveBlock.hxx>
#include<BOPDS_VectorOfPoint.hxx>
#include<BOPDS_VectorOfShapeInfo.hxx>
#include<BOPInt_Context.hxx>
#include<BOPInt_ShrunkRange.hxx>
#include<BOPInt_Tools.hxx>
#include<BOPTest.hxx>
#include<BOPTest_DrawableShape.hxx>
#include<BOPTest_Objects.hxx>
#include<BOPTools.hxx>
#include<BOPTools_AlgoTools.hxx>
#include<BOPTools_AlgoTools2D.hxx>
#include<BOPTools_AlgoTools3D.hxx>
#include<BOPTools_ConnexityBlock.hxx>
#include<BOPTools_CoupleOfShape.hxx>
#include<BOPTools_DataMapOfShapeSet.hxx>
#include<BOPTools_EdgeSet.hxx>
#include<BOPTools_ListOfConnexityBlock.hxx>
#include<BOPTools_ListOfCoupleOfShape.hxx>
#include<BOPTools_ListOfEdgeSet.hxx>
#include<BOPTools_ListOfShapeSet.hxx>
#include<BOPTools_MapOfSet.hxx>
#include<BOPTools_Set.hxx>
#include<BOPTools_SetMapHasher.hxx>
#include<BOPTools_ShapeSet.hxx>

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

// Needed headers necessary for compilation.

%}
