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


%include TColStd_dependencies.i


%include TColStd_headers.i




%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfExtendedString();
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

%nodefaultctor Handle_TColStd_ListNodeOfListOfTransient;
class Handle_TColStd_ListNodeOfListOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfListOfTransient();
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

%nodefaultctor Handle_TColStd_StackNodeOfStackOfInteger;
class Handle_TColStd_StackNodeOfStackOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StackNodeOfStackOfInteger();
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

%nodefaultctor Handle_TColStd_HSequenceOfHExtendedString;
class Handle_TColStd_HSequenceOfHExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfHExtendedString();
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

%nodefaultctor Handle_TColStd_HSetOfInteger;
class Handle_TColStd_HSetOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSetOfInteger();
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

%nodefaultctor Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;
class Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient();
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

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger();
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

%nodefaultctor Handle_TColStd_HPackedMapOfInteger;
class Handle_TColStd_HPackedMapOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HPackedMapOfInteger();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString();
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

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfInteger;
class Handle_TColStd_ListNodeOfSetListOfSetOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfSetListOfSetOfInteger();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfReal;
class Handle_TColStd_SequenceNodeOfSequenceOfReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfReal();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfAsciiString();
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

%nodefaultctor Handle_TColStd_HArray1OfTransient;
class Handle_TColStd_HArray1OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfTransient();
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

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal();
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

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal();
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

%nodefaultctor Handle_TColStd_HArray1OfAsciiString;
class Handle_TColStd_HArray1OfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfAsciiString();
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

%nodefaultctor Handle_TColStd_HSequenceOfReal;
class Handle_TColStd_HSequenceOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfReal();
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

%nodefaultctor Handle_TColStd_HSequenceOfTransient;
class Handle_TColStd_HSequenceOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfTransient();
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

%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient();
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

%nodefaultctor Handle_TColStd_StackNodeOfStackOfReal;
class Handle_TColStd_StackNodeOfStackOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StackNodeOfStackOfReal();
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

%nodefaultctor Handle_TColStd_HArray1OfBoolean;
class Handle_TColStd_HArray1OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfBoolean();
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

%nodefaultctor Handle_TColStd_HSequenceOfHAsciiString;
class Handle_TColStd_HSequenceOfHAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfHAsciiString();
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

%nodefaultctor Handle_TColStd_HArray2OfInteger;
class Handle_TColStd_HArray2OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray2OfInteger();
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

%nodefaultctor Handle_TColStd_HSequenceOfExtendedString;
class Handle_TColStd_HSequenceOfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfExtendedString();
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

%nodefaultctor Handle_TColStd_HArray1OfCharacter;
class Handle_TColStd_HArray1OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfCharacter();
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

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfInteger;
class Handle_TColStd_QueueNodeOfQueueOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_QueueNodeOfQueueOfInteger();
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

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfReal;
class Handle_TColStd_ListNodeOfSetListOfSetOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfSetListOfSetOfReal();
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

%nodefaultctor Handle_TColStd_HArray1OfListOfInteger;
class Handle_TColStd_HArray1OfListOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfListOfInteger();
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

%nodefaultctor Handle_TColStd_HArray2OfTransient;
class Handle_TColStd_HArray2OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray2OfTransient();
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

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger();
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

%nodefaultctor Handle_TColStd_HSequenceOfInteger;
class Handle_TColStd_HSequenceOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfInteger();
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

%nodefaultctor Handle_TColStd_HSequenceOfAsciiString;
class Handle_TColStd_HSequenceOfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSequenceOfAsciiString();
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

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfInteger;
class Handle_TColStd_StdMapNodeOfMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StdMapNodeOfMapOfInteger();
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

%nodefaultctor Handle_TColStd_ListNodeOfListOfInteger;
class Handle_TColStd_ListNodeOfListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfListOfInteger();
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

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfReal;
class Handle_TColStd_QueueNodeOfQueueOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_QueueNodeOfQueueOfReal();
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

%nodefaultctor Handle_TColStd_ListNodeOfListOfReal;
class Handle_TColStd_ListNodeOfListOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfListOfReal();
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

%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfTransient;
class Handle_TColStd_QueueNodeOfQueueOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_QueueNodeOfQueueOfTransient();
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

%nodefaultctor Handle_TColStd_HArray2OfReal;
class Handle_TColStd_HArray2OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray2OfReal();
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

%nodefaultctor Handle_TColStd_HSetOfReal;
class Handle_TColStd_HSetOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSetOfReal();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfInteger;
class Handle_TColStd_SequenceNodeOfSequenceOfInteger : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfInteger();
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

%nodefaultctor Handle_TColStd_HArray2OfBoolean;
class Handle_TColStd_HArray2OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray2OfBoolean();
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

%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger();
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

%nodefaultctor Handle_TColStd_StackNodeOfStackOfTransient;
class Handle_TColStd_StackNodeOfStackOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StackNodeOfStackOfTransient();
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

%nodefaultctor Handle_TColStd_HArray1OfReal;
class Handle_TColStd_HArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfReal();
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

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfTransient;
class Handle_TColStd_StdMapNodeOfMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StdMapNodeOfMapOfTransient();
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

%nodefaultctor Handle_TColStd_HArray2OfCharacter;
class Handle_TColStd_HArray2OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray2OfCharacter();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfTransient;
class Handle_TColStd_SequenceNodeOfSequenceOfTransient : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfTransient();
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

%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfTransient;
class Handle_TColStd_ListNodeOfSetListOfSetOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_ListNodeOfSetListOfSetOfTransient();
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

%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfReal;
class Handle_TColStd_StdMapNodeOfMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_StdMapNodeOfMapOfReal();
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

%nodefaultctor Handle_TColStd_HArray1OfExtendedString;
class Handle_TColStd_HArray1OfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfExtendedString();
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

%nodefaultctor Handle_TColStd_HArray1OfInteger;
class Handle_TColStd_HArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HArray1OfInteger();
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

%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString();
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

%nodefaultctor Handle_TColStd_HSetOfTransient;
class Handle_TColStd_HSetOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TColStd_HSetOfTransient();
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

%nodefaultctor TColStd_SequenceOfHAsciiString;
class TColStd_SequenceOfHAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TColStd_SequenceOfHAsciiString();
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
		%feature("autodoc", "1");
		virtual		~TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient();

};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient GetHandle() {
	return *(Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HPackedMapOfInteger();

};
%extend TColStd_HPackedMapOfInteger {
	Handle_TColStd_HPackedMapOfInteger GetHandle() {
	return *(Handle_TColStd_HPackedMapOfInteger*) &$self;
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
		~TColStd_DataMapOfIntegerInteger();
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
		~TColStd_Array1OfBoolean();
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

%nodefaultctor TColStd_StackNodeOfStackOfTransient;
class TColStd_StackNodeOfStackOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_StackNodeOfStackOfTransient();

};
%extend TColStd_StackNodeOfStackOfTransient {
	Handle_TColStd_StackNodeOfStackOfTransient GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfTransient*) &$self;
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
		~TColStd_DataMapOfIntegerReal();
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

%nodefaultctor TColStd_MapRealHasher;
class TColStd_MapRealHasher {
	public:
		%feature("autodoc", "1");
		~TColStd_MapRealHasher();
		%feature("autodoc", "1");
		TColStd_MapRealHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Real &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Real &K1, const Standard_Real &K2);

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
		%feature("autodoc", "1");
		virtual		~TColStd_StackNodeOfStackOfReal();

};
%extend TColStd_StackNodeOfStackOfReal {
	Handle_TColStd_StackNodeOfStackOfReal GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfReal*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray2OfInteger();

};
%extend TColStd_HArray2OfInteger {
	Handle_TColStd_HArray2OfInteger GetHandle() {
	return *(Handle_TColStd_HArray2OfInteger*) &$self;
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfInteger;
class TColStd_SetIteratorOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		~TColStd_SetIteratorOfSetOfInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfListOfInteger();

};
%extend TColStd_HArray1OfListOfInteger {
	Handle_TColStd_HArray1OfListOfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfListOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfExtendedString();

};
%extend TColStd_HSequenceOfExtendedString {
	Handle_TColStd_HSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfExtendedString*) &$self;
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
		~TColStd_Array2OfBoolean();
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
		%feature("autodoc", "1");
		virtual		~TColStd_IndexedMapNodeOfIndexedMapOfReal();

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal*) &$self;
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
		~TColStd_Array2OfInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfExtendedString();

};
%extend TColStd_HArray1OfExtendedString {
	Handle_TColStd_HArray1OfExtendedString GetHandle() {
	return *(Handle_TColStd_HArray1OfExtendedString*) &$self;
	}
};

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfReal;
class TColStd_ListIteratorOfSetListOfSetOfReal {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfSetListOfSetOfReal();
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

%nodefaultctor TColStd_SequenceNodeOfSequenceOfReal;
class TColStd_SequenceNodeOfSequenceOfReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfReal(const Standard_Real &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfReal();

};
%extend TColStd_SequenceNodeOfSequenceOfReal {
	Handle_TColStd_SequenceNodeOfSequenceOfReal GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfReal*) &$self;
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
		~TColStd_Array1OfCharacter();
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
		~TColStd_StackOfTransient();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeTop();

};

%nodefaultctor TColStd_StackIteratorOfStackOfReal;
class TColStd_StackIteratorOfStackOfReal {
	public:
		%feature("autodoc", "1");
		~TColStd_StackIteratorOfStackOfReal();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSetOfInteger();

};
%extend TColStd_HSetOfInteger {
	Handle_TColStd_HSetOfInteger GetHandle() {
	return *(Handle_TColStd_HSetOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfInteger();

};
%extend TColStd_HSequenceOfInteger {
	Handle_TColStd_HSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_HSequenceOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfSetListOfSetOfReal();

};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
	Handle_TColStd_ListNodeOfSetListOfSetOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfReal*) &$self;
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
		~TColStd_Array1OfReal();
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

%nodefaultctor TColStd_ListNodeOfSetListOfSetOfInteger;
class TColStd_ListNodeOfSetListOfSetOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfSetListOfSetOfInteger();

};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	Handle_TColStd_ListNodeOfSetListOfSetOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfInteger*) &$self;
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
		~TColStd_SetListOfSetOfTransient();
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

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger();
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

%nodefaultctor TColStd_SequenceOfReal;
class TColStd_SequenceOfReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TColStd_SequenceOfReal();
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
		%feature("autodoc", "1");
		virtual		~TColStd_IndexedMapNodeOfIndexedMapOfInteger();

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfHExtendedString();

};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString*) &$self;
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfReal;
class TColStd_SetIteratorOfSetOfReal {
	public:
		%feature("autodoc", "1");
		~TColStd_SetIteratorOfSetOfReal();
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
		~TColStd_Array1OfInteger();
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
		~TColStd_Array2OfCharacter();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfReal();

};
%extend TColStd_HSequenceOfReal {
	Handle_TColStd_HSequenceOfReal GetHandle() {
	return *(Handle_TColStd_HSequenceOfReal*) &$self;
	}
};

%nodefaultctor TColStd_MapIntegerHasher;
class TColStd_MapIntegerHasher {
	public:
		%feature("autodoc", "1");
		~TColStd_MapIntegerHasher();
		%feature("autodoc", "1");
		TColStd_MapIntegerHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Integer &K1, const Standard_Integer &K2);

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
		%feature("autodoc", "1");
		virtual		~TColStd_QueueNodeOfQueueOfReal();

};
%extend TColStd_QueueNodeOfQueueOfReal {
	Handle_TColStd_QueueNodeOfQueueOfReal GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfReal*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfCharacter();

};
%extend TColStd_HArray1OfCharacter {
	Handle_TColStd_HArray1OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray1OfCharacter*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_DataMapNodeOfDataMapOfIntegerInteger();

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger*) &$self;
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
		~TColStd_Array1OfTransient();
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
		~TColStd_IndexedMapOfReal();
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

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfTransient;
class TColStd_ListIteratorOfSetListOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfSetListOfSetOfTransient();
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

%nodefaultctor TColStd_StackIteratorOfStackOfInteger;
class TColStd_StackIteratorOfStackOfInteger {
	public:
		%feature("autodoc", "1");
		~TColStd_StackIteratorOfStackOfInteger();
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
		~TColStd_MapOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &aKey);

};

%nodefaultctor TColStd_SequenceOfAsciiString;
class TColStd_SequenceOfAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TColStd_SequenceOfAsciiString();
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

%nodefaultctor TColStd_ListIteratorOfListOfReal;
class TColStd_ListIteratorOfListOfReal {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfListOfReal();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfAsciiString();

};
%extend TColStd_HSequenceOfAsciiString {
	Handle_TColStd_HSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfAsciiString*) &$self;
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
		~TColStd_SequenceOfExtendedString();
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

%nodefaultctor TColStd_MapIteratorOfPackedMapOfInteger;
class TColStd_MapIteratorOfPackedMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_MapIteratorOfPackedMapOfInteger();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfPackedMapOfInteger();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Key() const;
		%feature("autodoc", "1");
		void Next();

};

%nodefaultctor TColStd_StackIteratorOfStackOfTransient;
class TColStd_StackIteratorOfStackOfTransient {
	public:
		%feature("autodoc", "1");
		~TColStd_StackIteratorOfStackOfTransient();
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

%nodefaultctor TColStd_SequenceOfHExtendedString;
class TColStd_SequenceOfHExtendedString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHExtendedString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TColStd_SequenceOfHExtendedString();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfAsciiString();

};
%extend TColStd_HArray1OfAsciiString {
	Handle_TColStd_HArray1OfAsciiString GetHandle() {
	return *(Handle_TColStd_HArray1OfAsciiString*) &$self;
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
		~TColStd_IndexedDataMapOfTransientTransient();
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
		~TColStd_SetListOfSetOfReal();
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

%nodefaultctor TColStd_SetOfReal;
class TColStd_SetOfReal {
	public:
		%feature("autodoc", "1");
		~TColStd_SetOfReal();
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

%nodefaultctor TColStd_StackNodeOfStackOfInteger;
class TColStd_StackNodeOfStackOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_StackNodeOfStackOfInteger();

};
%extend TColStd_StackNodeOfStackOfInteger {
	Handle_TColStd_StackNodeOfStackOfInteger GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray2OfReal();

};
%extend TColStd_HArray2OfReal {
	Handle_TColStd_HArray2OfReal GetHandle() {
	return *(Handle_TColStd_HArray2OfReal*) &$self;
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
		~TColStd_PackedMapOfInteger();
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
		Standard_Boolean IsSubset(const TColStd_PackedMapOfInteger &arg0) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<=(const TColStd_PackedMapOfInteger &MM) const;
		%feature("autodoc", "1");
		Standard_Boolean HasIntersection(const TColStd_PackedMapOfInteger &arg0) const;

};

%nodefaultctor TColStd_SequenceOfInteger;
class TColStd_SequenceOfInteger : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TColStd_SequenceOfInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_IndexedMapNodeOfIndexedMapOfTransient();

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient*) &$self;
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
		~TColStd_Array1OfListOfInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray2OfBoolean();

};
%extend TColStd_HArray2OfBoolean {
	Handle_TColStd_HArray2OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray2OfBoolean*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_QueueNodeOfQueueOfInteger();

};
%extend TColStd_QueueNodeOfQueueOfInteger {
	Handle_TColStd_QueueNodeOfQueueOfInteger GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSetOfReal();

};
%extend TColStd_HSetOfReal {
	Handle_TColStd_HSetOfReal GetHandle() {
	return *(Handle_TColStd_HSetOfReal*) &$self;
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
		~TColStd_QueueOfInteger();
		%feature("autodoc", "1");
		void Push(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Standard_Integer & ChangeFront();

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
		~TColStd_QueueOfReal();
		%feature("autodoc", "1");
		void Push(const Standard_Real &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Standard_Real & ChangeFront();

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
		~TColStd_MapOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &aKey);

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
		%feature("autodoc", "1");
		virtual		~TColStd_StdMapNodeOfMapOfInteger();

};
%extend TColStd_StdMapNodeOfMapOfInteger {
	Handle_TColStd_StdMapNodeOfMapOfInteger GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfInteger*) &$self;
	}
};

%nodefaultctor TColStd_MapTransientHasher;
class TColStd_MapTransientHasher {
	public:
		%feature("autodoc", "1");
		~TColStd_MapTransientHasher();
		%feature("autodoc", "1");
		TColStd_MapTransientHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_Standard_Transient &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Standard_Transient &K1, const Handle_Standard_Transient &K2);

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
		~TColStd_StackOfInteger();
		%feature("autodoc", "1");
		Standard_Integer & ChangeTop();

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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfInteger();

};
%extend TColStd_HArray1OfInteger {
	Handle_TColStd_HArray1OfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfInteger*) &$self;
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
		~TColStd_IndexedMapOfTransient();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfHExtendedString();

};
%extend TColStd_HSequenceOfHExtendedString {
	Handle_TColStd_HSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHExtendedString*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfTransient();

};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
	Handle_TColStd_SequenceNodeOfSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfTransient*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfBoolean();

};
%extend TColStd_HArray1OfBoolean {
	Handle_TColStd_HArray1OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray1OfBoolean*) &$self;
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
		~TColStd_SetListOfSetOfInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfReal();

};
%extend TColStd_HArray1OfReal {
	Handle_TColStd_HArray1OfReal GetHandle() {
	return *(Handle_TColStd_HArray1OfReal*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfListOfInteger();

};
%extend TColStd_ListNodeOfListOfInteger {
	Handle_TColStd_ListNodeOfListOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfInteger*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfSetListOfSetOfTransient();

};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	Handle_TColStd_ListNodeOfSetListOfSetOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfTransient*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_DataMapNodeOfDataMapOfIntegerReal();

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal*) &$self;
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
		~TColStd_Array1OfAsciiString();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfHAsciiString();

};
%extend TColStd_HSequenceOfHAsciiString {
	Handle_TColStd_HSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHAsciiString*) &$self;
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
		~TColStd_IndexedMapOfInteger();
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

%nodefaultctor TColStd_ListIteratorOfListOfTransient;
class TColStd_ListIteratorOfListOfTransient {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfListOfTransient();
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

%nodefaultctor TColStd_SequenceNodeOfSequenceOfAsciiString;
class TColStd_SequenceNodeOfSequenceOfAsciiString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfAsciiString(const TCollection_AsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfAsciiString();

};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfAsciiString*) &$self;
	}
};

%nodefaultctor TColStd_ListIteratorOfListOfInteger;
class TColStd_ListIteratorOfListOfInteger {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfListOfInteger();
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

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_DataMapIteratorOfDataMapOfIntegerInteger();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray1OfTransient();

};
%extend TColStd_HArray1OfTransient {
	Handle_TColStd_HArray1OfTransient GetHandle() {
	return *(Handle_TColStd_HArray1OfTransient*) &$self;
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
		~TColStd_ListOfReal();
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

%nodefaultctor TColStd_SequenceNodeOfSequenceOfExtendedString;
class TColStd_SequenceNodeOfSequenceOfExtendedString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfExtendedString(const TCollection_ExtendedString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfExtendedString();

};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfExtendedString*) &$self;
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
		~TColStd_MapOfReal();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &aKey);

};

%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerReal;
class TColStd_DataMapIteratorOfDataMapOfIntegerReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_DataMapIteratorOfDataMapOfIntegerReal();
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
		~TColStd_ListOfTransient();
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

%nodefaultctor TColStd_MapIteratorOfMapOfInteger;
class TColStd_MapIteratorOfMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_MapIteratorOfMapOfInteger();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;

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
		%feature("autodoc", "1");
		virtual		~TColStd_HSequenceOfTransient();

};
%extend TColStd_HSequenceOfTransient {
	Handle_TColStd_HSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_HSequenceOfTransient*) &$self;
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
		~TColStd_DataMapOfIntegerListOfInteger();
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

%nodefaultctor TColStd_SetOfInteger;
class TColStd_SetOfInteger {
	public:
		%feature("autodoc", "1");
		~TColStd_SetOfInteger();
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
		~TColStd_StackOfReal();
		%feature("autodoc", "1");
		Standard_Real & ChangeTop();

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
		~TColStd_ListOfInteger();
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
		~TColStd_Array2OfTransient();
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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray2OfCharacter();

};
%extend TColStd_HArray2OfCharacter {
	Handle_TColStd_HArray2OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray2OfCharacter*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfHAsciiString();

};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString*) &$self;
	}
};

%nodefaultctor TColStd_SetIteratorOfSetOfTransient;
class TColStd_SetIteratorOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		~TColStd_SetIteratorOfSetOfTransient();
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
		~TColStd_Array1OfExtendedString();
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
		%feature("autodoc", "1");
		virtual		~TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger();

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*) &$self;
	}
};

%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfInteger;
class TColStd_ListIteratorOfSetListOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		~TColStd_ListIteratorOfSetListOfSetOfInteger();
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

%nodefaultctor TColStd_SequenceNodeOfSequenceOfInteger;
class TColStd_SequenceNodeOfSequenceOfInteger : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfInteger(const Standard_Integer &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_SequenceNodeOfSequenceOfInteger();

};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
	Handle_TColStd_SequenceNodeOfSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfInteger*) &$self;
	}
};

%nodefaultctor TColStd_SetOfTransient;
class TColStd_SetOfTransient {
	public:
		%feature("autodoc", "1");
		~TColStd_SetOfTransient();
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

%nodefaultctor TColStd_ListNodeOfListOfTransient;
class TColStd_ListNodeOfListOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfListOfTransient();

};
%extend TColStd_ListNodeOfListOfTransient {
	Handle_TColStd_ListNodeOfListOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfTransient*) &$self;
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
		~TColStd_Array2OfReal();
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

%nodefaultctor TColStd_StdMapNodeOfMapOfReal;
class TColStd_StdMapNodeOfMapOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfReal(const Standard_Real &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TColStd_StdMapNodeOfMapOfReal();

};
%extend TColStd_StdMapNodeOfMapOfReal {
	Handle_TColStd_StdMapNodeOfMapOfReal GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfReal*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_QueueNodeOfQueueOfTransient();

};
%extend TColStd_QueueNodeOfQueueOfTransient {
	Handle_TColStd_QueueNodeOfQueueOfTransient GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfTransient*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_ListNodeOfListOfReal();

};
%extend TColStd_ListNodeOfListOfReal {
	Handle_TColStd_ListNodeOfListOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfReal*) &$self;
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
		%feature("autodoc", "1");
		virtual		~TColStd_StdMapNodeOfMapOfTransient();

};
%extend TColStd_StdMapNodeOfMapOfTransient {
	Handle_TColStd_StdMapNodeOfMapOfTransient GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfTransient*) &$self;
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
		~TColStd_QueueOfTransient();
		%feature("autodoc", "1");
		void Push(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFront();

};

%nodefaultctor TColStd_MapIteratorOfMapOfTransient;
class TColStd_MapIteratorOfMapOfTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_MapIteratorOfMapOfTransient();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;

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
		%feature("autodoc", "1");
		virtual		~TColStd_HSetOfTransient();

};
%extend TColStd_HSetOfTransient {
	Handle_TColStd_HSetOfTransient GetHandle() {
	return *(Handle_TColStd_HSetOfTransient*) &$self;
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
		~TColStd_SequenceOfTransient();
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

%nodefaultctor TColStd_MapIteratorOfMapOfReal;
class TColStd_MapIteratorOfMapOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TColStd_MapIteratorOfMapOfReal();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		const Standard_Real & Key() const;

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
		%feature("autodoc", "1");
		virtual		~TColStd_HArray2OfTransient();

};
%extend TColStd_HArray2OfTransient {
	Handle_TColStd_HArray2OfTransient GetHandle() {
	return *(Handle_TColStd_HArray2OfTransient*) &$self;
	}
};