/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Bisector
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Bisector_renames.i


%include Bisector_required_python_modules.i


%include Bisector_dependencies.i


%include Bisector_headers.i




%nodefaultctor Handle_Bisector_Curve;
class Handle_Bisector_Curve : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_Curve();
		%feature("autodoc", "1");
		Handle_Bisector_Curve(const Handle_Bisector_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_Curve(const Bisector_Curve *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_Curve & operator=(const Handle_Bisector_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_Curve & operator=(const Bisector_Curve *anItem);
		%feature("autodoc", "1");
		static		Handle_Bisector_Curve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_Curve {
	Bisector_Curve* GetObject() {
	return (Bisector_Curve*)$self->Access();
	}
};
%feature("shadow") Handle_Bisector_Curve::~Handle_Bisector_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bisector_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Bisector_BisecAna;
class Handle_Bisector_BisecAna : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna();
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna(const Handle_Bisector_BisecAna &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna(const Bisector_BisecAna *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna & operator=(const Handle_Bisector_BisecAna &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna & operator=(const Bisector_BisecAna *anItem);
		%feature("autodoc", "1");
		static		Handle_Bisector_BisecAna DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecAna {
	Bisector_BisecAna* GetObject() {
	return (Bisector_BisecAna*)$self->Access();
	}
};
%feature("shadow") Handle_Bisector_BisecAna::~Handle_Bisector_BisecAna %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bisector_BisecAna {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Bisector_BisecCC;
class Handle_Bisector_BisecCC : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC();
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC(const Handle_Bisector_BisecCC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC(const Bisector_BisecCC *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC & operator=(const Handle_Bisector_BisecCC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC & operator=(const Bisector_BisecCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Bisector_BisecCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecCC {
	Bisector_BisecCC* GetObject() {
	return (Bisector_BisecCC*)$self->Access();
	}
};
%feature("shadow") Handle_Bisector_BisecCC::~Handle_Bisector_BisecCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bisector_BisecCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Bisector_BisecPC;
class Handle_Bisector_BisecPC : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC();
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC(const Handle_Bisector_BisecPC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC(const Bisector_BisecPC *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC & operator=(const Handle_Bisector_BisecPC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC & operator=(const Bisector_BisecPC *anItem);
		%feature("autodoc", "1");
		static		Handle_Bisector_BisecPC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecPC {
	Bisector_BisecPC* GetObject() {
	return (Bisector_BisecPC*)$self->Access();
	}
};
%feature("shadow") Handle_Bisector_BisecPC::~Handle_Bisector_BisecPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Bisector_BisecPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_Inter;
class Bisector_Inter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Bisector_Inter();
		%feature("autodoc", "1");
		Bisector_Inter(const Bisector_Bisec &C1, const IntRes2d_Domain &D1, const Bisector_Bisec &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol, const Standard_Boolean ComunElement);
		%feature("autodoc", "1");
		void Perform(const Bisector_Bisec &C1, const IntRes2d_Domain &D1, const Bisector_Bisec &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol, const Standard_Boolean ComunElement);

};
%feature("shadow") Bisector_Inter::~Bisector_Inter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_Inter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_FunctionInter;
class Bisector_FunctionInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Bisector_FunctionInter();
		%feature("autodoc", "1");
		Bisector_FunctionInter(const Handle_Geom2d_Curve &C, const Handle_Bisector_Curve &Bis1, const Handle_Bisector_Curve &Bis2);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &C, const Handle_Bisector_Curve &Bis1, const Handle_Bisector_Curve &Bis2);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Bisector_FunctionInter::~Bisector_FunctionInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_FunctionInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_Curve;
class Bisector_Curve : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_Curve {
	Handle_Bisector_Curve GetHandle() {
	return *(Handle_Bisector_Curve*) &$self;
	}
};
%extend Bisector_Curve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Bisector_Curve::~Bisector_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_BisecCC;
class Bisector_BisecCC : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecCC();
		%feature("autodoc", "1");
		Bisector_BisecCC(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const Standard_Real Side1, const Standard_Real Side2, const gp_Pnt2d Origin, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const Standard_Real Side1, const Standard_Real Side2, const gp_Pnt2d Origin, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC ChangeGuide() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		GeomAbs_Shape IntervalContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc","ValueAndDist(Standard_Real U) -> [Standard_Real, Standard_Real, Standard_Real]");

		gp_Pnt2d ValueAndDist(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ValueByInt(Standard_Real U) -> [Standard_Real, Standard_Real, Standard_Real]");

		gp_Pnt2d ValueByInt(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
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
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Real LinkBisCurve(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real LinkCurveBis(const Standard_Real U) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve(const Standard_Integer IndCurve) const;
		%feature("autodoc", "1");
		const Bisector_PolyBis & Polygon() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;

};
%extend Bisector_BisecCC {
	Handle_Bisector_BisecCC GetHandle() {
	return *(Handle_Bisector_BisecCC*) &$self;
	}
};
%extend Bisector_BisecCC {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Bisector_BisecCC::~Bisector_BisecCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_BisecCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_BisecPC;
class Bisector_BisecPC : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecPC();
		%feature("autodoc", "1");
		Bisector_BisecPC(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d P, const Standard_Real Side, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		Bisector_BisecPC(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d P, const Standard_Real Side, const Standard_Real UMin, const Standard_Real UMax);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d P, const Standard_Real Side, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		GeomAbs_Shape IntervalContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Standard_Real U) const;
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
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;
		%feature("autodoc", "1");
		Standard_Real LinkBisCurve(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real LinkCurveBis(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_BisecPC {
	Handle_Bisector_BisecPC GetHandle() {
	return *(Handle_Bisector_BisecPC*) &$self;
	}
};
%extend Bisector_BisecPC {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Bisector_BisecPC::~Bisector_BisecPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_BisecPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector;
class Bisector {
	public:
		%feature("autodoc", "1");
		Bisector();
		%feature("autodoc", "1");
		static		Standard_Boolean IsConvex(const Handle_Geom2d_Curve &Cu, const Standard_Real Sign);

};
%feature("shadow") Bisector::~Bisector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_BisecAna;
class Bisector_BisecAna : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecAna();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const Handle_Geom2d_Point &Pnt, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt, const Handle_Geom2d_Curve &Cu, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt1, const Handle_Geom2d_Point &Pnt2, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance=0.0, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_TrimmedCurve &bisector);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		void SetTrim(const Handle_Geom2d_Curve &Cu);
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real uf, const Standard_Real ul);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Geom2dCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOfStartPoint() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOfEndPoint() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_BisecAna {
	Handle_Bisector_BisecAna GetHandle() {
	return *(Handle_Bisector_BisecAna*) &$self;
	}
};
%extend Bisector_BisecAna {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Bisector_BisecAna::~Bisector_BisecAna %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_BisecAna {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_PolyBis;
class Bisector_PolyBis {
	public:
		%feature("autodoc", "1");
		Bisector_PolyBis();
		%feature("autodoc", "1");
		void Append(const Bisector_PointOnBis &Point);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & First() const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & Last() const;
		%feature("autodoc", "1");
		Standard_Integer Interval(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);

};
%feature("shadow") Bisector_PolyBis::~Bisector_PolyBis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_PolyBis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_PointOnBis;
class Bisector_PointOnBis {
	public:
		%feature("autodoc", "1");
		Bisector_PointOnBis();
		%feature("autodoc", "1");
		Bisector_PointOnBis(const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamBis, const Standard_Real Distance, const gp_Pnt2d Point);
		%feature("autodoc", "1");
		void ParamOnC1(const Standard_Real Param);
		%feature("autodoc", "1");
		void ParamOnC2(const Standard_Real Param);
		%feature("autodoc", "1");
		void ParamOnBis(const Standard_Real Param);
		%feature("autodoc", "1");
		void Distance(const Standard_Real Distance);
		%feature("autodoc", "1");
		void IsInfinite(const Standard_Boolean Infinite);
		%feature("autodoc", "1");
		void Point(const gp_Pnt2d P);
		%feature("autodoc", "1");
		Standard_Real ParamOnC1() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnC2() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnBis() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") Bisector_PointOnBis::~Bisector_PointOnBis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_PointOnBis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_FunctionH;
class Bisector_FunctionH : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Bisector_FunctionH(const Handle_Geom2d_Curve &C2, const gp_Pnt2d P1, const gp_Vec2d T1);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Bisector_FunctionH::~Bisector_FunctionH %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_FunctionH {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Bisector_Bisec;
class Bisector_Bisec {
	public:
		%feature("autodoc", "1");
		Bisector_Bisec();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const Handle_Geom2d_Point &Pnt, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt, const Handle_Geom2d_Curve &Cu, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt1, const Handle_Geom2d_Point &Pnt2, const gp_Pnt2d P, const gp_Vec2d V1, const gp_Vec2d V2, const Standard_Real Sense, const Standard_Real Tolerance=0.0, const Standard_Boolean oncurve=true);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & ChangeValue();

};
%feature("shadow") Bisector_Bisec::~Bisector_Bisec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Bisector_Bisec {
	void _kill_pointed() {
		delete $self;
	}
};
