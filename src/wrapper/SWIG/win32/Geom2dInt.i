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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Geom2dInt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2dInt_renames.i


%include Geom2dInt_required_python_modules.i


%include Geom2dInt_dependencies.i


%include Geom2dInt_headers.i




%nodefaultctor Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
class Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter();
		%feature("autodoc", "1");
		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(const Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(const Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter *anItem);
		%feature("autodoc", "1");
		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & operator=(const Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & operator=(const Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter* GetObject() {
	return (Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*)$self->Access();
	}
};
%feature("shadow") Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::~Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
class Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter(const IntCurve_IConicTool &IT, const Adaptor2d_Curve2d &PC);
		%feature("autodoc","Value(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real Param) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter::~Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
class Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(const gp_Pnt2d P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::~Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter;
class Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real Tol);
		%feature("autodoc","Perform(const Poly1, const Poly2) -> [Standard_Integer, Standard_Integer, Standard_Real, Standard_Real]");

		void Perform(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Poly1, const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Poly2, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Uo, const Standard_Real Vo, const Standard_Real UInf, const Standard_Real VInf, const Standard_Real USup, const Standard_Real VSup);
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc","Roots() -> [Standard_Real, Standard_Real]");

		void Roots(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean AnErrorOccurred() const;

};
%feature("shadow") Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter::~Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_IntConicCurveOfGInter;
class Geom2dInt_IntConicCurveOfGInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter(const gp_Lin2d L, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter(const gp_Circ2d C, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter(const gp_Elips2d E, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_IntConicCurveOfGInter(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d L, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d C, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d E, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") Geom2dInt_IntConicCurveOfGInter::~Geom2dInt_IntConicCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_IntConicCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter;
class Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter();

};
%feature("shadow") Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter::~Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
class Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter(const Adaptor2d_Curve2d &Curve, const Standard_Integer NbPnt, const IntRes2d_Domain &Domain, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter(const Adaptor2d_Curve2d &Curve, const Standard_Integer NbPnt, const IntRes2d_Domain &Domain, const Standard_Real Tol, const Bnd_Box2d &OtherBox);
		%feature("autodoc", "1");
		void ComputeWithBox(const Adaptor2d_Curve2d &Curve, const Bnd_Box2d &OtherBox);
		%feature("autodoc", "1");
		const Bnd_Box2d & Bounding() const;
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		void SetDeflectionOverEstimation(const Standard_Real x);
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  BeginOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  EndOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real InfParameter() const;
		%feature("autodoc", "1");
		Standard_Real SupParameter() const;
		%feature("autodoc", "1");
		Standard_Boolean AutoIntersectionIsPossible() const;
		%feature("autodoc", "1");
		Standard_Real ApproxParamOnCurve(const Standard_Integer Index, const Standard_Real ParamOnLine) const;
		%feature("autodoc", "1");
		Standard_Integer CalculRegion(const Standard_Real x, const Standard_Real y, const Standard_Real x1, const Standard_Real x2, const Standard_Real y1, const Standard_Real y2) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter::~Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter;
class Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter(const Adaptor2d_Curve2d &curve1, const Adaptor2d_Curve2d &curve2);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);

};
%feature("shadow") Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter::~Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheProjPCurOfGInter;
class Geom2dInt_TheProjPCurOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheProjPCurOfGInter();
		%feature("autodoc", "1");
		static		Standard_Real FindParameter(const Adaptor2d_Curve2d &C, const gp_Pnt2d Pnt, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Real FindParameter(const Adaptor2d_Curve2d &C, const gp_Pnt2d Pnt, const Standard_Real LowParameter, const Standard_Real HighParameter, const Standard_Real Tol);

};
%feature("shadow") Geom2dInt_TheProjPCurOfGInter::~Geom2dInt_TheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter;
class Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real TolU);
		%feature("autodoc", "1");
		Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point() const;

};
%feature("shadow") Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::~Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_Geom2dCurveTool;
class Geom2dInt_Geom2dCurveTool {
	public:
		%feature("autodoc", "1");
		Geom2dInt_Geom2dCurveTool();
		%feature("autodoc", "1");
		static		GeomAbs_CurveType TheType(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Lin2d Line(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Circ2d Circle(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Elips2d Ellipse(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Parab2d Parabola(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Hypr2d Hyperbola(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real EpsX(const Adaptor2d_Curve2d &C, const Standard_Real Eps_XYZ);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real U1);
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Adaptor2d_Curve2d &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		static		void D1(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		static		void Intervals(const Adaptor2d_Curve2d &C, TColStd_Array1OfReal & Tab);
		%feature("autodoc","GetInterval(const arg0, Standard_Integer i, const Tab) -> [Standard_Real, Standard_Real]");

		static		void GetInterval(const Adaptor2d_Curve2d &arg0, const Standard_Integer i, const TColStd_Array1OfReal &Tab, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Geom2dInt_Geom2dCurveTool::~Geom2dInt_Geom2dCurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_Geom2dCurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
class Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter GetHandle() {
	return *(Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*) &$self;
	}
};
%extend Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::~Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter;
class Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje1, const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje2);
		%feature("autodoc", "1");
		Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje);
		%feature("autodoc", "1");
		void Perform(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje1, const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje2);
		%feature("autodoc", "1");
		void Perform(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &Obje);
		%feature("autodoc", "1");
		gp_Pnt2d Pnt2dValue(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter::~Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_GInter;
class Geom2dInt_GInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Geom2dInt_GInter();
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C, const IntRes2d_Domain &D, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C1, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_GInter(const Adaptor2d_Curve2d &C1, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const IntRes2d_Domain &D1, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntRes2d_Domain ComputeDomain(const Adaptor2d_Curve2d &C1, const Standard_Real TolDomain) const;

};
%feature("shadow") Geom2dInt_GInter::~Geom2dInt_GInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_GInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
class Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & Assign(const Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter &Other);
		%feature("autodoc", "1");
		const Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & operator=(const Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::~Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheIntConicCurveOfGInter;
class Geom2dInt_TheIntConicCurveOfGInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter(const gp_Lin2d L, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter(const gp_Circ2d C, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter(const gp_Elips2d E, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Geom2dInt_TheIntConicCurveOfGInter(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d L, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d C, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d E, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") Geom2dInt_TheIntConicCurveOfGInter::~Geom2dInt_TheIntConicCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheIntConicCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheIntPCurvePCurveOfGInter;
class Geom2dInt_TheIntPCurvePCurveOfGInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheIntPCurvePCurveOfGInter();
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &Curve1, const IntRes2d_Domain &Domain1, const Adaptor2d_Curve2d &Curve2, const IntRes2d_Domain &Domain2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &Curve1, const IntRes2d_Domain &Domain1, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") Geom2dInt_TheIntPCurvePCurveOfGInter::~Geom2dInt_TheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter;
class Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter {
	public:
		%feature("autodoc", "1");
		Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter();
		%feature("autodoc", "1");
		static		const Bnd_Box2d & Bounding(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Boolean Closed(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon);
		%feature("autodoc", "1");
		static		const gp_Pnt2d  BeginOfSeg(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		const gp_Pnt2d  EndOfSeg(const Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter &thePolygon, const Standard_Integer Index);

};
%feature("shadow") Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter::~Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter;
class Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter();
		%feature("autodoc", "1");
		Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const Adaptor2d_Curve2d &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real FindU(const Standard_Real parameter, gp_Pnt2d & point, const Adaptor2d_Curve2d &TheParCurev, const IntCurve_IConicTool &IntCurve_IConicTool) const;
		%feature("autodoc", "1");
		Standard_Real FindV(const Standard_Real parameter, gp_Pnt2d & point, const IntCurve_IConicTool &IntCurve_IConicTool, const Adaptor2d_Curve2d &ParCurve, const IntRes2d_Domain &TheParCurveDomain, const Standard_Real V0, const Standard_Real V1, const Standard_Real Tolerance) const;
		%feature("autodoc","And_Domaine_Objet1_Intersections(const IntCurve_IConicTool, const TheParCurve, const TheImpCurveDomain, const TheParCurveDomain, Standard_Real EpsNul) -> Standard_Integer");

		void And_Domaine_Objet1_Intersections(const IntCurve_IConicTool &IntCurve_IConicTool, const Adaptor2d_Curve2d &TheParCurve, const IntRes2d_Domain &TheImpCurveDomain, const IntRes2d_Domain &TheParCurveDomain, Standard_Integer &OutValue, TColStd_Array1OfReal & Inter2_And_Domain2, TColStd_Array1OfReal & Inter1, TColStd_Array1OfReal & Resultat1, TColStd_Array1OfReal & Resultat2, const Standard_Real EpsNul) const;

};
%feature("shadow") Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::~Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter {
	void _kill_pointed() {
		delete $self;
	}
};
