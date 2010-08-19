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
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<Handle_AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<Handle_AppParCurves_HArray1OfMultiCurve.hxx>
#include<Handle_AppParCurves_HArray1OfMultiPoint.hxx>
#include<Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<Handle_AppParCurves_SmoothCriterion.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_FEmTool_Curve.hxx>
#include<Handle_FEmTool_HAssemblyTable.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<math_Matrix.hxx>
#include<math_Vector.hxx>
#include<AppParCurves.hxx>
#include<math_IntegerVector.hxx>
%}
