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
	printf("Call custom destructor for instance of Handle_TColQuantity_HArray1OfLength\n");
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
	printf("Call custom destructor for instance of Handle_TColQuantity_HArray2OfLength\n");
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
	printf("Call custom destructor for instance of TColQuantity_HArray1OfLength\n");
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
		~TColQuantity_Array1OfLength();
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
	printf("Call custom destructor for instance of TColQuantity_HArray2OfLength\n");
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
		~TColQuantity_Array2OfLength();
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