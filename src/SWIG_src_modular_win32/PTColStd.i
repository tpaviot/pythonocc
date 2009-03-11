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
	printf("Call custom destructor for instance of Handle_PTColStd_DataMapNodeOfTransientPersistentMap\n");
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
	printf("Call custom destructor for instance of Handle_PTColStd_DataMapNodeOfPersistentTransientMap\n");
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
	printf("Call custom destructor for instance of Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent\n");
	}
};

%nodefaultctor PTColStd_DataMapIteratorOfPersistentTransientMap;
class PTColStd_DataMapIteratorOfPersistentTransientMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~PTColStd_DataMapIteratorOfPersistentTransientMap();
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
	printf("Call custom destructor for instance of PTColStd_DataMapNodeOfPersistentTransientMap\n");
	}
};

%nodefaultctor PTColStd_MapPersistentHasher;
class PTColStd_MapPersistentHasher {
	public:
		%feature("autodoc", "1");
		~PTColStd_MapPersistentHasher();
		%feature("autodoc", "1");
		PTColStd_MapPersistentHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_Standard_Persistent &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Standard_Persistent &K1, const Handle_Standard_Persistent &K2);

};

%nodefaultctor PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent;
class PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent();
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
		~PTColStd_TransientPersistentMap();
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
		~PTColStd_PersistentTransientMap();
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
	printf("Call custom destructor for instance of PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent\n");
	}
};

%nodefaultctor PTColStd_DataMapIteratorOfTransientPersistentMap;
class PTColStd_DataMapIteratorOfTransientPersistentMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~PTColStd_DataMapIteratorOfTransientPersistentMap();
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
	printf("Call custom destructor for instance of PTColStd_DataMapNodeOfTransientPersistentMap\n");
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
		~PTColStd_DoubleMapOfTransientPersistent();
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