/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<GEOM_Application.hxx>
#include<GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx>
#include<GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#include<GEOM_DataMapOfAsciiStringTransient.hxx>
#include<GEOM_Engine.hxx>
#include<GEOM_Function.hxx>
#include<GEOM_IOperations.hxx>
#include<GEOM_ISubShape.hxx>
#include<GEOM_Object.hxx>
#include<GEOM_Parameter.hxx>
#include<GEOM_PythonDump.hxx>
#include<GEOM_Solver.hxx>
#include<GEOM_SubShapeDriver.hxx>
#include<Handle_GEOM_Application.hxx>
#include<Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>

// Additional headers necessary for compilation.

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
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_FinderShapeOn.hxx>
#include<GEOMAlgo_FinderShapeOn1.hxx>
#include<GEOMAlgo_FinderShapeOn2.hxx>
#include<GEOMAlgo_FinderShapeOnQuad.hxx>
#include<GEOMAlgo_GlueAnalyser.hxx>
#include<GEOMAlgo_Gluer.hxx>
#include<GEOMAlgo_Gluer1.hxx>
#include<GEOMAlgo_HAlgo.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx>
#include<GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfPassKeyListOfShape.hxx>
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
#include<GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListNodeOfListOfPnt.hxx>
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
#include<GEOMAlgo_WireEdgeSet.hxx>
#include<GEOMAlgo_WireSolid.hxx>
#include<GEOMAlgo_WireSplitter.hxx>
#include<GEOMImpl_ArcDriver.hxx>
#include<GEOMImpl_ArchimedeDriver.hxx>
#include<GEOMImpl_Block6Explorer.hxx>
#include<GEOMImpl_BlockDriver.hxx>
#include<GEOMImpl_BooleanDriver.hxx>
#include<GEOMImpl_BoxDriver.hxx>
#include<GEOMImpl_ChamferDriver.hxx>
#include<GEOMImpl_CircleDriver.hxx>
#include<GEOMImpl_ConeDriver.hxx>
#include<GEOMImpl_CopyDriver.hxx>
#include<GEOMImpl_CurveDriver.hxx>
#include<GEOMImpl_CylinderDriver.hxx>
#include<GEOMImpl_DraftDriver.hxx>
#include<GEOMImpl_EllipseDriver.hxx>
#include<GEOMImpl_ExportDriver.hxx>
#include<GEOMImpl_FaceDriver.hxx>
#include<GEOMImpl_FilletDriver.hxx>
#include<GEOMImpl_FillingDriver.hxx>
#include<GEOMImpl_Gen.hxx>
#include<GEOMImpl_GlueDriver.hxx>
#include<GEOMImpl_HealingDriver.hxx>
#include<GEOMImpl_I3DPrimOperations.hxx>
#include<GEOMImpl_IArc.hxx>
#include<GEOMImpl_IArchimede.hxx>
#include<GEOMImpl_IBasicOperations.hxx>
#include<GEOMImpl_IBlockTrsf.hxx>
#include<GEOMImpl_IBlocks.hxx>
#include<GEOMImpl_IBlocksOperations.hxx>
#include<GEOMImpl_IBoolean.hxx>
#include<GEOMImpl_IBooleanOperations.hxx>
#include<GEOMImpl_IBox.hxx>
#include<GEOMImpl_IChamfer.hxx>
#include<GEOMImpl_ICircle.hxx>
#include<GEOMImpl_ICone.hxx>
#include<GEOMImpl_ICopy.hxx>
#include<GEOMImpl_ICurve.hxx>
#include<GEOMImpl_ICurvesOperations.hxx>
#include<GEOMImpl_ICylinder.hxx>
#include<GEOMImpl_IDraft.hxx>
#include<GEOMImpl_IEllipse.hxx>
#include<GEOMImpl_IFace.hxx>
#include<GEOMImpl_IFillet.hxx>
#include<GEOMImpl_IFilling.hxx>
#include<GEOMImpl_IGlue.hxx>
#include<GEOMImpl_IGroupOperations.hxx>
#include<GEOMImpl_IHealing.hxx>
#include<GEOMImpl_IHealingOperations.hxx>
#include<GEOMImpl_IImportExport.hxx>
#include<GEOMImpl_IInsertOperations.hxx>
#include<GEOMImpl_ILine.hxx>
#include<GEOMImpl_ILocalOperations.hxx>
#include<GEOMImpl_IMarker.hxx>
#include<GEOMImpl_IMeasure.hxx>
#include<GEOMImpl_IMeasureOperations.hxx>
#include<GEOMImpl_IMirror.hxx>
#include<GEOMImpl_IOffset.hxx>
#include<GEOMImpl_IPartition.hxx>
#include<GEOMImpl_IPipe.hxx>
#include<GEOMImpl_IPipeBiNormal.hxx>
#include<GEOMImpl_IPipeDiffSect.hxx>
#include<GEOMImpl_IPipeShellSect.hxx>
#include<GEOMImpl_IPlane.hxx>
#include<GEOMImpl_IPlate.hxx>
#include<GEOMImpl_IPoint.hxx>
#include<GEOMImpl_IPolyline.hxx>
#include<GEOMImpl_IPosition.hxx>
#include<GEOMImpl_IPrism.hxx>
#include<GEOMImpl_IRevolution.hxx>
#include<GEOMImpl_IRotate.hxx>
#include<GEOMImpl_IScale.hxx>
#include<GEOMImpl_IShapes.hxx>
#include<GEOMImpl_IShapesOperations.hxx>
#include<GEOMImpl_ISketcher.hxx>
#include<GEOMImpl_ISphere.hxx>
#include<GEOMImpl_ISpline.hxx>
#include<GEOMImpl_IThickSolid.hxx>
#include<GEOMImpl_IThruSections.hxx>
#include<GEOMImpl_ITorus.hxx>
#include<GEOMImpl_ITransformOperations.hxx>
#include<GEOMImpl_ITranslate.hxx>
#include<GEOMImpl_IVariableFillet.hxx>
#include<GEOMImpl_IVector.hxx>
#include<GEOMImpl_ImportDriver.hxx>
#include<GEOMImpl_LineDriver.hxx>
#include<GEOMImpl_MarkerDriver.hxx>
#include<GEOMImpl_MeasureDriver.hxx>
#include<GEOMImpl_MirrorDriver.hxx>
#include<GEOMImpl_OffsetDriver.hxx>
#include<GEOMImpl_PartitionDriver.hxx>
#include<GEOMImpl_PipeDriver.hxx>
#include<GEOMImpl_PlaneDriver.hxx>
#include<GEOMImpl_PlateDriver.hxx>
#include<GEOMImpl_PointDriver.hxx>
#include<GEOMImpl_PolylineDriver.hxx>
#include<GEOMImpl_PositionDriver.hxx>
#include<GEOMImpl_PrismDriver.hxx>
#include<GEOMImpl_RevolutionDriver.hxx>
#include<GEOMImpl_RotateDriver.hxx>
#include<GEOMImpl_ScaleDriver.hxx>
#include<GEOMImpl_ShapeDriver.hxx>
#include<GEOMImpl_SketcherDriver.hxx>
#include<GEOMImpl_SphereDriver.hxx>
#include<GEOMImpl_SplineDriver.hxx>
#include<GEOMImpl_Template.hxx>
#include<GEOMImpl_ThickSolidDriver.hxx>
#include<GEOMImpl_ThruSectionsDriver.hxx>
#include<GEOMImpl_TorusDriver.hxx>
#include<GEOMImpl_TranslateDriver.hxx>
#include<GEOMImpl_Types.hxx>
#include<GEOMImpl_VariableFilletDriver.hxx>
#include<GEOMImpl_VectorDriver.hxx>

// Needed headers necessary for compilation.

%}
