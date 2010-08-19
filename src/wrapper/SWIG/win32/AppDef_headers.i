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

#include<AppDef_Array1OfMultiPointConstraint.hxx>
#include<AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSplineCompute.hxx>
#include<AppDef_Compute.hxx>
#include<AppDef_Gradient_BFGSOfMyGradientOfCompute.hxx>
#include<AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_Gradient_BFGSOfTheGradient.hxx>
#include<AppDef_HArray1OfMultiPointConstraint.hxx>
#include<AppDef_MultiLine.hxx>
#include<AppDef_MultiPointConstraint.hxx>
#include<AppDef_MyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_MyCriterionOfTheVariational.hxx>
#include<AppDef_MyGradientOfCompute.hxx>
#include<AppDef_MyGradientbisOfBSplineCompute.hxx>
#include<AppDef_MyLineTool.hxx>
#include<AppDef_ParFunctionOfMyGradientOfCompute.hxx>
#include<AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ParFunctionOfTheGradient.hxx>
#include<AppDef_ParLeastSquareOfMyGradientOfCompute.hxx>
#include<AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ParLeastSquareOfTheGradient.hxx>
#include<AppDef_ResConstraintOfMyGradientOfCompute.hxx>
#include<AppDef_ResConstraintOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ResConstraintOfTheGradient.hxx>
#include<AppDef_TheFunction.hxx>
#include<AppDef_TheGradient.hxx>
#include<AppDef_TheLeastSquares.hxx>
#include<AppDef_TheResol.hxx>
#include<AppDef_TheVariational.hxx>
#include<Handle_AppDef_HArray1OfMultiPointConstraint.hxx>
#include<Handle_AppDef_MyCriterionOfTheVariational.hxx>

// Additional headers necessary for compilation.

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

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<math_Vector.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<math_Matrix.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_FEmTool_Curve.hxx>
#include<Handle_FEmTool_HAssemblyTable.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
%}
