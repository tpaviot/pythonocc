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

#include<BRepOffsetAPI_DraftAngle.hxx>
#include<BRepOffsetAPI_FindContigousEdges.hxx>
#include<BRepOffsetAPI_MakeDraft.hxx>
#include<BRepOffsetAPI_MakeEvolved.hxx>
#include<BRepOffsetAPI_MakeFilling.hxx>
#include<BRepOffsetAPI_MakeOffset.hxx>
#include<BRepOffsetAPI_MakeOffsetShape.hxx>
#include<BRepOffsetAPI_MakePipe.hxx>
#include<BRepOffsetAPI_MakePipeShell.hxx>
#include<BRepOffsetAPI_MakeThickSolid.hxx>
#include<BRepOffsetAPI_MiddlePath.hxx>
#include<BRepOffsetAPI_NormalProjection.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_Sewing.hxx>
#include<BRepOffsetAPI_ThruSections.hxx>
#include<Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>
#include<Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>

// Additional headers necessary for compilation.

#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_HOffsetCurve.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_HSurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_HSurfaceOfRevolution.hxx>
#include<Adaptor3d_HSurfaceTool.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_OffsetCurve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_SurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_SurfaceOfRevolution.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_TopolTool.hxx>
#include<AppParCurves.hxx>
#include<AppParCurves_Array1OfConstraintCouple.hxx>
#include<AppParCurves_Array1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiCurve.hxx>
#include<AppParCurves_Array1OfMultiPoint.hxx>
#include<AppParCurves_Constraint.hxx>
#include<AppParCurves_ConstraintCouple.hxx>
#include<AppParCurves_HArray1OfConstraintCouple.hxx>
#include<AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<AppParCurves_HArray1OfMultiCurve.hxx>
#include<AppParCurves_HArray1OfMultiPoint.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_MultiPoint.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<AppParCurves_SmoothCriterion.hxx>
#include<BRepTools.hxx>
#include<BRepTools_DataMapIteratorOfMapOfVertexPnt2d.hxx>
#include<BRepTools_DataMapNodeOfMapOfVertexPnt2d.hxx>
#include<BRepTools_GTrsfModification.hxx>
#include<BRepTools_MapOfVertexPnt2d.hxx>
#include<BRepTools_Modification.hxx>
#include<BRepTools_Modifier.hxx>
#include<BRepTools_NurbsConvertModification.hxx>
#include<BRepTools_Quilt.hxx>
#include<BRepTools_ReShape.hxx>
#include<BRepTools_ShapeSet.hxx>
#include<BRepTools_Substitution.hxx>
#include<BRepTools_TrsfModification.hxx>
#include<BRepTools_WireExplorer.hxx>
#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_TorusToBSplineSurface.hxx>
#include<Handle_math_NotSquare.hxx>
#include<Handle_math_SingularMatrix.hxx>
#include<NCollection_Array1.hxx>
#include<NCollection_Array2.hxx>
#include<NCollection_BaseAllocator.hxx>
#include<NCollection_BaseCollection.hxx>
#include<NCollection_BaseList.hxx>
#include<NCollection_BaseMap.hxx>
#include<NCollection_BaseSequence.hxx>
#include<NCollection_BaseVector.hxx>
#include<NCollection_Comparator.hxx>
#include<NCollection_DataMap.hxx>
#include<NCollection_DefaultHasher.hxx>
#include<NCollection_DefineAlloc.hxx>
#include<NCollection_DefineArray1.hxx>
#include<NCollection_DefineArray2.hxx>
#include<NCollection_DefineBaseCollection.hxx>
#include<NCollection_DefineDataMap.hxx>
#include<NCollection_DefineDoubleMap.hxx>
#include<NCollection_DefineHArray1.hxx>
#include<NCollection_DefineHArray2.hxx>
#include<NCollection_DefineHSequence.hxx>
#include<NCollection_DefineHSet.hxx>
#include<NCollection_DefineIndexedDataMap.hxx>
#include<NCollection_DefineIndexedMap.hxx>
#include<NCollection_DefineList.hxx>
#include<NCollection_DefineMap.hxx>
#include<NCollection_DefineQueue.hxx>
#include<NCollection_DefineSList.hxx>
#include<NCollection_DefineSequence.hxx>
#include<NCollection_DefineSet.hxx>
#include<NCollection_DefineStack.hxx>
#include<NCollection_DefineTListIterator.hxx>
#include<NCollection_DefineTListNode.hxx>
#include<NCollection_DefineVector.hxx>
#include<NCollection_DoubleMap.hxx>
#include<NCollection_HArray1.hxx>
#include<NCollection_HArray2.hxx>
#include<NCollection_HSequence.hxx>
#include<NCollection_HSet.hxx>
#include<NCollection_Handle.hxx>
#include<NCollection_HeapAllocator.hxx>
#include<NCollection_IncAllocator.hxx>
#include<NCollection_IndexedDataMap.hxx>
#include<NCollection_IndexedMap.hxx>
#include<NCollection_List.hxx>
#include<NCollection_ListNode.hxx>
#include<NCollection_Map.hxx>
#include<NCollection_Queue.hxx>
#include<NCollection_QuickSort.hxx>
#include<NCollection_SList.hxx>
#include<NCollection_Sequence.hxx>
#include<NCollection_Set.hxx>
#include<NCollection_SparseArray.hxx>
#include<NCollection_SparseArrayBase.hxx>
#include<NCollection_Stack.hxx>
#include<NCollection_StdAllocator.hxx>
#include<NCollection_StdBase.hxx>
#include<NCollection_String.hxx>
#include<NCollection_TListIterator.hxx>
#include<NCollection_TListNode.hxx>
#include<NCollection_TypeDef.hxx>
#include<NCollection_UBTree.hxx>
#include<NCollection_UBTreeFiller.hxx>
#include<NCollection_UtfIterator.hxx>
#include<NCollection_UtfString.hxx>
#include<NCollection_Vector.hxx>
#include<TopTools.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapOfShapeReal.hxx>
#include<TopTools_DataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedDataMapOfShapeAddress.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_ListNodeOfListOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_LocationSetPtr.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_MutexForShapeProvider.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TopoDS_Wire.hxx>
#include<gp_Ax2.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Law_Function.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopoDS_Shell.hxx>
%}
