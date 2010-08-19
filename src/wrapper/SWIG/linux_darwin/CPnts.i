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

%module CPnts
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include CPnts_renames.i


%include CPnts_required_python_modules.i


%include CPnts_dependencies.i


%include CPnts_headers.i




%nodefaultctor CPnts_UniformDeflection;
class CPnts_UniformDeflection {
	public:
		%feature("autodoc", "1");
		CPnts_UniformDeflection();
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		Standard_Boolean IsAllDone() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;

};
%feature("shadow") CPnts_UniformDeflection::~CPnts_UniformDeflection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CPnts_UniformDeflection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CPnts_MyGaussFunction;
class CPnts_MyGaussFunction : public math_Function {
	public:
		%feature("autodoc", "1");
		CPnts_MyGaussFunction();
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

};
%feature("shadow") CPnts_MyGaussFunction::~CPnts_MyGaussFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CPnts_MyGaussFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CPnts_AbscissaPoint;
class CPnts_AbscissaPoint {
	public:
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint();
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void AdvPerform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real P);

};
%feature("shadow") CPnts_AbscissaPoint::~CPnts_AbscissaPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CPnts_AbscissaPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CPnts_MyRootFunction;
class CPnts_MyRootFunction : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CPnts_MyRootFunction();
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L);
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") CPnts_MyRootFunction::~CPnts_MyRootFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CPnts_MyRootFunction {
	void _kill_pointed() {
		delete $self;
	}
};
