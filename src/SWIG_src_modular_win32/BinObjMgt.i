/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module BinObjMgt

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include BinObjMgt_dependencies.i


%include BinObjMgt_headers.i

typedef Standard_ExtCharacter * BinObjMgt_PExtChar;
typedef Standard_ShortReal * BinObjMgt_PShortReal;
typedef Standard_Real * BinObjMgt_PReal;
typedef Standard_Integer * BinObjMgt_PInteger;
typedef TColStd_IndexedMapOfTransient BinObjMgt_SRelocationTable;
typedef Standard_Character * BinObjMgt_PChar;
typedef Standard_Byte * BinObjMgt_PByte;



%nodefaultctor Handle_BinObjMgt_DataMapNodeOfRRelocationTable;
class Handle_BinObjMgt_DataMapNodeOfRRelocationTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BinObjMgt_DataMapNodeOfRRelocationTable();
		%feature("autodoc", "1");
		Handle_BinObjMgt_DataMapNodeOfRRelocationTable(const Handle_BinObjMgt_DataMapNodeOfRRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_BinObjMgt_DataMapNodeOfRRelocationTable(const BinObjMgt_DataMapNodeOfRRelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_BinObjMgt_DataMapNodeOfRRelocationTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinObjMgt_DataMapNodeOfRRelocationTable {
	BinObjMgt_DataMapNodeOfRRelocationTable* GetObject() {
	return (BinObjMgt_DataMapNodeOfRRelocationTable*)$self->Access();
	}
};
%extend Handle_BinObjMgt_DataMapNodeOfRRelocationTable {
	~Handle_BinObjMgt_DataMapNodeOfRRelocationTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinObjMgt_DataMapNodeOfRRelocationTable\n");}
	}
};

%nodefaultctor Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress;
class Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress();
		%feature("autodoc", "1");
		Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress(const Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress &aHandle);
		%feature("autodoc", "1");
		Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress(const BinObjMgt_SequenceNodeOfSequenceOfAddress *anItem);
		%feature("autodoc", "1");
		Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress {
	BinObjMgt_SequenceNodeOfSequenceOfAddress* GetObject() {
	return (BinObjMgt_SequenceNodeOfSequenceOfAddress*)$self->Access();
	}
};
%extend Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress {
	~Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress\n");}
	}
};

%nodefaultctor BinObjMgt_Persistent;
class BinObjMgt_Persistent {
	public:
		%feature("autodoc", "1");
		BinObjMgt_Persistent();
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCharacter(const Standard_Character theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutByte(const Standard_Byte theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtCharacter(const Standard_ExtCharacter theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutInteger(const Standard_Integer theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutBoolean(const Standard_Boolean theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutReal(const Standard_Real theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutShortReal(const Standard_ShortReal theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCString(const char * theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutAsciiString(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtendedString(const TCollection_ExtendedString &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutLabel(const TDF_Label &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutGUID(const Standard_GUID &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCharArray(const BinObjMgt_PChar theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutByteArray(const BinObjMgt_PByte theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtCharArray(const BinObjMgt_PExtChar theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutIntArray(const BinObjMgt_PInteger theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutRealArray(const BinObjMgt_PReal theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutShortRealArray(const BinObjMgt_PShortReal theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetCharacter(Standard_Character & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetByte(Standard_Byte & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtCharacter(Standard_ExtCharacter & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetInteger(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetBoolean(Standard_Boolean & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetReal(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetShortReal(Standard_ShortReal & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetAsciiString(TCollection_AsciiString & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtendedString(TCollection_ExtendedString & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetLabel(const Handle_TDF_Data &theDS, TDF_Label & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetGUID(Standard_GUID & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetCharArray(const BinObjMgt_PChar theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetByteArray(const BinObjMgt_PByte theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtCharArray(const BinObjMgt_PExtChar theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetIntArray(const BinObjMgt_PInteger theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetRealArray(const BinObjMgt_PReal theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetShortRealArray(const BinObjMgt_PShortReal theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		Standard_Integer Position() const;
		%feature("autodoc", "1");
		Standard_Boolean SetPosition(const Standard_Integer thePos) const;
		%feature("autodoc", "1");
		void Truncate();
		%feature("autodoc", "1");
		Standard_Boolean IsError() const;
		%feature("autodoc", "1");
		Standard_Boolean operator!() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOK() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetId(const Standard_Integer theId);
		%feature("autodoc", "1");
		void SetTypeId(const Standard_Integer theTypeId);
		%feature("autodoc", "1");
		Standard_Integer Id() const;
		%feature("autodoc", "1");
		Standard_Integer TypeId() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_OStream & Write(Standard_OStream & theOS);
		%feature("autodoc", "1");
		std::istream & Read(std::istream & theIS);
		%feature("autodoc", "1");
		void Destroy();

};
%extend BinObjMgt_Persistent {
	~BinObjMgt_Persistent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_Persistent\n");}
	}
};

%nodefaultctor BinObjMgt_DataMapNodeOfRRelocationTable;
class BinObjMgt_DataMapNodeOfRRelocationTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BinObjMgt_DataMapNodeOfRRelocationTable(const Standard_Integer &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinObjMgt_DataMapNodeOfRRelocationTable {
	Handle_BinObjMgt_DataMapNodeOfRRelocationTable GetHandle() {
	return *(Handle_BinObjMgt_DataMapNodeOfRRelocationTable*) &$self;
	}
};
%extend BinObjMgt_DataMapNodeOfRRelocationTable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinObjMgt_DataMapNodeOfRRelocationTable {
	~BinObjMgt_DataMapNodeOfRRelocationTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_DataMapNodeOfRRelocationTable\n");}
	}
};

%nodefaultctor BinObjMgt_SequenceOfAddress;
class BinObjMgt_SequenceOfAddress : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BinObjMgt_SequenceOfAddress();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BinObjMgt_SequenceOfAddress & Assign(const BinObjMgt_SequenceOfAddress &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Address &T);
		%feature("autodoc", "1");
		void Append(BinObjMgt_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Address &T);
		%feature("autodoc", "1");
		void Prepend(BinObjMgt_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BinObjMgt_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Address &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BinObjMgt_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & First() const;
		%feature("autodoc", "1");
		const Standard_Address & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BinObjMgt_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Address & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BinObjMgt_SequenceOfAddress {
	~BinObjMgt_SequenceOfAddress() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_SequenceOfAddress\n");}
	}
};

%nodefaultctor BinObjMgt_SequenceNodeOfSequenceOfAddress;
class BinObjMgt_SequenceNodeOfSequenceOfAddress : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BinObjMgt_SequenceNodeOfSequenceOfAddress(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinObjMgt_SequenceNodeOfSequenceOfAddress {
	Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress GetHandle() {
	return *(Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress*) &$self;
	}
};
%extend BinObjMgt_SequenceNodeOfSequenceOfAddress {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BinObjMgt_SequenceNodeOfSequenceOfAddress {
	~BinObjMgt_SequenceNodeOfSequenceOfAddress() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_SequenceNodeOfSequenceOfAddress\n");}
	}
};

%nodefaultctor BinObjMgt_RRelocationTable;
class BinObjMgt_RRelocationTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BinObjMgt_RRelocationTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BinObjMgt_RRelocationTable & Assign(const BinObjMgt_RRelocationTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer &K);

};
%extend BinObjMgt_RRelocationTable {
	~BinObjMgt_RRelocationTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_RRelocationTable\n");}
	}
};

%nodefaultctor BinObjMgt_DataMapIteratorOfRRelocationTable;
class BinObjMgt_DataMapIteratorOfRRelocationTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BinObjMgt_DataMapIteratorOfRRelocationTable();
		%feature("autodoc", "1");
		BinObjMgt_DataMapIteratorOfRRelocationTable(const BinObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const BinObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend BinObjMgt_DataMapIteratorOfRRelocationTable {
	~BinObjMgt_DataMapIteratorOfRRelocationTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BinObjMgt_DataMapIteratorOfRRelocationTable\n");}
	}
};