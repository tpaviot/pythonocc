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
%module MeshDS

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


%include MeshDS_dependencies.i


%include MeshDS_headers.i

typedef Handle_NCollection_IncAllocator MeshDS_BaseAllocator;
typedef NCollection_DataMap<int,NCollection_Map<int> > MeshDS_DataMapOfInteger;
typedef NCollection_List<int> MeshDS_ListOfInteger;
typedef NCollection_Map<int> MeshDS_MapOfInteger;

enum MeshDS_DegreeOfFreedom {
	MeshDS_Free,
	MeshDS_InVolume,
	MeshDS_OnSurface,
	MeshDS_OnCurve,
	MeshDS_Fixed,
	MeshDS_Frontier,
	MeshDS_Deleted,
	};



%nodefaultctor Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger* GetObject() {
	return (MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*)$self->Access();
	}
};
%extend Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	~Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger\n");}
	}
};

%nodefaultctor MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%extend MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger {
	~MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger\n");}
	}
};

%nodefaultctor MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger GetHandle() {
	return *(Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*) &$self;
	}
};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	~MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger\n");}
	}
};

%nodefaultctor MeshDS_DataMapOfIntegerMapOfInteger;
class MeshDS_DataMapOfIntegerMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger & Assign(const MeshDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const Standard_Integer &K);

};
%extend MeshDS_DataMapOfIntegerMapOfInteger {
	~MeshDS_DataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshDS_DataMapOfIntegerMapOfInteger\n");}
	}
};