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
%module TDataStd

%include TDataStd_renames.i

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


%include TDataStd_dependencies.i


%include TDataStd_headers.i

typedef TDataStd_TreeNode * TDataStd_PtrTreeNode;

enum TDataStd_GeometryEnum {
	TDataStd_ANY_GEOM,
	TDataStd_POINT,
	TDataStd_LINE,
	TDataStd_CIRCLE,
	TDataStd_ELLIPSE,
	TDataStd_SPLINE,
	TDataStd_PLANE,
	TDataStd_CYLINDER,
	};

enum TDataStd_RealEnum {
	TDataStd_SCALAR,
	TDataStd_LENGTH,
	TDataStd_ANGULAR,
	};

enum TDataStd_ConstraintEnum {
	TDataStd_RADIUS,
	TDataStd_DIAMETER,
	TDataStd_MINOR_RADIUS,
	TDataStd_MAJOR_RADIUS,
	TDataStd_TANGENT,
	TDataStd_PARALLEL,
	TDataStd_PERPENDICULAR,
	TDataStd_CONCENTRIC,
	TDataStd_COINCIDENT,
	TDataStd_DISTANCE,
	TDataStd_ANGLE,
	TDataStd_EQUAL_RADIUS,
	TDataStd_SYMMETRY,
	TDataStd_MIDPOINT,
	TDataStd_EQUAL_DISTANCE,
	TDataStd_FIX,
	TDataStd_RIGID,
	TDataStd_FROM,
	TDataStd_AXIS,
	TDataStd_MATE,
	TDataStd_ALIGN_FACES,
	TDataStd_ALIGN_AXES,
	TDataStd_AXES_ANGLE,
	TDataStd_FACES_ANGLE,
	TDataStd_ROUND,
	TDataStd_OFFSET,
	};



%nodefaultctor Handle_TDataStd_Pattern;
class Handle_TDataStd_Pattern : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern();
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern(const Handle_TDataStd_Pattern &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern(const TDataStd_Pattern *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern & operator=(const Handle_TDataStd_Pattern &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern & operator=(const TDataStd_Pattern *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Pattern const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Pattern {
	TDataStd_Pattern* GetObject() {
	return (TDataStd_Pattern*)$self->Access();
	}
};
%extend Handle_TDataStd_Pattern {
	~Handle_TDataStd_Pattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Pattern\n");}
	}
};


%nodefaultctor Handle_TDataStd_PatternStd;
class Handle_TDataStd_PatternStd : public Handle_TDataStd_Pattern {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd();
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd(const Handle_TDataStd_PatternStd &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd(const TDataStd_PatternStd *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd & operator=(const Handle_TDataStd_PatternStd &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd & operator=(const TDataStd_PatternStd *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_PatternStd {
	TDataStd_PatternStd* GetObject() {
	return (TDataStd_PatternStd*)$self->Access();
	}
};
%extend Handle_TDataStd_PatternStd {
	~Handle_TDataStd_PatternStd() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_PatternStd\n");}
	}
};


%nodefaultctor Handle_TDataStd_Relation;
class Handle_TDataStd_Relation : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Relation();
		%feature("autodoc", "1");
		Handle_TDataStd_Relation(const Handle_TDataStd_Relation &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation(const TDataStd_Relation *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation & operator=(const Handle_TDataStd_Relation &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation & operator=(const TDataStd_Relation *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Relation {
	TDataStd_Relation* GetObject() {
	return (TDataStd_Relation*)$self->Access();
	}
};
%extend Handle_TDataStd_Relation {
	~Handle_TDataStd_Relation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Relation\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringByte;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringByte : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte(const Handle_TDataStd_DataMapNodeOfDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte(const TDataStd_DataMapNodeOfDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte & operator=(const TDataStd_DataMapNodeOfDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringByte {
	TDataStd_DataMapNodeOfDataMapOfStringByte* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringByte*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringByte {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringByte\n");}
	}
};


%nodefaultctor Handle_TDataStd_ExtStringList;
class Handle_TDataStd_ExtStringList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList(const Handle_TDataStd_ExtStringList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList(const TDataStd_ExtStringList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList & operator=(const Handle_TDataStd_ExtStringList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList & operator=(const TDataStd_ExtStringList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ExtStringList {
	TDataStd_ExtStringList* GetObject() {
	return (TDataStd_ExtStringList*)$self->Access();
	}
};
%extend Handle_TDataStd_ExtStringList {
	~Handle_TDataStd_ExtStringList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ExtStringList\n");}
	}
};


%nodefaultctor Handle_TDataStd_TreeNode;
class Handle_TDataStd_TreeNode : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode(const Handle_TDataStd_TreeNode &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode(const TDataStd_TreeNode *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode & operator=(const Handle_TDataStd_TreeNode &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode & operator=(const TDataStd_TreeNode *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_TreeNode {
	TDataStd_TreeNode* GetObject() {
	return (TDataStd_TreeNode*)$self->Access();
	}
};
%extend Handle_TDataStd_TreeNode {
	~Handle_TDataStd_TreeNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_TreeNode\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringInteger;
class Handle_TDataStd_HDataMapOfStringInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger(const Handle_TDataStd_HDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger(const TDataStd_HDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger & operator=(const Handle_TDataStd_HDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger & operator=(const TDataStd_HDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringInteger {
	TDataStd_HDataMapOfStringInteger* GetObject() {
	return (TDataStd_HDataMapOfStringInteger*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringInteger {
	~Handle_TDataStd_HDataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringInteger\n");}
	}
};


%nodefaultctor Handle_TDataStd_BooleanList;
class Handle_TDataStd_BooleanList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList(const Handle_TDataStd_BooleanList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList(const TDataStd_BooleanList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList & operator=(const Handle_TDataStd_BooleanList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList & operator=(const TDataStd_BooleanList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_BooleanList {
	TDataStd_BooleanList* GetObject() {
	return (TDataStd_BooleanList*)$self->Access();
	}
};
%extend Handle_TDataStd_BooleanList {
	~Handle_TDataStd_BooleanList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_BooleanList\n");}
	}
};


%nodefaultctor Handle_TDataStd_Geometry;
class Handle_TDataStd_Geometry : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry();
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry(const Handle_TDataStd_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry(const TDataStd_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry & operator=(const Handle_TDataStd_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry & operator=(const TDataStd_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Geometry {
	TDataStd_Geometry* GetObject() {
	return (TDataStd_Geometry*)$self->Access();
	}
};
%extend Handle_TDataStd_Geometry {
	~Handle_TDataStd_Geometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Geometry\n");}
	}
};


%nodefaultctor Handle_TDataStd_UAttribute;
class Handle_TDataStd_UAttribute : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute();
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute(const Handle_TDataStd_UAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute(const TDataStd_UAttribute *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute & operator=(const Handle_TDataStd_UAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute & operator=(const TDataStd_UAttribute *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_UAttribute {
	TDataStd_UAttribute* GetObject() {
	return (TDataStd_UAttribute*)$self->Access();
	}
};
%extend Handle_TDataStd_UAttribute {
	~Handle_TDataStd_UAttribute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_UAttribute\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringReal;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal(const Handle_TDataStd_DataMapNodeOfDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal(const TDataStd_DataMapNodeOfDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal & operator=(const TDataStd_DataMapNodeOfDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringReal {
	TDataStd_DataMapNodeOfDataMapOfStringReal* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringReal*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringReal {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringReal\n");}
	}
};


%nodefaultctor Handle_TDataStd_AsciiString;
class Handle_TDataStd_AsciiString : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString();
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString(const Handle_TDataStd_AsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString(const TDataStd_AsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString & operator=(const Handle_TDataStd_AsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString & operator=(const TDataStd_AsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_AsciiString {
	TDataStd_AsciiString* GetObject() {
	return (TDataStd_AsciiString*)$self->Access();
	}
};
%extend Handle_TDataStd_AsciiString {
	~Handle_TDataStd_AsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_AsciiString\n");}
	}
};


%nodefaultctor Handle_TDataStd_ReferenceArray;
class Handle_TDataStd_ReferenceArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray(const Handle_TDataStd_ReferenceArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray(const TDataStd_ReferenceArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray & operator=(const Handle_TDataStd_ReferenceArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray & operator=(const TDataStd_ReferenceArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ReferenceArray {
	TDataStd_ReferenceArray* GetObject() {
	return (TDataStd_ReferenceArray*)$self->Access();
	}
};
%extend Handle_TDataStd_ReferenceArray {
	~Handle_TDataStd_ReferenceArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ReferenceArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger & operator=(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor Handle_TDataStd_HArray1OfByte;
class Handle_TDataStd_HArray1OfByte : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte();
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte(const Handle_TDataStd_HArray1OfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte(const TDataStd_HArray1OfByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte & operator=(const Handle_TDataStd_HArray1OfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte & operator=(const TDataStd_HArray1OfByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HArray1OfByte {
	TDataStd_HArray1OfByte* GetObject() {
	return (TDataStd_HArray1OfByte*)$self->Access();
	}
};
%extend Handle_TDataStd_HArray1OfByte {
	~Handle_TDataStd_HArray1OfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HArray1OfByte\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringString;
class Handle_TDataStd_HDataMapOfStringString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString(const Handle_TDataStd_HDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString(const TDataStd_HDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString & operator=(const Handle_TDataStd_HDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString & operator=(const TDataStd_HDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringString {
	TDataStd_HDataMapOfStringString* GetObject() {
	return (TDataStd_HDataMapOfStringString*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringString {
	~Handle_TDataStd_HDataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringString\n");}
	}
};


%nodefaultctor Handle_TDataStd_ListNodeOfListOfExtendedString;
class Handle_TDataStd_ListNodeOfListOfExtendedString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString();
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString(const Handle_TDataStd_ListNodeOfListOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString(const TDataStd_ListNodeOfListOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString & operator=(const Handle_TDataStd_ListNodeOfListOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString & operator=(const TDataStd_ListNodeOfListOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ListNodeOfListOfExtendedString {
	TDataStd_ListNodeOfListOfExtendedString* GetObject() {
	return (TDataStd_ListNodeOfListOfExtendedString*)$self->Access();
	}
};
%extend Handle_TDataStd_ListNodeOfListOfExtendedString {
	~Handle_TDataStd_ListNodeOfListOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ListNodeOfListOfExtendedString\n");}
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfIntArray;
class Handle_TDataStd_DeltaOnModificationOfIntArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray(const Handle_TDataStd_DeltaOnModificationOfIntArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray(const TDataStd_DeltaOnModificationOfIntArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray & operator=(const Handle_TDataStd_DeltaOnModificationOfIntArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray & operator=(const TDataStd_DeltaOnModificationOfIntArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfIntArray {
	TDataStd_DeltaOnModificationOfIntArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfIntArray*)$self->Access();
	}
};
%extend Handle_TDataStd_DeltaOnModificationOfIntArray {
	~Handle_TDataStd_DeltaOnModificationOfIntArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DeltaOnModificationOfIntArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_Placement;
class Handle_TDataStd_Placement : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Placement();
		%feature("autodoc", "1");
		Handle_TDataStd_Placement(const Handle_TDataStd_Placement &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Placement(const TDataStd_Placement *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Placement & operator=(const Handle_TDataStd_Placement &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Placement & operator=(const TDataStd_Placement *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Placement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Placement {
	TDataStd_Placement* GetObject() {
	return (TDataStd_Placement*)$self->Access();
	}
};
%extend Handle_TDataStd_Placement {
	~Handle_TDataStd_Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Placement\n");}
	}
};


%nodefaultctor Handle_TDataStd_Constraint;
class Handle_TDataStd_Constraint : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint();
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint(const Handle_TDataStd_Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint(const TDataStd_Constraint *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint & operator=(const Handle_TDataStd_Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint & operator=(const TDataStd_Constraint *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Constraint {
	TDataStd_Constraint* GetObject() {
	return (TDataStd_Constraint*)$self->Access();
	}
};
%extend Handle_TDataStd_Constraint {
	~Handle_TDataStd_Constraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Constraint\n");}
	}
};


%nodefaultctor Handle_TDataStd_IntPackedMap;
class Handle_TDataStd_IntPackedMap : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap();
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap(const Handle_TDataStd_IntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap(const TDataStd_IntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap & operator=(const Handle_TDataStd_IntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap & operator=(const TDataStd_IntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntPackedMap {
	TDataStd_IntPackedMap* GetObject() {
	return (TDataStd_IntPackedMap*)$self->Access();
	}
};
%extend Handle_TDataStd_IntPackedMap {
	~Handle_TDataStd_IntPackedMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_IntPackedMap\n");}
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfByteArray;
class Handle_TDataStd_DeltaOnModificationOfByteArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray(const Handle_TDataStd_DeltaOnModificationOfByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray(const TDataStd_DeltaOnModificationOfByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray & operator=(const Handle_TDataStd_DeltaOnModificationOfByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray & operator=(const TDataStd_DeltaOnModificationOfByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfByteArray {
	TDataStd_DeltaOnModificationOfByteArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfByteArray*)$self->Access();
	}
};
%extend Handle_TDataStd_DeltaOnModificationOfByteArray {
	~Handle_TDataStd_DeltaOnModificationOfByteArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DeltaOnModificationOfByteArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_IntegerList;
class Handle_TDataStd_IntegerList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList(const Handle_TDataStd_IntegerList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList(const TDataStd_IntegerList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList & operator=(const Handle_TDataStd_IntegerList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList & operator=(const TDataStd_IntegerList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntegerList {
	TDataStd_IntegerList* GetObject() {
	return (TDataStd_IntegerList*)$self->Access();
	}
};
%extend Handle_TDataStd_IntegerList {
	~Handle_TDataStd_IntegerList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_IntegerList\n");}
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfIntPackedMap;
class Handle_TDataStd_DeltaOnModificationOfIntPackedMap : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap(const Handle_TDataStd_DeltaOnModificationOfIntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap(const TDataStd_DeltaOnModificationOfIntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap & operator=(const Handle_TDataStd_DeltaOnModificationOfIntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap & operator=(const TDataStd_DeltaOnModificationOfIntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfIntPackedMap {
	TDataStd_DeltaOnModificationOfIntPackedMap* GetObject() {
	return (TDataStd_DeltaOnModificationOfIntPackedMap*)$self->Access();
	}
};
%extend Handle_TDataStd_DeltaOnModificationOfIntPackedMap {
	~Handle_TDataStd_DeltaOnModificationOfIntPackedMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DeltaOnModificationOfIntPackedMap\n");}
	}
};


%nodefaultctor Handle_TDataStd_ExtStringArray;
class Handle_TDataStd_ExtStringArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray(const Handle_TDataStd_ExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray(const TDataStd_ExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray & operator=(const Handle_TDataStd_ExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray & operator=(const TDataStd_ExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ExtStringArray {
	TDataStd_ExtStringArray* GetObject() {
	return (TDataStd_ExtStringArray*)$self->Access();
	}
};
%extend Handle_TDataStd_ExtStringArray {
	~Handle_TDataStd_ExtStringArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ExtStringArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_Position;
class Handle_TDataStd_Position : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Position();
		%feature("autodoc", "1");
		Handle_TDataStd_Position(const Handle_TDataStd_Position &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Position(const TDataStd_Position *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Position & operator=(const Handle_TDataStd_Position &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Position & operator=(const TDataStd_Position *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Position const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Position {
	TDataStd_Position* GetObject() {
	return (TDataStd_Position*)$self->Access();
	}
};
%extend Handle_TDataStd_Position {
	~Handle_TDataStd_Position() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Position\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringByte;
class Handle_TDataStd_HDataMapOfStringByte : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte(const Handle_TDataStd_HDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte(const TDataStd_HDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte & operator=(const Handle_TDataStd_HDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte & operator=(const TDataStd_HDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringByte {
	TDataStd_HDataMapOfStringByte* GetObject() {
	return (TDataStd_HDataMapOfStringByte*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringByte {
	~Handle_TDataStd_HDataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringByte\n");}
	}
};


%nodefaultctor Handle_TDataStd_IntegerArray;
class Handle_TDataStd_IntegerArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray(const Handle_TDataStd_IntegerArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray(const TDataStd_IntegerArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray & operator=(const Handle_TDataStd_IntegerArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray & operator=(const TDataStd_IntegerArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntegerArray {
	TDataStd_IntegerArray* GetObject() {
	return (TDataStd_IntegerArray*)$self->Access();
	}
};
%extend Handle_TDataStd_IntegerArray {
	~Handle_TDataStd_IntegerArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_IntegerArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringReal;
class Handle_TDataStd_HDataMapOfStringReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal(const Handle_TDataStd_HDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal(const TDataStd_HDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal & operator=(const Handle_TDataStd_HDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal & operator=(const TDataStd_HDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringReal {
	TDataStd_HDataMapOfStringReal* GetObject() {
	return (TDataStd_HDataMapOfStringReal*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringReal {
	~Handle_TDataStd_HDataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringReal\n");}
	}
};


%nodefaultctor Handle_TDataStd_Expression;
class Handle_TDataStd_Expression : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Expression();
		%feature("autodoc", "1");
		Handle_TDataStd_Expression(const Handle_TDataStd_Expression &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression(const TDataStd_Expression *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression & operator=(const Handle_TDataStd_Expression &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression & operator=(const TDataStd_Expression *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Expression {
	TDataStd_Expression* GetObject() {
	return (TDataStd_Expression*)$self->Access();
	}
};
%extend Handle_TDataStd_Expression {
	~Handle_TDataStd_Expression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Expression\n");}
	}
};


%nodefaultctor Handle_TDataStd_Plane;
class Handle_TDataStd_Plane : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Plane();
		%feature("autodoc", "1");
		Handle_TDataStd_Plane(const Handle_TDataStd_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Plane(const TDataStd_Plane *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Plane & operator=(const Handle_TDataStd_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Plane & operator=(const TDataStd_Plane *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Plane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Plane {
	TDataStd_Plane* GetObject() {
	return (TDataStd_Plane*)$self->Access();
	}
};
%extend Handle_TDataStd_Plane {
	~Handle_TDataStd_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Plane\n");}
	}
};


%nodefaultctor Handle_TDataStd_ReferenceList;
class Handle_TDataStd_ReferenceList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList(const Handle_TDataStd_ReferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList(const TDataStd_ReferenceList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList & operator=(const Handle_TDataStd_ReferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList & operator=(const TDataStd_ReferenceList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ReferenceList {
	TDataStd_ReferenceList* GetObject() {
	return (TDataStd_ReferenceList*)$self->Access();
	}
};
%extend Handle_TDataStd_ReferenceList {
	~Handle_TDataStd_ReferenceList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ReferenceList\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringHArray1OfInteger;
class Handle_TDataStd_HDataMapOfStringHArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger(const Handle_TDataStd_HDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger(const TDataStd_HDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger & operator=(const Handle_TDataStd_HDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger & operator=(const TDataStd_HDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfInteger {
	TDataStd_HDataMapOfStringHArray1OfInteger* GetObject() {
	return (TDataStd_HDataMapOfStringHArray1OfInteger*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfInteger {
	~Handle_TDataStd_HDataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringHArray1OfReal;
class Handle_TDataStd_HDataMapOfStringHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal(const Handle_TDataStd_HDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal(const TDataStd_HDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal & operator=(const Handle_TDataStd_HDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal & operator=(const TDataStd_HDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfReal {
	TDataStd_HDataMapOfStringHArray1OfReal* GetObject() {
	return (TDataStd_HDataMapOfStringHArray1OfReal*)$self->Access();
	}
};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfReal {
	~Handle_TDataStd_HDataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HDataMapOfStringHArray1OfReal\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger(const Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger(const TDataStd_DataMapNodeOfDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger & operator=(const TDataStd_DataMapNodeOfDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger {
	TDataStd_DataMapNodeOfDataMapOfStringInteger* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringInteger*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger\n");}
	}
};


%nodefaultctor Handle_TDataStd_Variable;
class Handle_TDataStd_Variable : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Variable();
		%feature("autodoc", "1");
		Handle_TDataStd_Variable(const Handle_TDataStd_Variable &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable(const TDataStd_Variable *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable & operator=(const Handle_TDataStd_Variable &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable & operator=(const TDataStd_Variable *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Variable {
	TDataStd_Variable* GetObject() {
	return (TDataStd_Variable*)$self->Access();
	}
};
%extend Handle_TDataStd_Variable {
	~Handle_TDataStd_Variable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Variable\n");}
	}
};


%nodefaultctor Handle_TDataStd_BooleanArray;
class Handle_TDataStd_BooleanArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray(const Handle_TDataStd_BooleanArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray(const TDataStd_BooleanArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray & operator=(const Handle_TDataStd_BooleanArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray & operator=(const TDataStd_BooleanArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_BooleanArray {
	TDataStd_BooleanArray* GetObject() {
	return (TDataStd_BooleanArray*)$self->Access();
	}
};
%extend Handle_TDataStd_BooleanArray {
	~Handle_TDataStd_BooleanArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_BooleanArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_Axis;
class Handle_TDataStd_Axis : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Axis();
		%feature("autodoc", "1");
		Handle_TDataStd_Axis(const Handle_TDataStd_Axis &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Axis(const TDataStd_Axis *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Axis & operator=(const Handle_TDataStd_Axis &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Axis & operator=(const TDataStd_Axis *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Axis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Axis {
	TDataStd_Axis* GetObject() {
	return (TDataStd_Axis*)$self->Access();
	}
};
%extend Handle_TDataStd_Axis {
	~Handle_TDataStd_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Axis\n");}
	}
};


%nodefaultctor Handle_TDataStd_Point;
class Handle_TDataStd_Point : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Point();
		%feature("autodoc", "1");
		Handle_TDataStd_Point(const Handle_TDataStd_Point &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Point(const TDataStd_Point *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Point & operator=(const Handle_TDataStd_Point &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Point & operator=(const TDataStd_Point *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Point {
	TDataStd_Point* GetObject() {
	return (TDataStd_Point*)$self->Access();
	}
};
%extend Handle_TDataStd_Point {
	~Handle_TDataStd_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Point\n");}
	}
};


%nodefaultctor Handle_TDataStd_HLabelArray1;
class Handle_TDataStd_HLabelArray1 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1();
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1(const Handle_TDataStd_HLabelArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1(const TDataStd_HLabelArray1 *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1 & operator=(const Handle_TDataStd_HLabelArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1 & operator=(const TDataStd_HLabelArray1 *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HLabelArray1 {
	TDataStd_HLabelArray1* GetObject() {
	return (TDataStd_HLabelArray1*)$self->Access();
	}
};
%extend Handle_TDataStd_HLabelArray1 {
	~Handle_TDataStd_HLabelArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HLabelArray1\n");}
	}
};


%nodefaultctor Handle_TDataStd_HArray1OfTrsf;
class Handle_TDataStd_HArray1OfTrsf : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf();
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf(const Handle_TDataStd_HArray1OfTrsf &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf(const TDataStd_HArray1OfTrsf *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf & operator=(const Handle_TDataStd_HArray1OfTrsf &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf & operator=(const TDataStd_HArray1OfTrsf *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfTrsf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HArray1OfTrsf {
	TDataStd_HArray1OfTrsf* GetObject() {
	return (TDataStd_HArray1OfTrsf*)$self->Access();
	}
};
%extend Handle_TDataStd_HArray1OfTrsf {
	~Handle_TDataStd_HArray1OfTrsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_HArray1OfTrsf\n");}
	}
};


%nodefaultctor Handle_TDataStd_Name;
class Handle_TDataStd_Name : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Name();
		%feature("autodoc", "1");
		Handle_TDataStd_Name(const Handle_TDataStd_Name &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Name(const TDataStd_Name *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Name & operator=(const Handle_TDataStd_Name &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Name & operator=(const TDataStd_Name *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Name const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Name {
	TDataStd_Name* GetObject() {
	return (TDataStd_Name*)$self->Access();
	}
};
%extend Handle_TDataStd_Name {
	~Handle_TDataStd_Name() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Name\n");}
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfExtStringArray;
class Handle_TDataStd_DeltaOnModificationOfExtStringArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray(const Handle_TDataStd_DeltaOnModificationOfExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray(const TDataStd_DeltaOnModificationOfExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray & operator=(const Handle_TDataStd_DeltaOnModificationOfExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray & operator=(const TDataStd_DeltaOnModificationOfExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfExtStringArray {
	TDataStd_DeltaOnModificationOfExtStringArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfExtStringArray*)$self->Access();
	}
};
%extend Handle_TDataStd_DeltaOnModificationOfExtStringArray {
	~Handle_TDataStd_DeltaOnModificationOfExtStringArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DeltaOnModificationOfExtStringArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_ListNodeOfListOfByte;
class Handle_TDataStd_ListNodeOfListOfByte : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte();
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte(const Handle_TDataStd_ListNodeOfListOfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte(const TDataStd_ListNodeOfListOfByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte & operator=(const Handle_TDataStd_ListNodeOfListOfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte & operator=(const TDataStd_ListNodeOfListOfByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ListNodeOfListOfByte {
	TDataStd_ListNodeOfListOfByte* GetObject() {
	return (TDataStd_ListNodeOfListOfByte*)$self->Access();
	}
};
%extend Handle_TDataStd_ListNodeOfListOfByte {
	~Handle_TDataStd_ListNodeOfListOfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ListNodeOfListOfByte\n");}
	}
};


%nodefaultctor Handle_TDataStd_Tick;
class Handle_TDataStd_Tick : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Tick();
		%feature("autodoc", "1");
		Handle_TDataStd_Tick(const Handle_TDataStd_Tick &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick(const TDataStd_Tick *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick & operator=(const Handle_TDataStd_Tick &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick & operator=(const TDataStd_Tick *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Tick {
	TDataStd_Tick* GetObject() {
	return (TDataStd_Tick*)$self->Access();
	}
};
%extend Handle_TDataStd_Tick {
	~Handle_TDataStd_Tick() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Tick\n");}
	}
};


%nodefaultctor Handle_TDataStd_Shape;
class Handle_TDataStd_Shape : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Shape();
		%feature("autodoc", "1");
		Handle_TDataStd_Shape(const Handle_TDataStd_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape(const TDataStd_Shape *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape & operator=(const Handle_TDataStd_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape & operator=(const TDataStd_Shape *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Shape {
	TDataStd_Shape* GetObject() {
	return (TDataStd_Shape*)$self->Access();
	}
};
%extend Handle_TDataStd_Shape {
	~Handle_TDataStd_Shape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Shape\n");}
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfRealArray;
class Handle_TDataStd_DeltaOnModificationOfRealArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray(const Handle_TDataStd_DeltaOnModificationOfRealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray(const TDataStd_DeltaOnModificationOfRealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray & operator=(const Handle_TDataStd_DeltaOnModificationOfRealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray & operator=(const TDataStd_DeltaOnModificationOfRealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfRealArray {
	TDataStd_DeltaOnModificationOfRealArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfRealArray*)$self->Access();
	}
};
%extend Handle_TDataStd_DeltaOnModificationOfRealArray {
	~Handle_TDataStd_DeltaOnModificationOfRealArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DeltaOnModificationOfRealArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringString;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString(const Handle_TDataStd_DataMapNodeOfDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString(const TDataStd_DataMapNodeOfDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString & operator=(const TDataStd_DataMapNodeOfDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringString {
	TDataStd_DataMapNodeOfDataMapOfStringString* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringString*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringString {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringString\n");}
	}
};


%nodefaultctor Handle_TDataStd_Integer;
class Handle_TDataStd_Integer : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Integer();
		%feature("autodoc", "1");
		Handle_TDataStd_Integer(const Handle_TDataStd_Integer &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer(const TDataStd_Integer *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer & operator=(const Handle_TDataStd_Integer &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer & operator=(const TDataStd_Integer *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Integer {
	TDataStd_Integer* GetObject() {
	return (TDataStd_Integer*)$self->Access();
	}
};
%extend Handle_TDataStd_Integer {
	~Handle_TDataStd_Integer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Integer\n");}
	}
};


%nodefaultctor Handle_TDataStd_Directory;
class Handle_TDataStd_Directory : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Directory();
		%feature("autodoc", "1");
		Handle_TDataStd_Directory(const Handle_TDataStd_Directory &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory(const TDataStd_Directory *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory & operator=(const Handle_TDataStd_Directory &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory & operator=(const TDataStd_Directory *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Directory {
	TDataStd_Directory* GetObject() {
	return (TDataStd_Directory*)$self->Access();
	}
};
%extend Handle_TDataStd_Directory {
	~Handle_TDataStd_Directory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Directory\n");}
	}
};


%nodefaultctor Handle_TDataStd_Comment;
class Handle_TDataStd_Comment : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Comment();
		%feature("autodoc", "1");
		Handle_TDataStd_Comment(const Handle_TDataStd_Comment &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment(const TDataStd_Comment *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment & operator=(const Handle_TDataStd_Comment &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment & operator=(const TDataStd_Comment *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Comment {
	TDataStd_Comment* GetObject() {
	return (TDataStd_Comment*)$self->Access();
	}
};
%extend Handle_TDataStd_Comment {
	~Handle_TDataStd_Comment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Comment\n");}
	}
};


%nodefaultctor Handle_TDataStd_Current;
class Handle_TDataStd_Current : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Current();
		%feature("autodoc", "1");
		Handle_TDataStd_Current(const Handle_TDataStd_Current &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Current(const TDataStd_Current *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Current & operator=(const Handle_TDataStd_Current &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Current & operator=(const TDataStd_Current *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Current const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Current {
	TDataStd_Current* GetObject() {
	return (TDataStd_Current*)$self->Access();
	}
};
%extend Handle_TDataStd_Current {
	~Handle_TDataStd_Current() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Current\n");}
	}
};


%nodefaultctor Handle_TDataStd_RealArray;
class Handle_TDataStd_RealArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray();
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray(const Handle_TDataStd_RealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray(const TDataStd_RealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray & operator=(const Handle_TDataStd_RealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray & operator=(const TDataStd_RealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_RealArray {
	TDataStd_RealArray* GetObject() {
	return (TDataStd_RealArray*)$self->Access();
	}
};
%extend Handle_TDataStd_RealArray {
	~Handle_TDataStd_RealArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_RealArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_NoteBook;
class Handle_TDataStd_NoteBook : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook();
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook(const Handle_TDataStd_NoteBook &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook(const TDataStd_NoteBook *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook & operator=(const Handle_TDataStd_NoteBook &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook & operator=(const TDataStd_NoteBook *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_NoteBook {
	TDataStd_NoteBook* GetObject() {
	return (TDataStd_NoteBook*)$self->Access();
	}
};
%extend Handle_TDataStd_NoteBook {
	~Handle_TDataStd_NoteBook() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_NoteBook\n");}
	}
};


%nodefaultctor Handle_TDataStd_RealList;
class Handle_TDataStd_RealList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_RealList();
		%feature("autodoc", "1");
		Handle_TDataStd_RealList(const Handle_TDataStd_RealList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList(const TDataStd_RealList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList & operator=(const Handle_TDataStd_RealList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList & operator=(const TDataStd_RealList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_RealList {
	TDataStd_RealList* GetObject() {
	return (TDataStd_RealList*)$self->Access();
	}
};
%extend Handle_TDataStd_RealList {
	~Handle_TDataStd_RealList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_RealList\n");}
	}
};


%nodefaultctor Handle_TDataStd_ByteArray;
class Handle_TDataStd_ByteArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray(const Handle_TDataStd_ByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray(const TDataStd_ByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray & operator=(const Handle_TDataStd_ByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray & operator=(const TDataStd_ByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ByteArray {
	TDataStd_ByteArray* GetObject() {
	return (TDataStd_ByteArray*)$self->Access();
	}
};
%extend Handle_TDataStd_ByteArray {
	~Handle_TDataStd_ByteArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_ByteArray\n");}
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal & operator=(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal*)$self->Access();
	}
};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	~Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal\n");}
	}
};


%nodefaultctor Handle_TDataStd_Real;
class Handle_TDataStd_Real : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Real();
		%feature("autodoc", "1");
		Handle_TDataStd_Real(const Handle_TDataStd_Real &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Real(const TDataStd_Real *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Real & operator=(const Handle_TDataStd_Real &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Real & operator=(const TDataStd_Real *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Real const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Real {
	TDataStd_Real* GetObject() {
	return (TDataStd_Real*)$self->Access();
	}
};
%extend Handle_TDataStd_Real {
	~Handle_TDataStd_Real() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_Real\n");}
	}
};


%nodefaultctor Handle_TDataStd_NamedData;
class Handle_TDataStd_NamedData : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData();
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData(const Handle_TDataStd_NamedData &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData(const TDataStd_NamedData *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData & operator=(const Handle_TDataStd_NamedData &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData & operator=(const TDataStd_NamedData *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_NamedData {
	TDataStd_NamedData* GetObject() {
	return (TDataStd_NamedData*)$self->Access();
	}
};
%extend Handle_TDataStd_NamedData {
	~Handle_TDataStd_NamedData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TDataStd_NamedData\n");}
	}
};


%nodefaultctor TDataStd_ListNodeOfListOfByte;
class TDataStd_ListNodeOfListOfByte : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_ListNodeOfListOfByte(const Standard_Byte &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Byte & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ListNodeOfListOfByte {
	Handle_TDataStd_ListNodeOfListOfByte GetHandle() {
	return *(Handle_TDataStd_ListNodeOfListOfByte*) &$self;
	}
};
%extend TDataStd_ListNodeOfListOfByte {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ListNodeOfListOfByte {
	~TDataStd_ListNodeOfListOfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListNodeOfListOfByte\n");}
	}
};


%nodefaultctor TDataStd_NoteBook;
class TDataStd_NoteBook : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &current, Handle_TDataStd_NoteBook & N);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook New(const TDF_Label &label);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_NoteBook();
		%feature("autodoc", "1");
		Handle_TDataStd_Real Append(const Standard_Real value, const Standard_Boolean isExported=0);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer Append(const Standard_Integer value, const Standard_Boolean isExported=0);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_NoteBook {
	Handle_TDataStd_NoteBook GetHandle() {
	return *(Handle_TDataStd_NoteBook*) &$self;
	}
};
%extend TDataStd_NoteBook {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_NoteBook {
	~TDataStd_NoteBook() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_NoteBook\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringString;
class TDataStd_DataMapNodeOfDataMapOfStringString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringString(const TCollection_ExtendedString &K, const TCollection_ExtendedString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringString GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringString*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	~TDataStd_DataMapNodeOfDataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringString\n");}
	}
};


%nodefaultctor TDataStd_ReferenceList;
class TDataStd_ReferenceList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_ReferenceList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const TDF_Label &value);
		%feature("autodoc", "1");
		void Append(const TDF_Label &value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const TDF_Label &value, const TDF_Label &before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const TDF_Label &value, const TDF_Label &after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TDF_Label &value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TDF_Label & First() const;
		%feature("autodoc", "1");
		const TDF_Label & Last() const;
		%feature("autodoc", "1");
		const TDF_LabelList & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ReferenceList {
	Handle_TDataStd_ReferenceList GetHandle() {
	return *(Handle_TDataStd_ReferenceList*) &$self;
	}
};
%extend TDataStd_ReferenceList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ReferenceList {
	~TDataStd_ReferenceList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ReferenceList\n");}
	}
};


%nodefaultctor TDataStd_Array1OfTrsf;
class TDataStd_Array1OfTrsf {
	public:
		%feature("autodoc", "1");
		TDataStd_Array1OfTrsf(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_Array1OfTrsf(const gp_Trsf &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Trsf &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TDataStd_Array1OfTrsf & Assign(const TDataStd_Array1OfTrsf &Other);
		%feature("autodoc", "1");
		const TDataStd_Array1OfTrsf & operator=(const TDataStd_Array1OfTrsf &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Trsf &Value);
		%feature("autodoc", "1");
		const gp_Trsf & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Trsf & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Trsf & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Trsf & operator()(const Standard_Integer Index);

};
%extend TDataStd_Array1OfTrsf {
	~TDataStd_Array1OfTrsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Array1OfTrsf\n");}
	}
};


%nodefaultctor TDataStd;
class TDataStd {
	public:
		%feature("autodoc", "1");
		TDataStd();
		%feature("autodoc", "1");
		void IDList(TDF_IDList & anIDList);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TDataStd_GeometryEnum GEO, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TDataStd_RealEnum DIM, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TDataStd_ConstraintEnum CTR, Standard_OStream & S);

};
%extend TDataStd {
	~TDataStd() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd\n");}
	}
};


%nodefaultctor TDataStd_ListIteratorOfListOfExtendedString;
class TDataStd_ListIteratorOfListOfExtendedString {
	public:
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfExtendedString();
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfExtendedString(const TDataStd_ListOfExtendedString &L);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_ListOfExtendedString &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;

};
%extend TDataStd_ListIteratorOfListOfExtendedString {
	~TDataStd_ListIteratorOfListOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListIteratorOfListOfExtendedString\n");}
	}
};


%nodefaultctor TDataStd_Constraint;
class TDataStd_Constraint : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Constraint Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Constraint();
		%feature("autodoc", "1");
		void Set(const TDataStd_ConstraintEnum type, const Handle_TNaming_NamedShape &G1);
		%feature("autodoc", "1");
		void Set(const TDataStd_ConstraintEnum type, const Handle_TNaming_NamedShape &G1, const Handle_TNaming_NamedShape &G2);
		%feature("autodoc", "1");
		void Set(const TDataStd_ConstraintEnum type, const Handle_TNaming_NamedShape &G1, const Handle_TNaming_NamedShape &G2, const Handle_TNaming_NamedShape &G3);
		%feature("autodoc", "1");
		void Set(const TDataStd_ConstraintEnum type, const Handle_TNaming_NamedShape &G1, const Handle_TNaming_NamedShape &G2, const Handle_TNaming_NamedShape &G3, const Handle_TNaming_NamedShape &G4);
		%feature("autodoc", "1");
		Standard_Boolean Verified() const;
		%feature("autodoc", "1");
		TDataStd_ConstraintEnum GetType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		const Handle_TNaming_NamedShape & GetPlane() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDimension() const;
		%feature("autodoc", "1");
		const Handle_TDataStd_Real & GetValue() const;
		%feature("autodoc", "1");
		Standard_Integer NbGeometries() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape GetGeometry(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ClearGeometries();
		%feature("autodoc", "1");
		void SetType(const TDataStd_ConstraintEnum CTR);
		%feature("autodoc", "1");
		void SetPlane(const Handle_TNaming_NamedShape &plane);
		%feature("autodoc", "1");
		void SetValue(const Handle_TDataStd_Real &V);
		%feature("autodoc", "1");
		void SetGeometry(const Standard_Integer Index, const Handle_TNaming_NamedShape &G);
		%feature("autodoc", "1");
		void Verified(const Standard_Boolean status);
		%feature("autodoc", "1");
		void Inverted(const Standard_Boolean status);
		%feature("autodoc", "1");
		Standard_Boolean Inverted() const;
		%feature("autodoc", "1");
		void Reversed(const Standard_Boolean status);
		%feature("autodoc", "1");
		Standard_Boolean Reversed() const;
		%feature("autodoc", "1");
		void CollectChildConstraints(const TDF_Label &aLabel, TDF_LabelList & TheList);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Constraint {
	Handle_TDataStd_Constraint GetHandle() {
	return *(Handle_TDataStd_Constraint*) &$self;
	}
};
%extend TDataStd_Constraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Constraint {
	~TDataStd_Constraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Constraint\n");}
	}
};


%nodefaultctor TDataStd_Array1OfByte;
class TDataStd_Array1OfByte {
	public:
		%feature("autodoc", "1");
		TDataStd_Array1OfByte(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_Array1OfByte(const Standard_Byte &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TDataStd_Array1OfByte & Assign(const TDataStd_Array1OfByte &Other);
		%feature("autodoc", "1");
		const TDataStd_Array1OfByte & operator=(const TDataStd_Array1OfByte &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Byte & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Byte & operator()(const Standard_Integer Index);

};
%extend TDataStd_Array1OfByte {
	~TDataStd_Array1OfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Array1OfByte\n");}
	}
};


%nodefaultctor TDataStd_Placement;
class TDataStd_Placement : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Placement Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Placement();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Placement {
	Handle_TDataStd_Placement GetHandle() {
	return *(Handle_TDataStd_Placement*) &$self;
	}
};
%extend TDataStd_Placement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Placement {
	~TDataStd_Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Placement\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringHArray1OfInteger;
class TDataStd_HDataMapOfStringHArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfInteger(const TDataStd_DataMapOfStringHArray1OfInteger &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfInteger & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	Handle_TDataStd_HDataMapOfStringHArray1OfInteger GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringHArray1OfInteger*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	~TDataStd_HDataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor TDataStd_NamedData;
class TDataStd_NamedData : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_NamedData();
		%feature("autodoc", "1");
		Standard_Boolean HasIntegers() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInteger(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Integer GetInteger(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetInteger(const TCollection_ExtendedString &theName, const Standard_Integer theInteger);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringInteger & GetIntegersContainer();
		%feature("autodoc", "1");
		void ChangeIntegers(const TDataStd_DataMapOfStringInteger &theIntegers);
		%feature("autodoc", "1");
		Standard_Boolean HasReals() const;
		%feature("autodoc", "1");
		Standard_Boolean HasReal(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Real GetReal(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetReal(const TCollection_ExtendedString &theName, const Standard_Real theReal);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringReal & GetRealsContainer();
		%feature("autodoc", "1");
		void ChangeReals(const TDataStd_DataMapOfStringReal &theReals);
		%feature("autodoc", "1");
		Standard_Boolean HasStrings() const;
		%feature("autodoc", "1");
		Standard_Boolean HasString(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetString(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetString(const TCollection_ExtendedString &theName, const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringString & GetStringsContainer();
		%feature("autodoc", "1");
		void ChangeStrings(const TDataStd_DataMapOfStringString &theStrings);
		%feature("autodoc", "1");
		Standard_Boolean HasBytes() const;
		%feature("autodoc", "1");
		Standard_Boolean HasByte(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Byte GetByte(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetByte(const TCollection_ExtendedString &theName, const Standard_Byte theByte);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringByte & GetBytesContainer();
		%feature("autodoc", "1");
		void ChangeBytes(const TDataStd_DataMapOfStringByte &theBytes);
		%feature("autodoc", "1");
		Standard_Boolean HasArraysOfIntegers() const;
		%feature("autodoc", "1");
		Standard_Boolean HasArrayOfIntegers(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & GetArrayOfIntegers(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetArrayOfIntegers(const TCollection_ExtendedString &theName, const Handle_TColStd_HArray1OfInteger &theArrayOfIntegers);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfInteger & GetArraysOfIntegersContainer();
		%feature("autodoc", "1");
		void ChangeArraysOfIntegers(const TDataStd_DataMapOfStringHArray1OfInteger &theArraysOfIntegers);
		%feature("autodoc", "1");
		Standard_Boolean HasArraysOfReals() const;
		%feature("autodoc", "1");
		Standard_Boolean HasArrayOfReals(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & GetArrayOfReals(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetArrayOfReals(const TCollection_ExtendedString &theName, const Handle_TColStd_HArray1OfReal &theArrayOfReals);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfReal & GetArraysOfRealsContainer();
		%feature("autodoc", "1");
		void ChangeArraysOfReals(const TDataStd_DataMapOfStringHArray1OfReal &theArraysOfReals);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_NamedData {
	Handle_TDataStd_NamedData GetHandle() {
	return *(Handle_TDataStd_NamedData*) &$self;
	}
};
%extend TDataStd_NamedData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_NamedData {
	~TDataStd_NamedData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_NamedData\n");}
	}
};


%nodefaultctor TDataStd_ListOfExtendedString;
class TDataStd_ListOfExtendedString {
	public:
		%feature("autodoc", "1");
		TDataStd_ListOfExtendedString();
		%feature("autodoc", "1");
		void Assign(const TDataStd_ListOfExtendedString &Other);
		%feature("autodoc", "1");
		void operator=(const TDataStd_ListOfExtendedString &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & theIt);
		%feature("autodoc", "1");
		void Prepend(TDataStd_ListOfExtendedString & Other);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & theIt);
		%feature("autodoc", "1");
		void Append(TDataStd_ListOfExtendedString & Other);
		%feature("autodoc", "1");
		TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertBefore(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertBefore(TDataStd_ListOfExtendedString & Other, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertAfter(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertAfter(TDataStd_ListOfExtendedString & Other, TDataStd_ListIteratorOfListOfExtendedString & It);

};
%extend TDataStd_ListOfExtendedString {
	~TDataStd_ListOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListOfExtendedString\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringReal;
class TDataStd_DataMapIteratorOfDataMapOfStringReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringReal();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringReal(const TDataStd_DataMapOfStringReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringReal &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringReal {
	~TDataStd_DataMapIteratorOfDataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringReal\n");}
	}
};


%nodefaultctor TDataStd_BooleanList;
class TDataStd_BooleanList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_BooleanList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Boolean value);
		%feature("autodoc", "1");
		void Append(const Standard_Boolean value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean First() const;
		%feature("autodoc", "1");
		Standard_Boolean Last() const;
		%feature("autodoc", "1");
		const TDataStd_ListOfByte & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_BooleanList {
	Handle_TDataStd_BooleanList GetHandle() {
	return *(Handle_TDataStd_BooleanList*) &$self;
	}
};
%extend TDataStd_BooleanList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_BooleanList {
	~TDataStd_BooleanList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_BooleanList\n");}
	}
};


%nodefaultctor TDataStd_Relation;
class TDataStd_Relation : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Relation Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Relation();
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		void SetRelation(const TCollection_ExtendedString &E);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetRelation() const;
		%feature("autodoc", "1");
		TDF_AttributeList & GetVariables();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Relation {
	Handle_TDataStd_Relation GetHandle() {
	return *(Handle_TDataStd_Relation*) &$self;
	}
};
%extend TDataStd_Relation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Relation {
	~TDataStd_Relation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Relation\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringByte;
class TDataStd_HDataMapOfStringByte : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringByte(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringByte(const TDataStd_DataMapOfStringByte &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringByte & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringByte {
	Handle_TDataStd_HDataMapOfStringByte GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringByte*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringByte {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringByte {
	~TDataStd_HDataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringByte\n");}
	}
};


%nodefaultctor TDataStd_ListNodeOfListOfExtendedString;
class TDataStd_ListNodeOfListOfExtendedString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_ListNodeOfListOfExtendedString(const TCollection_ExtendedString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ListNodeOfListOfExtendedString {
	Handle_TDataStd_ListNodeOfListOfExtendedString GetHandle() {
	return *(Handle_TDataStd_ListNodeOfListOfExtendedString*) &$self;
	}
};
%extend TDataStd_ListNodeOfListOfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ListNodeOfListOfExtendedString {
	~TDataStd_ListNodeOfListOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListNodeOfListOfExtendedString\n");}
	}
};


%nodefaultctor TDataStd_AsciiString;
class TDataStd_AsciiString : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString Set(const TDF_Label &label, const TCollection_AsciiString &string);
		%feature("autodoc", "1");
		TDataStd_AsciiString();
		%feature("autodoc", "1");
		void Set(const TCollection_AsciiString &S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_AsciiString {
	Handle_TDataStd_AsciiString GetHandle() {
	return *(Handle_TDataStd_AsciiString*) &$self;
	}
};
%extend TDataStd_AsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_AsciiString {
	~TDataStd_AsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_AsciiString\n");}
	}
};


%nodefaultctor TDataStd_Expression;
class TDataStd_Expression : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Expression Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Expression();
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		void SetExpression(const TCollection_ExtendedString &E);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetExpression() const;
		%feature("autodoc", "1");
		TDF_AttributeList & GetVariables();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Expression {
	Handle_TDataStd_Expression GetHandle() {
	return *(Handle_TDataStd_Expression*) &$self;
	}
};
%extend TDataStd_Expression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Expression {
	~TDataStd_Expression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Expression\n");}
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfExtStringArray;
class TDataStd_DeltaOnModificationOfExtStringArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfExtStringArray(const Handle_TDataStd_ExtStringArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfExtStringArray {
	Handle_TDataStd_DeltaOnModificationOfExtStringArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfExtStringArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfExtStringArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DeltaOnModificationOfExtStringArray {
	~TDataStd_DeltaOnModificationOfExtStringArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DeltaOnModificationOfExtStringArray\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringInteger;
class TDataStd_DataMapNodeOfDataMapOfStringInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringInteger(const TCollection_ExtendedString &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringInteger {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringInteger*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringInteger {
	~TDataStd_DataMapNodeOfDataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringInteger\n");}
	}
};


%nodefaultctor TDataStd_IntegerArray;
class TDataStd_IntegerArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer Value);
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfInteger &newArray, const Standard_Boolean isCheckItems=1);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_IntegerArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntegerArray {
	Handle_TDataStd_IntegerArray GetHandle() {
	return *(Handle_TDataStd_IntegerArray*) &$self;
	}
};
%extend TDataStd_IntegerArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_IntegerArray {
	~TDataStd_IntegerArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_IntegerArray\n");}
	}
};


%nodefaultctor TDataStd_Position;
class TDataStd_Position : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		void Set(const TDF_Label &aLabel, const gp_Pnt &aPos);
		%feature("autodoc", "1");
		Handle_TDataStd_Position Set(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		Standard_Boolean Get(const TDF_Label &aLabel, gp_Pnt & aPos);
		%feature("autodoc", "1");
		TDataStd_Position();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocTationable) const;
		%feature("autodoc", "1");
		const gp_Pnt & GetPosition() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Pnt &aPos);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Position {
	Handle_TDataStd_Position GetHandle() {
	return *(Handle_TDataStd_Position*) &$self;
	}
};
%extend TDataStd_Position {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Position {
	~TDataStd_Position() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Position\n");}
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfRealArray;
class TDataStd_DeltaOnModificationOfRealArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfRealArray(const Handle_TDataStd_RealArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfRealArray {
	Handle_TDataStd_DeltaOnModificationOfRealArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfRealArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfRealArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DeltaOnModificationOfRealArray {
	~TDataStd_DeltaOnModificationOfRealArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DeltaOnModificationOfRealArray\n");}
	}
};


%nodefaultctor TDataStd_ListOfByte;
class TDataStd_ListOfByte {
	public:
		%feature("autodoc", "1");
		TDataStd_ListOfByte();
		%feature("autodoc", "1");
		void Assign(const TDataStd_ListOfByte &Other);
		%feature("autodoc", "1");
		void operator=(const TDataStd_ListOfByte &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Byte &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & theIt);
		%feature("autodoc", "1");
		void Prepend(TDataStd_ListOfByte & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Byte &I);
		%feature("autodoc", "1");
		void Append(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & theIt);
		%feature("autodoc", "1");
		void Append(TDataStd_ListOfByte & Other);
		%feature("autodoc", "1");
		Standard_Byte & First() const;
		%feature("autodoc", "1");
		Standard_Byte & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertBefore(TDataStd_ListOfByte & Other, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertAfter(TDataStd_ListOfByte & Other, TDataStd_ListIteratorOfListOfByte & It);

};
%extend TDataStd_ListOfByte {
	~TDataStd_ListOfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListOfByte\n");}
	}
};


%nodefaultctor TDataStd_BooleanArray;
class TDataStd_BooleanArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const Standard_Boolean value);
		%feature("autodoc", "1");
		Standard_Boolean Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		const Handle_TDataStd_HArray1OfByte & InternalArray() const;
		%feature("autodoc", "1");
		void SetInternalArray(const Handle_TDataStd_HArray1OfByte &values);
		%feature("autodoc", "1");
		TDataStd_BooleanArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_BooleanArray {
	Handle_TDataStd_BooleanArray GetHandle() {
	return *(Handle_TDataStd_BooleanArray*) &$self;
	}
};
%extend TDataStd_BooleanArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_BooleanArray {
	~TDataStd_BooleanArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_BooleanArray\n");}
	}
};


%nodefaultctor TDataStd_ByteArray;
class TDataStd_ByteArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const Standard_Byte value);
		%feature("autodoc", "1");
		Standard_Byte Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte const InternalArray() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TDataStd_HArray1OfByte &newArray, const Standard_Boolean isCheckItems=1);
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_ByteArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ByteArray {
	Handle_TDataStd_ByteArray GetHandle() {
	return *(Handle_TDataStd_ByteArray*) &$self;
	}
};
%extend TDataStd_ByteArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ByteArray {
	~TDataStd_ByteArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ByteArray\n");}
	}
};


%nodefaultctor TDataStd_IntPackedMap;
class TDataStd_IntPackedMap : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap Set(const TDF_Label &label, const Standard_Boolean isDelta=0);
		%feature("autodoc", "1");
		TDataStd_IntPackedMap();
		%feature("autodoc", "1");
		Standard_Boolean ChangeMap(const Handle_TColStd_HPackedMapOfInteger &theMap);
		%feature("autodoc", "1");
		const TColStd_PackedMapOfInteger & GetMap() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetHMap() const;
		%feature("autodoc", "1");
		Standard_Boolean Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer theKey);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer theKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer theKey) const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntPackedMap {
	Handle_TDataStd_IntPackedMap GetHandle() {
	return *(Handle_TDataStd_IntPackedMap*) &$self;
	}
};
%extend TDataStd_IntPackedMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_IntPackedMap {
	~TDataStd_IntPackedMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_IntPackedMap\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringString;
class TDataStd_DataMapIteratorOfDataMapOfStringString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringString();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringString(const TDataStd_DataMapOfStringString &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringString &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringString {
	~TDataStd_DataMapIteratorOfDataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringString\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal;
class TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal(const TDataStd_DataMapOfStringHArray1OfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringHArray1OfReal &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal {
	~TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal\n");}
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfByteArray;
class TDataStd_DeltaOnModificationOfByteArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfByteArray(const Handle_TDataStd_ByteArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfByteArray {
	Handle_TDataStd_DeltaOnModificationOfByteArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfByteArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfByteArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DeltaOnModificationOfByteArray {
	~TDataStd_DeltaOnModificationOfByteArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DeltaOnModificationOfByteArray\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringByte;
class TDataStd_DataMapOfStringByte : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & Assign(const TDataStd_DataMapOfStringByte &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & operator=(const TDataStd_DataMapOfStringByte &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Byte &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Byte & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Byte & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Byte & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringByte {
	~TDataStd_DataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringByte\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringHArray1OfInteger;
class TDataStd_DataMapOfStringHArray1OfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & Assign(const TDataStd_DataMapOfStringHArray1OfInteger &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & operator=(const TDataStd_DataMapOfStringHArray1OfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringHArray1OfInteger {
	~TDataStd_DataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor TDataStd_Integer;
class TDataStd_Integer : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Integer Set(const TDF_Label &label, const Standard_Integer value);
		%feature("autodoc", "1");
		void Set(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		TDataStd_Integer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Integer {
	Handle_TDataStd_Integer GetHandle() {
	return *(Handle_TDataStd_Integer*) &$self;
	}
};
%extend TDataStd_Integer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Integer {
	~TDataStd_Integer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Integer\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringByte;
class TDataStd_DataMapIteratorOfDataMapOfStringByte : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringByte();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringByte(const TDataStd_DataMapOfStringByte &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringByte &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Byte & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringByte {
	~TDataStd_DataMapIteratorOfDataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringByte\n");}
	}
};


%nodefaultctor TDataStd_LabelArray1;
class TDataStd_LabelArray1 {
	public:
		%feature("autodoc", "1");
		TDataStd_LabelArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_LabelArray1(const TDF_Label &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TDF_Label &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & Assign(const TDataStd_LabelArray1 &Other);
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & operator=(const TDataStd_LabelArray1 &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TDF_Label &Value);
		%feature("autodoc", "1");
		const TDF_Label & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TDF_Label & operator()(const Standard_Integer Index);

};
%extend TDataStd_LabelArray1 {
	~TDataStd_LabelArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_LabelArray1\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringByte;
class TDataStd_DataMapNodeOfDataMapOfStringByte : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringByte(const TCollection_ExtendedString &K, const Standard_Byte &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Standard_Byte & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringByte GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringByte*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	~TDataStd_DataMapNodeOfDataMapOfStringByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringByte\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringReal;
class TDataStd_HDataMapOfStringReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringReal(const TDataStd_DataMapOfStringReal &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringReal & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringReal {
	Handle_TDataStd_HDataMapOfStringReal GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringReal*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringReal {
	~TDataStd_HDataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringReal\n");}
	}
};


%nodefaultctor TDataStd_Point;
class TDataStd_Point : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Point Set(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Point Set(const TDF_Label &label, const gp_Pnt &P);
		%feature("autodoc", "1");
		TDataStd_Point();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Point {
	Handle_TDataStd_Point GetHandle() {
	return *(Handle_TDataStd_Point*) &$self;
	}
};
%extend TDataStd_Point {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Point {
	~TDataStd_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Point\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringInteger;
class TDataStd_DataMapIteratorOfDataMapOfStringInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringInteger();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringInteger(const TDataStd_DataMapOfStringInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringInteger &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringInteger {
	~TDataStd_DataMapIteratorOfDataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringInteger\n");}
	}
};


%nodefaultctor TDataStd_HArray1OfTrsf;
class TDataStd_HArray1OfTrsf : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HArray1OfTrsf(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_HArray1OfTrsf(const Standard_Integer Low, const Standard_Integer Up, const gp_Trsf &V);
		%feature("autodoc", "1");
		void Init(const gp_Trsf &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Trsf &Value);
		%feature("autodoc", "1");
		const gp_Trsf & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Trsf & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TDataStd_Array1OfTrsf & Array1() const;
		%feature("autodoc", "1");
		TDataStd_Array1OfTrsf & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HArray1OfTrsf {
	Handle_TDataStd_HArray1OfTrsf GetHandle() {
	return *(Handle_TDataStd_HArray1OfTrsf*) &$self;
	}
};
%extend TDataStd_HArray1OfTrsf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HArray1OfTrsf {
	~TDataStd_HArray1OfTrsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HArray1OfTrsf\n");}
	}
};


%nodefaultctor TDataStd_IntegerList;
class TDataStd_IntegerList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_IntegerList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer value);
		%feature("autodoc", "1");
		void Append(const Standard_Integer value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Standard_Integer value, const Standard_Integer before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Standard_Integer value, const Standard_Integer after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntegerList {
	Handle_TDataStd_IntegerList GetHandle() {
	return *(Handle_TDataStd_IntegerList*) &$self;
	}
};
%extend TDataStd_IntegerList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_IntegerList {
	~TDataStd_IntegerList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_IntegerList\n");}
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfIntArray;
class TDataStd_DeltaOnModificationOfIntArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfIntArray(const Handle_TDataStd_IntegerArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfIntArray {
	Handle_TDataStd_DeltaOnModificationOfIntArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfIntArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfIntArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DeltaOnModificationOfIntArray {
	~TDataStd_DeltaOnModificationOfIntArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DeltaOnModificationOfIntArray\n");}
	}
};


%nodefaultctor TDataStd_ListIteratorOfListOfByte;
class TDataStd_ListIteratorOfListOfByte {
	public:
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfByte();
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfByte(const TDataStd_ListOfByte &L);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_ListOfByte &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Byte & Value() const;

};
%extend TDataStd_ListIteratorOfListOfByte {
	~TDataStd_ListIteratorOfListOfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ListIteratorOfListOfByte\n");}
	}
};


%nodefaultctor TDataStd_ExtStringList;
class TDataStd_ExtStringList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_ExtStringList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const TCollection_ExtendedString &value, const TCollection_ExtendedString &before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const TCollection_ExtendedString &value, const TCollection_ExtendedString &after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		const TDataStd_ListOfExtendedString & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ExtStringList {
	Handle_TDataStd_ExtStringList GetHandle() {
	return *(Handle_TDataStd_ExtStringList*) &$self;
	}
};
%extend TDataStd_ExtStringList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ExtStringList {
	~TDataStd_ExtStringList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ExtStringList\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal;
class TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	~TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringString;
class TDataStd_DataMapOfStringString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & Assign(const TDataStd_DataMapOfStringString &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & operator=(const TDataStd_DataMapOfStringString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringString {
	~TDataStd_DataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringString\n");}
	}
};


%nodefaultctor TDataStd_Plane;
class TDataStd_Plane : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Plane Set(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Plane Set(const TDF_Label &label, const gp_Pln &P);
		%feature("autodoc", "1");
		TDataStd_Plane();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Plane {
	Handle_TDataStd_Plane GetHandle() {
	return *(Handle_TDataStd_Plane*) &$self;
	}
};
%extend TDataStd_Plane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Plane {
	~TDataStd_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Plane\n");}
	}
};


%nodefaultctor TDataStd_Current;
class TDataStd_Current : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		void Set(const TDF_Label &L);
		%feature("autodoc", "1");
		TDF_Label Get(const TDF_Label &acces);
		%feature("autodoc", "1");
		Standard_Boolean Has(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDataStd_Current();
		%feature("autodoc", "1");
		void SetLabel(const TDF_Label &current);
		%feature("autodoc", "1");
		TDF_Label GetLabel() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Current {
	Handle_TDataStd_Current GetHandle() {
	return *(Handle_TDataStd_Current*) &$self;
	}
};
%extend TDataStd_Current {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Current {
	~TDataStd_Current() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Current\n");}
	}
};


%nodefaultctor TDataStd_Pattern;
class TDataStd_Pattern : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & PatternID() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbTrsfs() const;
		%feature("autodoc", "1");
		virtual		void ComputeTrsfs(TDataStd_Array1OfTrsf & Trsfs) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Pattern {
	Handle_TDataStd_Pattern GetHandle() {
	return *(Handle_TDataStd_Pattern*) &$self;
	}
};
%extend TDataStd_Pattern {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Pattern {
	~TDataStd_Pattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Pattern\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringReal;
class TDataStd_DataMapNodeOfDataMapOfStringReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringReal(const TCollection_ExtendedString &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringReal GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringReal*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	~TDataStd_DataMapNodeOfDataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringReal\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringString;
class TDataStd_HDataMapOfStringString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringString(const TDataStd_DataMapOfStringString &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringString & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringString {
	Handle_TDataStd_HDataMapOfStringString GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringString*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringString {
	~TDataStd_HDataMapOfStringString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringString\n");}
	}
};


%nodefaultctor TDataStd_UAttribute;
class TDataStd_UAttribute : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute Set(const TDF_Label &label, const Standard_GUID &LocalID);
		%feature("autodoc", "1");
		TDataStd_UAttribute();
		%feature("autodoc", "1");
		void SetID(const Standard_GUID &LocalID);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_UAttribute {
	Handle_TDataStd_UAttribute GetHandle() {
	return *(Handle_TDataStd_UAttribute*) &$self;
	}
};
%extend TDataStd_UAttribute {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_UAttribute {
	~TDataStd_UAttribute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_UAttribute\n");}
	}
};


%nodefaultctor TDataStd_HLabelArray1;
class TDataStd_HLabelArray1 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HLabelArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_HLabelArray1(const Standard_Integer Low, const Standard_Integer Up, const TDF_Label &V);
		%feature("autodoc", "1");
		void Init(const TDF_Label &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TDF_Label &Value);
		%feature("autodoc", "1");
		const TDF_Label & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & Array1() const;
		%feature("autodoc", "1");
		TDataStd_LabelArray1 & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HLabelArray1 {
	Handle_TDataStd_HLabelArray1 GetHandle() {
	return *(Handle_TDataStd_HLabelArray1*) &$self;
	}
};
%extend TDataStd_HLabelArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HLabelArray1 {
	~TDataStd_HLabelArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HLabelArray1\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringInteger;
class TDataStd_DataMapOfStringInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringInteger & Assign(const TDataStd_DataMapOfStringInteger &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringInteger & operator=(const TDataStd_DataMapOfStringInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringInteger {
	~TDataStd_DataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringInteger\n");}
	}
};


%nodefaultctor TDataStd_TreeNode;
class TDataStd_TreeNode : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &L, Handle_TDataStd_TreeNode & T);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Set(const TDF_Label &L);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Set(const TDF_Label &L, const Standard_GUID &ExplicitTreeID);
		%feature("autodoc", "1");
		const Standard_GUID & GetDefaultTreeID();
		%feature("autodoc", "1");
		TDataStd_TreeNode();
		%feature("autodoc", "1");
		Standard_Boolean Append(const Handle_TDataStd_TreeNode &Child);
		%feature("autodoc", "1");
		Standard_Boolean Prepend(const Handle_TDataStd_TreeNode &Child);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Handle_TDataStd_TreeNode &Node);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Handle_TDataStd_TreeNode &Node);
		%feature("autodoc", "1");
		Standard_Boolean Remove();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscendant(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDescendant(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRoot() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Root() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFather(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsChild(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFather() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Father() const;
		%feature("autodoc", "1");
		Standard_Boolean HasNext() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Next() const;
		%feature("autodoc", "1");
		Standard_Boolean HasPrevious() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Previous() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirst() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode First() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLast() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Last();
		%feature("autodoc", "1");
		void SetTreeID(const Standard_GUID &explicitID);
		%feature("autodoc", "1");
		void SetFather(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetNext(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetFirst(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetLast(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		virtual		void AfterAddition();
		%feature("autodoc", "1");
		virtual		void BeforeForget();
		%feature("autodoc", "1");
		virtual		void AfterResume();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_TreeNode {
	Handle_TDataStd_TreeNode GetHandle() {
	return *(Handle_TDataStd_TreeNode*) &$self;
	}
};
%extend TDataStd_TreeNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_TreeNode {
	~TDataStd_TreeNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_TreeNode\n");}
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger;
class TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	~TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor TDataStd_Tick;
class TDataStd_Tick : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Tick Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Tick();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Tick {
	Handle_TDataStd_Tick GetHandle() {
	return *(Handle_TDataStd_Tick*) &$self;
	}
};
%extend TDataStd_Tick {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Tick {
	~TDataStd_Tick() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Tick\n");}
	}
};


%nodefaultctor TDataStd_ReferenceArray;
class TDataStd_ReferenceArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const TDF_Label &value);
		%feature("autodoc", "1");
		TDF_Label Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		const Handle_TDataStd_HLabelArray1 & InternalArray() const;
		%feature("autodoc", "1");
		void SetInternalArray(const Handle_TDataStd_HLabelArray1 &values);
		%feature("autodoc", "1");
		TDataStd_ReferenceArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ReferenceArray {
	Handle_TDataStd_ReferenceArray GetHandle() {
	return *(Handle_TDataStd_ReferenceArray*) &$self;
	}
};
%extend TDataStd_ReferenceArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ReferenceArray {
	~TDataStd_ReferenceArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ReferenceArray\n");}
	}
};


%nodefaultctor TDataStd_Name;
class TDataStd_Name : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Name Set(const TDF_Label &label, const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		TDataStd_Name();
		%feature("autodoc", "1");
		void Set(const TCollection_ExtendedString &S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Name {
	Handle_TDataStd_Name GetHandle() {
	return *(Handle_TDataStd_Name*) &$self;
	}
};
%extend TDataStd_Name {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Name {
	~TDataStd_Name() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Name\n");}
	}
};


%nodefaultctor TDataStd_RealArray;
class TDataStd_RealArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfReal &newArray, const Standard_Boolean isCheckItems=1);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_RealArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_RealArray {
	Handle_TDataStd_RealArray GetHandle() {
	return *(Handle_TDataStd_RealArray*) &$self;
	}
};
%extend TDataStd_RealArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_RealArray {
	~TDataStd_RealArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_RealArray\n");}
	}
};


%nodefaultctor TDataStd_Directory;
class TDataStd_Directory : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &current, Handle_TDataStd_Directory & D);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory New(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory AddDirectory(const Handle_TDataStd_Directory &dir);
		%feature("autodoc", "1");
		TDF_Label MakeObjectLabel(const Handle_TDataStd_Directory &dir);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_Directory();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Directory {
	Handle_TDataStd_Directory GetHandle() {
	return *(Handle_TDataStd_Directory*) &$self;
	}
};
%extend TDataStd_Directory {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Directory {
	~TDataStd_Directory() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Directory\n");}
	}
};


%nodefaultctor TDataStd_ChildNodeIterator;
class TDataStd_ChildNodeIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_ChildNodeIterator();
		%feature("autodoc", "1");
		TDataStd_ChildNodeIterator(const Handle_TDataStd_TreeNode &aTreeNode, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		void Initialize(const Handle_TDataStd_TreeNode &aTreeNode, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void NextBrother();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Value() const;

};
%extend TDataStd_ChildNodeIterator {
	~TDataStd_ChildNodeIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ChildNodeIterator\n");}
	}
};


%nodefaultctor TDataStd_RealList;
class TDataStd_RealList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_RealList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_RealList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real value);
		%feature("autodoc", "1");
		void Append(const Standard_Real value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Standard_Real value, const Standard_Real before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Standard_Real value, const Standard_Real after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		const TColStd_ListOfReal & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_RealList {
	Handle_TDataStd_RealList GetHandle() {
	return *(Handle_TDataStd_RealList*) &$self;
	}
};
%extend TDataStd_RealList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_RealList {
	~TDataStd_RealList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_RealList\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringInteger;
class TDataStd_HDataMapOfStringInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringInteger(const TDataStd_DataMapOfStringInteger &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringInteger & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringInteger {
	Handle_TDataStd_HDataMapOfStringInteger GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringInteger*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringInteger {
	~TDataStd_HDataMapOfStringInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringInteger\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringHArray1OfReal;
class TDataStd_DataMapOfStringHArray1OfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & Assign(const TDataStd_DataMapOfStringHArray1OfReal &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & operator=(const TDataStd_DataMapOfStringHArray1OfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringHArray1OfReal {
	~TDataStd_DataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringHArray1OfReal\n");}
	}
};


%nodefaultctor TDataStd_Comment;
class TDataStd_Comment : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Comment Set(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment Set(const TDF_Label &label, const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		TDataStd_Comment();
		%feature("autodoc", "1");
		void Set(const TCollection_ExtendedString &S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterRetrieval(const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Comment {
	Handle_TDataStd_Comment GetHandle() {
	return *(Handle_TDataStd_Comment*) &$self;
	}
};
%extend TDataStd_Comment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Comment {
	~TDataStd_Comment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Comment\n");}
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfIntPackedMap;
class TDataStd_DeltaOnModificationOfIntPackedMap : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfIntPackedMap(const Handle_TDataStd_IntPackedMap &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	Handle_TDataStd_DeltaOnModificationOfIntPackedMap GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfIntPackedMap*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	~TDataStd_DeltaOnModificationOfIntPackedMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DeltaOnModificationOfIntPackedMap\n");}
	}
};


%nodefaultctor TDataStd_ExtStringArray;
class TDataStd_ExtStringArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		TCollection_ExtendedString Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfExtendedString &newArray, const Standard_Boolean isCheckItems=1);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_ExtStringArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ExtStringArray {
	Handle_TDataStd_ExtStringArray GetHandle() {
	return *(Handle_TDataStd_ExtStringArray*) &$self;
	}
};
%extend TDataStd_ExtStringArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_ExtStringArray {
	~TDataStd_ExtStringArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_ExtStringArray\n");}
	}
};


%nodefaultctor TDataStd_DataMapOfStringReal;
class TDataStd_DataMapOfStringReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & Assign(const TDataStd_DataMapOfStringReal &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & operator=(const TDataStd_DataMapOfStringReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Real & operator()(const TCollection_ExtendedString &K);

};
%extend TDataStd_DataMapOfStringReal {
	~TDataStd_DataMapOfStringReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapOfStringReal\n");}
	}
};


%nodefaultctor TDataStd_HArray1OfByte;
class TDataStd_HArray1OfByte : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HArray1OfByte(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_HArray1OfByte(const Standard_Integer Low, const Standard_Integer Up, const Standard_Byte &V);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TDataStd_Array1OfByte & Array1() const;
		%feature("autodoc", "1");
		TDataStd_Array1OfByte & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HArray1OfByte {
	Handle_TDataStd_HArray1OfByte GetHandle() {
	return *(Handle_TDataStd_HArray1OfByte*) &$self;
	}
};
%extend TDataStd_HArray1OfByte {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HArray1OfByte {
	~TDataStd_HArray1OfByte() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HArray1OfByte\n");}
	}
};


%nodefaultctor TDataStd_Real;
class TDataStd_Real : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Real Set(const TDF_Label &label, const Standard_Real value);
		%feature("autodoc", "1");
		TDataStd_Real();
		%feature("autodoc", "1");
		void SetDimension(const TDataStd_RealEnum DIM);
		%feature("autodoc", "1");
		TDataStd_RealEnum GetDimension() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Real {
	Handle_TDataStd_Real GetHandle() {
	return *(Handle_TDataStd_Real*) &$self;
	}
};
%extend TDataStd_Real {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Real {
	~TDataStd_Real() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Real\n");}
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger;
class TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger(const TDataStd_DataMapOfStringHArray1OfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringHArray1OfInteger &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Value() const;

};
%extend TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger {
	~TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger\n");}
	}
};


%nodefaultctor TDataStd_Shape;
class TDataStd_Shape : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &current, Handle_TDataStd_Shape & S);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape New(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Shape Set(const TDF_Label &label, const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		TopoDS_Shape Get(const TDF_Label &label);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_Shape();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Shape {
	Handle_TDataStd_Shape GetHandle() {
	return *(Handle_TDataStd_Shape*) &$self;
	}
};
%extend TDataStd_Shape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Shape {
	~TDataStd_Shape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Shape\n");}
	}
};


%nodefaultctor TDataStd_Variable;
class TDataStd_Variable : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Variable Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Variable();
		%feature("autodoc", "1");
		void Name(const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Name() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real value, const TDataStd_RealEnum dimension=TDataStd_SCALAR) const;
		%feature("autodoc", "1");
		Standard_Boolean IsValued() const;
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Real Real() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAssigned() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Expression Assign() const;
		%feature("autodoc", "1");
		void Desassign() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Expression Expression() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		void Unit(const TCollection_AsciiString &unit);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Unit() const;
		%feature("autodoc", "1");
		void Constant(const Standard_Boolean status);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Variable {
	Handle_TDataStd_Variable GetHandle() {
	return *(Handle_TDataStd_Variable*) &$self;
	}
};
%extend TDataStd_Variable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Variable {
	~TDataStd_Variable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Variable\n");}
	}
};


%nodefaultctor TDataStd_PatternStd;
class TDataStd_PatternStd : public TDataStd_Pattern {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetPatternID();
		%feature("autodoc", "1");
		Handle_TDataStd_PatternStd Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_PatternStd();
		%feature("autodoc", "1");
		void Signature(const Standard_Integer signature);
		%feature("autodoc", "1");
		void Axis1(const Handle_TNaming_NamedShape &Axis1);
		%feature("autodoc", "1");
		void Axis2(const Handle_TNaming_NamedShape &Axis2);
		%feature("autodoc", "1");
		void Axis1Reversed(const Standard_Boolean Axis1Reversed);
		%feature("autodoc", "1");
		void Axis2Reversed(const Standard_Boolean Axis2Reversed);
		%feature("autodoc", "1");
		void Value1(const Handle_TDataStd_Real &value);
		%feature("autodoc", "1");
		void Value2(const Handle_TDataStd_Real &value);
		%feature("autodoc", "1");
		void NbInstances1(const Handle_TDataStd_Integer &NbInstances1);
		%feature("autodoc", "1");
		void NbInstances2(const Handle_TDataStd_Integer &NbInstances2);
		%feature("autodoc", "1");
		void Mirror(const Handle_TNaming_NamedShape &plane);
		%feature("autodoc", "1");
		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape Axis1() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape Axis2() const;
		%feature("autodoc", "1");
		Standard_Boolean Axis1Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean Axis2Reversed() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Real Value1() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Real Value2() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Integer NbInstances1() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Integer NbInstances2() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape Mirror() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbTrsfs() const;
		%feature("autodoc", "1");
		virtual		void ComputeTrsfs(TDataStd_Array1OfTrsf & Trsfs) const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & PatternID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_PatternStd {
	Handle_TDataStd_PatternStd GetHandle() {
	return *(Handle_TDataStd_PatternStd*) &$self;
	}
};
%extend TDataStd_PatternStd {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_PatternStd {
	~TDataStd_PatternStd() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_PatternStd\n");}
	}
};


%nodefaultctor TDataStd_Geometry;
class TDataStd_Geometry : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Geometry Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_GeometryEnum Type(const TDF_Label &L);
		%feature("autodoc", "1");
		TDataStd_GeometryEnum Type(const Handle_TNaming_NamedShape &S);
		%feature("autodoc", "1");
		Standard_Boolean Point(const TDF_Label &L, gp_Pnt & G);
		%feature("autodoc", "1");
		Standard_Boolean Point(const Handle_TNaming_NamedShape &S, gp_Pnt & G);
		%feature("autodoc", "1");
		Standard_Boolean Axis(const TDF_Label &L, gp_Ax1 & G);
		%feature("autodoc", "1");
		Standard_Boolean Axis(const Handle_TNaming_NamedShape &S, gp_Ax1 & G);
		%feature("autodoc", "1");
		Standard_Boolean Line(const TDF_Label &L, gp_Lin & G);
		%feature("autodoc", "1");
		Standard_Boolean Line(const Handle_TNaming_NamedShape &S, gp_Lin & G);
		%feature("autodoc", "1");
		Standard_Boolean Circle(const TDF_Label &L, gp_Circ & G);
		%feature("autodoc", "1");
		Standard_Boolean Circle(const Handle_TNaming_NamedShape &S, gp_Circ & G);
		%feature("autodoc", "1");
		Standard_Boolean Ellipse(const TDF_Label &L, gp_Elips & G);
		%feature("autodoc", "1");
		Standard_Boolean Ellipse(const Handle_TNaming_NamedShape &S, gp_Elips & G);
		%feature("autodoc", "1");
		Standard_Boolean Plane(const TDF_Label &L, gp_Pln & G);
		%feature("autodoc", "1");
		Standard_Boolean Plane(const Handle_TNaming_NamedShape &S, gp_Pln & G);
		%feature("autodoc", "1");
		Standard_Boolean Cylinder(const TDF_Label &L, gp_Cylinder & G);
		%feature("autodoc", "1");
		Standard_Boolean Cylinder(const Handle_TNaming_NamedShape &S, gp_Cylinder & G);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_Geometry();
		%feature("autodoc", "1");
		void SetType(const TDataStd_GeometryEnum T);
		%feature("autodoc", "1");
		TDataStd_GeometryEnum GetType() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Geometry {
	Handle_TDataStd_Geometry GetHandle() {
	return *(Handle_TDataStd_Geometry*) &$self;
	}
};
%extend TDataStd_Geometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Geometry {
	~TDataStd_Geometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Geometry\n");}
	}
};


%nodefaultctor TDataStd_Axis;
class TDataStd_Axis : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TDataStd_Axis Set(const TDF_Label &label);
		%feature("autodoc", "1");
		Handle_TDataStd_Axis Set(const TDF_Label &label, const gp_Lin &L);
		%feature("autodoc", "1");
		TDataStd_Axis();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Axis {
	Handle_TDataStd_Axis GetHandle() {
	return *(Handle_TDataStd_Axis*) &$self;
	}
};
%extend TDataStd_Axis {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_Axis {
	~TDataStd_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_Axis\n");}
	}
};


%nodefaultctor TDataStd_HDataMapOfStringHArray1OfReal;
class TDataStd_HDataMapOfStringHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfReal(const TDataStd_DataMapOfStringHArray1OfReal &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfReal & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringHArray1OfReal {
	Handle_TDataStd_HDataMapOfStringHArray1OfReal GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringHArray1OfReal*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfReal {
	~TDataStd_HDataMapOfStringHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TDataStd_HDataMapOfStringHArray1OfReal\n");}
	}
};
