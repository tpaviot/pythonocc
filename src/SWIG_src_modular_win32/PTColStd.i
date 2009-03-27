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
%module PTColStd

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include PTColStd_dependencies.i


%include PTColStd_headers.i




%nodefaultctor Handle_PTColStd_DataMapNodeOfTransientPersistentMap;
class Handle_PTColStd_DataMapNodeOfTransientPersistentMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap();
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap(const Handle_PTColStd_DataMapNodeOfTransientPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap(const PTColStd_DataMapNodeOfTransientPersistentMap *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DataMapNodeOfTransientPersistentMap {
	PTColStd_DataMapNodeOfTransientPersistentMap* GetObject() {
	return (PTColStd_DataMapNodeOfTransientPersistentMap*)$self->Access();
	}
};
%extend Handle_PTColStd_DataMapNodeOfTransientPersistentMap {
	~Handle_PTColStd_DataMapNodeOfTransientPersistentMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PTColStd_DataMapNodeOfTransientPersistentMap\n");}
	}
};

%nodefaultctor Handle_PTColStd_DataMapNodeOfPersistentTransientMap;
class Handle_PTColStd_DataMapNodeOfPersistentTransientMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap();
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap(const Handle_PTColStd_DataMapNodeOfPersistentTransientMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap(const PTColStd_DataMapNodeOfPersistentTransientMap *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DataMapNodeOfPersistentTransientMap {
	PTColStd_DataMapNodeOfPersistentTransientMap* GetObject() {
	return (PTColStd_DataMapNodeOfPersistentTransientMap*)$self->Access();
	}
};
%extend Handle_PTColStd_DataMapNodeOfPersistentTransientMap {
	~Handle_PTColStd_DataMapNodeOfPersistentTransientMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PTColStd_DataMapNodeOfPersistentTransientMap\n");}
	}
};

%nodefaultctor Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent;
class Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent();
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent* GetObject() {
	return (PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent*)$self->Access();
	}
};
%extend Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	~Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent\n");}
	}
};

%nodefaultctor PTColStd_DataMapIteratorOfPersistentTransientMap;
class PTColStd_DataMapIteratorOfPersistentTransientMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfPersistentTransientMap();
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfPersistentTransientMap(const PTColStd_PersistentTransientMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_PersistentTransientMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend PTColStd_DataMapIteratorOfPersistentTransientMap {
	~PTColStd_DataMapIteratorOfPersistentTransientMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DataMapIteratorOfPersistentTransientMap\n");}
	}
};

%nodefaultctor PTColStd_DataMapNodeOfPersistentTransientMap;
class PTColStd_DataMapNodeOfPersistentTransientMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapNodeOfPersistentTransientMap(const Handle_Standard_Persistent &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DataMapNodeOfPersistentTransientMap {
	Handle_PTColStd_DataMapNodeOfPersistentTransientMap GetHandle() {
	return *(Handle_PTColStd_DataMapNodeOfPersistentTransientMap*) &$self;
	}
};
%extend PTColStd_DataMapNodeOfPersistentTransientMap {
	~PTColStd_DataMapNodeOfPersistentTransientMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DataMapNodeOfPersistentTransientMap\n");}
	}
};

%nodefaultctor PTColStd_MapPersistentHasher;
class PTColStd_MapPersistentHasher {
	public:
		%feature("autodoc", "1");
		PTColStd_MapPersistentHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_Standard_Persistent &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Standard_Persistent &K1, const Handle_Standard_Persistent &K2);

};
%extend PTColStd_MapPersistentHasher {
	~PTColStd_MapPersistentHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_MapPersistentHasher\n");}
	}
};

%nodefaultctor PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent;
class PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent();
		%feature("autodoc", "1");
		PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent(const PTColStd_DoubleMapOfTransientPersistent &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_DoubleMapOfTransientPersistent &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key2() const;

};
%extend PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent {
	~PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent\n");}
	}
};

%nodefaultctor PTColStd_TransientPersistentMap;
class PTColStd_TransientPersistentMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap & Assign(const PTColStd_TransientPersistentMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const Handle_Standard_Persistent &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Handle_Standard_Transient &K);

};
%extend PTColStd_TransientPersistentMap {
	~PTColStd_TransientPersistentMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_TransientPersistentMap\n");}
	}
};

%nodefaultctor PTColStd_PersistentTransientMap;
class PTColStd_PersistentTransientMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap & Assign(const PTColStd_PersistentTransientMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Persistent &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Persistent &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Handle_Standard_Persistent &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Handle_Standard_Persistent &K);

};
%extend PTColStd_PersistentTransientMap {
	~PTColStd_PersistentTransientMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_PersistentTransientMap\n");}
	}
};

%nodefaultctor PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent;
class PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent GetHandle() {
	return *(Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent*) &$self;
	}
};
%extend PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	~PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent\n");}
	}
};

%nodefaultctor PTColStd_DataMapIteratorOfTransientPersistentMap;
class PTColStd_DataMapIteratorOfTransientPersistentMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfTransientPersistentMap();
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfTransientPersistentMap(const PTColStd_TransientPersistentMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_TransientPersistentMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value() const;

};
%extend PTColStd_DataMapIteratorOfTransientPersistentMap {
	~PTColStd_DataMapIteratorOfTransientPersistentMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DataMapIteratorOfTransientPersistentMap\n");}
	}
};

%nodefaultctor PTColStd_DataMapNodeOfTransientPersistentMap;
class PTColStd_DataMapNodeOfTransientPersistentMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapNodeOfTransientPersistentMap(const Handle_Standard_Transient &K, const Handle_Standard_Persistent &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DataMapNodeOfTransientPersistentMap {
	Handle_PTColStd_DataMapNodeOfTransientPersistentMap GetHandle() {
	return *(Handle_PTColStd_DataMapNodeOfTransientPersistentMap*) &$self;
	}
};
%extend PTColStd_DataMapNodeOfTransientPersistentMap {
	~PTColStd_DataMapNodeOfTransientPersistentMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DataMapNodeOfTransientPersistentMap\n");}
	}
};

%nodefaultctor PTColStd_DoubleMapOfTransientPersistent;
class PTColStd_DoubleMapOfTransientPersistent : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapOfTransientPersistent(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_DoubleMapOfTransientPersistent & Assign(const PTColStd_DoubleMapOfTransientPersistent &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Find1(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find2(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const Handle_Standard_Persistent &K);

};
%extend PTColStd_DoubleMapOfTransientPersistent {
	~PTColStd_DoubleMapOfTransientPersistent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PTColStd_DoubleMapOfTransientPersistent\n");}
	}
};