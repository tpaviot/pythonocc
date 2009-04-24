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
%module AdvApprox

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


%include AdvApprox_dependencies.i


%include AdvApprox_headers.i




%nodefaultctor AdvApprox_ApproxAFunction;
class AdvApprox_ApproxAFunction {
	public:
		%feature("autodoc", "1");
		AdvApprox_ApproxAFunction(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Standard_Real First, const Standard_Real Last, const GeomAbs_Shape Continuity, const Standard_Integer MaxDeg, const Standard_Integer MaxSeg, const AdvApprox_EvaluatorFunction &Func);
		%feature("autodoc", "1");
		AdvApprox_ApproxAFunction(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Standard_Real First, const Standard_Real Last, const GeomAbs_Shape Continuity, const Standard_Integer MaxDeg, const Standard_Integer MaxSeg, const AdvApprox_EvaluatorFunction &Func, const AdvApprox_Cutting &CutTool);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal Poles1d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d Poles2d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt Poles() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles1d(const Standard_Integer Index, TColStd_Array1OfReal & P) const;
		%feature("autodoc", "1");
		void Poles2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & P) const;
		%feature("autodoc", "1");
		void Poles(const Standard_Integer Index, TColgp_Array1OfPnt & P) const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NumSubSpaces(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Multiplicities() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MaxError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AverageError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Standard_Real MaxError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real AverageError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend AdvApprox_ApproxAFunction {
	~AdvApprox_ApproxAFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_ApproxAFunction\n");}
	}
};


%nodefaultctor AdvApprox_Cutting;
class AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%extend AdvApprox_Cutting {
	~AdvApprox_Cutting() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_Cutting\n");}
	}
};


%nodefaultctor AdvApprox_PrefAndRec;
class AdvApprox_PrefAndRec : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefAndRec(const TColStd_Array1OfReal &RecomendedCut, const TColStd_Array1OfReal &PrefferedCut, const Standard_Real Weight=5);

};
%extend AdvApprox_PrefAndRec {
	~AdvApprox_PrefAndRec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_PrefAndRec\n");}
	}
};


%nodefaultctor AdvApprox_PrefCutting;
class AdvApprox_PrefCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefCutting(const TColStd_Array1OfReal &CutPnts);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%extend AdvApprox_PrefCutting {
	~AdvApprox_PrefCutting() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_PrefCutting\n");}
	}
};


%nodefaultctor AdvApprox_DichoCutting;
class AdvApprox_DichoCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_DichoCutting();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%extend AdvApprox_DichoCutting {
	~AdvApprox_DichoCutting() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_DichoCutting\n");}
	}
};


%nodefaultctor AdvApprox_SimpleApprox;
class AdvApprox_SimpleApprox {
	public:
		%feature("autodoc", "1");
		AdvApprox_SimpleApprox(const Standard_Integer TotalDimension, const Standard_Integer TotalNumSS, const GeomAbs_Shape Continuity, const Standard_Integer WorkDegree, const Standard_Integer NbGaussPoints, const Handle_PLib_JacobiPolynomial &JacobiBase, const AdvApprox_EvaluatorFunction &Func);
		%feature("autodoc", "1");
		void Perform(const TColStd_Array1OfInteger &LocalDimension, const TColStd_Array1OfReal &LocalTolerancesArray, const Standard_Real First, const Standard_Real Last, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Coefficients() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal FirstConstr() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal LastConstr() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal SomTab() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal DifTab() const;
		%feature("autodoc", "1");
		Standard_Real MaxError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real AverageError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend AdvApprox_SimpleApprox {
	~AdvApprox_SimpleApprox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AdvApprox_SimpleApprox\n");}
	}
};
