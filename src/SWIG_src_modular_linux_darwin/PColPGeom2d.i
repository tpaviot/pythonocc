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
%module PColPGeom2d

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


%include PColPGeom2d_dependencies.i


%include PColPGeom2d_headers.i




%nodefaultctor Handle_PColPGeom2d_HArray1OfBoundedCurve;
class Handle_PColPGeom2d_HArray1OfBoundedCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBoundedCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBoundedCurve(const Handle_PColPGeom2d_HArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBoundedCurve(const PColPGeom2d_HArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_HArray1OfBoundedCurve {
	PColPGeom2d_HArray1OfBoundedCurve* GetObject() {
	return (PColPGeom2d_HArray1OfBoundedCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_HArray1OfBoundedCurve {
	~Handle_PColPGeom2d_HArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_HArray1OfBoundedCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_HArray1OfBezierCurve;
class Handle_PColPGeom2d_HArray1OfBezierCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBezierCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBezierCurve(const Handle_PColPGeom2d_HArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBezierCurve(const PColPGeom2d_HArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_HArray1OfBezierCurve {
	PColPGeom2d_HArray1OfBezierCurve* GetObject() {
	return (PColPGeom2d_HArray1OfBezierCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_HArray1OfBezierCurve {
	~Handle_PColPGeom2d_HArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_HArray1OfBezierCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_HArray1OfCurve;
class Handle_PColPGeom2d_HArray1OfCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfCurve(const Handle_PColPGeom2d_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfCurve(const PColPGeom2d_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_HArray1OfCurve {
	PColPGeom2d_HArray1OfCurve* GetObject() {
	return (PColPGeom2d_HArray1OfCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_HArray1OfCurve {
	~Handle_PColPGeom2d_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_HArray1OfCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_HArray1OfBSplineCurve;
class Handle_PColPGeom2d_HArray1OfBSplineCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBSplineCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBSplineCurve(const Handle_PColPGeom2d_HArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBSplineCurve(const PColPGeom2d_HArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_HArray1OfBSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_HArray1OfBSplineCurve {
	PColPGeom2d_HArray1OfBSplineCurve* GetObject() {
	return (PColPGeom2d_HArray1OfBSplineCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_HArray1OfBSplineCurve {
	~Handle_PColPGeom2d_HArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_HArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve;
class Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve* GetObject() {
	return (PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	~Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve;
class Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve(const Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve(const PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve {
	PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve* GetObject() {
	return (PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve {
	~Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve;
class Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve(const PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve* GetObject() {
	return (PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	~Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};

%nodefaultctor Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve;
class Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve* GetObject() {
	return (PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	~Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_HArray1OfCurve;
class PColPGeom2d_HArray1OfCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom2d_Curve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_Curve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom2d_FieldOfHArray1OfCurve & _CSFDB_GetPColPGeom2d_HArray1OfCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_HArray1OfCurve {
	Handle_PColPGeom2d_HArray1OfCurve GetHandle() {
	return *(Handle_PColPGeom2d_HArray1OfCurve*) &$self;
	}
};
%extend PColPGeom2d_HArray1OfCurve {
	~PColPGeom2d_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_HArray1OfCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_FieldOfHArray1OfBSplineCurve;
class PColPGeom2d_FieldOfHArray1OfBSplineCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBSplineCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBSplineCurve(const PColPGeom2d_FieldOfHArray1OfBSplineCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom2d_FieldOfHArray1OfBSplineCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BSplineCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom2d_FieldOfHArray1OfBSplineCurve {
	~PColPGeom2d_FieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_FieldOfHArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve;
class PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve(const Handle_PGeom2d_Curve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_Curve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve {
	~PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_HArray1OfBezierCurve;
class PColPGeom2d_HArray1OfBezierCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom2d_BezierCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BezierCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBezierCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBezierCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBezierCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBezierCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom2d_FieldOfHArray1OfBezierCurve & _CSFDB_GetPColPGeom2d_HArray1OfBezierCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_HArray1OfBezierCurve {
	Handle_PColPGeom2d_HArray1OfBezierCurve GetHandle() {
	return *(Handle_PColPGeom2d_HArray1OfBezierCurve*) &$self;
	}
};
%extend PColPGeom2d_HArray1OfBezierCurve {
	~PColPGeom2d_HArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_HArray1OfBezierCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_FieldOfHArray1OfCurve;
class PColPGeom2d_FieldOfHArray1OfCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfCurve(const PColPGeom2d_FieldOfHArray1OfCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom2d_FieldOfHArray1OfCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_Curve &Value);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom2d_FieldOfHArray1OfCurve {
	~PColPGeom2d_FieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_FieldOfHArray1OfCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve;
class PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PGeom2d_BoundedCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BoundedCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve _CSFDB_GetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurvemyValue(const Handle_PGeom2d_BoundedCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve GetHandle() {
	return *(Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve*) &$self;
	}
};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	~PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve;
class PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PGeom2d_BSplineCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BSplineCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve {
	~PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_FieldOfHArray1OfBezierCurve;
class PColPGeom2d_FieldOfHArray1OfBezierCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBezierCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBezierCurve(const PColPGeom2d_FieldOfHArray1OfBezierCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom2d_FieldOfHArray1OfBezierCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BezierCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom2d_FieldOfHArray1OfBezierCurve {
	~PColPGeom2d_FieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_FieldOfHArray1OfBezierCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve;
class PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Handle_PGeom2d_BezierCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BezierCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve _CSFDB_GetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurvemyValue(const Handle_PGeom2d_BezierCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve GetHandle() {
	return *(Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve*) &$self;
	}
};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	~PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve;
class PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve(const Handle_PGeom2d_Curve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_Curve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurvemyValue(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve {
	Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve GetHandle() {
	return *(Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve*) &$self;
	}
};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve {
	~PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve;
class PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PGeom2d_BSplineCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BSplineCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve _CSFDB_GetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurvemyValue(const Handle_PGeom2d_BSplineCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve GetHandle() {
	return *(Handle_PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve*) &$self;
	}
};
%extend PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	~PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve;
class PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PGeom2d_BoundedCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BoundedCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve {
	~PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_HArray1OfBSplineCurve;
class PColPGeom2d_HArray1OfBSplineCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom2d_BSplineCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BSplineCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBSplineCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBSplineCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBSplineCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBSplineCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom2d_FieldOfHArray1OfBSplineCurve & _CSFDB_GetPColPGeom2d_HArray1OfBSplineCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_HArray1OfBSplineCurve {
	Handle_PColPGeom2d_HArray1OfBSplineCurve GetHandle() {
	return *(Handle_PColPGeom2d_HArray1OfBSplineCurve*) &$self;
	}
};
%extend PColPGeom2d_HArray1OfBSplineCurve {
	~PColPGeom2d_HArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_HArray1OfBSplineCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve;
class PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve(const Handle_PGeom2d_BezierCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom2d_BezierCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve {
	~PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_FieldOfHArray1OfBoundedCurve;
class PColPGeom2d_FieldOfHArray1OfBoundedCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBoundedCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom2d_FieldOfHArray1OfBoundedCurve(const PColPGeom2d_FieldOfHArray1OfBoundedCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom2d_FieldOfHArray1OfBoundedCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BoundedCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom2d_FieldOfHArray1OfBoundedCurve {
	~PColPGeom2d_FieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_FieldOfHArray1OfBoundedCurve\n");}
	}
};

%nodefaultctor PColPGeom2d_HArray1OfBoundedCurve;
class PColPGeom2d_HArray1OfBoundedCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom2d_BoundedCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom2d_BoundedCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom2d_HArray1OfBoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBoundedCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBoundedCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom2d_HArray1OfBoundedCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom2d_HArray1OfBoundedCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom2d_FieldOfHArray1OfBoundedCurve & _CSFDB_GetPColPGeom2d_HArray1OfBoundedCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom2d_HArray1OfBoundedCurve {
	Handle_PColPGeom2d_HArray1OfBoundedCurve GetHandle() {
	return *(Handle_PColPGeom2d_HArray1OfBoundedCurve*) &$self;
	}
};
%extend PColPGeom2d_HArray1OfBoundedCurve {
	~PColPGeom2d_HArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PColPGeom2d_HArray1OfBoundedCurve\n");}
	}
};