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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<BOP_Area2dBuilder.hxx>
#include<BOP_Area3dBuilder.hxx>
#include<BOP_AreaBuilder.hxx>
#include<BOP_ArgumentAnalyzer.hxx>
#include<BOP_BlockBuilder.hxx>
#include<BOP_BlockIterator.hxx>
#include<BOP_Builder.hxx>
#include<BOP_BuilderTools.hxx>
#include<BOP_CheckResult.hxx>
#include<BOP_CheckStatus.hxx>
#include<BOP_CompositeClassifier.hxx>
#include<BOP_ConnexityBlock.hxx>
#include<BOP_CorrectTolerances.hxx>
#include<BOP_Draw.hxx>
#include<BOP_EdgeInfo.hxx>
#include<BOP_EmptyBuilder.hxx>
#include<BOP_FaceAreaBuilder.hxx>
#include<BOP_FaceBuilder.hxx>
#include<BOP_FaceInfo.hxx>
#include<BOP_HistoryCollector.hxx>
#include<BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo.hxx>
#include<BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo.hxx>
#include<BOP_IndexedDataMapOfEdgeListFaceInfo.hxx>
#include<BOP_IndexedDataMapOfSolidClassifier.hxx>
#include<BOP_IndexedDataMapOfVertexListEdgeInfo.hxx>
#include<BOP_ListIteratorOfListOfCheckResult.hxx>
#include<BOP_ListIteratorOfListOfConnexityBlock.hxx>
#include<BOP_ListIteratorOfListOfEdgeInfo.hxx>
#include<BOP_ListIteratorOfListOfFaceInfo.hxx>
#include<BOP_ListIteratorOfListOfListOfLoop.hxx>
#include<BOP_ListIteratorOfListOfLoop.hxx>
#include<BOP_ListNodeOfListOfCheckResult.hxx>
#include<BOP_ListNodeOfListOfConnexityBlock.hxx>
#include<BOP_ListNodeOfListOfEdgeInfo.hxx>
#include<BOP_ListNodeOfListOfFaceInfo.hxx>
#include<BOP_ListNodeOfListOfListOfLoop.hxx>
#include<BOP_ListNodeOfListOfLoop.hxx>
#include<BOP_ListOfCheckResult.hxx>
#include<BOP_ListOfConnexityBlock.hxx>
#include<BOP_ListOfEdgeInfo.hxx>
#include<BOP_ListOfFaceInfo.hxx>
#include<BOP_ListOfListOfLoop.hxx>
#include<BOP_ListOfLoop.hxx>
#include<BOP_Loop.hxx>
#include<BOP_LoopClassifier.hxx>
#include<BOP_LoopEnum.hxx>
#include<BOP_LoopSet.hxx>
#include<BOP_Operation.hxx>
#include<BOP_PBuilder.hxx>
#include<BOP_PShellFaceSet.hxx>
#include<BOP_PSoClassif.hxx>
#include<BOP_PWireEdgeSet.hxx>
#include<BOP_Refiner.hxx>
#include<BOP_SDFWESFiller.hxx>
#include<BOP_SFSCorrector.hxx>
#include<BOP_Section.hxx>
#include<BOP_SectionHistoryCollector.hxx>
#include<BOP_SeqOfSeqOfShape.hxx>
#include<BOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#include<BOP_ShapeSet.hxx>
#include<BOP_ShellFaceClassifier.hxx>
#include<BOP_ShellFaceSet.hxx>
#include<BOP_ShellShell.hxx>
#include<BOP_ShellSolid.hxx>
#include<BOP_ShellSolidHistoryCollector.hxx>
#include<BOP_ShellSplitter.hxx>
#include<BOP_SolidAreaBuilder.hxx>
#include<BOP_SolidBuilder.hxx>
#include<BOP_SolidClassifier.hxx>
#include<BOP_SolidSolid.hxx>
#include<BOP_SolidSolidHistoryCollector.hxx>
#include<BOP_WESCorrector.hxx>
#include<BOP_WireEdgeClassifier.hxx>
#include<BOP_WireEdgeSet.hxx>
#include<BOP_WireShape.hxx>
#include<BOP_WireShell.hxx>
#include<BOP_WireSolid.hxx>
#include<BOP_WireSolidHistoryCollector.hxx>
#include<BOP_WireSplitter.hxx>
#include<BOP_WireWire.hxx>
#include<Handle_BOP_HistoryCollector.hxx>
#include<Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo.hxx>
#include<Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo.hxx>
#include<Handle_BOP_ListNodeOfListOfCheckResult.hxx>
#include<Handle_BOP_ListNodeOfListOfConnexityBlock.hxx>
#include<Handle_BOP_ListNodeOfListOfEdgeInfo.hxx>
#include<Handle_BOP_ListNodeOfListOfFaceInfo.hxx>
#include<Handle_BOP_ListNodeOfListOfListOfLoop.hxx>
#include<Handle_BOP_ListNodeOfListOfLoop.hxx>
#include<Handle_BOP_Loop.hxx>
#include<Handle_BOP_SectionHistoryCollector.hxx>
#include<Handle_BOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#include<Handle_BOP_ShellSolidHistoryCollector.hxx>
#include<Handle_BOP_SolidSolidHistoryCollector.hxx>
#include<Handle_BOP_WireSolidHistoryCollector.hxx>

// Additional headers necessary for compilation.

#include<BooleanOperations_AncestorsAndSuccessors.hxx>
#include<BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include<BooleanOperations_Explorer.hxx>
#include<BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger.hxx>
#include<BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include<BooleanOperations_KindOfInterference.hxx>
#include<BooleanOperations_KindOfIntersection.hxx>
#include<BooleanOperations_OnceExplorer.hxx>
#include<BooleanOperations_PShapeAndInterferences.hxx>
#include<BooleanOperations_PShapesDataStructure.hxx>
#include<BooleanOperations_ShapeAndInterferences.hxx>
#include<BooleanOperations_ShapesDataStructure.hxx>
#include<BooleanOperations_StateOfShape.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<BOPTools_DSFiller.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<BOPTools_CArray1OfSSInterference.hxx>
#include<BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Shell.hxx>
#include<gp_Pnt.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir.hxx>
#include<BOPTools_IndexedDataMapOfIntegerState.hxx>
%}
