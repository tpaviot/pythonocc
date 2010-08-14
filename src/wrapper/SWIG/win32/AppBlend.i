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
%module AppBlend
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include AppBlend_dependencies.i


%include AppBlend_headers.i




%nodefaultctor Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d;
class Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d(const Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d(const AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d & operator=(const Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d & operator=(const AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d {
	AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d* GetObject() {
	return (AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d::~Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppBlend_Approx;
class AppBlend_Approx {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc","TolReached() -> [Standard_Real, Standard_Real]");

		virtual		void TolReached(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;

};
%feature("shadow") AppBlend_Approx::~AppBlend_Approx %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppBlend_Approx {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppBlend_SequenceOfArray1OfPnt2d;
class AppBlend_SequenceOfArray1OfPnt2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AppBlend_SequenceOfArray1OfPnt2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AppBlend_SequenceOfArray1OfPnt2d & Assign(const AppBlend_SequenceOfArray1OfPnt2d &Other);
		%feature("autodoc", "1");
		const AppBlend_SequenceOfArray1OfPnt2d & operator=(const AppBlend_SequenceOfArray1OfPnt2d &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void Append(AppBlend_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void Prepend(AppBlend_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AppBlend_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AppBlend_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & First() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AppBlend_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &I);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AppBlend_SequenceOfArray1OfPnt2d::~AppBlend_SequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppBlend_SequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d;
class AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d(const Handle_TColgp_HArray1OfPnt2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d {
	Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d GetHandle() {
	return *(Handle_AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d*) &$self;
	}
};
%extend AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d::~AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppBlend_SequenceNodeOfSequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};
