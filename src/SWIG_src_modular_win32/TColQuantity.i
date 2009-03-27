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
%module TColQuantity

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


%include TColQuantity_dependencies.i


%include TColQuantity_headers.i




%nodefaultctor Handle_TColQuantity_HArray1OfLength;
class Handle_TColQuantity_HArray1OfLength : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength();
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength(const Handle_TColQuantity_HArray1OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength(const TColQuantity_HArray1OfLength *anItem);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColQuantity_HArray1OfLength {
	TColQuantity_HArray1OfLength* GetObject() {
	return (TColQuantity_HArray1OfLength*)$self->Access();
	}
};
%extend Handle_TColQuantity_HArray1OfLength {
	~Handle_TColQuantity_HArray1OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColQuantity_HArray1OfLength\n");}
	}
};

%nodefaultctor Handle_TColQuantity_HArray2OfLength;
class Handle_TColQuantity_HArray2OfLength : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength();
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength(const Handle_TColQuantity_HArray2OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength(const TColQuantity_HArray2OfLength *anItem);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColQuantity_HArray2OfLength {
	TColQuantity_HArray2OfLength* GetObject() {
	return (TColQuantity_HArray2OfLength*)$self->Access();
	}
};
%extend Handle_TColQuantity_HArray2OfLength {
	~Handle_TColQuantity_HArray2OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TColQuantity_HArray2OfLength\n");}
	}
};

%nodefaultctor TColQuantity_HArray1OfLength;
class TColQuantity_HArray1OfLength : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColQuantity_HArray1OfLength(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColQuantity_HArray1OfLength(const Standard_Integer Low, const Standard_Integer Up, const Quantity_Length &V);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColQuantity_Array1OfLength & Array1() const;
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColQuantity_HArray1OfLength {
	Handle_TColQuantity_HArray1OfLength GetHandle() {
	return *(Handle_TColQuantity_HArray1OfLength*) &$self;
	}
};
%extend TColQuantity_HArray1OfLength {
	~TColQuantity_HArray1OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColQuantity_HArray1OfLength\n");}
	}
};

%nodefaultctor TColQuantity_Array1OfLength;
class TColQuantity_Array1OfLength {
	public:
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength(const Quantity_Length &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColQuantity_Array1OfLength & Assign(const TColQuantity_Array1OfLength &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Quantity_Length & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Quantity_Length & operator()(const Standard_Integer Index);

};
%extend TColQuantity_Array1OfLength {
	~TColQuantity_Array1OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColQuantity_Array1OfLength\n");}
	}
};

%nodefaultctor TColQuantity_HArray2OfLength;
class TColQuantity_HArray2OfLength : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColQuantity_HArray2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColQuantity_HArray2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Quantity_Length &V);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColQuantity_Array2OfLength & Array2() const;
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColQuantity_HArray2OfLength {
	Handle_TColQuantity_HArray2OfLength GetHandle() {
	return *(Handle_TColQuantity_HArray2OfLength*) &$self;
	}
};
%extend TColQuantity_HArray2OfLength {
	~TColQuantity_HArray2OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColQuantity_HArray2OfLength\n");}
	}
};

%nodefaultctor TColQuantity_Array2OfLength;
class TColQuantity_Array2OfLength {
	public:
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength(const Quantity_Length &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColQuantity_Array2OfLength & Assign(const TColQuantity_Array2OfLength &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Quantity_Length & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Quantity_Length & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TColQuantity_Array2OfLength {
	~TColQuantity_Array2OfLength() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TColQuantity_Array2OfLength\n");}
	}
};