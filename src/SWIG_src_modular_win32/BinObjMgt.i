/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module BinObjMgt

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

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
		~Handle_BinObjMgt_DataMapNodeOfRRelocationTable();
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

%nodefaultctor Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress;
class Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress();
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
		const BinObjMgt_Persistent & GetInteger(Standard_Integer & theValue) const;
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
		%feature("autodoc", "1");
		~BinObjMgt_Persistent();

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
		%feature("autodoc", "1");
		virtual		~BinObjMgt_DataMapNodeOfRRelocationTable();

};
%extend BinObjMgt_DataMapNodeOfRRelocationTable {
	Handle_BinObjMgt_DataMapNodeOfRRelocationTable GetHandle() {
	return *(Handle_BinObjMgt_DataMapNodeOfRRelocationTable*) &$self;
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
		~BinObjMgt_SequenceOfAddress();
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

%nodefaultctor BinObjMgt_SequenceNodeOfSequenceOfAddress;
class BinObjMgt_SequenceNodeOfSequenceOfAddress : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BinObjMgt_SequenceNodeOfSequenceOfAddress(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinObjMgt_SequenceNodeOfSequenceOfAddress();

};
%extend BinObjMgt_SequenceNodeOfSequenceOfAddress {
	Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress GetHandle() {
	return *(Handle_BinObjMgt_SequenceNodeOfSequenceOfAddress*) &$self;
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
		~BinObjMgt_RRelocationTable();
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

%nodefaultctor BinObjMgt_DataMapIteratorOfRRelocationTable;
class BinObjMgt_DataMapIteratorOfRRelocationTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BinObjMgt_DataMapIteratorOfRRelocationTable();
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