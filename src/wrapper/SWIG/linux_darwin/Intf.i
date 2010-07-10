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
%module Intf
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Intf_dependencies.i


%include Intf_headers.i


enum Intf_PIType {
	Intf_EXTERNAL,
	Intf_FACE,
	Intf_EDGE,
	Intf_VERTEX,
	};



%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfTangentZone;
class Handle_Intf_SequenceNodeOfSeqOfTangentZone : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone(const Intf_SequenceNodeOfSeqOfTangentZone *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone(const Intf_SequenceNodeOfSeqOfTangentZone *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone & operator=(const Intf_SequenceNodeOfSeqOfTangentZone *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone & operator=(const Intf_SequenceNodeOfSeqOfTangentZone *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfTangentZone {
	Intf_SequenceNodeOfSeqOfTangentZone* GetObject() {
	return (Intf_SequenceNodeOfSeqOfTangentZone*)$self->Access();
	}
};
%feature("shadow") Handle_Intf_SequenceNodeOfSeqOfTangentZone::~Handle_Intf_SequenceNodeOfSeqOfTangentZone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Intf_SequenceNodeOfSeqOfTangentZone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfSectionLine;
class Handle_Intf_SequenceNodeOfSeqOfSectionLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine(const Intf_SequenceNodeOfSeqOfSectionLine *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine(const Intf_SequenceNodeOfSeqOfSectionLine *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine & operator=(const Intf_SequenceNodeOfSeqOfSectionLine *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine & operator=(const Intf_SequenceNodeOfSeqOfSectionLine *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfSectionLine {
	Intf_SequenceNodeOfSeqOfSectionLine* GetObject() {
	return (Intf_SequenceNodeOfSeqOfSectionLine*)$self->Access();
	}
};
%feature("shadow") Handle_Intf_SequenceNodeOfSeqOfSectionLine::~Handle_Intf_SequenceNodeOfSeqOfSectionLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Intf_SequenceNodeOfSeqOfSectionLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfSectionPoint;
class Handle_Intf_SequenceNodeOfSeqOfSectionPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint(const Intf_SequenceNodeOfSeqOfSectionPoint *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint(const Intf_SequenceNodeOfSeqOfSectionPoint *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint & operator=(const Intf_SequenceNodeOfSeqOfSectionPoint *aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint & operator=(const Intf_SequenceNodeOfSeqOfSectionPoint *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfSectionPoint {
	Intf_SequenceNodeOfSeqOfSectionPoint* GetObject() {
	return (Intf_SequenceNodeOfSeqOfSectionPoint*)$self->Access();
	}
};
%feature("shadow") Handle_Intf_SequenceNodeOfSeqOfSectionPoint::~Handle_Intf_SequenceNodeOfSeqOfSectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Intf_SequenceNodeOfSeqOfSectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SequenceNodeOfSeqOfSectionPoint;
class Intf_SequenceNodeOfSeqOfSectionPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfSectionPoint(const Intf_SectionPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_SectionPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Intf_SequenceNodeOfSeqOfSectionPoint {
	Handle_Intf_SequenceNodeOfSeqOfSectionPoint GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfSectionPoint*) &$self;
	}
};
%extend Intf_SequenceNodeOfSeqOfSectionPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Intf_SequenceNodeOfSeqOfSectionPoint::~Intf_SequenceNodeOfSeqOfSectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SequenceNodeOfSeqOfSectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SequenceNodeOfSeqOfSectionLine;
class Intf_SequenceNodeOfSeqOfSectionLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfSectionLine(const Intf_SectionLine &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_SectionLine & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Intf_SequenceNodeOfSeqOfSectionLine {
	Handle_Intf_SequenceNodeOfSeqOfSectionLine GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfSectionLine*) &$self;
	}
};
%extend Intf_SequenceNodeOfSeqOfSectionLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Intf_SequenceNodeOfSeqOfSectionLine::~Intf_SequenceNodeOfSeqOfSectionLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SequenceNodeOfSeqOfSectionLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SectionPoint;
class Intf_SectionPoint {
	public:
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		Intf_PIType TypeOnFirst() const;
		%feature("autodoc", "1");
		Intf_PIType TypeOnSecond() const;
		%feature("autodoc","InfoFirst() -> [Standard_Integer, Standard_Integer, Standard_Real]");

		void InfoFirst(Intf_PIType & Dim, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","InfoFirst() -> [Standard_Integer, Standard_Real]");

		void InfoFirst(Intf_PIType & Dim, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","InfoSecond() -> [Standard_Integer, Standard_Integer, Standard_Real]");

		void InfoSecond(Intf_PIType & Dim, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","InfoSecond() -> [Standard_Integer, Standard_Real]");

		void InfoSecond(Intf_PIType & Dim, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Incidence() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_SectionPoint &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Intf_SectionPoint &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnSameEdge(const Intf_SectionPoint &Other) const;
		%feature("autodoc", "1");
		Intf_SectionPoint();
		%feature("autodoc", "1");
		Intf_SectionPoint(const gp_Pnt &Where, const Intf_PIType DimeO, const Standard_Integer AddrO1, const Standard_Integer AddrO2, const Standard_Real ParamO, const Intf_PIType DimeT, const Standard_Integer AddrT1, const Standard_Integer AddrT2, const Standard_Real ParamT, const Standard_Real Incid);
		%feature("autodoc", "1");
		Intf_SectionPoint(const gp_Pnt2d &Where, const Intf_PIType DimeO, const Standard_Integer AddrO1, const Standard_Real ParamO, const Intf_PIType DimeT, const Standard_Integer AddrT1, const Standard_Real ParamT, const Standard_Real Incid);
		%feature("autodoc", "1");
		void Merge(Intf_SectionPoint & Other);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};
%feature("shadow") Intf_SectionPoint::~Intf_SectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SeqOfSectionPoint;
class Intf_SeqOfSectionPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfSectionPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Intf_SeqOfSectionPoint & Assign(const Intf_SeqOfSectionPoint &Other);
		%feature("autodoc", "1");
		const Intf_SeqOfSectionPoint & operator=(const Intf_SeqOfSectionPoint &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		const Intf_SectionPoint & First() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		const Intf_SectionPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_SectionPoint &I);
		%feature("autodoc", "1");
		Intf_SectionPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_SectionPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Intf_SeqOfSectionPoint::~Intf_SeqOfSectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SeqOfSectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SeqOfTangentZone;
class Intf_SeqOfTangentZone : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfTangentZone();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Intf_SeqOfTangentZone & Assign(const Intf_SeqOfTangentZone &Other);
		%feature("autodoc", "1");
		const Intf_SeqOfTangentZone & operator=(const Intf_SeqOfTangentZone &Other);
		%feature("autodoc", "1");
		void Append(const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_TangentZone &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		const Intf_TangentZone & First() const;
		%feature("autodoc", "1");
		const Intf_TangentZone & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		const Intf_TangentZone & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_TangentZone & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_TangentZone &I);
		%feature("autodoc", "1");
		Intf_TangentZone & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_TangentZone & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Intf_SeqOfTangentZone::~Intf_SeqOfTangentZone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SeqOfTangentZone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SeqOfSectionLine;
class Intf_SeqOfSectionLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfSectionLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Intf_SeqOfSectionLine & Assign(const Intf_SeqOfSectionLine &Other);
		%feature("autodoc", "1");
		const Intf_SeqOfSectionLine & operator=(const Intf_SeqOfSectionLine &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionLine &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		const Intf_SectionLine & First() const;
		%feature("autodoc", "1");
		const Intf_SectionLine & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		const Intf_SectionLine & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_SectionLine & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_SectionLine &I);
		%feature("autodoc", "1");
		Intf_SectionLine & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_SectionLine & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Intf_SeqOfSectionLine::~Intf_SeqOfSectionLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SeqOfSectionLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_SequenceNodeOfSeqOfTangentZone;
class Intf_SequenceNodeOfSeqOfTangentZone : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfTangentZone(const Intf_TangentZone &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_TangentZone & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Intf_SequenceNodeOfSeqOfTangentZone {
	Handle_Intf_SequenceNodeOfSeqOfTangentZone GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfTangentZone*) &$self;
	}
};
%extend Intf_SequenceNodeOfSeqOfTangentZone {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Intf_SequenceNodeOfSeqOfTangentZone::~Intf_SequenceNodeOfSeqOfTangentZone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SequenceNodeOfSeqOfTangentZone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_Array1OfLin;
class Intf_Array1OfLin {
	public:
		%feature("autodoc", "1");
		Intf_Array1OfLin(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Intf_Array1OfLin(const gp_Lin &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Lin &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Intf_Array1OfLin & Assign(const Intf_Array1OfLin &Other);
		%feature("autodoc", "1");
		const Intf_Array1OfLin & operator=(const Intf_Array1OfLin &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin &Value);
		%feature("autodoc", "1");
		const gp_Lin & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Lin & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Lin & operator()(const Standard_Integer Index);

};
%feature("shadow") Intf_Array1OfLin::~Intf_Array1OfLin %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_Array1OfLin {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_Interference;
class Intf_Interference {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbSectionPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & PntValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSectionLines() const;
		%feature("autodoc", "1");
		const Intf_SectionLine & LineValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbTangentZones() const;
		%feature("autodoc", "1");
		const Intf_TangentZone & ZoneValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real GetTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean Insert(const Intf_TangentZone &TheZone);
		%feature("autodoc", "1");
		void Insert(const Intf_SectionPoint &pdeb, const Intf_SectionPoint &pfin);
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") Intf_Interference::~Intf_Interference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_Interference {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Intf_Interference {
	Intf_Interference () {}
};


%nodefaultctor Intf_SectionLine;
class Intf_SectionLine {
	public:
		%feature("autodoc", "1");
		Standard_Integer NumberOfPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Integer IsEnd(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_SectionLine &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Intf_SectionLine &Other) const;
		%feature("autodoc", "1");
		Intf_SectionLine();
		%feature("autodoc", "1");
		Intf_SectionLine(const Intf_SectionLine &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Append(Intf_SectionLine & LS);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Prepend(Intf_SectionLine & LS);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};
%feature("shadow") Intf_SectionLine::~Intf_SectionLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_SectionLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_Tool;
class Intf_Tool {
	public:
		%feature("autodoc", "1");
		Intf_Tool();
		%feature("autodoc", "1");
		void Lin2dBox(const gp_Lin2d &theLin2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxLin);
		%feature("autodoc", "1");
		void Hypr2dBox(const gp_Hypr2d &theHypr2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxHypr);
		%feature("autodoc", "1");
		void Parab2dBox(const gp_Parab2d &theParab2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxHypr);
		%feature("autodoc", "1");
		void LinBox(const gp_Lin &theLin, const Bnd_Box &bounding, Bnd_Box & boxLin);
		%feature("autodoc", "1");
		void HyprBox(const gp_Hypr &theHypr, const Bnd_Box &bounding, Bnd_Box & boxHypr);
		%feature("autodoc", "1");
		void ParabBox(const gp_Parab &theParab, const Bnd_Box &bounding, Bnd_Box & boxHypr);
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Standard_Real BeginParam(const Standard_Integer SegmentNum) const;
		%feature("autodoc", "1");
		Standard_Real EndParam(const Standard_Integer SegmentNum) const;

};
%feature("shadow") Intf_Tool::~Intf_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf;
class Intf {
	public:
		%feature("autodoc", "1");
		Intf();
		%feature("autodoc","PlaneEquation(const P1, const P2, const P3) -> Standard_Real");

		void PlaneEquation(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, gp_XYZ & NormalVector, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Contain(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &ThePnt);

};
%feature("shadow") Intf::~Intf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Intf_TangentZone;
class Intf_TangentZone {
	public:
		%feature("autodoc", "1");
		Standard_Integer NumberOfPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_TangentZone &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Intf_TangentZone &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc","ParamOnFirst() -> [Standard_Real, Standard_Real]");

		void ParamOnFirst(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParamOnSecond() -> [Standard_Real, Standard_Real]");

		void ParamOnSecond(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","InfoFirst() -> [Standard_Integer, Standard_Real, Standard_Integer, Standard_Real]");

		void InfoFirst(Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","InfoSecond() -> [Standard_Integer, Standard_Real, Standard_Integer, Standard_Real]");

		void InfoSecond(Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean RangeContains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Boolean HasCommonRange(const Intf_TangentZone &Other) const;
		%feature("autodoc", "1");
		Intf_TangentZone();
		%feature("autodoc", "1");
		Intf_TangentZone(const Intf_TangentZone &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Append(const Intf_TangentZone &Tzi);
		%feature("autodoc", "1");
		Standard_Boolean Insert(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void PolygonInsert(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};
%feature("shadow") Intf_TangentZone::~Intf_TangentZone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Intf_TangentZone {
	void _kill_pointed() {
		delete $self;
	}
};
