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
%module PColPGeom

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


%include PColPGeom_dependencies.i


%include PColPGeom_headers.i




%nodefaultctor Handle_PColPGeom_HArray1OfSurface;
class Handle_PColPGeom_HArray1OfSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfSurface(const Handle_PColPGeom_HArray1OfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfSurface(const PColPGeom_HArray1OfSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfSurface {
	PColPGeom_HArray1OfSurface* GetObject() {
	return (PColPGeom_HArray1OfSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfSurface {
	~Handle_PColPGeom_HArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray2OfBezierSurface;
class Handle_PColPGeom_HArray2OfBezierSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBezierSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBezierSurface(const Handle_PColPGeom_HArray2OfBezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBezierSurface(const PColPGeom_HArray2OfBezierSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBezierSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray2OfBezierSurface {
	PColPGeom_HArray2OfBezierSurface* GetObject() {
	return (PColPGeom_HArray2OfBezierSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray2OfBezierSurface {
	~Handle_PColPGeom_HArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray2OfBezierSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface(const PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray1OfBoundedSurface;
class Handle_PColPGeom_HArray1OfBoundedSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedSurface(const Handle_PColPGeom_HArray1OfBoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedSurface(const PColPGeom_HArray1OfBoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfBoundedSurface {
	PColPGeom_HArray1OfBoundedSurface* GetObject() {
	return (PColPGeom_HArray1OfBoundedSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfBoundedSurface {
	~Handle_PColPGeom_HArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray2OfBoundedSurface;
class Handle_PColPGeom_HArray2OfBoundedSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBoundedSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBoundedSurface(const Handle_PColPGeom_HArray2OfBoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBoundedSurface(const PColPGeom_HArray2OfBoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBoundedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray2OfBoundedSurface {
	PColPGeom_HArray2OfBoundedSurface* GetObject() {
	return (PColPGeom_HArray2OfBoundedSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray2OfBoundedSurface {
	~Handle_PColPGeom_HArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface(const PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray2OfBSplineSurface;
class Handle_PColPGeom_HArray2OfBSplineSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBSplineSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBSplineSurface(const Handle_PColPGeom_HArray2OfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBSplineSurface(const PColPGeom_HArray2OfBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfBSplineSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray2OfBSplineSurface {
	PColPGeom_HArray2OfBSplineSurface* GetObject() {
	return (PColPGeom_HArray2OfBSplineSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray2OfBSplineSurface {
	~Handle_PColPGeom_HArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray1OfBSplineCurve;
class Handle_PColPGeom_HArray1OfBSplineCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBSplineCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBSplineCurve(const Handle_PColPGeom_HArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBSplineCurve(const PColPGeom_HArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfBSplineCurve {
	PColPGeom_HArray1OfBSplineCurve* GetObject() {
	return (PColPGeom_HArray1OfBSplineCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfBSplineCurve {
	~Handle_PColPGeom_HArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray1OfBezierCurve;
class Handle_PColPGeom_HArray1OfBezierCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBezierCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBezierCurve(const Handle_PColPGeom_HArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBezierCurve(const PColPGeom_HArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfBezierCurve {
	PColPGeom_HArray1OfBezierCurve* GetObject() {
	return (PColPGeom_HArray1OfBezierCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfBezierCurve {
	~Handle_PColPGeom_HArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfBezierCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray1OfCurve;
class Handle_PColPGeom_HArray1OfCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfCurve(const Handle_PColPGeom_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfCurve(const PColPGeom_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfCurve {
	PColPGeom_HArray1OfCurve* GetObject() {
	return (PColPGeom_HArray1OfCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfCurve {
	~Handle_PColPGeom_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface(const PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray1OfBoundedCurve;
class Handle_PColPGeom_HArray1OfBoundedCurve : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedCurve(const Handle_PColPGeom_HArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedCurve(const PColPGeom_HArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray1OfBoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray1OfBoundedCurve {
	PColPGeom_HArray1OfBoundedCurve* GetObject() {
	return (PColPGeom_HArray1OfBoundedCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray1OfBoundedCurve {
	~Handle_PColPGeom_HArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface(const PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve(const PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_HArray2OfSurface;
class Handle_PColPGeom_HArray2OfSurface : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfSurface(const Handle_PColPGeom_HArray2OfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfSurface(const PColPGeom_HArray2OfSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_HArray2OfSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_HArray2OfSurface {
	PColPGeom_HArray2OfSurface* GetObject() {
	return (PColPGeom_HArray2OfSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_HArray2OfSurface {
	~Handle_PColPGeom_HArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_HArray2OfSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve(const PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface(const PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface\n");}
	}
};


%nodefaultctor Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface;
class Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface();
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface(const Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface(const PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface {
	PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface* GetObject() {
	return (PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface*)$self->Access();
	}
};
%extend Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface {
	~Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurfacemyValue(const Handle_PGeom_BoundedSurface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PGeom_BSplineCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BSplineCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfCurve;
class PColPGeom_FieldOfHArray1OfCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfCurve(const PColPGeom_FieldOfHArray1OfCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_Curve &Value);
		%feature("autodoc", "1");
		Handle_PGeom_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfCurve {
	~PColPGeom_FieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfCurve\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfBezierCurve;
class PColPGeom_HArray1OfBezierCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_BezierCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BezierCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBezierCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBezierCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBezierCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBezierCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfBezierCurve & _CSFDB_GetPColPGeom_HArray1OfBezierCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfBezierCurve {
	Handle_PColPGeom_HArray1OfBezierCurve GetHandle() {
	return *(Handle_PColPGeom_HArray1OfBezierCurve*) &$self;
	}
};
%extend PColPGeom_HArray1OfBezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfBezierCurve {
	~PColPGeom_HArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfBezierCurve\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfCurve;
class PColPGeom_HArray1OfCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_Curve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_Curve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_Curve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfCurve & _CSFDB_GetPColPGeom_HArray1OfCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfCurve {
	Handle_PColPGeom_HArray1OfCurve GetHandle() {
	return *(Handle_PColPGeom_HArray1OfCurve*) &$self;
	}
};
%extend PColPGeom_HArray1OfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfCurve {
	~PColPGeom_HArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfCurve\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfSurface;
class PColPGeom_HArray1OfSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfSurface(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_Surface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_Surface &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfSurfaceLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfSurfaceLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfSurfaceUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfSurfaceUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfSurface & _CSFDB_GetPColPGeom_HArray1OfSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfSurface {
	Handle_PColPGeom_HArray1OfSurface GetHandle() {
	return *(Handle_PColPGeom_HArray1OfSurface*) &$self;
	}
};
%extend PColPGeom_HArray1OfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfSurface {
	~PColPGeom_HArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface(const Handle_PGeom_BSplineSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BSplineSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurfacemyValue(const Handle_PGeom_BSplineSurface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface(const Handle_PGeom_BezierSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BezierSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurfacemyValue(const Handle_PGeom_BezierSurface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve(const Handle_PGeom_Curve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Curve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfCurvemyValue(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray2OfBezierSurface;
class PColPGeom_FieldOfHArray2OfBezierSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBezierSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBezierSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBezierSurface(const PColPGeom_FieldOfHArray2OfBezierSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray2OfBezierSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BezierSurface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray2OfBezierSurface {
	~PColPGeom_FieldOfHArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray2OfBezierSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray2OfBoundedSurface;
class PColPGeom_FieldOfHArray2OfBoundedSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBoundedSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBoundedSurface(const PColPGeom_FieldOfHArray2OfBoundedSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray2OfBoundedSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BoundedSurface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray2OfBoundedSurface {
	~PColPGeom_FieldOfHArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Handle_PGeom_BezierCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BezierCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurvemyValue(const Handle_PGeom_BezierCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfSurfacemyValue(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray2OfSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray2OfSurfacemyValue(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfBSplineCurve;
class PColPGeom_HArray1OfBSplineCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_BSplineCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BSplineCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBSplineCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBSplineCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBSplineCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBSplineCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfBSplineCurve & _CSFDB_GetPColPGeom_HArray1OfBSplineCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfBSplineCurve {
	Handle_PColPGeom_HArray1OfBSplineCurve GetHandle() {
	return *(Handle_PColPGeom_HArray1OfBSplineCurve*) &$self;
	}
};
%extend PColPGeom_HArray1OfBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfBSplineCurve {
	~PColPGeom_HArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray2OfBSplineSurface;
class PColPGeom_FieldOfHArray2OfBSplineSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBSplineSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBSplineSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfBSplineSurface(const PColPGeom_FieldOfHArray2OfBSplineSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray2OfBSplineSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BSplineSurface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray2OfBSplineSurface {
	~PColPGeom_FieldOfHArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurfacemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurfacemyValue(const Handle_PGeom_BoundedSurface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface(const Handle_PGeom_BezierSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BezierSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Handle_PGeom_BSplineCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BSplineCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurvemyValue(const Handle_PGeom_BSplineCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfBSplineCurve;
class PColPGeom_FieldOfHArray1OfBSplineCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBSplineCurve();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBSplineCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBSplineCurve(const PColPGeom_FieldOfHArray1OfBSplineCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfBSplineCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BSplineCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BSplineCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfBSplineCurve {
	~PColPGeom_FieldOfHArray1OfBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfBSplineCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PGeom_BoundedCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Surface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray2OfSurface;
class PColPGeom_FieldOfHArray2OfSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray2OfSurface(const PColPGeom_FieldOfHArray2OfSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray2OfSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_Surface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_Surface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray2OfSurface {
	~PColPGeom_FieldOfHArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray2OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray2OfBezierSurface;
class PColPGeom_HArray2OfBezierSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBezierSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBezierSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_PGeom_BezierSurface &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_PGeom_BezierSurface &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Handle_PGeom_BezierSurface Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBezierSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBezierSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBezierSurfacemyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBezierSurfacemyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBezierSurfacemyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBezierSurfacemyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBezierSurfacemyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBezierSurfacemyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBezierSurfacemyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBezierSurfacemyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray2OfBezierSurface & _CSFDB_GetPColPGeom_HArray2OfBezierSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray2OfBezierSurface {
	Handle_PColPGeom_HArray2OfBezierSurface GetHandle() {
	return *(Handle_PColPGeom_HArray2OfBezierSurface*) &$self;
	}
};
%extend PColPGeom_HArray2OfBezierSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray2OfBezierSurface {
	~PColPGeom_HArray2OfBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray2OfBezierSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfBoundedSurface;
class PColPGeom_HArray1OfBoundedSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedSurface(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_BoundedSurface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BoundedSurface &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBoundedSurfaceLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBoundedSurfaceLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBoundedSurfaceUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBoundedSurfaceUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfBoundedSurface & _CSFDB_GetPColPGeom_HArray1OfBoundedSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfBoundedSurface {
	Handle_PColPGeom_HArray1OfBoundedSurface GetHandle() {
	return *(Handle_PColPGeom_HArray1OfBoundedSurface*) &$self;
	}
};
%extend PColPGeom_HArray1OfBoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfBoundedSurface {
	~PColPGeom_HArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray2OfBoundedSurface;
class PColPGeom_HArray2OfBoundedSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBoundedSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBoundedSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_PGeom_BoundedSurface &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_PGeom_BoundedSurface &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBoundedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBoundedSurfacemyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBoundedSurfacemyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBoundedSurfacemyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBoundedSurfacemyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBoundedSurfacemyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBoundedSurfacemyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBoundedSurfacemyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBoundedSurfacemyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray2OfBoundedSurface & _CSFDB_GetPColPGeom_HArray2OfBoundedSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray2OfBoundedSurface {
	Handle_PColPGeom_HArray2OfBoundedSurface GetHandle() {
	return *(Handle_PColPGeom_HArray2OfBoundedSurface*) &$self;
	}
};
%extend PColPGeom_HArray2OfBoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray2OfBoundedSurface {
	~PColPGeom_HArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve(const Handle_PGeom_Curve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_Curve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve\n");}
	}
};


%nodefaultctor PColPGeom_HArray1OfBoundedCurve;
class PColPGeom_HArray1OfBoundedCurve : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_PGeom_BoundedCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BoundedCurve &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom_HArray1OfBoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBoundedCurveLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBoundedCurveLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray1OfBoundedCurveUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray1OfBoundedCurveUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray1OfBoundedCurve & _CSFDB_GetPColPGeom_HArray1OfBoundedCurveData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray1OfBoundedCurve {
	Handle_PColPGeom_HArray1OfBoundedCurve GetHandle() {
	return *(Handle_PColPGeom_HArray1OfBoundedCurve*) &$self;
	}
};
%extend PColPGeom_HArray1OfBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray1OfBoundedCurve {
	~PColPGeom_HArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfSurface;
class PColPGeom_FieldOfHArray1OfSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfSurface(const PColPGeom_FieldOfHArray1OfSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_Surface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_Surface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfSurface {
	~PColPGeom_FieldOfHArray1OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray2OfBSplineSurface;
class PColPGeom_HArray2OfBSplineSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBSplineSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBSplineSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_PGeom_BSplineSurface &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_PGeom_BSplineSurface &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Handle_PGeom_BSplineSurface Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBSplineSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray2OfBSplineSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBSplineSurfacemyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBSplineSurfacemyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBSplineSurfacemyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBSplineSurfacemyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBSplineSurfacemyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBSplineSurfacemyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfBSplineSurfacemyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfBSplineSurfacemyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray2OfBSplineSurface & _CSFDB_GetPColPGeom_HArray2OfBSplineSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray2OfBSplineSurface {
	Handle_PColPGeom_HArray2OfBSplineSurface GetHandle() {
	return *(Handle_PColPGeom_HArray2OfBSplineSurface*) &$self;
	}
};
%extend PColPGeom_HArray2OfBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray2OfBSplineSurface {
	~PColPGeom_HArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfBoundedSurface;
class PColPGeom_FieldOfHArray1OfBoundedSurface : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedSurface(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedSurface(const PColPGeom_FieldOfHArray1OfBoundedSurface &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfBoundedSurface &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BoundedSurface &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfBoundedSurface {
	~PColPGeom_FieldOfHArray1OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_HArray2OfSurface;
class PColPGeom_HArray2OfSurface : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColPGeom_HArray2OfSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColPGeom_HArray2OfSurface(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_PGeom_Surface &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_PGeom_Surface &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColPGeom_HArray2OfSurface();
		%feature("autodoc", "1");
		PColPGeom_HArray2OfSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfSurfacemyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfSurfacemyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfSurfacemyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfSurfacemyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfSurfacemyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfSurfacemyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColPGeom_HArray2OfSurfacemyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_HArray2OfSurfacemyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColPGeom_FieldOfHArray2OfSurface & _CSFDB_GetPColPGeom_HArray2OfSurfaceData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_HArray2OfSurface {
	Handle_PColPGeom_HArray2OfSurface GetHandle() {
	return *(Handle_PColPGeom_HArray2OfSurface*) &$self;
	}
};
%extend PColPGeom_HArray2OfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_HArray2OfSurface {
	~PColPGeom_HArray2OfSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_HArray2OfSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfBoundedCurve;
class PColPGeom_FieldOfHArray1OfBoundedCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBoundedCurve(const PColPGeom_FieldOfHArray1OfBoundedCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfBoundedCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BoundedCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfBoundedCurve {
	~PColPGeom_FieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve;
class PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Handle_PGeom_BoundedCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_BoundedCurve _CSFDB_GetPColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurvemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurvemyValue(const Handle_PGeom_BoundedCurve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve GetHandle() {
	return *(Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve*) &$self;
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve {
	~PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BoundedSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface;
class PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface(const Handle_PGeom_BSplineSurface &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BSplineSurface &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface {
	~PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface\n");}
	}
};


%nodefaultctor PColPGeom_FieldOfHArray1OfBezierCurve;
class PColPGeom_FieldOfHArray1OfBezierCurve : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBezierCurve(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColPGeom_FieldOfHArray1OfBezierCurve(const PColPGeom_FieldOfHArray1OfBezierCurve &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColPGeom_FieldOfHArray1OfBezierCurve &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PGeom_BezierCurve &Value);
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PGeom_BezierCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PColPGeom_FieldOfHArray1OfBezierCurve {
	~PColPGeom_FieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_FieldOfHArray1OfBezierCurve\n");}
	}
};


%nodefaultctor PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve;
class PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve {
	public:
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve();
		%feature("autodoc", "1");
		PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve(const Handle_PGeom_BezierCurve &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PGeom_BezierCurve &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve {
	~PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve\n");}
	}
};
