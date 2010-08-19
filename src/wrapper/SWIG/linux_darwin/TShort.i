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

%module TShort
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TShort_renames.i


%include TShort_required_python_modules.i


%include TShort_dependencies.i


%include TShort_headers.i




%nodefaultctor Handle_TShort_HSequenceOfShortReal;
class Handle_TShort_HSequenceOfShortReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal(const Handle_TShort_HSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal(const TShort_HSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal & operator=(const Handle_TShort_HSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal & operator=(const TShort_HSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TShort_HSequenceOfShortReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TShort_HSequenceOfShortReal {
	TShort_HSequenceOfShortReal* GetObject() {
	return (TShort_HSequenceOfShortReal*)$self->Access();
	}
};
%feature("shadow") Handle_TShort_HSequenceOfShortReal::~Handle_TShort_HSequenceOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TShort_HSequenceOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TShort_HArray1OfShortReal;
class Handle_TShort_HArray1OfShortReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_TShort_HArray1OfShortReal(const Handle_TShort_HArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HArray1OfShortReal(const TShort_HArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_TShort_HArray1OfShortReal & operator=(const Handle_TShort_HArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HArray1OfShortReal & operator=(const TShort_HArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TShort_HArray1OfShortReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TShort_HArray1OfShortReal {
	TShort_HArray1OfShortReal* GetObject() {
	return (TShort_HArray1OfShortReal*)$self->Access();
	}
};
%feature("shadow") Handle_TShort_HArray1OfShortReal::~Handle_TShort_HArray1OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TShort_HArray1OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TShort_SequenceNodeOfSequenceOfShortReal;
class Handle_TShort_SequenceNodeOfSequenceOfShortReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TShort_SequenceNodeOfSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_TShort_SequenceNodeOfSequenceOfShortReal(const Handle_TShort_SequenceNodeOfSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_SequenceNodeOfSequenceOfShortReal(const TShort_SequenceNodeOfSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_TShort_SequenceNodeOfSequenceOfShortReal & operator=(const Handle_TShort_SequenceNodeOfSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_SequenceNodeOfSequenceOfShortReal & operator=(const TShort_SequenceNodeOfSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TShort_SequenceNodeOfSequenceOfShortReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TShort_SequenceNodeOfSequenceOfShortReal {
	TShort_SequenceNodeOfSequenceOfShortReal* GetObject() {
	return (TShort_SequenceNodeOfSequenceOfShortReal*)$self->Access();
	}
};
%feature("shadow") Handle_TShort_SequenceNodeOfSequenceOfShortReal::~Handle_TShort_SequenceNodeOfSequenceOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TShort_SequenceNodeOfSequenceOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TShort_HArray2OfShortReal;
class Handle_TShort_HArray2OfShortReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_TShort_HArray2OfShortReal(const Handle_TShort_HArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HArray2OfShortReal(const TShort_HArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_TShort_HArray2OfShortReal & operator=(const Handle_TShort_HArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_TShort_HArray2OfShortReal & operator=(const TShort_HArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TShort_HArray2OfShortReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TShort_HArray2OfShortReal {
	TShort_HArray2OfShortReal* GetObject() {
	return (TShort_HArray2OfShortReal*)$self->Access();
	}
};
%feature("shadow") Handle_TShort_HArray2OfShortReal::~Handle_TShort_HArray2OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TShort_HArray2OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_HArray1OfShortReal;
class TShort_HArray1OfShortReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TShort_Array1OfShortReal & Array1() const;
		%feature("autodoc", "1");
		TShort_Array1OfShortReal & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TShort_HArray1OfShortReal {
	Handle_TShort_HArray1OfShortReal GetHandle() {
	return *(Handle_TShort_HArray1OfShortReal*) &$self;
	}
};
%extend TShort_HArray1OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TShort_HArray1OfShortReal::~TShort_HArray1OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_HArray1OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_SequenceOfShortReal;
class TShort_SequenceOfShortReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TShort_SequenceOfShortReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TShort_SequenceOfShortReal & Assign(const TShort_SequenceOfShortReal &Other);
		%feature("autodoc", "1");
		const TShort_SequenceOfShortReal & operator=(const TShort_SequenceOfShortReal &Other);
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Append(TShort_SequenceOfShortReal & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Prepend(TShort_SequenceOfShortReal & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_ShortReal &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TShort_SequenceOfShortReal & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TShort_SequenceOfShortReal & S);
		%feature("autodoc", "1");
		const Standard_ShortReal & First() const;
		%feature("autodoc", "1");
		const Standard_ShortReal & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TShort_SequenceOfShortReal & S);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &I);
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TShort_SequenceOfShortReal::~TShort_SequenceOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_SequenceOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_Array1OfShortReal;
class TShort_Array1OfShortReal {
	public:
		%feature("autodoc", "1");
		TShort_Array1OfShortReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TShort_Array1OfShortReal(const Standard_ShortReal &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TShort_Array1OfShortReal & Assign(const TShort_Array1OfShortReal &Other);
		%feature("autodoc", "1");
		const TShort_Array1OfShortReal & operator=(const TShort_Array1OfShortReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index);

};
%feature("shadow") TShort_Array1OfShortReal::~TShort_Array1OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_Array1OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_HArray2OfShortReal;
class TShort_HArray2OfShortReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TShort_Array2OfShortReal & Array2() const;
		%feature("autodoc", "1");
		TShort_Array2OfShortReal & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TShort_HArray2OfShortReal {
	Handle_TShort_HArray2OfShortReal GetHandle() {
	return *(Handle_TShort_HArray2OfShortReal*) &$self;
	}
};
%extend TShort_HArray2OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TShort_HArray2OfShortReal::~TShort_HArray2OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_HArray2OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_Array2OfShortReal;
class TShort_Array2OfShortReal {
	public:
		%feature("autodoc", "1");
		TShort_Array2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TShort_Array2OfShortReal(const Standard_ShortReal &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TShort_Array2OfShortReal & Assign(const TShort_Array2OfShortReal &Other);
		%feature("autodoc", "1");
		const TShort_Array2OfShortReal & operator=(const TShort_Array2OfShortReal &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_ShortReal & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TShort_Array2OfShortReal::~TShort_Array2OfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_Array2OfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_SequenceNodeOfSequenceOfShortReal;
class TShort_SequenceNodeOfSequenceOfShortReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TShort_SequenceNodeOfSequenceOfShortReal(const Standard_ShortReal &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_ShortReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TShort_SequenceNodeOfSequenceOfShortReal {
	Handle_TShort_SequenceNodeOfSequenceOfShortReal GetHandle() {
	return *(Handle_TShort_SequenceNodeOfSequenceOfShortReal*) &$self;
	}
};
%extend TShort_SequenceNodeOfSequenceOfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TShort_SequenceNodeOfSequenceOfShortReal::~TShort_SequenceNodeOfSequenceOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_SequenceNodeOfSequenceOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TShort_HSequenceOfShortReal;
class TShort_HSequenceOfShortReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TShort_HSequenceOfShortReal &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TShort_HSequenceOfShortReal &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Standard_ShortReal &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TShort_HSequenceOfShortReal &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Standard_ShortReal &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TShort_HSequenceOfShortReal &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Standard_ShortReal &anItem);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TShort_SequenceOfShortReal & Sequence() const;
		%feature("autodoc", "1");
		TShort_SequenceOfShortReal & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TShort_HSequenceOfShortReal ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TShort_HSequenceOfShortReal {
	Handle_TShort_HSequenceOfShortReal GetHandle() {
	return *(Handle_TShort_HSequenceOfShortReal*) &$self;
	}
};
%extend TShort_HSequenceOfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TShort_HSequenceOfShortReal::~TShort_HSequenceOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TShort_HSequenceOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};
