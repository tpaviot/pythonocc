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
%module TopTrans

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


%include TopTrans_dependencies.i


%include TopTrans_headers.i




%nodefaultctor TopTrans_CurveTransition;
class TopTrans_CurveTransition {
	public:
		%feature("autodoc", "1");
		TopTrans_CurveTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm, const Standard_Real Curv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Tang, const gp_Dir &Norm, const Standard_Real Curv, const TopAbs_Orientation S, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;

};
%extend TopTrans_CurveTransition {
	~TopTrans_CurveTransition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopTrans_CurveTransition\n");}
	}
};


%nodefaultctor TopTrans_Array2OfOrientation;
class TopTrans_Array2OfOrientation {
	public:
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const TopAbs_Orientation &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const TopAbs_Orientation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TopTrans_Array2OfOrientation & Assign(const TopTrans_Array2OfOrientation &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopAbs_Orientation &Value);
		%feature("autodoc", "1");
		const TopAbs_Orientation & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopAbs_Orientation & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend TopTrans_Array2OfOrientation {
	~TopTrans_Array2OfOrientation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopTrans_Array2OfOrientation\n");}
	}
};


%nodefaultctor TopTrans_SurfaceTransition;
class TopTrans_SurfaceTransition {
	public:
		%feature("autodoc", "1");
		TopTrans_SurfaceTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm, const gp_Dir &MaxD, const gp_Dir &MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Norm, const gp_Dir &MaxD, const gp_Dir &MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Norm, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;
		%feature("autodoc", "1");
		TopAbs_State GetBefore(const TopAbs_Orientation Tran);
		%feature("autodoc", "1");
		TopAbs_State GetAfter(const TopAbs_Orientation Tran);

};
%extend TopTrans_SurfaceTransition {
	~TopTrans_SurfaceTransition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopTrans_SurfaceTransition\n");}
	}
};
