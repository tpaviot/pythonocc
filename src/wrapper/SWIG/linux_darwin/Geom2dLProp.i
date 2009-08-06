/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module Geom2dLProp

%include Geom2dLProp_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2dLProp_dependencies.i


%include Geom2dLProp_headers.i




%nodefaultctor Geom2dLProp_NumericCurInf2d;
class Geom2dLProp_NumericCurInf2d {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_NumericCurInf2d();
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C, const Standard_Real UMin, const Standard_Real UMax, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C, const Standard_Real UMin, const Standard_Real UMax, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend Geom2dLProp_NumericCurInf2d {
	~Geom2dLProp_NumericCurInf2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_NumericCurInf2d\n");}
	}
};


%nodefaultctor Geom2dLProp_Curve2dTool;
class Geom2dLProp_Curve2dTool {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_Curve2dTool();
		%feature("autodoc", "1");
		void Value(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void D1(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1);
		%feature("autodoc", "1");
		void D2(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc", "1");
		void D3(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Geom2d_Curve &C);

};
%extend Geom2dLProp_Curve2dTool {
	~Geom2dLProp_Curve2dTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_Curve2dTool\n");}
	}
};


%nodefaultctor Geom2dLProp_CurAndInf2d;
class Geom2dLProp_CurAndInf2d : public LProp_CurAndInf {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_CurAndInf2d();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend Geom2dLProp_CurAndInf2d {
	~Geom2dLProp_CurAndInf2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_CurAndInf2d\n");}
	}
};


%nodefaultctor Geom2dLProp_FCurExtOfNumericCurInf2d;
class Geom2dLProp_FCurExtOfNumericCurInf2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_FCurExtOfNumericCurInf2d(const Handle_Geom2d_Curve &C, const Standard_Real Tol);
		%feature("autodoc","Value(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X)->[Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsMinKC(const Standard_Real Param) const;

};
%extend Geom2dLProp_FCurExtOfNumericCurInf2d {
	~Geom2dLProp_FCurExtOfNumericCurInf2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_FCurExtOfNumericCurInf2d\n");}
	}
};


%nodefaultctor Geom2dLProp_CLProps2d;
class Geom2dLProp_CLProps2d {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Handle_Geom2d_Curve &C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Handle_Geom2d_Curve &C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		const gp_Vec2d & D1();
		%feature("autodoc", "1");
		const gp_Vec2d & D2();
		%feature("autodoc", "1");
		const gp_Vec2d & D3();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentDefined();
		%feature("autodoc", "1");
		void Tangent(gp_Dir2d & D);
		%feature("autodoc", "1");
		Standard_Real Curvature();
		%feature("autodoc", "1");
		void Normal(gp_Dir2d & N);
		%feature("autodoc", "1");
		void CentreOfCurvature(gp_Pnt2d & P);

};
%extend Geom2dLProp_CLProps2d {
	~Geom2dLProp_CLProps2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_CLProps2d\n");}
	}
};


%nodefaultctor Geom2dLProp_FCurNulOfNumericCurInf2d;
class Geom2dLProp_FCurNulOfNumericCurInf2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_FCurNulOfNumericCurInf2d(const Handle_Geom2d_Curve &C);
		%feature("autodoc","Value(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X)->[Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend Geom2dLProp_FCurNulOfNumericCurInf2d {
	~Geom2dLProp_FCurNulOfNumericCurInf2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2dLProp_FCurNulOfNumericCurInf2d\n");}
	}
};
