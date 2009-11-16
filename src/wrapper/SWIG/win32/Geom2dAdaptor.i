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
%module Geom2dAdaptor
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Geom2dAdaptor_dependencies.i


%include Geom2dAdaptor_headers.i




%nodefaultctor Handle_Geom2dAdaptor_GHCurve;
class Handle_Geom2dAdaptor_GHCurve : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve(const Handle_Geom2dAdaptor_GHCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve(const Geom2dAdaptor_GHCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve & operator=(const Handle_Geom2dAdaptor_GHCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve & operator=(const Geom2dAdaptor_GHCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_GHCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dAdaptor_GHCurve {
	Geom2dAdaptor_GHCurve* GetObject() {
	return (Geom2dAdaptor_GHCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom2dAdaptor_GHCurve::~Handle_Geom2dAdaptor_GHCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom2dAdaptor_GHCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom2dAdaptor_HCurve;
class Handle_Geom2dAdaptor_HCurve : public Handle_Geom2dAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve();
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve(const Handle_Geom2dAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve(const Geom2dAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve & operator=(const Handle_Geom2dAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve & operator=(const Geom2dAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dAdaptor_HCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dAdaptor_HCurve {
	Geom2dAdaptor_HCurve* GetObject() {
	return (Geom2dAdaptor_HCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom2dAdaptor_HCurve::~Handle_Geom2dAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom2dAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAdaptor;
class Geom2dAdaptor {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve MakeCurve(const Adaptor2d_Curve2d &HC);

};
%feature("shadow") Geom2dAdaptor::~Geom2dAdaptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAdaptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAdaptor_GHCurve;
class Geom2dAdaptor_GHCurve : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_GHCurve();
		%feature("autodoc", "1");
		Geom2dAdaptor_GHCurve(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		void Set(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2dAdaptor_GHCurve {
	Handle_Geom2dAdaptor_GHCurve GetHandle() {
	return *(Handle_Geom2dAdaptor_GHCurve*) &$self;
	}
};
%extend Geom2dAdaptor_GHCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Geom2dAdaptor_GHCurve::~Geom2dAdaptor_GHCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAdaptor_GHCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAdaptor_HCurve;
class Geom2dAdaptor_HCurve : public Geom2dAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve();
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Geom2dAdaptor_Curve &AS);
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Handle_Geom2d_Curve &S);
		%feature("autodoc", "1");
		Geom2dAdaptor_HCurve(const Handle_Geom2d_Curve &S, const Standard_Real UFirst, const Standard_Real ULast);

};
%extend Geom2dAdaptor_HCurve {
	Handle_Geom2dAdaptor_HCurve GetHandle() {
	return *(Handle_Geom2dAdaptor_HCurve*) &$self;
	}
};
%extend Geom2dAdaptor_HCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Geom2dAdaptor_HCurve::~Geom2dAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dAdaptor_Curve;
class Geom2dAdaptor_Curve : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve();
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve(const Handle_Geom2d_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		void Load(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Load(const Handle_Geom2d_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real Ruv) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BSplineCurve BSpline() const;

};
%feature("shadow") Geom2dAdaptor_Curve::~Geom2dAdaptor_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dAdaptor_Curve {
	void _kill_pointed() {
		delete $self;
	}
};
