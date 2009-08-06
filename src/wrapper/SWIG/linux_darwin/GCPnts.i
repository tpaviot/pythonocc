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
%module GCPnts

%include GCPnts_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GCPnts_dependencies.i


%include GCPnts_headers.i


enum GCPnts_DeflectionType {
	GCPnts_Linear,
	GCPnts_Circular,
	GCPnts_Curved,
	GCPnts_DefComposite,
	};

enum GCPnts_AbscissaType {
	GCPnts_LengthParametrized,
	GCPnts_Parametrized,
	GCPnts_AbsComposite,
	};



%nodefaultctor GCPnts_TangentialDeflection;
class GCPnts_TangentialDeflection {
	public:
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection();
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor3d_Curve &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor3d_Curve &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor2d_Curve2d &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		GCPnts_TangentialDeflection(const Adaptor2d_Curve2d &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real FirstParameter, const Standard_Real LastParameter, const Standard_Real AngularDeflection, const Standard_Real CurvatureDeflection, const Standard_Integer MinimumOfPoints=2, const Standard_Real UTol=1.00000000000000006228159145777985641889706869279e-9);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer I) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer I) const;

};
%extend GCPnts_TangentialDeflection {
	~GCPnts_TangentialDeflection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_TangentialDeflection\n");}
	}
};


%nodefaultctor GCPnts_UniformAbscissa;
class GCPnts_UniformAbscissa {
	public:
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		GCPnts_UniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2, const Standard_Real Toler=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Abscissa() const;

};
%extend GCPnts_UniformAbscissa {
	~GCPnts_UniformAbscissa() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_UniformAbscissa\n");}
	}
};


%nodefaultctor GCPnts_UniformDeflection;
class GCPnts_UniformDeflection {
	public:
		%feature("autodoc", "1");
		GCPnts_UniformDeflection();
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		GCPnts_UniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Deflection() const;

};
%extend GCPnts_UniformDeflection {
	~GCPnts_UniformDeflection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_UniformDeflection\n");}
	}
};


%nodefaultctor GCPnts_QuasiUniformAbscissa;
class GCPnts_QuasiUniformAbscissa {
	public:
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformAbscissa(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Integer NbPoints, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;

};
%extend GCPnts_QuasiUniformAbscissa {
	~GCPnts_QuasiUniformAbscissa() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_QuasiUniformAbscissa\n");}
	}
};


%nodefaultctor GCPnts_QuasiUniformDeflection;
class GCPnts_QuasiUniformDeflection {
	public:
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection();
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		GCPnts_QuasiUniformDeflection(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor3d_Curve & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		void Initialize(Adaptor2d_Curve2d & C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const GeomAbs_Shape Continuity=GeomAbs_C1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Deflection() const;

};
%extend GCPnts_QuasiUniformDeflection {
	~GCPnts_QuasiUniformDeflection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_QuasiUniformDeflection\n");}
	}
};


%nodefaultctor GCPnts_AbscissaPoint;
class GCPnts_AbscissaPoint {
	public:
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor2d_Curve2d & C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint();
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(const Standard_Real Tol, Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(const Standard_Real Tol, Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor3d_Curve & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Tol);
		%feature("autodoc", "1");
		GCPnts_AbscissaPoint(Adaptor2d_Curve2d & C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%extend GCPnts_AbscissaPoint {
	~GCPnts_AbscissaPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GCPnts_AbscissaPoint\n");}
	}
};
