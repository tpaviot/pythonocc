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

#include<StepToGeom_MakeAxis1Placement.hxx>
#include<StepToGeom_MakeAxis2Placement.hxx>
#include<StepToGeom_MakeAxisPlacement.hxx>
#include<StepToGeom_MakeBSplineCurve.hxx>
#include<StepToGeom_MakeBSplineCurve2d.hxx>
#include<StepToGeom_MakeBSplineSurface.hxx>
#include<StepToGeom_MakeBoundedCurve.hxx>
#include<StepToGeom_MakeBoundedCurve2d.hxx>
#include<StepToGeom_MakeBoundedSurface.hxx>
#include<StepToGeom_MakeCartesianPoint.hxx>
#include<StepToGeom_MakeCartesianPoint2d.hxx>
#include<StepToGeom_MakeCircle.hxx>
#include<StepToGeom_MakeCircle2d.hxx>
#include<StepToGeom_MakeConic.hxx>
#include<StepToGeom_MakeConic2d.hxx>
#include<StepToGeom_MakeConicalSurface.hxx>
#include<StepToGeom_MakeCurve.hxx>
#include<StepToGeom_MakeCurve2d.hxx>
#include<StepToGeom_MakeCylindricalSurface.hxx>
#include<StepToGeom_MakeDirection.hxx>
#include<StepToGeom_MakeDirection2d.hxx>
#include<StepToGeom_MakeElementarySurface.hxx>
#include<StepToGeom_MakeEllipse.hxx>
#include<StepToGeom_MakeEllipse2d.hxx>
#include<StepToGeom_MakeHyperbola.hxx>
#include<StepToGeom_MakeHyperbola2d.hxx>
#include<StepToGeom_MakeLine.hxx>
#include<StepToGeom_MakeLine2d.hxx>
#include<StepToGeom_MakeParabola.hxx>
#include<StepToGeom_MakeParabola2d.hxx>
#include<StepToGeom_MakePlane.hxx>
#include<StepToGeom_MakePolyline.hxx>
#include<StepToGeom_MakePolyline2d.hxx>
#include<StepToGeom_MakeRectangularTrimmedSurface.hxx>
#include<StepToGeom_MakeSphericalSurface.hxx>
#include<StepToGeom_MakeSurface.hxx>
#include<StepToGeom_MakeSurfaceOfLinearExtrusion.hxx>
#include<StepToGeom_MakeSurfaceOfRevolution.hxx>
#include<StepToGeom_MakeSweptSurface.hxx>
#include<StepToGeom_MakeToroidalSurface.hxx>
#include<StepToGeom_MakeTransformation2d.hxx>
#include<StepToGeom_MakeTransformation3d.hxx>
#include<StepToGeom_MakeTrimmedCurve.hxx>
#include<StepToGeom_MakeTrimmedCurve2d.hxx>
#include<StepToGeom_MakeVectorWithMagnitude.hxx>
#include<StepToGeom_MakeVectorWithMagnitude2d.hxx>
#include<StepToGeom_Root.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_StepGeom_Ellipse.hxx>
#include<Handle_Geom2d_Ellipse.hxx>
#include<Handle_StepGeom_TrimmedCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_StepGeom_Direction.hxx>
#include<Handle_Geom_Direction.hxx>
#include<Handle_StepGeom_RectangularTrimmedSurface.hxx>
#include<Handle_Geom_RectangularTrimmedSurface.hxx>
#include<Handle_StepGeom_Polyline.hxx>
#include<Handle_StepGeom_Axis1Placement.hxx>
#include<Handle_Geom_Axis1Placement.hxx>
#include<Handle_StepGeom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Ellipse.hxx>
#include<Handle_StepGeom_BoundedCurve.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom2d_BoundedCurve.hxx>
#include<Handle_StepGeom_BSplineCurve.hxx>
#include<Handle_StepGeom_Surface.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_StepGeom_ElementarySurface.hxx>
#include<Handle_Geom_ElementarySurface.hxx>
#include<Handle_StepGeom_Hyperbola.hxx>
#include<Handle_Geom_Hyperbola.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<Handle_Geom2d_CartesianPoint.hxx>
#include<Handle_StepGeom_ConicalSurface.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_StepGeom_Conic.hxx>
#include<Handle_Geom_Conic.hxx>
#include<Handle_StepGeom_BoundedSurface.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_StepGeom_Vector.hxx>
#include<Handle_Geom2d_VectorWithMagnitude.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_Conic.hxx>
#include<Handle_StepGeom_BSplineSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_StepGeom_SweptSurface.hxx>
#include<Handle_Geom_SweptSurface.hxx>
#include<Handle_StepGeom_Parabola.hxx>
#include<Handle_Geom2d_Parabola.hxx>
#include<Handle_StepGeom_Plane.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_StepGeom_Circle.hxx>
#include<Handle_Geom2d_Circle.hxx>
#include<Handle_StepGeom_Line.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_StepGeom_Axis2Placement2d.hxx>
#include<Handle_Geom2d_AxisPlacement.hxx>
#include<Handle_Geom_Parabola.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<Handle_StepGeom_SphericalSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<Handle_StepGeom_SurfaceOfRevolution.hxx>
#include<Handle_Geom_SurfaceOfRevolution.hxx>
#include<Handle_Geom_CartesianPoint.hxx>
#include<Handle_Geom2d_Hyperbola.hxx>
#include<Handle_Geom_VectorWithMagnitude.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator2d.hxx>
#include<gp_Trsf2d.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator3d.hxx>
#include<gp_Trsf.hxx>
#include<Handle_StepGeom_ToroidalSurface.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
#include<Handle_Geom_Axis2Placement.hxx>
#include<Handle_StepGeom_CylindricalSurface.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_StepGeom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_Geom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_Geom2d_Direction.hxx>
%}
