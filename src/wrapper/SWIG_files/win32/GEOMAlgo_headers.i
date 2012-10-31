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

#include<GEOMAlgo_Algo.hxx>
#include<GEOMAlgo_Builder.hxx>
#include<GEOMAlgo_BuilderArea.hxx>
#include<GEOMAlgo_BuilderFace.hxx>
#include<GEOMAlgo_BuilderShape.hxx>
#include<GEOMAlgo_BuilderSolid.hxx>
#include<GEOMAlgo_BuilderTools.hxx>
#include<GEOMAlgo_Clsf.hxx>
#include<GEOMAlgo_ClsfBox.hxx>
#include<GEOMAlgo_ClsfSolid.hxx>
#include<GEOMAlgo_ClsfSurf.hxx>
#include<GEOMAlgo_CoupleOfShapes.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeMapOfShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapePnt.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_DataMapOfOrientedShapeShape.hxx>
#include<GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapOfShapeMapOfShape.hxx>
#include<GEOMAlgo_DataMapOfShapePnt.hxx>
#include<GEOMAlgo_DataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_FinderShapeOn.hxx>
#include<GEOMAlgo_FinderShapeOn1.hxx>
#include<GEOMAlgo_FinderShapeOn2.hxx>
#include<GEOMAlgo_FinderShapeOnQuad.hxx>
#include<GEOMAlgo_GetInPlace.hxx>
#include<GEOMAlgo_GlueAnalyser.hxx>
#include<GEOMAlgo_GlueDetector.hxx>
#include<GEOMAlgo_Gluer.hxx>
#include<GEOMAlgo_Gluer2.hxx>
#include<GEOMAlgo_GluerAlgo.hxx>
#include<GEOMAlgo_HAlgo.hxx>
#include<GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeShapeInfo.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeState.hxx>
#include<GEOMAlgo_KindOfBounds.hxx>
#include<GEOMAlgo_KindOfClosed.hxx>
#include<GEOMAlgo_KindOfName.hxx>
#include<GEOMAlgo_KindOfShape.hxx>
#include<GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#include<GEOMAlgo_ListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListOfPnt.hxx>
#include<GEOMAlgo_PWireEdgeSet.hxx>
#include<GEOMAlgo_PassKey.hxx>
#include<GEOMAlgo_PassKeyMapHasher.hxx>
#include<GEOMAlgo_PassKeyShape.hxx>
#include<GEOMAlgo_PassKeyShapeMapHasher.hxx>
#include<GEOMAlgo_ShapeAlgo.hxx>
#include<GEOMAlgo_ShapeInfo.hxx>
#include<GEOMAlgo_ShapeInfoFiller.hxx>
#include<GEOMAlgo_ShapeSet.hxx>
#include<GEOMAlgo_ShapeSolid.hxx>
#include<GEOMAlgo_ShellSolid.hxx>
#include<GEOMAlgo_SolidSolid.hxx>
#include<GEOMAlgo_Splitter.hxx>
#include<GEOMAlgo_State.hxx>
#include<GEOMAlgo_StateCollector.hxx>
#include<GEOMAlgo_SurfaceTools.hxx>
#include<GEOMAlgo_Tools.hxx>
#include<GEOMAlgo_Tools3D.hxx>
#include<GEOMAlgo_VertexSolid.hxx>
#include<GEOMAlgo_WESCorrector.hxx>
#include<GEOMAlgo_WESScaler.hxx>
#include<GEOMAlgo_WireEdgeSet.hxx>
#include<GEOMAlgo_WireSolid.hxx>
#include<GEOMAlgo_WireSplitter.hxx>

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
#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>
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
#include<gp_EulerSequence.hxx>
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
#include<gp_Quaternion.hxx>
#include<gp_QuaternionNLerp.hxx>
#include<gp_QuaternionSLerp.hxx>
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

#include<NMTTools_PaveFiller.hxx>
%}
