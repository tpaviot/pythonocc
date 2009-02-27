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
%module ObjMgt

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


%include ObjMgt_dependencies.i


%include ObjMgt_headers.i




%nodefaultctor Handle_ObjMgt_SeqNodeOfPSeqOfExtRef;
class Handle_ObjMgt_SeqNodeOfPSeqOfExtRef : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_ObjMgt_SeqNodeOfPSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef(const Handle_ObjMgt_SeqNodeOfPSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef(const ObjMgt_SeqNodeOfPSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_SeqNodeOfPSeqOfExtRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_SeqNodeOfPSeqOfExtRef {
	ObjMgt_SeqNodeOfPSeqOfExtRef* GetObject() {
	return (ObjMgt_SeqNodeOfPSeqOfExtRef*)$self->Access();
	}
};

%nodefaultctor Handle_ObjMgt_ExternRef;
class Handle_ObjMgt_ExternRef : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_ObjMgt_ExternRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef(const Handle_ObjMgt_ExternRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef(const ObjMgt_ExternRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_ExternRef {
	ObjMgt_ExternRef* GetObject() {
	return (ObjMgt_ExternRef*)$self->Access();
	}
};

%nodefaultctor Handle_ObjMgt_ExternShareable;
class Handle_ObjMgt_ExternShareable : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_ObjMgt_ExternShareable();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable();
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable(const Handle_ObjMgt_ExternShareable &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable(const ObjMgt_ExternShareable *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_ExternShareable const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_ExternShareable {
	ObjMgt_ExternShareable* GetObject() {
	return (ObjMgt_ExternShareable*)$self->Access();
	}
};

%nodefaultctor Handle_ObjMgt_PSeqOfExtRef;
class Handle_ObjMgt_PSeqOfExtRef : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_ObjMgt_PSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef();
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef(const Handle_ObjMgt_PSeqOfExtRef &aHandle);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef(const ObjMgt_PSeqOfExtRef *anItem);
		%feature("autodoc", "1");
		Handle_ObjMgt_PSeqOfExtRef const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_ObjMgt_PSeqOfExtRef {
	ObjMgt_PSeqOfExtRef* GetObject() {
	return (ObjMgt_PSeqOfExtRef*)$self->Access();
	}
};

%nodefaultctor ObjMgt_SeqExplorerOfPSeqOfExtRef;
class ObjMgt_SeqExplorerOfPSeqOfExtRef {
	public:
		%feature("autodoc", "1");
		~ObjMgt_SeqExplorerOfPSeqOfExtRef();
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
		%feature("autodoc", "1");
		virtual		~ObjMgt_ExternRef();

};
%extend ObjMgt_ExternRef {
	Handle_ObjMgt_ExternRef GetHandle() {
	return *(Handle_ObjMgt_ExternRef*) &$self;
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
		%feature("autodoc", "1");
		virtual		~ObjMgt_SeqNodeOfPSeqOfExtRef();

};
%extend ObjMgt_SeqNodeOfPSeqOfExtRef {
	Handle_ObjMgt_SeqNodeOfPSeqOfExtRef GetHandle() {
	return *(Handle_ObjMgt_SeqNodeOfPSeqOfExtRef*) &$self;
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
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~ObjMgt_PSeqOfExtRef();
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
		%feature("autodoc", "1");
		virtual		~ObjMgt_ExternShareable();

};
%extend ObjMgt_ExternShareable {
	Handle_ObjMgt_ExternShareable GetHandle() {
	return *(Handle_ObjMgt_ExternShareable*) &$self;
	}
};