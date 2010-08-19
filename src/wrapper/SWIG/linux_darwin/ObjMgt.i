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

%module ObjMgt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ObjMgt_renames.i


%include ObjMgt_required_python_modules.i


%include ObjMgt_dependencies.i


%include ObjMgt_headers.i




%nodefaultctor Handle_ObjMgt_SeqNodeOfPSeqOfExtRef;
class Handle_ObjMgt_SeqNodeOfPSeqOfExtRef : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef(const ObjMgt_SeqNodeOfPSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef & operator=(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef & operator=(const ObjMgt_SeqNodeOfPSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		static		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_SeqNodeOfPSeqOfExtRef {
	ObjMgt_SeqNodeOfPSeqOfExtRef* GetObject() {
	return (ObjMgt_SeqNodeOfPSeqOfExtRef*)$self->Access();
	}
};
%feature("shadow") Handle_ObjMgt_SeqNodeOfPSeqOfExtRef::~Handle_ObjMgt_SeqNodeOfPSeqOfExtRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ObjMgt_SeqNodeOfPSeqOfExtRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ObjMgt_ExternRef;
class Handle_ObjMgt_ExternRef : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef(const Handle_ObjMgt_ExternRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef(const ObjMgt_ExternRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef & operator=(const Handle_ObjMgt_ExternRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef & operator=(const ObjMgt_ExternRef *anItem);
		%feature("autodoc", "1");
		static		Handle_ObjMgt_ExternRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_ExternRef {
	ObjMgt_ExternRef* GetObject() {
	return (ObjMgt_ExternRef*)$self->Access();
	}
};
%feature("shadow") Handle_ObjMgt_ExternRef::~Handle_ObjMgt_ExternRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ObjMgt_ExternRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ObjMgt_ExternShareable;
class Handle_ObjMgt_ExternShareable : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable(const Handle_ObjMgt_ExternShareable &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable(const ObjMgt_ExternShareable *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable & operator=(const Handle_ObjMgt_ExternShareable &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable & operator=(const ObjMgt_ExternShareable *anItem);
		%feature("autodoc", "1");
		static		Handle_ObjMgt_ExternShareable const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_ExternShareable {
	ObjMgt_ExternShareable* GetObject() {
	return (ObjMgt_ExternShareable*)$self->Access();
	}
};
%feature("shadow") Handle_ObjMgt_ExternShareable::~Handle_ObjMgt_ExternShareable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ObjMgt_ExternShareable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ObjMgt_PSeqOfExtRef;
class Handle_ObjMgt_PSeqOfExtRef : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef(const Handle_ObjMgt_PSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef(const ObjMgt_PSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef & operator=(const Handle_ObjMgt_PSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef & operator=(const ObjMgt_PSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		static		Handle_ObjMgt_PSeqOfExtRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_PSeqOfExtRef {
	ObjMgt_PSeqOfExtRef* GetObject() {
	return (ObjMgt_PSeqOfExtRef*)$self->Access();
	}
};
%feature("shadow") Handle_ObjMgt_PSeqOfExtRef::~Handle_ObjMgt_PSeqOfExtRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ObjMgt_PSeqOfExtRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ObjMgt_SeqExplorerOfPSeqOfExtRef;
class ObjMgt_SeqExplorerOfPSeqOfExtRef {
	public:
		%feature("autodoc", "1");
		ObjMgt_SeqExplorerOfPSeqOfExtRef(const Handle_ObjMgt_PSeqOfExtRef &S);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_ObjMgt_ExternRef &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_ObjMgt_ExternRef &T);

};
%feature("shadow") ObjMgt_SeqExplorerOfPSeqOfExtRef::~ObjMgt_SeqExplorerOfPSeqOfExtRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ObjMgt_SeqExplorerOfPSeqOfExtRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ObjMgt_SeqNodeOfPSeqOfExtRef;
class ObjMgt_SeqNodeOfPSeqOfExtRef : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		ObjMgt_SeqNodeOfPSeqOfExtRef(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &TheLast, const Handle_ObjMgt_ExternRef &TheItem);
		%feature("autodoc", "1");
		ObjMgt_SeqNodeOfPSeqOfExtRef(const Handle_ObjMgt_ExternRef &TheItem, const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &TheFirst);
		%feature("autodoc", "1");
		ObjMgt_SeqNodeOfPSeqOfExtRef(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &ThePrevious, const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &TheNext, const Handle_ObjMgt_ExternRef &TheItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef Value() const;
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef Next() const;
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_ObjMgt_ExternRef &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &ANode);
		%feature("autodoc", "1");
		ObjMgt_SeqNodeOfPSeqOfExtRef();
		%feature("autodoc", "1");
		ObjMgt_SeqNodeOfPSeqOfExtRef(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef _CSFDB_GetObjMgt_SeqNodeOfPSeqOfExtRefMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_SeqNodeOfPSeqOfExtRefMyPrevious(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &p);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef _CSFDB_GetObjMgt_SeqNodeOfPSeqOfExtRefMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_SeqNodeOfPSeqOfExtRefMyItem(const Handle_ObjMgt_ExternRef &p);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef _CSFDB_GetObjMgt_SeqNodeOfPSeqOfExtRefMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_SeqNodeOfPSeqOfExtRefMyNext(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ObjMgt_SeqNodeOfPSeqOfExtRef {
	Handle_ObjMgt_SeqNodeOfPSeqOfExtRef GetHandle() {
	return *(Handle_ObjMgt_SeqNodeOfPSeqOfExtRef*) &$self;
	}
};
%extend ObjMgt_SeqNodeOfPSeqOfExtRef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ObjMgt_SeqNodeOfPSeqOfExtRef::~ObjMgt_SeqNodeOfPSeqOfExtRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ObjMgt_SeqNodeOfPSeqOfExtRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ObjMgt_PSeqOfExtRef;
class ObjMgt_PSeqOfExtRef : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		ObjMgt_PSeqOfExtRef();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef First() const;
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		void Append(const Handle_ObjMgt_PSeqOfExtRef &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_ObjMgt_PSeqOfExtRef &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_ObjMgt_PSeqOfExtRef &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_ObjMgt_PSeqOfExtRef &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_ObjMgt_ExternRef &T);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_ObjMgt_ExternRef &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_ObjMgt_ExternRef &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_ObjMgt_ExternRef &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		ObjMgt_PSeqOfExtRef(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef _CSFDB_GetObjMgt_PSeqOfExtRefFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_PSeqOfExtRefFirstItem(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &p);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef _CSFDB_GetObjMgt_PSeqOfExtRefLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_PSeqOfExtRefLastItem(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetObjMgt_PSeqOfExtRefSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_PSeqOfExtRefSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ObjMgt_PSeqOfExtRef {
	Handle_ObjMgt_PSeqOfExtRef GetHandle() {
	return *(Handle_ObjMgt_PSeqOfExtRef*) &$self;
	}
};
%extend ObjMgt_PSeqOfExtRef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ObjMgt_PSeqOfExtRef::~ObjMgt_PSeqOfExtRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ObjMgt_PSeqOfExtRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ObjMgt_ExternRef;
class ObjMgt_ExternRef : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		ObjMgt_ExternRef();
		%feature("autodoc", "1");
		ObjMgt_ExternRef(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetObjMgt_ExternRefmyEntryId() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_ExternRefmyEntryId(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetObjMgt_ExternRefmyBindingIndex() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_ExternRefmyBindingIndex(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ObjMgt_ExternRef {
	Handle_ObjMgt_ExternRef GetHandle() {
	return *(Handle_ObjMgt_ExternRef*) &$self;
	}
};
%extend ObjMgt_ExternRef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ObjMgt_ExternRef::~ObjMgt_ExternRef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ObjMgt_ExternRef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ObjMgt_ExternShareable;
class ObjMgt_ExternShareable : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		ObjMgt_ExternShareable();
		%feature("autodoc", "1");
		ObjMgt_ExternShareable(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetObjMgt_ExternShareablemyEntry() const;
		%feature("autodoc", "1");
		void _CSFDB_SetObjMgt_ExternShareablemyEntry(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ObjMgt_ExternShareable {
	Handle_ObjMgt_ExternShareable GetHandle() {
	return *(Handle_ObjMgt_ExternShareable*) &$self;
	}
};
%extend ObjMgt_ExternShareable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ObjMgt_ExternShareable::~ObjMgt_ExternShareable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ObjMgt_ExternShareable {
	void _kill_pointed() {
		delete $self;
	}
};
