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
%module AppCont

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


%include AppCont_dependencies.i


%include AppCont_headers.i




%nodefaultctor AppCont_FitFunction;
class AppCont_FitFunction {
	public:
		%feature("autodoc", "1");
		~AppCont_FitFunction();
		%feature("autodoc", "1");
		AppCont_FitFunction(const AppCont_Function &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc", "1");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};

%nodefaultctor AppCont_FunctionTool2d;
class AppCont_FunctionTool2d {
	public:
		%feature("autodoc", "1");
		~AppCont_FunctionTool2d();
		%feature("autodoc", "1");
		AppCont_FunctionTool2d();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};

%nodefaultctor AppCont_Function;
class AppCont_Function {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;

};

%nodefaultctor AppCont_Function2d;
class AppCont_Function2d {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;

};

%nodefaultctor AppCont_FunctionTool;
class AppCont_FunctionTool {
	public:
		%feature("autodoc", "1");
		~AppCont_FunctionTool();
		%feature("autodoc", "1");
		AppCont_FunctionTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};

%nodefaultctor AppCont_FitFunction2d;
class AppCont_FitFunction2d {
	public:
		%feature("autodoc", "1");
		~AppCont_FitFunction2d();
		%feature("autodoc", "1");
		AppCont_FitFunction2d(const AppCont_Function2d &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc", "1");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};