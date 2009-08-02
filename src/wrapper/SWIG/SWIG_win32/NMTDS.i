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
%module NMTDS

%include NMTDS_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include NMTDS_dependencies.i


%include NMTDS_headers.i

typedef NMTDS_ShapesDataStructure * NMTDS_PShapesDataStructure;
typedef NMTDS_Iterator * NMTDS_PIterator;
typedef NCollection_UBTree<int, Bnd_Box> NMTDS_BoxBndTree;
typedef NMTDS_InterfPool * NMTDS_PInterfPool;

enum NMTDS_InterfType {
	NMTDS_TI_VV,
	NMTDS_TI_VE,
	NMTDS_TI_VF,
	NMTDS_TI_EE,
	NMTDS_TI_EF,
	NMTDS_TI_FF,
	NMTDS_TI_UNKNOWN,
	};



%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*)$self->Access();
	}
};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape\n");}
	}
};


%nodefaultctor Handle_NMTDS_StdMapNodeOfMapOfPassKey;
class Handle_NMTDS_StdMapNodeOfMapOfPassKey : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey();
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey(const Handle_NMTDS_StdMapNodeOfMapOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey(const NMTDS_StdMapNodeOfMapOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey & operator=(const Handle_NMTDS_StdMapNodeOfMapOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey & operator=(const NMTDS_StdMapNodeOfMapOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKey const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKey {
	NMTDS_StdMapNodeOfMapOfPassKey* GetObject() {
	return (NMTDS_StdMapNodeOfMapOfPassKey*)$self->Access();
	}
};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKey {
	~Handle_NMTDS_StdMapNodeOfMapOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_StdMapNodeOfMapOfPassKey\n");}
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors* GetObject() {
	return (NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors*)$self->Access();
	}
};
%extend Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	~Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfPassKeyBoolean;
class Handle_NMTDS_ListNodeOfListOfPassKeyBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean(const Handle_NMTDS_ListNodeOfListOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean(const NMTDS_ListNodeOfListOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean & operator=(const Handle_NMTDS_ListNodeOfListOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean & operator=(const NMTDS_ListNodeOfListOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKeyBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfPassKeyBoolean {
	NMTDS_ListNodeOfListOfPassKeyBoolean* GetObject() {
	return (NMTDS_ListNodeOfListOfPassKeyBoolean*)$self->Access();
	}
};
%extend Handle_NMTDS_ListNodeOfListOfPassKeyBoolean {
	~Handle_NMTDS_ListNodeOfListOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_ListNodeOfListOfPassKeyBoolean\n");}
	}
};


%nodefaultctor Handle_NMTDS_ListNodeOfListOfPassKey;
class Handle_NMTDS_ListNodeOfListOfPassKey : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey();
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey(const Handle_NMTDS_ListNodeOfListOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey(const NMTDS_ListNodeOfListOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey & operator=(const Handle_NMTDS_ListNodeOfListOfPassKey &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey & operator=(const NMTDS_ListNodeOfListOfPassKey *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_ListNodeOfListOfPassKey const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_ListNodeOfListOfPassKey {
	NMTDS_ListNodeOfListOfPassKey* GetObject() {
	return (NMTDS_ListNodeOfListOfPassKey*)$self->Access();
	}
};
%extend Handle_NMTDS_ListNodeOfListOfPassKey {
	~Handle_NMTDS_ListNodeOfListOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_ListNodeOfListOfPassKey\n");}
	}
};


%nodefaultctor Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger* GetObject() {
	return (NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*)$self->Access();
	}
};
%extend Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	~Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger\n");}
	}
};


%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*)$self->Access();
	}
};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger* GetObject() {
	return (NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger*)$self->Access();
	}
};
%extend Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger\n");}
	}
};


%nodefaultctor Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean;
class Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean();
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const NMTDS_StdMapNodeOfMapOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean & operator=(const Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean & operator=(const NMTDS_StdMapNodeOfMapOfPassKeyBoolean *anItem);
		%feature("autodoc", "1");
		Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	NMTDS_StdMapNodeOfMapOfPassKeyBoolean* GetObject() {
	return (NMTDS_StdMapNodeOfMapOfPassKeyBoolean*)$self->Access();
	}
};
%extend Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	~Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Standard_Integer &K1, const Standard_Integer K2, const BooleanOperations_IndexedDataMapOfShapeInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger\n");}
	}
};


%nodefaultctor NMTDS_CArray1OfIndexRange;
class NMTDS_CArray1OfIndexRange {
	public:
		%feature("autodoc", "1");
		NMTDS_CArray1OfIndexRange(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const NMTDS_IndexRange &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const NMTDS_IndexRange & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const NMTDS_IndexRange & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		NMTDS_IndexRange & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		NMTDS_IndexRange & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%extend NMTDS_CArray1OfIndexRange {
	~NMTDS_CArray1OfIndexRange() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_CArray1OfIndexRange\n");}
	}
};


%nodefaultctor NMTDS_PassKeyShapeMapHasher;
class NMTDS_PassKeyShapeMapHasher {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyShapeMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const NMTDS_PassKeyShape &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKeyShape &aPKey1, const NMTDS_PassKeyShape &aPKey2);

};
%extend NMTDS_PassKeyShapeMapHasher {
	~NMTDS_PassKeyShapeMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_PassKeyShapeMapHasher\n");}
	}
};


%nodefaultctor NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I);
		%feature("autodoc", "1");
		void Prepend(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other);
		%feature("autodoc", "1");
		void Append(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I);
		%feature("autodoc", "1");
		void Append(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & First() const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertBefore(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertAfter(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors & Other, NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors & It);

};
%extend NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors {
	~NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};


%nodefaultctor NMTDS_PassKey;
class NMTDS_PassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKey();
		%feature("autodoc", "1");
		NMTDS_PassKey(const NMTDS_PassKey &Other);
		%feature("autodoc", "1");
		NMTDS_PassKey & operator=(const NMTDS_PassKey &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3, const Standard_Integer aI4);
		%feature("autodoc", "1");
		void SetIds(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc", "1");
		void Ids(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend NMTDS_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_PassKey {
	~NMTDS_PassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_PassKey\n");}
	}
};


%nodefaultctor NMTDS_PassKeyBoolean;
class NMTDS_PassKeyBoolean : public NMTDS_PassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean();
		%feature("autodoc", "1");
		void SetFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & operator=(const NMTDS_PassKeyBoolean &Other);
		%feature("autodoc", "1");
		Standard_Boolean Flag() const;

};
%extend NMTDS_PassKeyBoolean {
	~NMTDS_PassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_PassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_MapOfPassKeyBoolean;
class NMTDS_MapOfPassKeyBoolean : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean & Assign(const NMTDS_MapOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKeyBoolean & operator=(const NMTDS_MapOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKeyBoolean &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKeyBoolean &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const NMTDS_PassKeyBoolean &aKey);

};
%extend NMTDS_MapOfPassKeyBoolean {
	~NMTDS_MapOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_MapOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger;
class NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & Assign(const NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger & operator=(const NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const BooleanOperations_IndexedDataMapOfShapeInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const BooleanOperations_IndexedDataMapOfShapeInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & ChangeFromKey(const Standard_Integer &K);

};
%extend NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger {
	~NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger\n");}
	}
};


%nodefaultctor NMTDS_BoxBndTreeSelector;
class NMTDS_BoxBndTreeSelector : public Selector {
	public:
		%feature("autodoc", "1");
		NMTDS_BoxBndTreeSelector();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const Bnd_Box &arg0) const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Indices() const;

};
%extend NMTDS_BoxBndTreeSelector {
	~NMTDS_BoxBndTreeSelector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_BoxBndTreeSelector\n");}
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	~NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};


%nodefaultctor NMTDS_StdMapNodeOfMapOfPassKeyBoolean;
class NMTDS_StdMapNodeOfMapOfPassKeyBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_StdMapNodeOfMapOfPassKeyBoolean(const NMTDS_PassKeyBoolean &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean GetHandle() {
	return *(Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean*) &$self;
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKeyBoolean {
	~NMTDS_StdMapNodeOfMapOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_StdMapNodeOfMapOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfPassKey;
class NMTDS_ListIteratorOfListOfPassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKey();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKey(const NMTDS_ListOfPassKey &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfPassKey &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTDS_PassKey & Value() const;

};
%extend NMTDS_ListIteratorOfListOfPassKey {
	~NMTDS_ListIteratorOfListOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListIteratorOfListOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_DataMapOfIntegerMapOfInteger;
class NMTDS_DataMapOfIntegerMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger & Assign(const NMTDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		NMTDS_DataMapOfIntegerMapOfInteger & operator=(const NMTDS_DataMapOfIntegerMapOfInteger &Other);
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
%extend NMTDS_DataMapOfIntegerMapOfInteger {
	~NMTDS_DataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_DataMapOfIntegerMapOfInteger\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfShapeBox;
class NMTDS_IndexedDataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox & Assign(const NMTDS_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfShapeBox & operator=(const NMTDS_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Bnd_Box &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromKey(const TopoDS_Shape &K);

};
%extend NMTDS_IndexedDataMapOfShapeBox {
	~NMTDS_IndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape &K1, const Standard_Integer K2, const Bnd_Box &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor NMTDS_ListOfPassKeyBoolean;
class NMTDS_ListOfPassKeyBoolean {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfPassKeyBoolean();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfPassKeyBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKeyBoolean &I);
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfPassKeyBoolean & Other);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKeyBoolean &I);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfPassKeyBoolean & Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & First() const;
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfPassKeyBoolean & Other, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTDS_PassKeyBoolean &I, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfPassKeyBoolean & Other, NMTDS_ListIteratorOfListOfPassKeyBoolean & It);

};
%extend NMTDS_ListOfPassKeyBoolean {
	~NMTDS_ListOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfPassKeyBoolean;
class NMTDS_ListIteratorOfListOfPassKeyBoolean {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKeyBoolean();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfPassKeyBoolean(const NMTDS_ListOfPassKeyBoolean &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfPassKeyBoolean &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Value() const;

};
%extend NMTDS_ListIteratorOfListOfPassKeyBoolean {
	~NMTDS_ListIteratorOfListOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListIteratorOfListOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapOfIntegerShape;
class NMTDS_IndexedDataMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape & Assign(const NMTDS_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapOfIntegerShape & operator=(const NMTDS_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFromKey(const Standard_Integer &K);

};
%extend NMTDS_IndexedDataMapOfIntegerShape {
	~NMTDS_IndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapOfIntegerShape\n");}
	}
};


%nodefaultctor NMTDS_PassKeyMapHasher;
class NMTDS_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const NMTDS_PassKey &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKey &aPKey1, const NMTDS_PassKey &aPKey2);

};
%extend NMTDS_PassKeyMapHasher {
	~NMTDS_PassKeyMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_PassKeyMapHasher\n");}
	}
};


%nodefaultctor NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors;
class NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	public:
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &L);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Value() const;

};
%extend NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors {
	~NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};


%nodefaultctor NMTDS_ShapesDataStructure;
class NMTDS_ShapesDataStructure : public BooleanOperations_ShapesDataStructure {
	public:
		%feature("autodoc", "1");
		NMTDS_ShapesDataStructure();
		%feature("autodoc", "1");
		void SetCompositeShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		const NMTDS_CArray1OfIndexRange & Ranges() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & CompositeShape() const;
		%feature("autodoc", "1");
		Standard_Integer ShapeRangeIndex(const Standard_Integer aId) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Rank(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ShapeIndex(const TopoDS_Shape &aS, const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		void FillMap(const TopoDS_Shape &aS, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMSA, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMS) const;
		%feature("autodoc", "1");
		void FillSubshapes(const TopoDS_Shape &aS, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMSA, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & aMS) const;
		%feature("autodoc", "1");
		void GetAllSuccessors(const Standard_Integer anIndex, TColStd_IndexedMapOfInteger & aScrs) const;
		%feature("autodoc", "1");
		void ComputeBoxEx(const Standard_Integer anIndex, Bnd_Box & aBox) const;

};
%extend NMTDS_ShapesDataStructure {
	~NMTDS_ShapesDataStructure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ShapesDataStructure\n");}
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfPassKeyBoolean;
class NMTDS_ListNodeOfListOfPassKeyBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfPassKeyBoolean(const NMTDS_PassKeyBoolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKeyBoolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	Handle_NMTDS_ListNodeOfListOfPassKeyBoolean GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfPassKeyBoolean*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_ListNodeOfListOfPassKeyBoolean {
	~NMTDS_ListNodeOfListOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListNodeOfListOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_Iterator;
class NMTDS_Iterator {
	public:
		%feature("autodoc", "1");
		NMTDS_Iterator();
		%feature("autodoc", "1");
		void SetDS(const NMTDS_PShapesDataStructure &pDS);
		%feature("autodoc", "1");
		const NMTDS_ShapesDataStructure & DS() const;
		%feature("autodoc", "1");
		void Initialize(const TopAbs_ShapeEnum aType1, const TopAbs_ShapeEnum aType2);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void Current(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & aWithSubShape) const;
		%feature("autodoc", "1");
		virtual		void Prepare();
		%feature("autodoc", "1");
		Standard_Integer ExpectedLength() const;
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerListOfInteger & SDVertices() const;
		%feature("autodoc", "1");
		void FillMVSD(const TColStd_DataMapOfIntegerListOfInteger &aMVSD1, TColStd_DataMapOfIntegerListOfInteger & aMVSD2);

};
%extend NMTDS_Iterator {
	~NMTDS_Iterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_Iterator\n");}
	}
};


%nodefaultctor NMTDS_StdMapNodeOfMapOfPassKey;
class NMTDS_StdMapNodeOfMapOfPassKey : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_StdMapNodeOfMapOfPassKey(const NMTDS_PassKey &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKey & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_StdMapNodeOfMapOfPassKey {
	Handle_NMTDS_StdMapNodeOfMapOfPassKey GetHandle() {
	return *(Handle_NMTDS_StdMapNodeOfMapOfPassKey*) &$self;
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_StdMapNodeOfMapOfPassKey {
	~NMTDS_StdMapNodeOfMapOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_StdMapNodeOfMapOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_IndexRange;
class NMTDS_IndexRange {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexRange();
		%feature("autodoc", "1");
		void SetFirst(const Standard_Integer aFirst);
		%feature("autodoc", "1");
		void SetLast(const Standard_Integer aLast);
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInRange(const Standard_Integer aIndex) const;

};
%extend NMTDS_IndexRange {
	~NMTDS_IndexRange() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexRange\n");}
	}
};


%nodefaultctor NMTDS_ListOfPassKey;
class NMTDS_ListOfPassKey {
	public:
		%feature("autodoc", "1");
		NMTDS_ListOfPassKey();
		%feature("autodoc", "1");
		void Assign(const NMTDS_ListOfPassKey &Other);
		%feature("autodoc", "1");
		void operator=(const NMTDS_ListOfPassKey &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKey &I);
		%feature("autodoc", "1");
		void Prepend(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & theIt);
		%feature("autodoc", "1");
		void Prepend(NMTDS_ListOfPassKey & Other);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKey &I);
		%feature("autodoc", "1");
		void Append(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & theIt);
		%feature("autodoc", "1");
		void Append(NMTDS_ListOfPassKey & Other);
		%feature("autodoc", "1");
		NMTDS_PassKey & First() const;
		%feature("autodoc", "1");
		NMTDS_PassKey & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertBefore(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertBefore(NMTDS_ListOfPassKey & Other, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertAfter(const NMTDS_PassKey &I, NMTDS_ListIteratorOfListOfPassKey & It);
		%feature("autodoc", "1");
		void InsertAfter(NMTDS_ListOfPassKey & Other, NMTDS_ListIteratorOfListOfPassKey & It);

};
%extend NMTDS_ListOfPassKey {
	~NMTDS_ListOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_PassKeyShape;
class NMTDS_PassKeyShape {
	public:
		%feature("autodoc", "1");
		NMTDS_PassKeyShape();
		%feature("autodoc", "1");
		NMTDS_PassKeyShape(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyShape & Assign(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		NMTDS_PassKeyShape & operator=(const NMTDS_PassKeyShape &Other);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2, const TopoDS_Shape &aS3);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2, const TopoDS_Shape &aS3, const TopoDS_Shape &aS4);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const NMTDS_PassKeyShape &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend NMTDS_PassKeyShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_PassKeyShape {
	~NMTDS_PassKeyShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_PassKeyShape\n");}
	}
};


%nodefaultctor NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger GetHandle() {
	return *(Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*) &$self;
	}
};
%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	~NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger\n");}
	}
};


%nodefaultctor NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;
class NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger(const NMTDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%extend NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger {
	~NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger\n");}
	}
};


%nodefaultctor NMTDS_Tools;
class NMTDS_Tools {
	public:
		%feature("autodoc", "1");
		NMTDS_Tools();
		%feature("autodoc", "1");
		Standard_Integer TypeToInteger(const TopAbs_ShapeEnum aT1, const TopAbs_ShapeEnum aT2);
		%feature("autodoc", "1");
		Standard_Boolean HasBRep(const TopAbs_ShapeEnum aT);
		%feature("autodoc", "1");
		Standard_Integer ComputeVV(const TopoDS_Vertex &aV1, const TopoDS_Vertex &aV2);
		%feature("autodoc", "1");
		void CopyShape(const TopoDS_Shape &aS, TopoDS_Shape & aSC);
		%feature("autodoc", "1");
		void CopyShape(const TopoDS_Shape &aS, TopoDS_Shape & aSC, TopTools_IndexedDataMapOfShapeShape & aMSS);

};
%extend NMTDS_Tools {
	~NMTDS_Tools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_Tools\n");}
	}
};


%nodefaultctor NMTDS_MapOfPassKey;
class NMTDS_MapOfPassKey : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey & Assign(const NMTDS_MapOfPassKey &Other);
		%feature("autodoc", "1");
		NMTDS_MapOfPassKey & operator=(const NMTDS_MapOfPassKey &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKey &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKey &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const NMTDS_PassKey &aKey);

};
%extend NMTDS_MapOfPassKey {
	~NMTDS_MapOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_MapOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_ListNodeOfListOfPassKey;
class NMTDS_ListNodeOfListOfPassKey : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_ListNodeOfListOfPassKey(const NMTDS_PassKey &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		NMTDS_PassKey & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_ListNodeOfListOfPassKey {
	Handle_NMTDS_ListNodeOfListOfPassKey GetHandle() {
	return *(Handle_NMTDS_ListNodeOfListOfPassKey*) &$self;
	}
};
%extend NMTDS_ListNodeOfListOfPassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_ListNodeOfListOfPassKey {
	~NMTDS_ListNodeOfListOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_ListNodeOfListOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_MapIteratorOfMapOfPassKey;
class NMTDS_MapIteratorOfMapOfPassKey : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKey();
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKey(const NMTDS_MapOfPassKey &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_MapOfPassKey &aMap);
		%feature("autodoc", "1");
		const NMTDS_PassKey & Key() const;

};
%extend NMTDS_MapIteratorOfMapOfPassKey {
	~NMTDS_MapIteratorOfMapOfPassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_MapIteratorOfMapOfPassKey\n");}
	}
};


%nodefaultctor NMTDS_InterfPool;
class NMTDS_InterfPool {
	public:
		%feature("autodoc", "1");
		NMTDS_InterfPool();
		%feature("autodoc", "1");
		Standard_Boolean Add(const NMTDS_PassKeyBoolean &aPKB, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aInd1, const Standard_Integer aInd2, const Standard_Boolean bFlag, const NMTDS_InterfType aType);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const NMTDS_PassKeyBoolean &aPKB) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aInd1, const Standard_Integer aInd2) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get() const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const NMTDS_InterfType aType) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const Standard_Integer aInd) const;
		%feature("autodoc", "1");
		const NMTDS_ListOfPassKeyBoolean & Get(const Standard_Integer aInd, const NMTDS_InterfType aType) const;
		%feature("autodoc", "1");
		BOPTools_CArray1OfSSInterference & SSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfESInterference & ESInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVSInterference & VSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfEEInterference & EEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVEInterference & VEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVVInterference & VVInterferences();

};
%extend NMTDS_InterfPool {
	~NMTDS_InterfPool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_InterfPool\n");}
	}
};


%nodefaultctor NMTDS_IteratorCheckerSI;
class NMTDS_IteratorCheckerSI : public NMTDS_Iterator {
	public:
		%feature("autodoc", "1");
		NMTDS_IteratorCheckerSI();

};
%extend NMTDS_IteratorCheckerSI {
	~NMTDS_IteratorCheckerSI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IteratorCheckerSI\n");}
	}
};


%nodefaultctor NMTDS_MapIteratorOfMapOfPassKeyBoolean;
class NMTDS_MapIteratorOfMapOfPassKeyBoolean : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKeyBoolean();
		%feature("autodoc", "1");
		NMTDS_MapIteratorOfMapOfPassKeyBoolean(const NMTDS_MapOfPassKeyBoolean &aMap);
		%feature("autodoc", "1");
		void Initialize(const NMTDS_MapOfPassKeyBoolean &aMap);
		%feature("autodoc", "1");
		const NMTDS_PassKeyBoolean & Key() const;

};
%extend NMTDS_MapIteratorOfMapOfPassKeyBoolean {
	~NMTDS_MapIteratorOfMapOfPassKeyBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_MapIteratorOfMapOfPassKeyBoolean\n");}
	}
};


%nodefaultctor NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Standard_Integer &K1, const Standard_Integer K2, const TopoDS_Shape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape GetHandle() {
	return *(Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*) &$self;
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape\n");}
	}
};
