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

#include<BOPTools_Array1OfPave.hxx>
#include<BOPTools_Array2OfIntersectionStatus.hxx>
#include<BOPTools_CArray1OfEEInterference.hxx>
#include<BOPTools_CArray1OfESInterference.hxx>
#include<BOPTools_CArray1OfInterferenceLine.hxx>
#include<BOPTools_CArray1OfPave.hxx>
#include<BOPTools_CArray1OfSSInterference.hxx>
#include<BOPTools_CArray1OfVEInterference.hxx>
#include<BOPTools_CArray1OfVSInterference.hxx>
#include<BOPTools_CArray1OfVVInterference.hxx>
#include<BOPTools_CheckResult.hxx>
#include<BOPTools_CheckStatus.hxx>
#include<BOPTools_Checker.hxx>
#include<BOPTools_CommonBlock.hxx>
#include<BOPTools_CommonBlockAPI.hxx>
#include<BOPTools_CommonBlockPool.hxx>
#include<BOPTools_ComparePave.hxx>
#include<BOPTools_CoupleOfInteger.hxx>
#include<BOPTools_CoupleOfIntegerMapHasher.hxx>
#include<BOPTools_Curve.hxx>
#include<BOPTools_DEInfo.hxx>
#include<BOPTools_DEProcessor.hxx>
#include<BOPTools_DSFiller.hxx>
#include<BOPTools_EEInterference.hxx>
#include<BOPTools_ESInterference.hxx>
#include<BOPTools_HArray2OfIntersectionStatus.hxx>
#include<BOPTools_IDMapOfPaveBlockIMapOfInteger.hxx>
#include<BOPTools_IDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include<BOPTools_IMapOfPaveBlock.hxx>
#include<BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger.hxx>
#include<BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include<BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo.hxx>
#include<BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet.hxx>
#include<BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#include<BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include<BOPTools_IndexedDataMapOfIntegerDEInfo.hxx>
#include<BOPTools_IndexedDataMapOfIntegerPaveSet.hxx>
#include<BOPTools_IndexedDataMapOfIntegerState.hxx>
#include<BOPTools_IndexedDataMapOfShapeWithState.hxx>
#include<BOPTools_IndexedMapNodeOfIMapOfPaveBlock.hxx>
#include<BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger.hxx>
#include<BOPTools_IndexedMapOfCoupleOfInteger.hxx>
#include<BOPTools_Interference.hxx>
#include<BOPTools_InterferenceLine.hxx>
#include<BOPTools_InterferencePool.hxx>
#include<BOPTools_IntersectionStatus.hxx>
#include<BOPTools_IteratorOfCoupleOfShape.hxx>
#include<BOPTools_ListIteratorOfListOfCheckResults.hxx>
#include<BOPTools_ListIteratorOfListOfCommonBlock.hxx>
#include<BOPTools_ListIteratorOfListOfCoupleOfInteger.hxx>
#include<BOPTools_ListIteratorOfListOfInterference.hxx>
#include<BOPTools_ListIteratorOfListOfPave.hxx>
#include<BOPTools_ListIteratorOfListOfPaveBlock.hxx>
#include<BOPTools_ListIteratorOfListOfShapeEnum.hxx>
#include<BOPTools_ListNodeOfListOfCheckResults.hxx>
#include<BOPTools_ListNodeOfListOfCommonBlock.hxx>
#include<BOPTools_ListNodeOfListOfCoupleOfInteger.hxx>
#include<BOPTools_ListNodeOfListOfInterference.hxx>
#include<BOPTools_ListNodeOfListOfPave.hxx>
#include<BOPTools_ListNodeOfListOfPaveBlock.hxx>
#include<BOPTools_ListNodeOfListOfShapeEnum.hxx>
#include<BOPTools_ListOfCheckResults.hxx>
#include<BOPTools_ListOfCommonBlock.hxx>
#include<BOPTools_ListOfCoupleOfInteger.hxx>
#include<BOPTools_ListOfInterference.hxx>
#include<BOPTools_ListOfPave.hxx>
#include<BOPTools_ListOfPaveBlock.hxx>
#include<BOPTools_ListOfShapeEnum.hxx>
#include<BOPTools_PCurveMaker.hxx>
#include<BOPTools_PDSFiller.hxx>
#include<BOPTools_PInterferencePool.hxx>
#include<BOPTools_PPaveFiller.hxx>
#include<BOPTools_PShapeShapeInterference.hxx>
#include<BOPTools_Pave.hxx>
#include<BOPTools_PaveBlock.hxx>
#include<BOPTools_PaveBlockIterator.hxx>
#include<BOPTools_PaveBlockMapHasher.hxx>
#include<BOPTools_PaveFiller.hxx>
#include<BOPTools_PavePool.hxx>
#include<BOPTools_PaveSet.hxx>
#include<BOPTools_PointBetween.hxx>
#include<BOPTools_QuickSortPave.hxx>
#include<BOPTools_RoughShapeIntersector.hxx>
#include<BOPTools_SSInterference.hxx>
#include<BOPTools_SSIntersectionAttribute.hxx>
#include<BOPTools_SequenceNodeOfSequenceOfCurves.hxx>
#include<BOPTools_SequenceNodeOfSequenceOfPaveBlock.hxx>
#include<BOPTools_SequenceOfCurves.hxx>
#include<BOPTools_SequenceOfPaveBlock.hxx>
#include<BOPTools_ShapeShapeInterference.hxx>
#include<BOPTools_SolidStateFiller.hxx>
#include<BOPTools_SplitShapesPool.hxx>
#include<BOPTools_StateFiller.hxx>
#include<BOPTools_Tools.hxx>
#include<BOPTools_Tools2D.hxx>
#include<BOPTools_Tools3D.hxx>
#include<BOPTools_VEInterference.hxx>
#include<BOPTools_VSInterference.hxx>
#include<BOPTools_VVInterference.hxx>
#include<BOPTools_WireStateFiller.hxx>
#include<Handle_BOPTools_HArray2OfIntersectionStatus.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState.hxx>
#include<Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState.hxx>
#include<Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock.hxx>
#include<Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger.hxx>
#include<Handle_BOPTools_ListNodeOfListOfCheckResults.hxx>
#include<Handle_BOPTools_ListNodeOfListOfCommonBlock.hxx>
#include<Handle_BOPTools_ListNodeOfListOfCoupleOfInteger.hxx>
#include<Handle_BOPTools_ListNodeOfListOfInterference.hxx>
#include<Handle_BOPTools_ListNodeOfListOfPave.hxx>
#include<Handle_BOPTools_ListNodeOfListOfPaveBlock.hxx>
#include<Handle_BOPTools_ListNodeOfListOfShapeEnum.hxx>
#include<Handle_BOPTools_SequenceNodeOfSequenceOfCurves.hxx>
#include<Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shape.hxx>
#include<IntTools_Curve.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TopoDS_Edge.hxx>
#include<TColStd_SetOfInteger.hxx>
#include<Handle_IntTools_Context.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<IntTools_CommonPrt.hxx>
#include<IntTools_ShrunkRange.hxx>
#include<BooleanOperations_ShapesDataStructure.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<IntTools_Range.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<ProjLib_ProjectedCurve.hxx>
#include<gp_Dir.hxx>
#include<TopoDS_Wire.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<Handle_Geom_Surface.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt2d.hxx>
#include<TopoDS_Solid.hxx>
#include<IntTools_SequenceOfCurves.hxx>
#include<IntTools_SequenceOfPntOn2Faces.hxx>
%}
