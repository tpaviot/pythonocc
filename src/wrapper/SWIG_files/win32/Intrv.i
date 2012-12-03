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

%module Intrv
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Intrv_renames.i


%include Intrv_required_python_modules.i


%include Intrv_dependencies.i


%include Intrv_headers.i


enum Intrv_Position {
	Intrv_Before,
	Intrv_JustBefore,
	Intrv_OverlappingAtStart,
	Intrv_JustEnclosingAtEnd,
	Intrv_Enclosing,
	Intrv_JustOverlappingAtStart,
	Intrv_Similar,
	Intrv_JustEnclosingAtStart,
	Intrv_Inside,
	Intrv_JustOverlappingAtEnd,
	Intrv_OverlappingAtEnd,
	Intrv_JustAfter,
	Intrv_After,
	};



%nodefaultctor Handle_Intrv_SequenceNodeOfSequenceOfInterval;
class Handle_Intrv_SequenceNodeOfSequenceOfInterval : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval();
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval(const Handle_Intrv_SequenceNodeOfSequenceOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval(const Intrv_SequenceNodeOfSequenceOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval & operator=(const Handle_Intrv_SequenceNodeOfSequenceOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_Intrv_SequenceNodeOfSequenceOfInterval & operator=(const Intrv_SequenceNodeOfSequenceOfInterval *anItem);
		%feature("autodoc", "1");
		static		Handle_Intrv_SequenceNodeOfSequenceOfInterval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	Intrv_SequenceNodeOfSequenceOfInterval* GetObject() {
	return (Intrv_SequenceNodeOfSequenceOfInterval*)$self->Access();
	}
};
%feature("shadow") Handle_Intrv_SequenceNodeOfSequenceOfInterval::~Handle_Intrv_SequenceNodeOfSequenceOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Intrv_SequenceNodeOfSequenceOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intrv_Interval;
class Intrv_Interval {
	public:
		%feature("autodoc", "1");
		Intrv_Interval();
		%feature("autodoc", "1");
		Intrv_Interval(const Standard_Real Start, const Standard_Real End);
		%feature("autodoc", "1");
		Intrv_Interval(const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		Standard_Real Start() const;
		%feature("autodoc", "1");
		Standard_Real End() const;
		%feature("autodoc", "1");
		Standard_ShortReal TolStart() const;
		%feature("autodoc", "1");
		Standard_ShortReal TolEnd() const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		void Bounds(Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd) const;
		%feature("autodoc", "1");
		void SetStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void FuseAtStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void CutAtStart(const Standard_Real Start, const Standard_ShortReal TolStart);
		%feature("autodoc", "1");
		void SetEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		void FuseAtEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		void CutAtEnd(const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		Standard_Boolean IsProbablyEmpty() const;
		%feature("autodoc", "1");
		Intrv_Position Position(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBefore(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAfter(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustEnclosingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustEnclosingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustBefore(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustAfter(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOverlappingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOverlappingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustOverlappingAtStart(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsJustOverlappingAtEnd(const Intrv_Interval &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSimilar(const Intrv_Interval &Other) const;

};
%feature("shadow") Intrv_Interval::~Intrv_Interval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intrv_Interval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intrv_SequenceOfInterval;
class Intrv_SequenceOfInterval : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intrv_SequenceOfInterval();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Intrv_SequenceOfInterval & Assign(const Intrv_SequenceOfInterval &Other);
		%feature("autodoc", "1");
		const Intrv_SequenceOfInterval & operator=(const Intrv_SequenceOfInterval &Other);
		%feature("autodoc", "1");
		void Append(const Intrv_Interval &T);
		%feature("autodoc", "1");
		void Append(Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void Prepend(const Intrv_Interval &T);
		%feature("autodoc", "1");
		void Prepend(Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intrv_Interval &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intrv_Interval &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		const Intrv_Interval & First() const;
		%feature("autodoc", "1");
		const Intrv_Interval & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intrv_SequenceOfInterval & S);
		%feature("autodoc", "1");
		const Intrv_Interval & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intrv_Interval & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intrv_Interval &I);
		%feature("autodoc", "1");
		Intrv_Interval & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intrv_Interval & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Intrv_SequenceOfInterval::~Intrv_SequenceOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intrv_SequenceOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intrv_SequenceNodeOfSequenceOfInterval;
class Intrv_SequenceNodeOfSequenceOfInterval : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intrv_SequenceNodeOfSequenceOfInterval(const Intrv_Interval &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intrv_Interval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Intrv_SequenceNodeOfSequenceOfInterval {
	Handle_Intrv_SequenceNodeOfSequenceOfInterval GetHandle() {
	return *(Handle_Intrv_SequenceNodeOfSequenceOfInterval*) &$self;
	}
};
%extend Intrv_SequenceNodeOfSequenceOfInterval {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Intrv_SequenceNodeOfSequenceOfInterval::~Intrv_SequenceNodeOfSequenceOfInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intrv_SequenceNodeOfSequenceOfInterval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intrv_Intervals;
class Intrv_Intervals {
	public:
		%feature("autodoc", "1");
		Intrv_Intervals();
		%feature("autodoc", "1");
		Intrv_Intervals(const Intrv_Interval &Int);
		%feature("autodoc", "1");
		Intrv_Intervals(const Intrv_Intervals &Int);
		%feature("autodoc", "1");
		void Intersect(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Intersect(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void Subtract(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Subtract(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void Unite(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void Unite(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		void XUnite(const Intrv_Interval &Tool);
		%feature("autodoc", "1");
		void XUnite(const Intrv_Intervals &Tool);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		const Intrv_Interval & Value(const Standard_Integer Index) const;

};
%feature("shadow") Intrv_Intervals::~Intrv_Intervals %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intrv_Intervals {
	void _kill_pointed() {
		delete $self;
	}
};
