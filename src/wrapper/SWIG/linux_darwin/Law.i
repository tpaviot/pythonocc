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
%module Law
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Law_dependencies.i


%include Law_headers.i




%nodefaultctor Handle_Law_ListNodeOfLaws;
class Handle_Law_ListNodeOfLaws : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws();
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws(const Handle_Law_ListNodeOfLaws &aHandle);
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws(const Law_ListNodeOfLaws *anItem);
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws & operator=(const Handle_Law_ListNodeOfLaws &aHandle);
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws & operator=(const Law_ListNodeOfLaws *anItem);
		%feature("autodoc", "1");
		Handle_Law_ListNodeOfLaws const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_ListNodeOfLaws {
	Law_ListNodeOfLaws* GetObject() {
	return (Law_ListNodeOfLaws*)$self->Access();
	}
};
%feature("shadow") Handle_Law_ListNodeOfLaws::~Handle_Law_ListNodeOfLaws %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_ListNodeOfLaws {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_Function;
class Handle_Law_Function : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Law_Function();
		%feature("autodoc", "1");
		Handle_Law_Function(const Handle_Law_Function &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Function(const Law_Function *anItem);
		%feature("autodoc", "1");
		Handle_Law_Function & operator=(const Handle_Law_Function &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Function & operator=(const Law_Function *anItem);
		%feature("autodoc", "1");
		Handle_Law_Function const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_Function {
	Law_Function* GetObject() {
	return (Law_Function*)$self->Access();
	}
};
%feature("shadow") Handle_Law_Function::~Handle_Law_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_Function {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_BSpFunc;
class Handle_Law_BSpFunc : public Handle_Law_Function {
	public:
		%feature("autodoc", "1");
		Handle_Law_BSpFunc();
		%feature("autodoc", "1");
		Handle_Law_BSpFunc(const Handle_Law_BSpFunc &aHandle);
		%feature("autodoc", "1");
		Handle_Law_BSpFunc(const Law_BSpFunc *anItem);
		%feature("autodoc", "1");
		Handle_Law_BSpFunc & operator=(const Handle_Law_BSpFunc &aHandle);
		%feature("autodoc", "1");
		Handle_Law_BSpFunc & operator=(const Law_BSpFunc *anItem);
		%feature("autodoc", "1");
		Handle_Law_BSpFunc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_BSpFunc {
	Law_BSpFunc* GetObject() {
	return (Law_BSpFunc*)$self->Access();
	}
};
%feature("shadow") Handle_Law_BSpFunc::~Handle_Law_BSpFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_BSpFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_Interpol;
class Handle_Law_Interpol : public Handle_Law_BSpFunc {
	public:
		%feature("autodoc", "1");
		Handle_Law_Interpol();
		%feature("autodoc", "1");
		Handle_Law_Interpol(const Handle_Law_Interpol &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Interpol(const Law_Interpol *anItem);
		%feature("autodoc", "1");
		Handle_Law_Interpol & operator=(const Handle_Law_Interpol &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Interpol & operator=(const Law_Interpol *anItem);
		%feature("autodoc", "1");
		Handle_Law_Interpol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_Interpol {
	Law_Interpol* GetObject() {
	return (Law_Interpol*)$self->Access();
	}
};
%feature("shadow") Handle_Law_Interpol::~Handle_Law_Interpol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_Interpol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_BSpline;
class Handle_Law_BSpline : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Law_BSpline();
		%feature("autodoc", "1");
		Handle_Law_BSpline(const Handle_Law_BSpline &aHandle);
		%feature("autodoc", "1");
		Handle_Law_BSpline(const Law_BSpline *anItem);
		%feature("autodoc", "1");
		Handle_Law_BSpline & operator=(const Handle_Law_BSpline &aHandle);
		%feature("autodoc", "1");
		Handle_Law_BSpline & operator=(const Law_BSpline *anItem);
		%feature("autodoc", "1");
		Handle_Law_BSpline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_BSpline {
	Law_BSpline* GetObject() {
	return (Law_BSpline*)$self->Access();
	}
};
%feature("shadow") Handle_Law_BSpline::~Handle_Law_BSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_BSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_S;
class Handle_Law_S : public Handle_Law_BSpFunc {
	public:
		%feature("autodoc", "1");
		Handle_Law_S();
		%feature("autodoc", "1");
		Handle_Law_S(const Handle_Law_S &aHandle);
		%feature("autodoc", "1");
		Handle_Law_S(const Law_S *anItem);
		%feature("autodoc", "1");
		Handle_Law_S & operator=(const Handle_Law_S &aHandle);
		%feature("autodoc", "1");
		Handle_Law_S & operator=(const Law_S *anItem);
		%feature("autodoc", "1");
		Handle_Law_S const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_S {
	Law_S* GetObject() {
	return (Law_S*)$self->Access();
	}
};
%feature("shadow") Handle_Law_S::~Handle_Law_S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_Linear;
class Handle_Law_Linear : public Handle_Law_Function {
	public:
		%feature("autodoc", "1");
		Handle_Law_Linear();
		%feature("autodoc", "1");
		Handle_Law_Linear(const Handle_Law_Linear &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Linear(const Law_Linear *anItem);
		%feature("autodoc", "1");
		Handle_Law_Linear & operator=(const Handle_Law_Linear &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Linear & operator=(const Law_Linear *anItem);
		%feature("autodoc", "1");
		Handle_Law_Linear const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_Linear {
	Law_Linear* GetObject() {
	return (Law_Linear*)$self->Access();
	}
};
%feature("shadow") Handle_Law_Linear::~Handle_Law_Linear %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_Linear {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_Constant;
class Handle_Law_Constant : public Handle_Law_Function {
	public:
		%feature("autodoc", "1");
		Handle_Law_Constant();
		%feature("autodoc", "1");
		Handle_Law_Constant(const Handle_Law_Constant &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Constant(const Law_Constant *anItem);
		%feature("autodoc", "1");
		Handle_Law_Constant & operator=(const Handle_Law_Constant &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Constant & operator=(const Law_Constant *anItem);
		%feature("autodoc", "1");
		Handle_Law_Constant const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_Constant {
	Law_Constant* GetObject() {
	return (Law_Constant*)$self->Access();
	}
};
%feature("shadow") Handle_Law_Constant::~Handle_Law_Constant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_Constant {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Law_Composite;
class Handle_Law_Composite : public Handle_Law_Function {
	public:
		%feature("autodoc", "1");
		Handle_Law_Composite();
		%feature("autodoc", "1");
		Handle_Law_Composite(const Handle_Law_Composite &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Composite(const Law_Composite *anItem);
		%feature("autodoc", "1");
		Handle_Law_Composite & operator=(const Handle_Law_Composite &aHandle);
		%feature("autodoc", "1");
		Handle_Law_Composite & operator=(const Law_Composite *anItem);
		%feature("autodoc", "1");
		Handle_Law_Composite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Law_Composite {
	Law_Composite* GetObject() {
	return (Law_Composite*)$self->Access();
	}
};
%feature("shadow") Handle_Law_Composite::~Handle_Law_Composite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Law_Composite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_ListNodeOfLaws;
class Law_ListNodeOfLaws : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Law_ListNodeOfLaws(const Handle_Law_Function &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Law_Function & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_ListNodeOfLaws {
	Handle_Law_ListNodeOfLaws GetHandle() {
	return *(Handle_Law_ListNodeOfLaws*) &$self;
	}
};
%extend Law_ListNodeOfLaws {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_ListNodeOfLaws::~Law_ListNodeOfLaws %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_ListNodeOfLaws {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Function;
class Law_Function : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value(const Standard_Real X);
		%feature("autodoc","D1(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		void D1(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","D2(Standard_Real X) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void D2(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Law_Function Trim(const Standard_Real PFirst, const Standard_Real PLast, const Standard_Real Tol) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_Function {
	Handle_Law_Function GetHandle() {
	return *(Handle_Law_Function*) &$self;
	}
};
%extend Law_Function {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_Function::~Law_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Function {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_BSpFunc;
class Law_BSpFunc : public Law_Function {
	public:
		%feature("autodoc", "1");
		Law_BSpFunc();
		%feature("autodoc", "1");
		Law_BSpFunc(const Handle_Law_BSpline &C, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		Handle_Law_BSpline Curve() const;
		%feature("autodoc", "1");
		void SetCurve(const Handle_Law_BSpline &C);

};
%extend Law_BSpFunc {
	Handle_Law_BSpFunc GetHandle() {
	return *(Handle_Law_BSpFunc*) &$self;
	}
};
%extend Law_BSpFunc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_BSpFunc::~Law_BSpFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_BSpFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Interpol;
class Law_Interpol : public Law_BSpFunc {
	public:
		%feature("autodoc", "1");
		Law_Interpol();
		%feature("autodoc", "1");
		void Set(const TColgp_Array1OfPnt2d &ParAndRad, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void SetInRelative(const TColgp_Array1OfPnt2d &ParAndRad, const Standard_Real Ud, const Standard_Real Uf, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void Set(const TColgp_Array1OfPnt2d &ParAndRad, const Standard_Real Dd, const Standard_Real Df, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void SetInRelative(const TColgp_Array1OfPnt2d &ParAndRad, const Standard_Real Ud, const Standard_Real Uf, const Standard_Real Dd, const Standard_Real Df, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_Interpol {
	Handle_Law_Interpol GetHandle() {
	return *(Handle_Law_Interpol*) &$self;
	}
};
%extend Law_Interpol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_Interpol::~Law_Interpol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Interpol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_ListIteratorOfLaws;
class Law_ListIteratorOfLaws {
	public:
		%feature("autodoc", "1");
		Law_ListIteratorOfLaws();
		%feature("autodoc", "1");
		Law_ListIteratorOfLaws(const Law_Laws &L);
		%feature("autodoc", "1");
		void Initialize(const Law_Laws &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Law_Function & Value() const;

};
%feature("shadow") Law_ListIteratorOfLaws::~Law_ListIteratorOfLaws %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_ListIteratorOfLaws {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Interpolate;
class Law_Interpolate {
	public:
		%feature("autodoc", "1");
		Law_Interpolate(const Handle_TColStd_HArray1OfReal &Points, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Law_Interpolate(const Handle_TColStd_HArray1OfReal &Points, const Handle_TColStd_HArray1OfReal &Parameters, const Standard_Boolean PeriodicFlag, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Load(const Standard_Real InitialTangent, const Standard_Real FinalTangent);
		%feature("autodoc", "1");
		void Load(const TColStd_Array1OfReal &Tangents, const Handle_TColStd_HArray1OfBoolean &TangentFlags);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const Handle_Law_BSpline & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") Law_Interpolate::~Law_Interpolate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Interpolate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Composite;
class Law_Composite : public Law_Function {
	public:
		%feature("autodoc", "1");
		Law_Composite();
		%feature("autodoc", "1");
		Law_Composite(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value(const Standard_Real X);
		%feature("autodoc","D1(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		void D1(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","D2(Standard_Real X) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void D2(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Law_Function Trim(const Standard_Real PFirst, const Standard_Real PLast, const Standard_Real Tol) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Law_Function & ChangeElementaryLaw(const Standard_Real W);
		%feature("autodoc", "1");
		Law_Laws & ChangeLaws();
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		void SetPeriodic();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_Composite {
	Handle_Law_Composite GetHandle() {
	return *(Handle_Law_Composite*) &$self;
	}
};
%extend Law_Composite {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_Composite::~Law_Composite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Composite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_BSpline;
class Law_BSpline : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Law_BSpline(const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		Law_BSpline(const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer Index, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncrementMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void InsertKnot(const Standard_Real U, const Standard_Integer M=1, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnots(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=0);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer M, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void SetKnot(const Standard_Integer Index, const Standard_Real K);
		%feature("autodoc", "1");
		void SetKnots(const TColStd_Array1OfReal &K);
		%feature("autodoc", "1");
		void SetKnot(const Standard_Integer Index, const Standard_Real K, const Standard_Integer M);
		%feature("autodoc","PeriodicNormalization() -> Standard_Real");

		void PeriodicNormalization(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetPeriodic();
		%feature("autodoc", "1");
		void SetOrigin(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetNotPeriodic();
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const Standard_Real P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const Standard_Real P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer Index, const Standard_Real Weight);
		%feature("autodoc", "1");
		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Real U) const;
		%feature("autodoc","D0(Standard_Real U) -> Standard_Real");

		void D0(const Standard_Real U, Standard_Real &OutValue) const;
		%feature("autodoc","D1(Standard_Real U) -> [Standard_Real, Standard_Real]");

		void D1(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","D2(Standard_Real U) -> [Standard_Real, Standard_Real, Standard_Real]");

		void D2(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","D3(Standard_Real U) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void D3(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real LocalValue(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2) const;
		%feature("autodoc","LocalD0(Standard_Real U, Standard_Integer FromK1, Standard_Integer ToK2) -> Standard_Real");

		void LocalD0(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Real &OutValue) const;
		%feature("autodoc","LocalD1(Standard_Real U, Standard_Integer FromK1, Standard_Integer ToK2) -> [Standard_Real, Standard_Real]");

		void LocalD1(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","LocalD2(Standard_Real U, Standard_Integer FromK1, Standard_Integer ToK2) -> [Standard_Real, Standard_Real, Standard_Real]");

		void LocalD2(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","LocalD3(Standard_Real U, Standard_Integer FromK1, Standard_Integer ToK2) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void LocalD3(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real LocalDN(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real EndPoint() const;
		%feature("autodoc", "1");
		Standard_Integer FirstUKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real Knot(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & K) const;
		%feature("autodoc", "1");
		void KnotSequence(TColStd_Array1OfReal & K) const;
		%feature("autodoc", "1");
		GeomAbs_BSplKnotDistribution KnotDistribution() const;
		%feature("autodoc", "1");
		Standard_Integer LastUKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc","LocateU(Standard_Real U, Standard_Real ParametricTolerance, Standard_Boolean WithKnotRepetition=0) -> [Standard_Integer, Standard_Integer]");

		void LocateU(const Standard_Real U, const Standard_Real ParametricTolerance, Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Boolean WithKnotRepetition=0) const;
		%feature("autodoc", "1");
		Standard_Integer Multiplicity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Multiplicities(TColStd_Array1OfInteger & M) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		Standard_Real Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Poles(TColStd_Array1OfReal & P) const;
		%feature("autodoc", "1");
		Standard_Real StartPoint() const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array1OfReal & W) const;
		%feature("autodoc", "1");
		Standard_Integer MaxDegree();
		%feature("autodoc","MovePointAndTangent(Standard_Real U, Standard_Real NewValue, Standard_Real Derivative, Standard_Real Tolerance, Standard_Integer StartingCondition, Standard_Integer EndingCondition) -> Standard_Integer");

		void MovePointAndTangent(const Standard_Real U, const Standard_Real NewValue, const Standard_Real Derivative, const Standard_Real Tolerance, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, Standard_Integer &OutValue);
		%feature("autodoc","Resolution(Standard_Real Tolerance3D) -> Standard_Real");

		void Resolution(const Standard_Real Tolerance3D, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Law_BSpline Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_BSpline {
	Handle_Law_BSpline GetHandle() {
	return *(Handle_Law_BSpline*) &$self;
	}
};
%extend Law_BSpline {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_BSpline::~Law_BSpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_BSpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_BSplineKnotSplitting;
class Law_BSplineKnotSplitting {
	public:
		%feature("autodoc", "1");
		Law_BSplineKnotSplitting(const Handle_Law_BSpline &BasisLaw, const Standard_Integer ContinuityRange);
		%feature("autodoc", "1");
		Standard_Integer NbSplits() const;
		%feature("autodoc", "1");
		void Splitting(TColStd_Array1OfInteger & SplitValues) const;
		%feature("autodoc", "1");
		Standard_Integer SplitValue(const Standard_Integer Index) const;

};
%feature("shadow") Law_BSplineKnotSplitting::~Law_BSplineKnotSplitting %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_BSplineKnotSplitting {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_S;
class Law_S : public Law_BSpFunc {
	public:
		%feature("autodoc", "1");
		Law_S();
		%feature("autodoc", "1");
		void Set(const Standard_Real Pdeb, const Standard_Real Valdeb, const Standard_Real Pfin, const Standard_Real Valfin);
		%feature("autodoc", "1");
		void Set(const Standard_Real Pdeb, const Standard_Real Valdeb, const Standard_Real Ddeb, const Standard_Real Pfin, const Standard_Real Valfin, const Standard_Real Dfin);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_S {
	Handle_Law_S GetHandle() {
	return *(Handle_Law_S*) &$self;
	}
};
%extend Law_S {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_S::~Law_S %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_S {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Laws;
class Law_Laws {
	public:
		%feature("autodoc", "1");
		Law_Laws();
		%feature("autodoc", "1");
		void Assign(const Law_Laws &Other);
		%feature("autodoc", "1");
		void operator=(const Law_Laws &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Law_Function &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Law_Function &I, Law_ListIteratorOfLaws & theIt);
		%feature("autodoc", "1");
		void Prepend(Law_Laws & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Law_Function &I);
		%feature("autodoc", "1");
		void Append(const Handle_Law_Function &I, Law_ListIteratorOfLaws & theIt);
		%feature("autodoc", "1");
		void Append(Law_Laws & Other);
		%feature("autodoc", "1");
		Handle_Law_Function & First() const;
		%feature("autodoc", "1");
		Handle_Law_Function & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Law_ListIteratorOfLaws & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Law_Function &I, Law_ListIteratorOfLaws & It);
		%feature("autodoc", "1");
		void InsertBefore(Law_Laws & Other, Law_ListIteratorOfLaws & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Law_Function &I, Law_ListIteratorOfLaws & It);
		%feature("autodoc", "1");
		void InsertAfter(Law_Laws & Other, Law_ListIteratorOfLaws & It);

};
%feature("shadow") Law_Laws::~Law_Laws %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Laws {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law;
class Law {
	public:
		%feature("autodoc", "1");
		Law();
		%feature("autodoc", "1");
		Handle_Law_BSpFunc MixBnd(const Handle_Law_Linear &Lin);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MixBnd(const Standard_Integer Degree, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Handle_Law_Linear &Lin);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MixTgt(const Standard_Integer Degree, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Boolean NulOnTheRight, const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Law_BSpline Reparametrize(const Adaptor3d_Curve &Curve, const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasDF, const Standard_Boolean HasDL, const Standard_Real DFirst, const Standard_Real DLast, const Standard_Boolean Rev, const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		Handle_Law_BSpline Scale(const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasF, const Standard_Boolean HasL, const Standard_Real VFirst, const Standard_Real VLast);
		%feature("autodoc", "1");
		Handle_Law_BSpline ScaleCub(const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasF, const Standard_Boolean HasL, const Standard_Real VFirst, const Standard_Real VLast);

};
%feature("shadow") Law::~Law %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Linear;
class Law_Linear : public Law_Function {
	public:
		%feature("autodoc", "1");
		Law_Linear();
		%feature("autodoc", "1");
		void Set(const Standard_Real Pdeb, const Standard_Real Valdeb, const Standard_Real Pfin, const Standard_Real Valfin);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value(const Standard_Real X);
		%feature("autodoc","D1(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		void D1(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","D2(Standard_Real X) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void D2(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Law_Function Trim(const Standard_Real PFirst, const Standard_Real PLast, const Standard_Real Tol) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_Linear {
	Handle_Law_Linear GetHandle() {
	return *(Handle_Law_Linear*) &$self;
	}
};
%extend Law_Linear {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_Linear::~Law_Linear %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Linear {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Law_Constant;
class Law_Constant : public Law_Function {
	public:
		%feature("autodoc", "1");
		Law_Constant();
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Real PFirst, const Standard_Real PLast);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value(const Standard_Real X);
		%feature("autodoc","D1(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		void D1(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","D2(Standard_Real X) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void D2(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Law_Function Trim(const Standard_Real PFirst, const Standard_Real PLast, const Standard_Real Tol) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Law_Constant {
	Handle_Law_Constant GetHandle() {
	return *(Handle_Law_Constant*) &$self;
	}
};
%extend Law_Constant {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Law_Constant::~Law_Constant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Law_Constant {
	void _kill_pointed() {
		delete $self;
	}
};
