/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

%module Approx
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Approx_renames.i


%include Approx_required_python_modules.i


%include Approx_dependencies.i


%include Approx_headers.i


enum Approx_ParametrizationType {
	Approx_ChordLength,
	Approx_Centripetal,
	Approx_IsoParametric,
	};

enum Approx_Status {
	Approx_PointsAdded,
	Approx_NoPointsAdded,
	Approx_NoApproximation,
	};



%nodefaultctor Handle_Approx_CurvlinFunc;
class Handle_Approx_CurvlinFunc : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Approx_CurvlinFunc();
		%feature("autodoc", "1");
		Handle_Approx_CurvlinFunc(const Handle_Approx_CurvlinFunc &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_CurvlinFunc(const Approx_CurvlinFunc *anItem);
		%feature("autodoc", "1");
		Handle_Approx_CurvlinFunc & operator=(const Handle_Approx_CurvlinFunc &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_CurvlinFunc & operator=(const Approx_CurvlinFunc *anItem);
		%feature("autodoc", "1");
		static		Handle_Approx_CurvlinFunc DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Approx_CurvlinFunc {
	Approx_CurvlinFunc* GetObject() {
	return (Approx_CurvlinFunc*)$self->Access();
	}
};
%feature("shadow") Handle_Approx_CurvlinFunc::~Handle_Approx_CurvlinFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Approx_CurvlinFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Approx_HArray1OfGTrsf2d;
class Handle_Approx_HArray1OfGTrsf2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfGTrsf2d();
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfGTrsf2d(const Handle_Approx_HArray1OfGTrsf2d &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfGTrsf2d(const Approx_HArray1OfGTrsf2d *anItem);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfGTrsf2d & operator=(const Handle_Approx_HArray1OfGTrsf2d &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfGTrsf2d & operator=(const Approx_HArray1OfGTrsf2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Approx_HArray1OfGTrsf2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Approx_HArray1OfGTrsf2d {
	Approx_HArray1OfGTrsf2d* GetObject() {
	return (Approx_HArray1OfGTrsf2d*)$self->Access();
	}
};
%feature("shadow") Handle_Approx_HArray1OfGTrsf2d::~Handle_Approx_HArray1OfGTrsf2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Approx_HArray1OfGTrsf2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Approx_SweepFunction;
class Handle_Approx_SweepFunction : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Approx_SweepFunction();
		%feature("autodoc", "1");
		Handle_Approx_SweepFunction(const Handle_Approx_SweepFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_SweepFunction(const Approx_SweepFunction *anItem);
		%feature("autodoc", "1");
		Handle_Approx_SweepFunction & operator=(const Handle_Approx_SweepFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_SweepFunction & operator=(const Approx_SweepFunction *anItem);
		%feature("autodoc", "1");
		static		Handle_Approx_SweepFunction DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Approx_SweepFunction {
	Approx_SweepFunction* GetObject() {
	return (Approx_SweepFunction*)$self->Access();
	}
};
%feature("shadow") Handle_Approx_SweepFunction::~Handle_Approx_SweepFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Approx_SweepFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Approx_HArray1OfAdHSurface;
class Handle_Approx_HArray1OfAdHSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfAdHSurface();
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfAdHSurface(const Handle_Approx_HArray1OfAdHSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfAdHSurface(const Approx_HArray1OfAdHSurface *anItem);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfAdHSurface & operator=(const Handle_Approx_HArray1OfAdHSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_HArray1OfAdHSurface & operator=(const Approx_HArray1OfAdHSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Approx_HArray1OfAdHSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Approx_HArray1OfAdHSurface {
	Approx_HArray1OfAdHSurface* GetObject() {
	return (Approx_HArray1OfAdHSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Approx_HArray1OfAdHSurface::~Handle_Approx_HArray1OfAdHSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Approx_HArray1OfAdHSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal;
class Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal(const Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal(const Approx_SequenceNodeOfSequenceOfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal & operator=(const Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal & operator=(const Approx_SequenceNodeOfSequenceOfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal {
	Approx_SequenceNodeOfSequenceOfHArray1OfReal* GetObject() {
	return (Approx_SequenceNodeOfSequenceOfHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal::~Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_SequenceOfHArray1OfReal;
class Approx_SequenceOfHArray1OfReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Approx_SequenceOfHArray1OfReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Approx_SequenceOfHArray1OfReal & Assign(const Approx_SequenceOfHArray1OfReal &Other);
		%feature("autodoc", "1");
		const Approx_SequenceOfHArray1OfReal & operator=(const Approx_SequenceOfHArray1OfReal &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HArray1OfReal &T);
		%feature("autodoc", "1");
		void Append(Approx_SequenceOfHArray1OfReal & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HArray1OfReal &T);
		%feature("autodoc", "1");
		void Prepend(Approx_SequenceOfHArray1OfReal & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Approx_SequenceOfHArray1OfReal & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TColStd_HArray1OfReal &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Approx_SequenceOfHArray1OfReal & S);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & First() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Approx_SequenceOfHArray1OfReal & S);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Approx_SequenceOfHArray1OfReal::~Approx_SequenceOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_SequenceOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_Curve3d;
class Approx_Curve3d {
	public:
		%feature("autodoc", "1");
		Approx_Curve3d(const Handle_Adaptor3d_HCurve &Curve, const Standard_Real Tol3d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") Approx_Curve3d::~Approx_Curve3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_Curve3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_MyLeastSquareOfFitAndDivide;
class Approx_MyLeastSquareOfFitAndDivide {
	public:
		%feature("autodoc", "1");
		Approx_MyLeastSquareOfFitAndDivide(const AppCont_Function &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Approx_MyLeastSquareOfFitAndDivide::~Approx_MyLeastSquareOfFitAndDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_MyLeastSquareOfFitAndDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_MCurvesToBSpCurve;
class Approx_MCurvesToBSpCurve {
	public:
		%feature("autodoc", "1");
		Approx_MCurvesToBSpCurve();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Append(const AppParCurves_MultiCurve &MC);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void Perform(const AppParCurves_SequenceOfMultiCurve &TheSeq);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Value() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & ChangeValue();

};
%feature("shadow") Approx_MCurvesToBSpCurve::~Approx_MCurvesToBSpCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_MCurvesToBSpCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_Array1OfGTrsf2d;
class Approx_Array1OfGTrsf2d {
	public:
		%feature("autodoc", "1");
		Approx_Array1OfGTrsf2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Approx_Array1OfGTrsf2d(const gp_GTrsf2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_GTrsf2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Approx_Array1OfGTrsf2d & Assign(const Approx_Array1OfGTrsf2d &Other);
		%feature("autodoc", "1");
		const Approx_Array1OfGTrsf2d & operator=(const Approx_Array1OfGTrsf2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_GTrsf2d Value);
		%feature("autodoc", "1");
		const gp_GTrsf2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_GTrsf2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_GTrsf2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_GTrsf2d  operator()(const Standard_Integer Index);

};
%feature("shadow") Approx_Array1OfGTrsf2d::~Approx_Array1OfGTrsf2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_Array1OfGTrsf2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_HArray1OfAdHSurface;
class Approx_HArray1OfAdHSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Approx_HArray1OfAdHSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Approx_HArray1OfAdHSurface(const Standard_Integer Low, const Standard_Integer Up, const Handle_Adaptor3d_HSurface &V);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HSurface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Adaptor3d_HSurface &Value);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Approx_Array1OfAdHSurface & Array1() const;
		%feature("autodoc", "1");
		Approx_Array1OfAdHSurface & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Approx_HArray1OfAdHSurface {
	Handle_Approx_HArray1OfAdHSurface GetHandle() {
	return *(Handle_Approx_HArray1OfAdHSurface*) &$self;
	}
};
%extend Approx_HArray1OfAdHSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Approx_HArray1OfAdHSurface::~Approx_HArray1OfAdHSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_HArray1OfAdHSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_FitAndDivide2d;
class Approx_FitAndDivide2d {
	public:
		%feature("autodoc", "1");
		Approx_FitAndDivide2d(const AppCont_Function2d &Line, const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		Approx_FitAndDivide2d(const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		void Perform(const AppCont_Function2d &Line);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint FirstC, const AppParCurves_Constraint LastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc","Error(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Error(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultiCurves() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value(const Standard_Integer Index=1) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Approx_FitAndDivide2d::~Approx_FitAndDivide2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_FitAndDivide2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_SweepFunction;
class Approx_SweepFunction : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Integer Nb2dCurves() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","Resolution(Standard_Integer Index, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer Index, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Approx_SweepFunction {
	Handle_Approx_SweepFunction GetHandle() {
	return *(Handle_Approx_SweepFunction*) &$self;
	}
};
%extend Approx_SweepFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Approx_SweepFunction::~Approx_SweepFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_SweepFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_Curve2d;
class Approx_Curve2d {
	public:
		%feature("autodoc", "1");
		Approx_Curve2d(const Handle_Adaptor2d_HCurve2d &C2D, const Standard_Real First, const Standard_Real Last, const Standard_Real TolU, const Standard_Real TolV, const GeomAbs_Shape Continuity, const Standard_Integer MaxDegree, const Standard_Integer MaxSegments);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2dU() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2dV() const;

};
%feature("shadow") Approx_Curve2d::~Approx_Curve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_Curve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_FitAndDivide;
class Approx_FitAndDivide {
	public:
		%feature("autodoc", "1");
		Approx_FitAndDivide(const AppCont_Function &Line, const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		Approx_FitAndDivide(const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		void Perform(const AppCont_Function &Line);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint FirstC, const AppParCurves_Constraint LastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc","Error(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Error(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultiCurves() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value(const Standard_Integer Index=1) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Approx_FitAndDivide::~Approx_FitAndDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_FitAndDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_HArray1OfGTrsf2d;
class Approx_HArray1OfGTrsf2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Approx_HArray1OfGTrsf2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Approx_HArray1OfGTrsf2d(const Standard_Integer Low, const Standard_Integer Up, const gp_GTrsf2d V);
		%feature("autodoc", "1");
		void Init(const gp_GTrsf2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_GTrsf2d Value);
		%feature("autodoc", "1");
		const gp_GTrsf2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_GTrsf2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Approx_Array1OfGTrsf2d & Array1() const;
		%feature("autodoc", "1");
		Approx_Array1OfGTrsf2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Approx_HArray1OfGTrsf2d {
	Handle_Approx_HArray1OfGTrsf2d GetHandle() {
	return *(Handle_Approx_HArray1OfGTrsf2d*) &$self;
	}
};
%extend Approx_HArray1OfGTrsf2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Approx_HArray1OfGTrsf2d::~Approx_HArray1OfGTrsf2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_HArray1OfGTrsf2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_SameParameter;
class Approx_SameParameter {
	public:
		%feature("autodoc", "1");
		Approx_SameParameter(const Handle_Geom_Curve &C3D, const Handle_Geom2d_Curve &C2D, const Handle_Geom_Surface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Approx_SameParameter(const Handle_Adaptor3d_HCurve &C3D, const Handle_Geom2d_Curve &C2D, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Approx_SameParameter(const Handle_Adaptor3d_HCurve &C3D, const Handle_Adaptor2d_HCurve2d &C2D, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real TolReached() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameParameter() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d() const;

};
%feature("shadow") Approx_SameParameter::~Approx_SameParameter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_SameParameter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_CurvilinearParameter;
class Approx_CurvilinearParameter {
	public:
		%feature("autodoc", "1");
		Approx_CurvilinearParameter(const Handle_Adaptor3d_HCurve &C3D, const Standard_Real Tol, const GeomAbs_Shape Order, const Standard_Integer MaxDegree, const Standard_Integer MaxSegments);
		%feature("autodoc", "1");
		Approx_CurvilinearParameter(const Handle_Adaptor2d_HCurve2d &C2D, const Handle_Adaptor3d_HSurface &Surf, const Standard_Real Tol, const GeomAbs_Shape Order, const Standard_Integer MaxDegree, const Standard_Integer MaxSegments);
		%feature("autodoc", "1");
		Approx_CurvilinearParameter(const Handle_Adaptor2d_HCurve2d &C2D1, const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor2d_HCurve2d &C2D2, const Handle_Adaptor3d_HSurface &Surf2, const Standard_Real Tol, const GeomAbs_Shape Order, const Standard_Integer MaxDegree, const Standard_Integer MaxSegments);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d1() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d1() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d2() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d2() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") Approx_CurvilinearParameter::~Approx_CurvilinearParameter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_CurvilinearParameter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_SequenceNodeOfSequenceOfHArray1OfReal;
class Approx_SequenceNodeOfSequenceOfHArray1OfReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Approx_SequenceNodeOfSequenceOfHArray1OfReal(const Handle_TColStd_HArray1OfReal &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Approx_SequenceNodeOfSequenceOfHArray1OfReal {
	Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal GetHandle() {
	return *(Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal*) &$self;
	}
};
%extend Approx_SequenceNodeOfSequenceOfHArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Approx_SequenceNodeOfSequenceOfHArray1OfReal::~Approx_SequenceNodeOfSequenceOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_SequenceNodeOfSequenceOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_CurveOnSurface;
class Approx_CurveOnSurface {
	public:
		%feature("autodoc", "1");
		Approx_CurveOnSurface(const Handle_Adaptor2d_HCurve2d &C2D, const Handle_Adaptor3d_HSurface &Surf, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol, const GeomAbs_Shape Continuity, const Standard_Integer MaxDegree, const Standard_Integer MaxSegments, const Standard_Boolean Only3d=0, const Standard_Boolean Only2d=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve Curve3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve2d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2dU() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2dV() const;

};
%feature("shadow") Approx_CurveOnSurface::~Approx_CurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_CurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_CurvlinFunc;
class Approx_CurvlinFunc : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Approx_CurvlinFunc(const Handle_Adaptor3d_HCurve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Approx_CurvlinFunc(const Handle_Adaptor2d_HCurve2d &C2D, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Approx_CurvlinFunc(const Handle_Adaptor2d_HCurve2d &C2D1, const Handle_Adaptor2d_HCurve2d &C2D2, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetTol(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Length();
		%feature("autodoc", "1");
		Standard_Real Length(Adaptor3d_Curve & C, const Standard_Real FirstU, const Standard_Real LasrU) const;
		%feature("autodoc", "1");
		Standard_Real GetLength() const;
		%feature("autodoc", "1");
		Standard_Real GetUParameter(Adaptor3d_Curve & C, const Standard_Real S, const Standard_Integer NumberOfCurve) const;
		%feature("autodoc", "1");
		Standard_Real GetSParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Boolean EvalCase1(const Standard_Real S, const Standard_Integer Order, TColStd_Array1OfReal & Result) const;
		%feature("autodoc", "1");
		Standard_Boolean EvalCase2(const Standard_Real S, const Standard_Integer Order, TColStd_Array1OfReal & Result) const;
		%feature("autodoc", "1");
		Standard_Boolean EvalCase3(const Standard_Real S, const Standard_Integer Order, TColStd_Array1OfReal & Result);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Approx_CurvlinFunc {
	Handle_Approx_CurvlinFunc GetHandle() {
	return *(Handle_Approx_CurvlinFunc*) &$self;
	}
};
%extend Approx_CurvlinFunc {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Approx_CurvlinFunc::~Approx_CurvlinFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_CurvlinFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_Array1OfAdHSurface;
class Approx_Array1OfAdHSurface {
	public:
		%feature("autodoc", "1");
		Approx_Array1OfAdHSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Approx_Array1OfAdHSurface(const Handle_Adaptor3d_HSurface &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HSurface &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Approx_Array1OfAdHSurface & Assign(const Approx_Array1OfAdHSurface &Other);
		%feature("autodoc", "1");
		const Approx_Array1OfAdHSurface & operator=(const Approx_Array1OfAdHSurface &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Adaptor3d_HSurface &Value);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & operator()(const Standard_Integer Index);

};
%feature("shadow") Approx_Array1OfAdHSurface::~Approx_Array1OfAdHSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_Array1OfAdHSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_MyLeastSquareOfFitAndDivide2d;
class Approx_MyLeastSquareOfFitAndDivide2d {
	public:
		%feature("autodoc", "1");
		Approx_MyLeastSquareOfFitAndDivide2d(const AppCont_Function2d &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Approx_MyLeastSquareOfFitAndDivide2d::~Approx_MyLeastSquareOfFitAndDivide2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_MyLeastSquareOfFitAndDivide2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Approx_SweepApproximation;
class Approx_SweepApproximation {
	public:
		%feature("autodoc", "1");
		Approx_SweepApproximation(const Handle_Approx_SweepFunction &Func);
		%feature("autodoc", "1");
		void Perform(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const Standard_Real BoundTol, const Standard_Real Tol2d, const Standard_Real TolAngular, const GeomAbs_Shape Continuity=GeomAbs_C0, const Standard_Integer Degmax=11, const Standard_Integer Segmax=50);
		%feature("autodoc","Eval(Standard_Real Parameter, Standard_Integer DerivativeRequest, Standard_Real First, Standard_Real Last) -> Standard_Real");

		Standard_Integer Eval(const Standard_Real Parameter, const Standard_Integer DerivativeRequest, const Standard_Real First, const Standard_Real Last, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		Standard_Real MaxErrorOnSurf() const;
		%feature("autodoc", "1");
		Standard_Real AverageErrorOnSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc", "1");
		Standard_Real Max2dError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Average2dError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") Approx_SweepApproximation::~Approx_SweepApproximation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Approx_SweepApproximation {
	void _kill_pointed() {
		delete $self;
	}
};
