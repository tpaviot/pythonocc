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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module GeomAbs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomAbs_renames.i


%include GeomAbs_required_python_modules.i


%include GeomAbs_dependencies.i


%include GeomAbs_headers.i


enum GeomAbs_UVSense {
	GeomAbs_SameUV,
	GeomAbs_SameU,
	GeomAbs_SameV,
	GeomAbs_OppositeUV,
	};

enum GeomAbs_CurveForm {
	GeomAbs_PolylineForm,
	GeomAbs_CircularForm,
	GeomAbs_EllipticForm,
	GeomAbs_HyperbolicForm,
	GeomAbs_ParabolicForm,
	GeomAbs_OtherCurveForm,
	};

enum GeomAbs_JoinType {
	GeomAbs_Arc,
	GeomAbs_Tangent,
	GeomAbs_Intersection,
	};

enum GeomAbs_Shape {
	GeomAbs_C0,
	GeomAbs_G1,
	GeomAbs_C1,
	GeomAbs_G2,
	GeomAbs_C2,
	GeomAbs_C3,
	GeomAbs_CN,
	};

enum GeomAbs_IsoType {
	GeomAbs_IsoU,
	GeomAbs_IsoV,
	GeomAbs_NoneIso,
	};

enum GeomAbs_BSplKnotDistribution {
	GeomAbs_NonUniform,
	GeomAbs_Uniform,
	GeomAbs_QuasiUniform,
	GeomAbs_PiecewiseBezier,
	};

enum GeomAbs_SurfaceForm {
	GeomAbs_PlanarForm,
	GeomAbs_ConicalForm,
	GeomAbs_CylindricalForm,
	GeomAbs_ToroidalForm,
	GeomAbs_SphericalForm,
	GeomAbs_RevolutionForm,
	GeomAbs_RuledForm,
	GeomAbs_QuadricForm,
	GeomAbs_OtherSurfaceForm,
	};

enum GeomAbs_SurfaceType {
	GeomAbs_Plane,
	GeomAbs_Cylinder,
	GeomAbs_Cone,
	GeomAbs_Sphere,
	GeomAbs_Torus,
	GeomAbs_BezierSurface,
	GeomAbs_BSplineSurface,
	GeomAbs_SurfaceOfRevolution,
	GeomAbs_SurfaceOfExtrusion,
	GeomAbs_OffsetSurface,
	GeomAbs_OtherSurface,
	};

enum GeomAbs_CurveType {
	GeomAbs_Line,
	GeomAbs_Circle,
	GeomAbs_Ellipse,
	GeomAbs_Hyperbola,
	GeomAbs_Parabola,
	GeomAbs_BezierCurve,
	GeomAbs_BSplineCurve,
	GeomAbs_OtherCurve,
	};

