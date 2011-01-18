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
%module IntAna2d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include IntAna2d_dependencies.i


%include IntAna2d_headers.i




%nodefaultctor IntAna2d_IntPoint;
class IntAna2d_IntPoint {
	public:
		%feature("autodoc", "1");
		IntAna2d_IntPoint(const Standard_Real X, const Standard_Real Y, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		IntAna2d_IntPoint(const Standard_Real X, const Standard_Real Y, const Standard_Real U1);
		%feature("autodoc", "1");
		IntAna2d_IntPoint();
		%feature("autodoc", "1");
		virtual		void SetValue(const Standard_Real X, const Standard_Real Y, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		virtual		void SetValue(const Standard_Real X, const Standard_Real Y, const Standard_Real U1);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean SecondIsImplicit() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntAna2d_IntPointmyu1() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyu1(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntAna2d_IntPointmyu2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyu2(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetIntAna2d_IntPointmyp() const;
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntAna2d_IntPointmyimplicit() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyimplicit(const Standard_Boolean p);

};
%feature("shadow") IntAna2d_IntPoint::~IntAna2d_IntPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntAna2d_IntPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntAna2d_Conic;
class IntAna2d_Conic {
	public:
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Lin2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Parab2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Hypr2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Elips2d &C);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		gp_XY Grad(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc","ValAndGrad(Standard_Real X, Standard_Real Y) -> Standard_Real");

		void ValAndGrad(const Standard_Real X, const Standard_Real Y, Standard_Real &OutValue, gp_XY & Grd) const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","NewCoefficients(const Axis) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void NewCoefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const gp_Ax2d &Axis) const;

};
%feature("shadow") IntAna2d_Conic::~IntAna2d_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntAna2d_Conic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntAna2d_AnaIntersection;
class IntAna2d_AnaIntersection {
	public:
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection();
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L1, const gp_Lin2d &L2);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Circ2d &C1, const gp_Circ2d &C2);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L, const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Circ2d &C, const IntAna2d_Conic &Co);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Elips2d &E, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Parab2d &P, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Hypr2d &H, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L1, const gp_Lin2d &L2);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C1, const gp_Circ2d &C2);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const gp_Circ2d &C);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C, const IntAna2d_Conic &Co);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d &E, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d &P, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d &H, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IdenticalElements() const;
		%feature("autodoc", "1");
		Standard_Boolean ParallelElements() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntAna2d_IntPoint & Point(const Standard_Integer N) const;

};
%feature("shadow") IntAna2d_AnaIntersection::~IntAna2d_AnaIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntAna2d_AnaIntersection {
	void _kill_pointed() {
		delete $self;
	}
};
