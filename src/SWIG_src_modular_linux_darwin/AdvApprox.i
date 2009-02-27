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
%module AdvApprox

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


%include AdvApprox_dependencies.i


%include AdvApprox_headers.i




%nodefaultctor AdvApprox_ApproxAFunction;
class AdvApprox_ApproxAFunction {
	public:
		%feature("autodoc", "1");
		~AdvApprox_ApproxAFunction();
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
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor AdvApprox_Cutting;
class AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};

%nodefaultctor AdvApprox_PrefAndRec;
class AdvApprox_PrefAndRec : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefAndRec(const TColStd_Array1OfReal &RecomendedCut, const TColStd_Array1OfReal &PrefferedCut, const Standard_Real Weight=5);
		%feature("autodoc", "1");
		virtual		~AdvApprox_PrefAndRec();

};

%nodefaultctor AdvApprox_PrefCutting;
class AdvApprox_PrefCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefCutting(const TColStd_Array1OfReal &CutPnts);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		~AdvApprox_PrefCutting();

};

%nodefaultctor AdvApprox_DichoCutting;
class AdvApprox_DichoCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_DichoCutting();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		~AdvApprox_DichoCutting();

};

%nodefaultctor AdvApprox_SimpleApprox;
class AdvApprox_SimpleApprox {
	public:
		%feature("autodoc", "1");
		~AdvApprox_SimpleApprox();
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
		void Dump(Standard_OStream & o) const;

};