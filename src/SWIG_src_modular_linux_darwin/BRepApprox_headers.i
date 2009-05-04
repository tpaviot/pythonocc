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

#include<BRepApprox_Approx.hxx>
#include<BRepApprox_ApproxLine.hxx>
#include<BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_MyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_SurfaceTool.hxx>
#include<BRepApprox_TheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_TheComputeLineOfApprox.hxx>
#include<BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheMultiLineOfApprox.hxx>
#include<BRepApprox_TheMultiLineToolOfApprox.hxx>
#include<BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx>
#include<Handle_BRepApprox_ApproxLine.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<math_Vector.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<math_Matrix.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<IntSurf_Quadric.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<math_FunctionSetRoot.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<gp_Vec2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<gp_Dir2d.hxx>
%}
