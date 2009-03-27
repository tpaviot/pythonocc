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
%module Sweep

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include Sweep_dependencies.i


%include Sweep_headers.i




%nodefaultctor Sweep_NumShape;
class Sweep_NumShape {
	public:
		%feature("autodoc", "1");
		Sweep_NumShape();
		%feature("autodoc", "1");
		Sweep_NumShape(const Standard_Integer Index, const TopAbs_ShapeEnum Type, const Standard_Boolean Closed=0, const Standard_Boolean BegInf=0, const Standard_Boolean EndInf=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer Index, const TopAbs_ShapeEnum Type, const Standard_Boolean Closed=0, const Standard_Boolean BegInf=0, const Standard_Boolean EndInf=0);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Boolean BegInfinite() const;
		%feature("autodoc", "1");
		Standard_Boolean EndInfinite() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%extend Sweep_NumShape {
	~Sweep_NumShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Sweep_NumShape\n");}
	}
};

%nodefaultctor Sweep_NumShapeTool;
class Sweep_NumShapeTool {
	public:
		%feature("autodoc", "1");
		Sweep_NumShapeTool(const Sweep_NumShape &aShape);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		Sweep_NumShape Shape(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstVertex() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastVertex() const;
		%feature("autodoc", "1");
		Sweep_NumShape FirstVertex() const;
		%feature("autodoc", "1");
		Sweep_NumShape LastVertex() const;

};
%extend Sweep_NumShapeTool {
	~Sweep_NumShapeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Sweep_NumShapeTool\n");}
	}
};

%nodefaultctor Sweep_NumShapeIterator;
class Sweep_NumShapeIterator {
	public:
		%feature("autodoc", "1");
		Sweep_NumShapeIterator();
		%feature("autodoc", "1");
		void Init(const Sweep_NumShape &aShape);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Sweep_NumShape & Value() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%extend Sweep_NumShapeIterator {
	~Sweep_NumShapeIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Sweep_NumShapeIterator\n");}
	}
};