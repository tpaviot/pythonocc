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
%module GraphDS

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


%include GraphDS_dependencies.i


%include GraphDS_headers.i


enum GraphDS_RelationRole {
	GraphDS_OnlyFront,
	GraphDS_OnlyBack,
	GraphDS_FrontAndBack,
	};

enum GraphDS_EntityRole {
	GraphDS_OnlyInput,
	GraphDS_OnlyOutput,
	GraphDS_InputAndOutput,
	};



%nodefaultctor Handle_GraphDS_DataMapNodeOfEntityRoleMap;
class Handle_GraphDS_DataMapNodeOfEntityRoleMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap();
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap(const Handle_GraphDS_DataMapNodeOfEntityRoleMap &aHandle);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap(const GraphDS_DataMapNodeOfEntityRoleMap *anItem);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphDS_DataMapNodeOfEntityRoleMap {
	GraphDS_DataMapNodeOfEntityRoleMap* GetObject() {
	return (GraphDS_DataMapNodeOfEntityRoleMap*)$self->Access();
	}
};
%extend Handle_GraphDS_DataMapNodeOfEntityRoleMap {
	~Handle_GraphDS_DataMapNodeOfEntityRoleMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_GraphDS_DataMapNodeOfEntityRoleMap\n");}
	}
};

%nodefaultctor GraphDS_EntityRoleMap;
class GraphDS_EntityRoleMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GraphDS_EntityRoleMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GraphDS_EntityRoleMap & Assign(const GraphDS_EntityRoleMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const GraphDS_EntityRole &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const GraphDS_EntityRole & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const GraphDS_EntityRole & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		GraphDS_EntityRole & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		GraphDS_EntityRole & operator()(const Handle_Standard_Transient &K);

};
%extend GraphDS_EntityRoleMap {
	~GraphDS_EntityRoleMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GraphDS_EntityRoleMap\n");}
	}
};

%nodefaultctor GraphDS_DataMapNodeOfEntityRoleMap;
class GraphDS_DataMapNodeOfEntityRoleMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphDS_DataMapNodeOfEntityRoleMap(const Handle_Standard_Transient &K, const GraphDS_EntityRole &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		GraphDS_EntityRole & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GraphDS_DataMapNodeOfEntityRoleMap {
	Handle_GraphDS_DataMapNodeOfEntityRoleMap GetHandle() {
	return *(Handle_GraphDS_DataMapNodeOfEntityRoleMap*) &$self;
	}
};
%extend GraphDS_DataMapNodeOfEntityRoleMap {
	~GraphDS_DataMapNodeOfEntityRoleMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GraphDS_DataMapNodeOfEntityRoleMap\n");}
	}
};

%nodefaultctor GraphDS_DataMapIteratorOfEntityRoleMap;
class GraphDS_DataMapIteratorOfEntityRoleMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GraphDS_DataMapIteratorOfEntityRoleMap();
		%feature("autodoc", "1");
		GraphDS_DataMapIteratorOfEntityRoleMap(const GraphDS_EntityRoleMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const GraphDS_EntityRoleMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const GraphDS_EntityRole & Value() const;

};
%extend GraphDS_DataMapIteratorOfEntityRoleMap {
	~GraphDS_DataMapIteratorOfEntityRoleMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GraphDS_DataMapIteratorOfEntityRoleMap\n");}
	}
};