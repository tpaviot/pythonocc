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

#include<Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape.hxx>
#include<Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_TopOpeBRepBuild_HBuilder.hxx>
#include<Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo.hxx>
#include<Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop.hxx>
#include<Handle_TopOpeBRepBuild_ListNodeOfListOfLoop.hxx>
#include<Handle_TopOpeBRepBuild_ListNodeOfListOfPave.hxx>
#include<Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape.hxx>
#include<Handle_TopOpeBRepBuild_Loop.hxx>
#include<Handle_TopOpeBRepBuild_Pave.hxx>
#include<TopOpeBRepBuild_Area1dBuilder.hxx>
#include<TopOpeBRepBuild_Area2dBuilder.hxx>
#include<TopOpeBRepBuild_Area3dBuilder.hxx>
#include<TopOpeBRepBuild_AreaBuilder.hxx>
#include<TopOpeBRepBuild_BlockBuilder.hxx>
#include<TopOpeBRepBuild_BlockIterator.hxx>
#include<TopOpeBRepBuild_Builder1.hxx>
#include<TopOpeBRepBuild_BuilderON.hxx>
#include<TopOpeBRepBuild_CompositeClassifier.hxx>
#include<TopOpeBRepBuild_CorrectFace2d.hxx>
#include<TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepBuild_DataMapOfShapeInteger.hxx>
#include<TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_DataMapOfShapeReal.hxx>
#include<TopOpeBRepBuild_EdgeBuilder.hxx>
#include<TopOpeBRepBuild_FaceAreaBuilder.hxx>
#include<TopOpeBRepBuild_FaceBuilder.hxx>
#include<TopOpeBRepBuild_FuseFace.hxx>
#include<TopOpeBRepBuild_GIter.hxx>
#include<TopOpeBRepBuild_GTool.hxx>
#include<TopOpeBRepBuild_GTopo.hxx>
#include<TopOpeBRepBuild_HBuilder.hxx>
#include<TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo.hxx>
#include<TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo.hxx>
#include<TopOpeBRepBuild_ListIteratorOfListOfListOfLoop.hxx>
#include<TopOpeBRepBuild_ListIteratorOfListOfLoop.hxx>
#include<TopOpeBRepBuild_ListIteratorOfListOfPave.hxx>
#include<TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_ListNodeOfListOfListOfLoop.hxx>
#include<TopOpeBRepBuild_ListNodeOfListOfLoop.hxx>
#include<TopOpeBRepBuild_ListNodeOfListOfPave.hxx>
#include<TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_ListOfListOfLoop.hxx>
#include<TopOpeBRepBuild_ListOfLoop.hxx>
#include<TopOpeBRepBuild_ListOfPave.hxx>
#include<TopOpeBRepBuild_ListOfShapeListOfShape.hxx>
#include<TopOpeBRepBuild_Loop.hxx>
#include<TopOpeBRepBuild_LoopClassifier.hxx>
#include<TopOpeBRepBuild_LoopEnum.hxx>
#include<TopOpeBRepBuild_LoopSet.hxx>
#include<TopOpeBRepBuild_PBuilder.hxx>
#include<TopOpeBRepBuild_PGTopo.hxx>
#include<TopOpeBRepBuild_PWireEdgeSet.hxx>
#include<TopOpeBRepBuild_Pave.hxx>
#include<TopOpeBRepBuild_PaveClassifier.hxx>
#include<TopOpeBRepBuild_PaveSet.hxx>
#include<TopOpeBRepBuild_ShapeListOfShape.hxx>
#include<TopOpeBRepBuild_ShapeSet.hxx>
#include<TopOpeBRepBuild_ShellFaceClassifier.hxx>
#include<TopOpeBRepBuild_ShellFaceSet.hxx>
#include<TopOpeBRepBuild_ShellToSolid.hxx>
#include<TopOpeBRepBuild_SolidAreaBuilder.hxx>
#include<TopOpeBRepBuild_SolidBuilder.hxx>
#include<TopOpeBRepBuild_SplitFace.hxx>
#include<TopOpeBRepBuild_Tools.hxx>
#include<TopOpeBRepBuild_Tools2d.hxx>
#include<TopOpeBRepBuild_VertexInfo.hxx>
#include<TopOpeBRepBuild_WireEdgeClassifier.hxx>
#include<TopOpeBRepBuild_WireEdgeSet.hxx>
#include<TopOpeBRepBuild_WireToFace.hxx>
#include<TopOpeBRepBuild_define.hxx>
#include<TopOpeBRepBuild_kpresu.hxx>

// Additional headers necessary for compilation.

#include<TopOpeBRepDS.hxx>
#include<TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_Association.hxx>
#include<TopOpeBRepDS_BuildTool.hxx>
#include<TopOpeBRepDS_Check.hxx>
#include<TopOpeBRepDS_CheckStatus.hxx>
#include<TopOpeBRepDS_Config.hxx>
#include<TopOpeBRepDS_Curve.hxx>
#include<TopOpeBRepDS_CurveData.hxx>
#include<TopOpeBRepDS_CurveExplorer.hxx>
#include<TopOpeBRepDS_CurveIterator.hxx>
#include<TopOpeBRepDS_CurvePointInterference.hxx>
#include<TopOpeBRepDS_DRAW.hxx>
#include<TopOpeBRepDS_DSS.hxx>
#include<TopOpeBRepDS_DSX.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfCurve.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfPoint.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfMapOfSurface.hxx>
#include<TopOpeBRepDS_DataMapIteratorOfShapeSurface.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfCurve.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfPoint.hxx>
#include<TopOpeBRepDS_DataMapNodeOfMapOfSurface.hxx>
#include<TopOpeBRepDS_DataMapNodeOfShapeSurface.hxx>
#include<TopOpeBRepDS_DataMapOfCheckStatus.hxx>
#include<TopOpeBRepDS_DataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapOfInterferenceListOfInterference.hxx>
#include<TopOpeBRepDS_DataMapOfInterferenceShape.hxx>
#include<TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_DataMapOfShapeState.hxx>
#include<TopOpeBRepDS_DataStructure.hxx>
#include<TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_DoubleMapOfIntegerShape.hxx>
#include<TopOpeBRepDS_Dumper.hxx>
#include<TopOpeBRepDS_EIR.hxx>
#include<TopOpeBRepDS_EXPORT.hxx>
#include<TopOpeBRepDS_Edge3dInterferenceTool.hxx>
#include<TopOpeBRepDS_EdgeInterferenceTool.hxx>
#include<TopOpeBRepDS_EdgeVertexInterference.hxx>
#include<TopOpeBRepDS_Explorer.hxx>
#include<TopOpeBRepDS_FIR.hxx>
#include<TopOpeBRepDS_FaceEdgeInterference.hxx>
#include<TopOpeBRepDS_FaceInterferenceTool.hxx>
#include<TopOpeBRepDS_Filter.hxx>
#include<TopOpeBRepDS_GapFiller.hxx>
#include<TopOpeBRepDS_GapTool.hxx>
#include<TopOpeBRepDS_GeometryData.hxx>
#include<TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx>
#include<TopOpeBRepDS_HDataStructure.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint.hxx>
#include<TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData.hxx>
#include<TopOpeBRepDS_IndexedDataMapOfShapeWithState.hxx>
#include<TopOpeBRepDS_IndexedDataMapOfVertexPoint.hxx>
#include<TopOpeBRepDS_Interference.hxx>
#include<TopOpeBRepDS_InterferenceIterator.hxx>
#include<TopOpeBRepDS_InterferenceTool.hxx>
#include<TopOpeBRepDS_Kind.hxx>
#include<TopOpeBRepDS_ListIteratorOfListOfInterference.hxx>
#include<TopOpeBRepDS_ListNodeOfListOfInterference.hxx>
#include<TopOpeBRepDS_ListOfInterference.hxx>
#include<TopOpeBRepDS_ListOfShapeOn1State.hxx>
#include<TopOpeBRepDS_MapOfCurve.hxx>
#include<TopOpeBRepDS_MapOfIntegerShapeData.hxx>
#include<TopOpeBRepDS_MapOfPoint.hxx>
#include<TopOpeBRepDS_MapOfShapeData.hxx>
#include<TopOpeBRepDS_MapOfSurface.hxx>
#include<TopOpeBRepDS_Marker.hxx>
#include<TopOpeBRepDS_PDataStructure.hxx>
#include<TopOpeBRepDS_Point.hxx>
#include<TopOpeBRepDS_PointData.hxx>
#include<TopOpeBRepDS_PointExplorer.hxx>
#include<TopOpeBRepDS_PointIterator.hxx>
#include<TopOpeBRepDS_ProcessInterferencesTool.hxx>
#include<TopOpeBRepDS_Reducer.hxx>
#include<TopOpeBRepDS_ShapeData.hxx>
#include<TopOpeBRepDS_ShapeShapeInterference.hxx>
#include<TopOpeBRepDS_ShapeSurface.hxx>
#include<TopOpeBRepDS_ShapeWithState.hxx>
#include<TopOpeBRepDS_SolidSurfaceInterference.hxx>
#include<TopOpeBRepDS_Surface.hxx>
#include<TopOpeBRepDS_SurfaceCurveInterference.hxx>
#include<TopOpeBRepDS_SurfaceData.hxx>
#include<TopOpeBRepDS_SurfaceExplorer.hxx>
#include<TopOpeBRepDS_SurfaceIterator.hxx>
#include<TopOpeBRepDS_TKI.hxx>
#include<TopOpeBRepDS_TOOL.hxx>
#include<TopOpeBRepDS_Transition.hxx>
#include<TopOpeBRepDS_connex.hxx>
#include<TopOpeBRepDS_define.hxx>
#include<TopOpeBRepDS_reDEB.hxx>
#include<TopOpeBRepDS_repvg.hxx>
#include<TopOpeBRepDS_samdom.hxx>
#include<TopOpeBRepDS_traceDSX.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopOpeBRepDS_BuildTool.hxx>
#include<Handle_TopOpeBRepDS_HDataStructure.hxx>
#include<TopoDS_Shape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopOpeBRepDS_SurfaceIterator.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopOpeBRepDS_CurveIterator.hxx>
#include<TopOpeBRepDS_PointIterator.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<gp_Pnt.hxx>
#include<TCollection_AsciiString.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<gp_Pnt2d.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<Handle_TopOpeBRepDS_Interference.hxx>
#include<TopOpeBRepDS_IndexedDataMapOfShapeWithState.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopOpeBRepDS_DataMapOfShapeState.hxx>
#include<TopOpeBRepTool_ShapeClassifier.hxx>
#include<gp_Vec.hxx>
%}
