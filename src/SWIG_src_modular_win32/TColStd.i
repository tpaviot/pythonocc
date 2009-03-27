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
%module TColStd

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


%include TColStd_dependencies.i


%include TColStd_headers.i




%nodefaultctor Handle_TColStd_HSetOfInteger;
class Handle_TColStd_HSetOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger(const Handle_TColStd_HSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger(const TColStd_HSetOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfInteger {
	TColStd_HSetOfInteger* GetObject() {
	return (TColStd_HSetOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HSetOfInteger {
	~Handle_TColStd_HSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSetOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfInteger;
class Handle_TColStd_HSequenceOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger(const Handle_TColStd_HSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger(const TColStd_HSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfInteger {
	TColStd_HSequenceOfInteger* GetObject() {
	return (TColStd_HSequenceOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfInteger {
	~Handle_TColStd_HSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray2OfBoolean;
class Handle_TColStd_HArray2OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean(const Handle_TColStd_HArray2OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean(const TColStd_HArray2OfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfBoolean {
	TColStd_HArray2OfBoolean* GetObject() {
	return (TColStd_HArray2OfBoolean*)$self->Access();
	}
};
%extend Handle_TColStd_HArray2OfBoolean {
	~Handle_TColStd_HArray2OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray2OfBoolean\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(const Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(const TColStd_SequenceNodeOfSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
	TColStd_SequenceNodeOfSequenceOfHExtendedString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfHExtendedString*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
	~Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString\n");}
	}
};

%nodefaultctor Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;
class Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient* GetObject() {
	return (TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*)$self->Access();
	}
};
%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	~Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray2OfReal;
class Handle_TColStd_HArray2OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal(const Handle_TColStd_HArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal(const TColStd_HArray2OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfReal {
	TColStd_HArray2OfReal* GetObject() {
	return (TColStd_HArray2OfReal*)$self->Access();
	}
};
%extend Handle_TColStd_HArray2OfReal {
	~Handle_TColStd_HArray2OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray2OfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfBoolean;
class Handle_TColStd_HArray1OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean(const Handle_TColStd_HArray1OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean(const TColStd_HArray1OfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfBoolean {
	TColStd_HArray1OfBoolean* GetObject() {
	return (TColStd_HArray1OfBoolean*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfBoolean {
	~Handle_TColStd_HArray1OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfBoolean\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(const Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(const TColStd_SequenceNodeOfSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
	TColStd_SequenceNodeOfSequenceOfHAsciiString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfHAsciiString*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
	~Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfTransient;
class Handle_TColStd_SequenceNodeOfSequenceOfTransient : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient(const Handle_TColStd_SequenceNodeOfSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient(const TColStd_SequenceNodeOfSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
	TColStd_SequenceNodeOfSequenceOfTransient* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
	~Handle_TColStd_SequenceNodeOfSequenceOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfInteger;
class Handle_TColStd_HArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger(const Handle_TColStd_HArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger(const TColStd_HArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfInteger {
	TColStd_HArray1OfInteger* GetObject() {
	return (TColStd_HArray1OfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfInteger {
	~Handle_TColStd_HArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfInteger;
class Handle_TColStd_ListNodeOfSetListOfSetOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger(const Handle_TColStd_ListNodeOfSetListOfSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger(const TColStd_ListNodeOfSetListOfSetOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
	TColStd_ListNodeOfSetListOfSetOfInteger* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
	~Handle_TColStd_ListNodeOfSetListOfSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfSetListOfSetOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(const Handle_TColStd_SequenceNodeOfSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(const TColStd_SequenceNodeOfSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
	TColStd_SequenceNodeOfSequenceOfAsciiString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfAsciiString*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
	~Handle_TColStd_SequenceNodeOfSequenceOfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfAsciiString\n");}
	}
};

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(const TColStd_DataMapNodeOfDataMapOfIntegerReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
	TColStd_DataMapNodeOfDataMapOfIntegerReal* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerReal*)$self->Access();
	}
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
	~Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfReal;
class Handle_TColStd_HSequenceOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal(const Handle_TColStd_HSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal(const TColStd_HSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfReal {
	TColStd_HSequenceOfReal* GetObject() {
	return (TColStd_HSequenceOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfReal {
	~Handle_TColStd_HSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(const TColStd_IndexedMapNodeOfIndexedMapOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
	TColStd_IndexedMapNodeOfIndexedMapOfReal* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
	~Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfAsciiString;
class Handle_TColStd_HArray1OfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString(const Handle_TColStd_HArray1OfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString(const TColStd_HArray1OfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfAsciiString {
	TColStd_HArray1OfAsciiString* GetObject() {
	return (TColStd_HArray1OfAsciiString*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfAsciiString {
	~Handle_TColStd_HArray1OfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfAsciiString\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfTransient;
class Handle_TColStd_HSequenceOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient(const Handle_TColStd_HSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient(const TColStd_HSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfTransient {
	TColStd_HSequenceOfTransient* GetObject() {
	return (TColStd_HSequenceOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfTransient {
	~Handle_TColStd_HSequenceOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	~Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HSetOfReal;
class Handle_TColStd_HSetOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal(const Handle_TColStd_HSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal(const TColStd_HSetOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfReal {
	TColStd_HSetOfReal* GetObject() {
	return (TColStd_HSetOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_HSetOfReal {
	~Handle_TColStd_HSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSetOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfCharacter;
class Handle_TColStd_HArray1OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter(const Handle_TColStd_HArray1OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter(const TColStd_HArray1OfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfCharacter {
	TColStd_HArray1OfCharacter* GetObject() {
	return (TColStd_HArray1OfCharacter*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfCharacter {
	~Handle_TColStd_HArray1OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfCharacter\n");}
	}
};

%nodefaultctor Handle_TColStd_StackNodeOfStackOfReal;
class Handle_TColStd_StackNodeOfStackOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal(const Handle_TColStd_StackNodeOfStackOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal(const TColStd_StackNodeOfStackOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfReal {
	TColStd_StackNodeOfStackOfReal* GetObject() {
	return (TColStd_StackNodeOfStackOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_StackNodeOfStackOfReal {
	~Handle_TColStd_StackNodeOfStackOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StackNodeOfStackOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfHAsciiString;
class Handle_TColStd_HSequenceOfHAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString(const Handle_TColStd_HSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString(const TColStd_HSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfHAsciiString {
	TColStd_HSequenceOfHAsciiString* GetObject() {
	return (TColStd_HSequenceOfHAsciiString*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfHAsciiString {
	~Handle_TColStd_HSequenceOfHAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfHAsciiString\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfInteger;
class Handle_TColStd_SequenceNodeOfSequenceOfInteger : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger(const Handle_TColStd_SequenceNodeOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger(const TColStd_SequenceNodeOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
	TColStd_SequenceNodeOfSequenceOfInteger* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
	~Handle_TColStd_SequenceNodeOfSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfExtendedString;
class Handle_TColStd_HSequenceOfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString(const Handle_TColStd_HSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString(const TColStd_HSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfExtendedString {
	TColStd_HSequenceOfExtendedString* GetObject() {
	return (TColStd_HSequenceOfExtendedString*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfExtendedString {
	~Handle_TColStd_HSequenceOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfExtendedString\n");}
	}
};

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfInteger;
class Handle_TColStd_QueueNodeOfQueueOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger(const Handle_TColStd_QueueNodeOfQueueOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger(const TColStd_QueueNodeOfQueueOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
	TColStd_QueueNodeOfQueueOfInteger* GetObject() {
	return (TColStd_QueueNodeOfQueueOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
	~Handle_TColStd_QueueNodeOfQueueOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_QueueNodeOfQueueOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfReal;
class Handle_TColStd_ListNodeOfSetListOfSetOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal(const Handle_TColStd_ListNodeOfSetListOfSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal(const TColStd_ListNodeOfSetListOfSetOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
	TColStd_ListNodeOfSetListOfSetOfReal* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
	~Handle_TColStd_ListNodeOfSetListOfSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfSetListOfSetOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfListOfTransient;
class Handle_TColStd_ListNodeOfListOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient(const Handle_TColStd_ListNodeOfListOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient(const TColStd_ListNodeOfListOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfTransient {
	TColStd_ListNodeOfListOfTransient* GetObject() {
	return (TColStd_ListNodeOfListOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfListOfTransient {
	~Handle_TColStd_ListNodeOfListOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfListOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfListOfReal;
class Handle_TColStd_ListNodeOfListOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal(const Handle_TColStd_ListNodeOfListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal(const TColStd_ListNodeOfListOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfReal {
	TColStd_ListNodeOfListOfReal* GetObject() {
	return (TColStd_ListNodeOfListOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfListOfReal {
	~Handle_TColStd_ListNodeOfListOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfListOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfAsciiString;
class Handle_TColStd_HSequenceOfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString(const Handle_TColStd_HSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString(const TColStd_HSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfAsciiString {
	TColStd_HSequenceOfAsciiString* GetObject() {
	return (TColStd_HSequenceOfAsciiString*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfAsciiString {
	~Handle_TColStd_HSequenceOfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfAsciiString\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfTransient;
class Handle_TColStd_ListNodeOfSetListOfSetOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient(const Handle_TColStd_ListNodeOfSetListOfSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient(const TColStd_ListNodeOfSetListOfSetOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
	TColStd_ListNodeOfSetListOfSetOfTransient* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
	~Handle_TColStd_ListNodeOfSetListOfSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfSetListOfSetOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfExtendedString;
class Handle_TColStd_HArray1OfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString(const Handle_TColStd_HArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString(const TColStd_HArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfExtendedString {
	TColStd_HArray1OfExtendedString* GetObject() {
	return (TColStd_HArray1OfExtendedString*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfExtendedString {
	~Handle_TColStd_HArray1OfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfExtendedString\n");}
	}
};

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(const TColStd_DataMapNodeOfDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	TColStd_DataMapNodeOfDataMapOfIntegerInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerInteger*)$self->Access();
	}
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	~Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_StackNodeOfStackOfTransient;
class Handle_TColStd_StackNodeOfStackOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient(const Handle_TColStd_StackNodeOfStackOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient(const TColStd_StackNodeOfStackOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfTransient {
	TColStd_StackNodeOfStackOfTransient* GetObject() {
	return (TColStd_StackNodeOfStackOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_StackNodeOfStackOfTransient {
	~Handle_TColStd_StackNodeOfStackOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StackNodeOfStackOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfReal;
class Handle_TColStd_HArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal(const Handle_TColStd_HArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal(const TColStd_HArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfReal {
	TColStd_HArray1OfReal* GetObject() {
	return (TColStd_HArray1OfReal*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfReal {
	~Handle_TColStd_HArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfListOfInteger;
class Handle_TColStd_HArray1OfListOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger(const Handle_TColStd_HArray1OfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger(const TColStd_HArray1OfListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfListOfInteger {
	TColStd_HArray1OfListOfInteger* GetObject() {
	return (TColStd_HArray1OfListOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfListOfInteger {
	~Handle_TColStd_HArray1OfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfListOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HPackedMapOfInteger;
class Handle_TColStd_HPackedMapOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger(const Handle_TColStd_HPackedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger(const TColStd_HPackedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HPackedMapOfInteger {
	TColStd_HPackedMapOfInteger* GetObject() {
	return (TColStd_HPackedMapOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HPackedMapOfInteger {
	~Handle_TColStd_HPackedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HPackedMapOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfInteger;
class Handle_TColStd_StdMapNodeOfMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger(const Handle_TColStd_StdMapNodeOfMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger(const TColStd_StdMapNodeOfMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
	TColStd_StdMapNodeOfMapOfInteger* GetObject() {
	return (TColStd_StdMapNodeOfMapOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
	~Handle_TColStd_StdMapNodeOfMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StdMapNodeOfMapOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(const TColStd_IndexedMapNodeOfIndexedMapOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	TColStd_IndexedMapNodeOfIndexedMapOfTransient* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	~Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_ListNodeOfListOfInteger;
class Handle_TColStd_ListNodeOfListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger(const Handle_TColStd_ListNodeOfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger(const TColStd_ListNodeOfListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfInteger {
	TColStd_ListNodeOfListOfInteger* GetObject() {
	return (TColStd_ListNodeOfListOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_ListNodeOfListOfInteger {
	~Handle_TColStd_ListNodeOfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_ListNodeOfListOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(const Handle_TColStd_SequenceNodeOfSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(const TColStd_SequenceNodeOfSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
	TColStd_SequenceNodeOfSequenceOfExtendedString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfExtendedString*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
	~Handle_TColStd_SequenceNodeOfSequenceOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfExtendedString\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray2OfInteger;
class Handle_TColStd_HArray2OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger(const Handle_TColStd_HArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger(const TColStd_HArray2OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfInteger {
	TColStd_HArray2OfInteger* GetObject() {
	return (TColStd_HArray2OfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_HArray2OfInteger {
	~Handle_TColStd_HArray2OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray2OfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfTransient;
class Handle_TColStd_QueueNodeOfQueueOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient(const Handle_TColStd_QueueNodeOfQueueOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient(const TColStd_QueueNodeOfQueueOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
	TColStd_QueueNodeOfQueueOfTransient* GetObject() {
	return (TColStd_QueueNodeOfQueueOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
	~Handle_TColStd_QueueNodeOfQueueOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_QueueNodeOfQueueOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_StackNodeOfStackOfInteger;
class Handle_TColStd_StackNodeOfStackOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger(const Handle_TColStd_StackNodeOfStackOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger(const TColStd_StackNodeOfStackOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfInteger {
	TColStd_StackNodeOfStackOfInteger* GetObject() {
	return (TColStd_StackNodeOfStackOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_StackNodeOfStackOfInteger {
	~Handle_TColStd_StackNodeOfStackOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StackNodeOfStackOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfReal;
class Handle_TColStd_QueueNodeOfQueueOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal(const Handle_TColStd_QueueNodeOfQueueOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal(const TColStd_QueueNodeOfQueueOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfReal {
	TColStd_QueueNodeOfQueueOfReal* GetObject() {
	return (TColStd_QueueNodeOfQueueOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_QueueNodeOfQueueOfReal {
	~Handle_TColStd_QueueNodeOfQueueOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_QueueNodeOfQueueOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_HSequenceOfHExtendedString;
class Handle_TColStd_HSequenceOfHExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString(const Handle_TColStd_HSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString(const TColStd_HSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfHExtendedString {
	TColStd_HSequenceOfHExtendedString* GetObject() {
	return (TColStd_HSequenceOfHExtendedString*)$self->Access();
	}
};
%extend Handle_TColStd_HSequenceOfHExtendedString {
	~Handle_TColStd_HSequenceOfHExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSequenceOfHExtendedString\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray2OfTransient;
class Handle_TColStd_HArray2OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient(const Handle_TColStd_HArray2OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient(const TColStd_HArray2OfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfTransient {
	TColStd_HArray2OfTransient* GetObject() {
	return (TColStd_HArray2OfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_HArray2OfTransient {
	~Handle_TColStd_HArray2OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray2OfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfReal;
class Handle_TColStd_SequenceNodeOfSequenceOfReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal(const Handle_TColStd_SequenceNodeOfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal(const TColStd_SequenceNodeOfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
	TColStd_SequenceNodeOfSequenceOfReal* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
	~Handle_TColStd_SequenceNodeOfSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_SequenceNodeOfSequenceOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfTransient;
class Handle_TColStd_StdMapNodeOfMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient(const Handle_TColStd_StdMapNodeOfMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient(const TColStd_StdMapNodeOfMapOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
	TColStd_StdMapNodeOfMapOfTransient* GetObject() {
	return (TColStd_StdMapNodeOfMapOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
	~Handle_TColStd_StdMapNodeOfMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StdMapNodeOfMapOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray2OfCharacter;
class Handle_TColStd_HArray2OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter(const Handle_TColStd_HArray2OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter(const TColStd_HArray2OfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfCharacter {
	TColStd_HArray2OfCharacter* GetObject() {
	return (TColStd_HArray2OfCharacter*)$self->Access();
	}
};
%extend Handle_TColStd_HArray2OfCharacter {
	~Handle_TColStd_HArray2OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray2OfCharacter\n");}
	}
};

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfReal;
class Handle_TColStd_StdMapNodeOfMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal(const Handle_TColStd_StdMapNodeOfMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal(const TColStd_StdMapNodeOfMapOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfReal {
	TColStd_StdMapNodeOfMapOfReal* GetObject() {
	return (TColStd_StdMapNodeOfMapOfReal*)$self->Access();
	}
};
%extend Handle_TColStd_StdMapNodeOfMapOfReal {
	~Handle_TColStd_StdMapNodeOfMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_StdMapNodeOfMapOfReal\n");}
	}
};

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(const TColStd_IndexedMapNodeOfIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	TColStd_IndexedMapNodeOfIndexedMapOfInteger* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfInteger*)$self->Access();
	}
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	~Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger\n");}
	}
};

%nodefaultctor Handle_TColStd_HSetOfTransient;
class Handle_TColStd_HSetOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient(const Handle_TColStd_HSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient(const TColStd_HSetOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfTransient {
	TColStd_HSetOfTransient* GetObject() {
	return (TColStd_HSetOfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_HSetOfTransient {
	~Handle_TColStd_HSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HSetOfTransient\n");}
	}
};

%nodefaultctor Handle_TColStd_HArray1OfTransient;
class Handle_TColStd_HArray1OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient(const Handle_TColStd_HArray1OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient(const TColStd_HArray1OfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfTransient {
	TColStd_HArray1OfTransient* GetObject() {
	return (TColStd_HArray1OfTransient*)$self->Access();
	}
};
%extend Handle_TColStd_HArray1OfTransient {
	~Handle_TColStd_HArray1OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColStd_HArray1OfTransient\n");}
	}
};

%nodefaultctor TColStd_StdMapNodeOfMapOfInteger;
class TColStd_StdMapNodeOfMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfInteger(const Standard_Integer &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfInteger {
	Handle_TColStd_StdMapNodeOfMapOfInteger GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfInteger*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfInteger {
	~TColStd_StdMapNodeOfMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StdMapNodeOfMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_StackIteratorOfStackOfInteger;
class TColStd_StackIteratorOfStackOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfInteger();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfInteger(const TColStd_StackOfInteger &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfInteger &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend TColStd_StackIteratorOfStackOfInteger {
	~TColStd_StackIteratorOfStackOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackIteratorOfStackOfInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceOfHAsciiString;
class TColStd_SequenceOfHAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfHAsciiString & Assign(const TColStd_SequenceOfHAsciiString &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & First() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfHAsciiString {
	~TColStd_SequenceOfHAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfHAsciiString\n");}
	}
};

%nodefaultctor TColStd_SequenceOfTransient;
class TColStd_SequenceOfTransient : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfTransient();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfTransient & Assign(const TColStd_SequenceOfTransient &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfTransient {
	~TColStd_SequenceOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfTransient\n");}
	}
};

%nodefaultctor TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;
class TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const Handle_Standard_Transient &K1, const Standard_Integer K2, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient GetHandle() {
	return *(Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*) &$self;
	}
};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	~TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor TColStd_HPackedMapOfInteger;
class TColStd_HPackedMapOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HPackedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_HPackedMapOfInteger(const TColStd_PackedMapOfInteger &theOther);
		%feature("autodoc", "1");
		const TColStd_PackedMapOfInteger & Map() const;
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HPackedMapOfInteger {
	Handle_TColStd_HPackedMapOfInteger GetHandle() {
	return *(Handle_TColStd_HPackedMapOfInteger*) &$self;
	}
};
%extend TColStd_HPackedMapOfInteger {
	~TColStd_HPackedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HPackedMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_StackNodeOfStackOfTransient;
class TColStd_StackNodeOfStackOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfTransient {
	Handle_TColStd_StackNodeOfStackOfTransient GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfTransient*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfTransient {
	~TColStd_StackNodeOfStackOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackNodeOfStackOfTransient\n");}
	}
};

%nodefaultctor TColStd_StackNodeOfStackOfReal;
class TColStd_StackNodeOfStackOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfReal {
	Handle_TColStd_StackNodeOfStackOfReal GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfReal*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfReal {
	~TColStd_StackNodeOfStackOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackNodeOfStackOfReal\n");}
	}
};

%nodefaultctor TColStd_DataMapOfIntegerReal;
class TColStd_DataMapOfIntegerReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal & Assign(const TColStd_DataMapOfIntegerReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer &K);

};
%extend TColStd_DataMapOfIntegerReal {
	~TColStd_DataMapOfIntegerReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapOfIntegerReal\n");}
	}
};

%nodefaultctor TColStd_MapRealHasher;
class TColStd_MapRealHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapRealHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Real &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Real &K1, const Standard_Real &K2);

};
%extend TColStd_MapRealHasher {
	~TColStd_MapRealHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapRealHasher\n");}
	}
};

%nodefaultctor TColStd_Array2OfInteger;
class TColStd_Array2OfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfInteger(const Standard_Integer &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfInteger & Assign(const TColStd_Array2OfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColStd_Array2OfInteger {
	~TColStd_Array2OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array2OfInteger\n");}
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfInteger;
class TColStd_SetIteratorOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfInteger();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfInteger(const TColStd_SetOfInteger &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfInteger &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend TColStd_SetIteratorOfSetOfInteger {
	~TColStd_SetIteratorOfSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetIteratorOfSetOfInteger\n");}
	}
};

%nodefaultctor TColStd_StackOfTransient;
class TColStd_StackOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfTransient();
		%feature("autodoc", "1");
		const TColStd_StackOfTransient & Assign(const TColStd_StackOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeTop();

};
%extend TColStd_StackOfTransient {
	~TColStd_StackOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackOfTransient\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfReal;
class TColStd_ListIteratorOfSetListOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfReal();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfReal(const TColStd_SetListOfSetOfReal &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfReal &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Real & Value() const;

};
%extend TColStd_ListIteratorOfSetListOfSetOfReal {
	~TColStd_ListIteratorOfSetListOfSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfSetListOfSetOfReal\n");}
	}
};

%nodefaultctor TColStd_HArray2OfReal;
class TColStd_HArray2OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Real &V);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfReal & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfReal {
	Handle_TColStd_HArray2OfReal GetHandle() {
	return *(Handle_TColStd_HArray2OfReal*) &$self;
	}
};
%extend TColStd_HArray2OfReal {
	~TColStd_HArray2OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray2OfReal\n");}
	}
};

%nodefaultctor TColStd_HSetOfReal;
class TColStd_HSetOfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfReal();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Union(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Intersection(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Difference(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfReal &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfReal &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfReal & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfReal & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfReal {
	Handle_TColStd_HSetOfReal GetHandle() {
	return *(Handle_TColStd_HSetOfReal*) &$self;
	}
};
%extend TColStd_HSetOfReal {
	~TColStd_HSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSetOfReal\n");}
	}
};

%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerReal;
class TColStd_DataMapNodeOfDataMapOfIntegerReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerReal(const Standard_Integer &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	~TColStd_DataMapNodeOfDataMapOfIntegerReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapNodeOfDataMapOfIntegerReal\n");}
	}
};

%nodefaultctor TColStd_StdMapNodeOfMapOfReal;
class TColStd_StdMapNodeOfMapOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfReal(const Standard_Real &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfReal {
	Handle_TColStd_StdMapNodeOfMapOfReal GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfReal*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfReal {
	~TColStd_StdMapNodeOfMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StdMapNodeOfMapOfReal\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfInteger;
class TColStd_HSequenceOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfInteger {
	Handle_TColStd_HSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_HSequenceOfInteger*) &$self;
	}
};
%extend TColStd_HSequenceOfInteger {
	~TColStd_HSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfSetListOfSetOfInteger;
class TColStd_ListNodeOfSetListOfSetOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	Handle_TColStd_ListNodeOfSetListOfSetOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfInteger*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	~TColStd_ListNodeOfSetListOfSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfSetListOfSetOfInteger\n");}
	}
};

%nodefaultctor TColStd_SetListOfSetOfTransient;
class TColStd_SetListOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfTransient();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfTransient & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfTransient & Other);
		%feature("autodoc", "1");
		Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It);

};
%extend TColStd_SetListOfSetOfTransient {
	~TColStd_SetListOfSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetListOfSetOfTransient\n");}
	}
};

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger(const TColStd_DataMapOfIntegerListOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerListOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value() const;

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger {
	~TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger\n");}
	}
};

%nodefaultctor TColStd_HArray1OfAsciiString;
class TColStd_HArray1OfAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up, const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		void Init(const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfAsciiString & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfAsciiString {
	Handle_TColStd_HArray1OfAsciiString GetHandle() {
	return *(Handle_TColStd_HArray1OfAsciiString*) &$self;
	}
};
%extend TColStd_HArray1OfAsciiString {
	~TColStd_HArray1OfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfAsciiString\n");}
	}
};

%nodefaultctor TColStd_MapOfReal;
class TColStd_MapOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfReal & Assign(const TColStd_MapOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &aKey);

};
%extend TColStd_MapOfReal {
	~TColStd_MapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapOfReal\n");}
	}
};

%nodefaultctor TColStd_SequenceOfReal;
class TColStd_SequenceOfReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Assign(const TColStd_SequenceOfReal &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Real &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Real &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		const Standard_Real & First() const;
		%feature("autodoc", "1");
		const Standard_Real & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfReal {
	~TColStd_SequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfReal\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfSetListOfSetOfReal;
class TColStd_ListNodeOfSetListOfSetOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
	Handle_TColStd_ListNodeOfSetListOfSetOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfReal*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
	~TColStd_ListNodeOfSetListOfSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfSetListOfSetOfReal\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfAsciiString;
class TColStd_HSequenceOfAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfAsciiString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfAsciiString {
	Handle_TColStd_HSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfAsciiString*) &$self;
	}
};
%extend TColStd_HSequenceOfAsciiString {
	~TColStd_HSequenceOfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfAsciiString\n");}
	}
};

%nodefaultctor TColStd_Array1OfBoolean;
class TColStd_Array1OfBoolean {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean(const Standard_Boolean &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfBoolean & Assign(const TColStd_Array1OfBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfBoolean {
	~TColStd_Array1OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfBoolean\n");}
	}
};

%nodefaultctor TColStd_HArray1OfBoolean;
class TColStd_HArray1OfBoolean : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfBoolean(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfBoolean(const Standard_Integer Low, const Standard_Integer Up, const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfBoolean & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfBoolean {
	Handle_TColStd_HArray1OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray1OfBoolean*) &$self;
	}
};
%extend TColStd_HArray1OfBoolean {
	~TColStd_HArray1OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfBoolean\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfHExtendedString;
class TColStd_SequenceNodeOfSequenceOfHExtendedString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfHExtendedString(const Handle_TCollection_HExtendedString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	~TColStd_SequenceNodeOfSequenceOfHExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfHExtendedString\n");}
	}
};

%nodefaultctor TColStd_HArray1OfListOfInteger;
class TColStd_HArray1OfListOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up, const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		void Init(const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_ListOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfListOfInteger & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfListOfInteger {
	Handle_TColStd_HArray1OfListOfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfListOfInteger*) &$self;
	}
};
%extend TColStd_HArray1OfListOfInteger {
	~TColStd_HArray1OfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfListOfInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceOfInteger;
class TColStd_SequenceOfInteger : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Assign(const TColStd_SequenceOfInteger &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Integer &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Integer &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		const Standard_Integer & First() const;
		%feature("autodoc", "1");
		const Standard_Integer & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfInteger {
	~TColStd_SequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfInteger\n");}
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfTransient;
class TColStd_SetIteratorOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfTransient();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfTransient(const TColStd_SetOfTransient &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfTransient &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend TColStd_SetIteratorOfSetOfTransient {
	~TColStd_SetIteratorOfSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetIteratorOfSetOfTransient\n");}
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfReal;
class TColStd_SetIteratorOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfReal();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfReal(const TColStd_SetOfReal &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfReal &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend TColStd_SetIteratorOfSetOfReal {
	~TColStd_SetIteratorOfSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetIteratorOfSetOfReal\n");}
	}
};

%nodefaultctor TColStd_Array1OfInteger;
class TColStd_Array1OfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfInteger(const Standard_Integer &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Assign(const TColStd_Array1OfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfInteger {
	~TColStd_Array1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfInteger\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfReal;
class TColStd_HSequenceOfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Real &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfReal {
	Handle_TColStd_HSequenceOfReal GetHandle() {
	return *(Handle_TColStd_HSequenceOfReal*) &$self;
	}
};
%extend TColStd_HSequenceOfReal {
	~TColStd_HSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfReal\n");}
	}
};

%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfInteger;
class TColStd_IndexedMapNodeOfIndexedMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfInteger(const Standard_Integer &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	~TColStd_IndexedMapNodeOfIndexedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapNodeOfIndexedMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerInteger;
class TColStd_DataMapNodeOfDataMapOfIntegerInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerInteger(const Standard_Integer &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	~TColStd_DataMapNodeOfDataMapOfIntegerInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapNodeOfDataMapOfIntegerInteger\n");}
	}
};

%nodefaultctor TColStd_Array1OfTransient;
class TColStd_Array1OfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfTransient(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfTransient(const Handle_Standard_Transient &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfTransient & Assign(const TColStd_Array1OfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfTransient {
	~TColStd_Array1OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfTransient\n");}
	}
};

%nodefaultctor TColStd_IndexedMapOfReal;
class TColStd_IndexedMapOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfReal & Assign(const TColStd_IndexedMapOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Real &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Real &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &K) const;
		%feature("autodoc", "1");
		const Standard_Real & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Real &K) const;

};
%extend TColStd_IndexedMapOfReal {
	~TColStd_IndexedMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapOfReal\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfTransient;
class TColStd_ListIteratorOfSetListOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfTransient();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfTransient(const TColStd_SetListOfSetOfTransient &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfTransient &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;

};
%extend TColStd_ListIteratorOfSetListOfSetOfTransient {
	~TColStd_ListIteratorOfSetListOfSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfSetListOfSetOfTransient\n");}
	}
};

%nodefaultctor TColStd_HArray2OfBoolean;
class TColStd_HArray2OfBoolean : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Boolean & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfBoolean & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfBoolean {
	Handle_TColStd_HArray2OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray2OfBoolean*) &$self;
	}
};
%extend TColStd_HArray2OfBoolean {
	~TColStd_HArray2OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray2OfBoolean\n");}
	}
};

%nodefaultctor TColStd_ListOfReal;
class TColStd_ListOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfReal();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfReal & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfReal & Other);
		%feature("autodoc", "1");
		Standard_Real & First() const;
		%feature("autodoc", "1");
		Standard_Real & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It);

};
%extend TColStd_ListOfReal {
	~TColStd_ListOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListOfReal\n");}
	}
};

%nodefaultctor TColStd_StdMapNodeOfMapOfTransient;
class TColStd_StdMapNodeOfMapOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfTransient(const Handle_Standard_Transient &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfTransient {
	Handle_TColStd_StdMapNodeOfMapOfTransient GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfTransient*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfTransient {
	~TColStd_StdMapNodeOfMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StdMapNodeOfMapOfTransient\n");}
	}
};

%nodefaultctor TColStd_SequenceOfAsciiString;
class TColStd_SequenceOfAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & Assign(const TColStd_SequenceOfAsciiString &Other);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & First() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfAsciiString {
	~TColStd_SequenceOfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfAsciiString\n");}
	}
};

%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfReal;
class TColStd_IndexedMapNodeOfIndexedMapOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfReal(const Standard_Real &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Real & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	~TColStd_IndexedMapNodeOfIndexedMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapNodeOfIndexedMapOfReal\n");}
	}
};

%nodefaultctor TColStd_QueueOfInteger;
class TColStd_QueueOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfInteger();
		%feature("autodoc", "1");
		const TColStd_QueueOfInteger & Assign(const TColStd_QueueOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Standard_Integer & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Standard_Integer & ChangeFront();

};
%extend TColStd_QueueOfInteger {
	~TColStd_QueueOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfListOfReal;
class TColStd_ListNodeOfListOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfReal {
	Handle_TColStd_ListNodeOfListOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfReal*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfReal {
	~TColStd_ListNodeOfListOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfListOfReal\n");}
	}
};

%nodefaultctor TColStd_SetOfTransient;
class TColStd_SetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfTransient();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfTransient &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfTransient &S) const;

};
%extend TColStd_SetOfTransient {
	~TColStd_SetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetOfTransient\n");}
	}
};

%nodefaultctor TColStd_Array1OfReal;
class TColStd_Array1OfReal {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfReal(const Standard_Real &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Assign(const TColStd_Array1OfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfReal {
	~TColStd_Array1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfReal\n");}
	}
};

%nodefaultctor TColStd_IndexedDataMapOfTransientTransient;
class TColStd_IndexedDataMapOfTransientTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient & Assign(const TColStd_IndexedDataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K, const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromKey(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromKey(const Handle_Standard_Transient &K);

};
%extend TColStd_IndexedDataMapOfTransientTransient {
	~TColStd_IndexedDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfTransient;
class TColStd_HSequenceOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfTransient & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfTransient & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfTransient {
	Handle_TColStd_HSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_HSequenceOfTransient*) &$self;
	}
};
%extend TColStd_HSequenceOfTransient {
	~TColStd_HSequenceOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfTransient\n");}
	}
};

%nodefaultctor TColStd_SetOfReal;
class TColStd_SetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfReal();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfReal &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfReal &S) const;

};
%extend TColStd_SetOfReal {
	~TColStd_SetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetOfReal\n");}
	}
};

%nodefaultctor TColStd_PackedMapOfInteger;
class TColStd_PackedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer aKey);
		%feature("autodoc", "1");
		Standard_Integer NbBuckets() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer IsEmpty() const;
		%feature("autodoc", "1");
		void Statistics(Standard_OStream & outStream) const;
		%feature("autodoc", "1");
		Standard_Integer GetMinimalMapped() const;
		%feature("autodoc", "1");
		Standard_Integer GetMaximalMapped() const;
		%feature("autodoc", "1");
		void Union(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator|=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Intersection(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator&=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Subtraction(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator-=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Difference(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator^=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TColStd_PackedMapOfInteger &arg0) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const TColStd_PackedMapOfInteger &MM) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSubset(const TColStd_PackedMapOfInteger &arg0) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<=(const TColStd_PackedMapOfInteger &MM) const;
		%feature("autodoc", "1");
		Standard_Boolean HasIntersection(const TColStd_PackedMapOfInteger &arg0) const;

};
%extend TColStd_PackedMapOfInteger {
	~TColStd_PackedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_PackedMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_HArray1OfExtendedString;
class TColStd_HArray1OfExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up, const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		void Init(const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfExtendedString & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfExtendedString {
	Handle_TColStd_HArray1OfExtendedString GetHandle() {
	return *(Handle_TColStd_HArray1OfExtendedString*) &$self;
	}
};
%extend TColStd_HArray1OfExtendedString {
	~TColStd_HArray1OfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfExtendedString\n");}
	}
};

%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfTransient;
class TColStd_IndexedMapNodeOfIndexedMapOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfTransient(const Handle_Standard_Transient &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	~TColStd_IndexedMapNodeOfIndexedMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapNodeOfIndexedMapOfTransient\n");}
	}
};

%nodefaultctor TColStd_Array1OfListOfInteger;
class TColStd_Array1OfListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger(const TColStd_ListOfInteger &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfListOfInteger & Assign(const TColStd_Array1OfListOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_ListOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfListOfInteger {
	~TColStd_Array1OfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfListOfInteger\n");}
	}
};

%nodefaultctor TColStd_MapIteratorOfMapOfReal;
class TColStd_MapIteratorOfMapOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		const Standard_Real & Key() const;

};
%extend TColStd_MapIteratorOfMapOfReal {
	~TColStd_MapIteratorOfMapOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapIteratorOfMapOfReal\n");}
	}
};

%nodefaultctor TColStd_Array2OfCharacter;
class TColStd_Array2OfCharacter {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter(const Standard_Character &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfCharacter & Assign(const TColStd_Array2OfCharacter &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Character & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColStd_Array2OfCharacter {
	~TColStd_Array2OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array2OfCharacter\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfListOfTransient;
class TColStd_ListIteratorOfListOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfTransient();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfTransient(const TColStd_ListOfTransient &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfTransient &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;

};
%extend TColStd_ListIteratorOfListOfTransient {
	~TColStd_ListIteratorOfListOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfListOfTransient\n");}
	}
};

%nodefaultctor TColStd_MapTransientHasher;
class TColStd_MapTransientHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapTransientHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_Standard_Transient &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Standard_Transient &K1, const Handle_Standard_Transient &K2);

};
%extend TColStd_MapTransientHasher {
	~TColStd_MapTransientHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapTransientHasher\n");}
	}
};

%nodefaultctor TColStd_HArray1OfCharacter;
class TColStd_HArray1OfCharacter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfCharacter(const Standard_Integer Low, const Standard_Integer Up, const Standard_Character &V);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfCharacter & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfCharacter {
	Handle_TColStd_HArray1OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray1OfCharacter*) &$self;
	}
};
%extend TColStd_HArray1OfCharacter {
	~TColStd_HArray1OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfCharacter\n");}
	}
};

%nodefaultctor TColStd_MapOfInteger;
class TColStd_MapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Assign(const TColStd_MapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &aKey);

};
%extend TColStd_MapOfInteger {
	~TColStd_MapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapOfInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceOfExtendedString;
class TColStd_SequenceOfExtendedString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfExtendedString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Assign(const TColStd_SequenceOfExtendedString &Other);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfExtendedString {
	~TColStd_SequenceOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfExtendedString\n");}
	}
};

%nodefaultctor TColStd_QueueNodeOfQueueOfReal;
class TColStd_QueueNodeOfQueueOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfReal {
	Handle_TColStd_QueueNodeOfQueueOfReal GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfReal*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfReal {
	~TColStd_QueueNodeOfQueueOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueNodeOfQueueOfReal\n");}
	}
};

%nodefaultctor TColStd_HArray1OfInteger;
class TColStd_HArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up, const Standard_Integer &V);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfInteger & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfInteger {
	Handle_TColStd_HArray1OfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfInteger*) &$self;
	}
};
%extend TColStd_HArray1OfInteger {
	~TColStd_HArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfInteger\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfHExtendedString;
class TColStd_HSequenceOfHExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHExtendedString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfHExtendedString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfHExtendedString {
	Handle_TColStd_HSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHExtendedString*) &$self;
	}
};
%extend TColStd_HSequenceOfHExtendedString {
	~TColStd_HSequenceOfHExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfHExtendedString\n");}
	}
};

%nodefaultctor TColStd_Array2OfBoolean;
class TColStd_Array2OfBoolean {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean(const Standard_Boolean &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfBoolean & Assign(const TColStd_Array2OfBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Boolean & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColStd_Array2OfBoolean {
	~TColStd_Array2OfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array2OfBoolean\n");}
	}
};

%nodefaultctor TColStd_MapOfTransient;
class TColStd_MapOfTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfTransient & Assign(const TColStd_MapOfTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &aKey);

};
%extend TColStd_MapOfTransient {
	~TColStd_MapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapOfTransient\n");}
	}
};

%nodefaultctor TColStd_IndexedMapOfTransient;
class TColStd_IndexedMapOfTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfTransient & Assign(const TColStd_IndexedMapOfTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;

};
%extend TColStd_IndexedMapOfTransient {
	~TColStd_IndexedMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapOfTransient\n");}
	}
};

%nodefaultctor TColStd_Array1OfCharacter;
class TColStd_Array1OfCharacter {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter(const Standard_Character &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfCharacter & Assign(const TColStd_Array1OfCharacter &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Character & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfCharacter {
	~TColStd_Array1OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfCharacter\n");}
	}
};

%nodefaultctor TColStd_QueueNodeOfQueueOfInteger;
class TColStd_QueueNodeOfQueueOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfInteger {
	Handle_TColStd_QueueNodeOfQueueOfInteger GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfInteger*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfInteger {
	~TColStd_QueueNodeOfQueueOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueNodeOfQueueOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfInteger;
class TColStd_ListIteratorOfSetListOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfInteger();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfInteger(const TColStd_SetListOfSetOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer & Value() const;

};
%extend TColStd_ListIteratorOfSetListOfSetOfInteger {
	~TColStd_ListIteratorOfSetListOfSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfSetListOfSetOfInteger\n");}
	}
};

%nodefaultctor TColStd_SetListOfSetOfReal;
class TColStd_SetListOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfReal();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfReal & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfReal & Other);
		%feature("autodoc", "1");
		Standard_Real & First() const;
		%feature("autodoc", "1");
		Standard_Real & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It);

};
%extend TColStd_SetListOfSetOfReal {
	~TColStd_SetListOfSetOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetListOfSetOfReal\n");}
	}
};

%nodefaultctor TColStd_SetListOfSetOfInteger;
class TColStd_SetListOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfInteger();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfInteger & Other);
		%feature("autodoc", "1");
		Standard_Integer & First() const;
		%feature("autodoc", "1");
		Standard_Integer & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It);

};
%extend TColStd_SetListOfSetOfInteger {
	~TColStd_SetListOfSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetListOfSetOfInteger\n");}
	}
};

%nodefaultctor TColStd_HArray1OfReal;
class TColStd_HArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_Real &V);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfReal & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfReal {
	Handle_TColStd_HArray1OfReal GetHandle() {
	return *(Handle_TColStd_HArray1OfReal*) &$self;
	}
};
%extend TColStd_HArray1OfReal {
	~TColStd_HArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfReal\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfListOfInteger;
class TColStd_ListNodeOfListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfInteger {
	Handle_TColStd_ListNodeOfListOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfInteger*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfInteger {
	~TColStd_ListNodeOfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfListOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfSetListOfSetOfTransient;
class TColStd_ListNodeOfSetListOfSetOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	Handle_TColStd_ListNodeOfSetListOfSetOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfTransient*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	~TColStd_ListNodeOfSetListOfSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfSetListOfSetOfTransient\n");}
	}
};

%nodefaultctor TColStd_StackIteratorOfStackOfTransient;
class TColStd_StackIteratorOfStackOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfTransient();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfTransient(const TColStd_StackOfTransient &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfTransient &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend TColStd_StackIteratorOfStackOfTransient {
	~TColStd_StackIteratorOfStackOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackIteratorOfStackOfTransient\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfHAsciiString;
class TColStd_HSequenceOfHAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHAsciiString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfHAsciiString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfHAsciiString {
	Handle_TColStd_HSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHAsciiString*) &$self;
	}
};
%extend TColStd_HSequenceOfHAsciiString {
	~TColStd_HSequenceOfHAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfHAsciiString\n");}
	}
};

%nodefaultctor TColStd_IndexedMapOfInteger;
class TColStd_IndexedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & Assign(const TColStd_IndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;

};
%extend TColStd_IndexedMapOfInteger {
	~TColStd_IndexedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_IndexedMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfListOfReal;
class TColStd_ListIteratorOfListOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfReal();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfReal(const TColStd_ListOfReal &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfReal &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Real & Value() const;

};
%extend TColStd_ListIteratorOfListOfReal {
	~TColStd_ListIteratorOfListOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfListOfReal\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfAsciiString;
class TColStd_SequenceNodeOfSequenceOfAsciiString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfAsciiString(const TCollection_AsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfAsciiString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	~TColStd_SequenceNodeOfSequenceOfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfAsciiString\n");}
	}
};

%nodefaultctor TColStd_ListIteratorOfListOfInteger;
class TColStd_ListIteratorOfListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfInteger();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfInteger(const TColStd_ListOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer & Value() const;

};
%extend TColStd_ListIteratorOfListOfInteger {
	~TColStd_ListIteratorOfListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListIteratorOfListOfInteger\n");}
	}
};

%nodefaultctor TColStd_Array2OfTransient;
class TColStd_Array2OfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfTransient(const Handle_Standard_Transient &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfTransient & Assign(const TColStd_Array2OfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColStd_Array2OfTransient {
	~TColStd_Array2OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array2OfTransient\n");}
	}
};

%nodefaultctor TColStd_QueueNodeOfQueueOfTransient;
class TColStd_QueueNodeOfQueueOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfTransient {
	Handle_TColStd_QueueNodeOfQueueOfTransient GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfTransient*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfTransient {
	~TColStd_QueueNodeOfQueueOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueNodeOfQueueOfTransient\n");}
	}
};

%nodefaultctor TColStd_HArray1OfTransient;
class TColStd_HArray1OfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfTransient(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfTransient(const Standard_Integer Low, const Standard_Integer Up, const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfTransient & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfTransient & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfTransient {
	Handle_TColStd_HArray1OfTransient GetHandle() {
	return *(Handle_TColStd_HArray1OfTransient*) &$self;
	}
};
%extend TColStd_HArray1OfTransient {
	~TColStd_HArray1OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray1OfTransient\n");}
	}
};

%nodefaultctor TColStd_StackNodeOfStackOfInteger;
class TColStd_StackNodeOfStackOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfInteger {
	Handle_TColStd_StackNodeOfStackOfInteger GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfInteger*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfInteger {
	~TColStd_StackNodeOfStackOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackNodeOfStackOfInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfExtendedString;
class TColStd_SequenceNodeOfSequenceOfExtendedString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfExtendedString(const TCollection_ExtendedString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfExtendedString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	~TColStd_SequenceNodeOfSequenceOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfExtendedString\n");}
	}
};

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerReal;
class TColStd_DataMapIteratorOfDataMapOfIntegerReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerReal();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerReal(const TColStd_DataMapOfIntegerReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerReal &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerReal {
	~TColStd_DataMapIteratorOfDataMapOfIntegerReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapIteratorOfDataMapOfIntegerReal\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfTransient;
class TColStd_SequenceNodeOfSequenceOfTransient : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfTransient(const Handle_Standard_Transient &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
	Handle_TColStd_SequenceNodeOfSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfTransient*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
	~TColStd_SequenceNodeOfSequenceOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfTransient\n");}
	}
};

%nodefaultctor TColStd_ListOfTransient;
class TColStd_ListOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfTransient();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfTransient & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfTransient & Other);
		%feature("autodoc", "1");
		Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It);

};
%extend TColStd_ListOfTransient {
	~TColStd_ListOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListOfTransient\n");}
	}
};

%nodefaultctor TColStd_MapIteratorOfMapOfInteger;
class TColStd_MapIteratorOfMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;

};
%extend TColStd_MapIteratorOfMapOfInteger {
	~TColStd_MapIteratorOfMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapIteratorOfMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceOfHExtendedString;
class TColStd_SequenceOfHExtendedString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHExtendedString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfHExtendedString & Assign(const TColStd_SequenceOfHExtendedString &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HExtendedString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & First() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TCollection_HExtendedString &I);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend TColStd_SequenceOfHExtendedString {
	~TColStd_SequenceOfHExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceOfHExtendedString\n");}
	}
};

%nodefaultctor TColStd_DataMapOfIntegerListOfInteger;
class TColStd_DataMapOfIntegerListOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger & Assign(const TColStd_DataMapOfIntegerListOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_ListOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const Standard_Integer &K);

};
%extend TColStd_DataMapOfIntegerListOfInteger {
	~TColStd_DataMapOfIntegerListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapOfIntegerListOfInteger\n");}
	}
};

%nodefaultctor TColStd_SetOfInteger;
class TColStd_SetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfInteger();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfInteger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfInteger &S) const;

};
%extend TColStd_SetOfInteger {
	~TColStd_SetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SetOfInteger\n");}
	}
};

%nodefaultctor TColStd_StackOfInteger;
class TColStd_StackOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfInteger();
		%feature("autodoc", "1");
		const TColStd_StackOfInteger & Assign(const TColStd_StackOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Standard_Integer & Top() const;
		%feature("autodoc", "1");
		void Push(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer & ChangeTop();

};
%extend TColStd_StackOfInteger {
	~TColStd_StackOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackOfInteger\n");}
	}
};

%nodefaultctor TColStd_StackOfReal;
class TColStd_StackOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfReal();
		%feature("autodoc", "1");
		const TColStd_StackOfReal & Assign(const TColStd_StackOfReal &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Standard_Real & Top() const;
		%feature("autodoc", "1");
		void Push(const Standard_Real &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Real & ChangeTop();

};
%extend TColStd_StackOfReal {
	~TColStd_StackOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackOfReal\n");}
	}
};

%nodefaultctor TColStd_StackIteratorOfStackOfReal;
class TColStd_StackIteratorOfStackOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfReal();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfReal(const TColStd_StackOfReal &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfReal &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend TColStd_StackIteratorOfStackOfReal {
	~TColStd_StackIteratorOfStackOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_StackIteratorOfStackOfReal\n");}
	}
};

%nodefaultctor TColStd_HSequenceOfExtendedString;
class TColStd_HSequenceOfExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfExtendedString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfExtendedString {
	Handle_TColStd_HSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfExtendedString*) &$self;
	}
};
%extend TColStd_HSequenceOfExtendedString {
	~TColStd_HSequenceOfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSequenceOfExtendedString\n");}
	}
};

%nodefaultctor TColStd_HArray2OfCharacter;
class TColStd_HArray2OfCharacter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Character &V);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfCharacter & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfCharacter {
	Handle_TColStd_HArray2OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray2OfCharacter*) &$self;
	}
};
%extend TColStd_HArray2OfCharacter {
	~TColStd_HArray2OfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray2OfCharacter\n");}
	}
};

%nodefaultctor TColStd_Array1OfAsciiString;
class TColStd_Array1OfAsciiString {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString(const TCollection_AsciiString &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfAsciiString & Assign(const TColStd_Array1OfAsciiString &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfAsciiString {
	~TColStd_Array1OfAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfAsciiString\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfReal;
class TColStd_SequenceNodeOfSequenceOfReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfReal(const Standard_Real &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfReal {
	Handle_TColStd_SequenceNodeOfSequenceOfReal GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfReal*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfReal {
	~TColStd_SequenceNodeOfSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfReal\n");}
	}
};

%nodefaultctor TColStd_Array1OfExtendedString;
class TColStd_Array1OfExtendedString {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString(const TCollection_ExtendedString &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfExtendedString & Assign(const TColStd_Array1OfExtendedString &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const Standard_Integer Index);

};
%extend TColStd_Array1OfExtendedString {
	~TColStd_Array1OfExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array1OfExtendedString\n");}
	}
};

%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;
class TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const Standard_Integer &K, const TColStd_ListOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	~TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger\n");}
	}
};

%nodefaultctor TColStd_DataMapOfIntegerInteger;
class TColStd_DataMapOfIntegerInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger & Assign(const TColStd_DataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer &K);

};
%extend TColStd_DataMapOfIntegerInteger {
	~TColStd_DataMapOfIntegerInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapOfIntegerInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfInteger;
class TColStd_SequenceNodeOfSequenceOfInteger : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfInteger(const Standard_Integer &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
	Handle_TColStd_SequenceNodeOfSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfInteger*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
	~TColStd_SequenceNodeOfSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfInteger\n");}
	}
};

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerInteger(const TColStd_DataMapOfIntegerInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerInteger {
	~TColStd_DataMapIteratorOfDataMapOfIntegerInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_DataMapIteratorOfDataMapOfIntegerInteger\n");}
	}
};

%nodefaultctor TColStd_SequenceNodeOfSequenceOfHAsciiString;
class TColStd_SequenceNodeOfSequenceOfHAsciiString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfHAsciiString(const Handle_TCollection_HAsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	~TColStd_SequenceNodeOfSequenceOfHAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_SequenceNodeOfSequenceOfHAsciiString\n");}
	}
};

%nodefaultctor TColStd_ListNodeOfListOfTransient;
class TColStd_ListNodeOfListOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfTransient {
	Handle_TColStd_ListNodeOfListOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfTransient*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfTransient {
	~TColStd_ListNodeOfListOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListNodeOfListOfTransient\n");}
	}
};

%nodefaultctor TColStd_Array2OfReal;
class TColStd_Array2OfReal {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfReal(const Standard_Real &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Assign(const TColStd_Array2OfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColStd_Array2OfReal {
	~TColStd_Array2OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_Array2OfReal\n");}
	}
};

%nodefaultctor TColStd_MapIntegerHasher;
class TColStd_MapIntegerHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapIntegerHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Integer &K1, const Standard_Integer &K2);

};
%extend TColStd_MapIntegerHasher {
	~TColStd_MapIntegerHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapIntegerHasher\n");}
	}
};

%nodefaultctor TColStd_QueueOfReal;
class TColStd_QueueOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfReal();
		%feature("autodoc", "1");
		const TColStd_QueueOfReal & Assign(const TColStd_QueueOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Standard_Real & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Standard_Real &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Standard_Real & ChangeFront();

};
%extend TColStd_QueueOfReal {
	~TColStd_QueueOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueOfReal\n");}
	}
};

%nodefaultctor TColStd_HArray2OfInteger;
class TColStd_HArray2OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Integer &V);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfInteger & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfInteger & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfInteger {
	Handle_TColStd_HArray2OfInteger GetHandle() {
	return *(Handle_TColStd_HArray2OfInteger*) &$self;
	}
};
%extend TColStd_HArray2OfInteger {
	~TColStd_HArray2OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray2OfInteger\n");}
	}
};

%nodefaultctor TColStd_QueueOfTransient;
class TColStd_QueueOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfTransient();
		%feature("autodoc", "1");
		const TColStd_QueueOfTransient & Assign(const TColStd_QueueOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFront();

};
%extend TColStd_QueueOfTransient {
	~TColStd_QueueOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_QueueOfTransient\n");}
	}
};

%nodefaultctor TColStd_MapIteratorOfMapOfTransient;
class TColStd_MapIteratorOfMapOfTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;

};
%extend TColStd_MapIteratorOfMapOfTransient {
	~TColStd_MapIteratorOfMapOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapIteratorOfMapOfTransient\n");}
	}
};

%nodefaultctor TColStd_HSetOfInteger;
class TColStd_HSetOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfInteger();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Union(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Intersection(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Difference(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfInteger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfInteger &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfInteger & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfInteger & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfInteger {
	Handle_TColStd_HSetOfInteger GetHandle() {
	return *(Handle_TColStd_HSetOfInteger*) &$self;
	}
};
%extend TColStd_HSetOfInteger {
	~TColStd_HSetOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSetOfInteger\n");}
	}
};

%nodefaultctor TColStd_HSetOfTransient;
class TColStd_HSetOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfTransient();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Union(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Intersection(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Difference(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfTransient &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfTransient &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfTransient & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfTransient & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfTransient {
	Handle_TColStd_HSetOfTransient GetHandle() {
	return *(Handle_TColStd_HSetOfTransient*) &$self;
	}
};
%extend TColStd_HSetOfTransient {
	~TColStd_HSetOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HSetOfTransient\n");}
	}
};

%nodefaultctor TColStd_MapIteratorOfPackedMapOfInteger;
class TColStd_MapIteratorOfPackedMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfPackedMapOfInteger();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Key() const;
		%feature("autodoc", "1");
		void Next();

};
%extend TColStd_MapIteratorOfPackedMapOfInteger {
	~TColStd_MapIteratorOfPackedMapOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_MapIteratorOfPackedMapOfInteger\n");}
	}
};

%nodefaultctor TColStd_ListOfInteger;
class TColStd_ListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfInteger();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfInteger & Other);
		%feature("autodoc", "1");
		Standard_Integer & First() const;
		%feature("autodoc", "1");
		Standard_Integer & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It);

};
%extend TColStd_ListOfInteger {
	~TColStd_ListOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_ListOfInteger\n");}
	}
};

%nodefaultctor TColStd_HArray2OfTransient;
class TColStd_HArray2OfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfTransient & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfTransient & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfTransient {
	Handle_TColStd_HArray2OfTransient GetHandle() {
	return *(Handle_TColStd_HArray2OfTransient*) &$self;
	}
};
%extend TColStd_HArray2OfTransient {
	~TColStd_HArray2OfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColStd_HArray2OfTransient\n");}
	}
};