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
%module Geom2dLProp

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


%include Geom2dLProp_dependencies.i


%include Geom2dLProp_headers.i




%nodefaultctor Geom2dLProp_NumericCurInf2d;
class Geom2dLProp_NumericCurInf2d {
	public:
		%feature("autodoc", "1");
		~Geom2dLProp_NumericCurInf2d();
		%feature("autodoc", "1");
		Geom2dLProp_NumericCurInf2d();
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C, const Standard_Real UMin, const Standard_Real UMax, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C, const Standard_Real UMin, const Standard_Real UMax, LProp_CurAndInf & Result);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};

%nodefaultctor Geom2dLProp_FCurNulOfNumericCurInf2d;
class Geom2dLProp_FCurNulOfNumericCurInf2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_FCurNulOfNumericCurInf2d(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Geom2dLProp_FCurNulOfNumericCurInf2d();

};

%nodefaultctor Geom2dLProp_Curve2dTool;
class Geom2dLProp_Curve2dTool {
	public:
		%feature("autodoc", "1");
		~Geom2dLProp_Curve2dTool();
		%feature("autodoc", "1");
		Geom2dLProp_Curve2dTool();
		%feature("autodoc", "1");
		void Value(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void D1(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1);
		%feature("autodoc", "1");
		void D2(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc", "1");
		void D3(const Handle_Geom2d_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Geom2d_Curve &C);

};

%nodefaultctor Geom2dLProp_CurAndInf2d;
class Geom2dLProp_CurAndInf2d : public LProp_CurAndInf {
	public:
		%feature("autodoc", "1");
		~Geom2dLProp_CurAndInf2d();
		%feature("autodoc", "1");
		Geom2dLProp_CurAndInf2d();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void PerformCurExt(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void PerformInf(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};

%nodefaultctor Geom2dLProp_CLProps2d;
class Geom2dLProp_CLProps2d {
	public:
		%feature("autodoc", "1");
		~Geom2dLProp_CLProps2d();
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Handle_Geom2d_Curve &C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Handle_Geom2d_Curve &C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Geom2dLProp_CLProps2d(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		const gp_Vec2d & D1();
		%feature("autodoc", "1");
		const gp_Vec2d & D2();
		%feature("autodoc", "1");
		const gp_Vec2d & D3();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentDefined();
		%feature("autodoc", "1");
		void Tangent(gp_Dir2d & D);
		%feature("autodoc", "1");
		Standard_Real Curvature();
		%feature("autodoc", "1");
		void Normal(gp_Dir2d & N);
		%feature("autodoc", "1");
		void CentreOfCurvature(gp_Pnt2d & P);

};

%nodefaultctor Geom2dLProp_FCurExtOfNumericCurInf2d;
class Geom2dLProp_FCurExtOfNumericCurInf2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dLProp_FCurExtOfNumericCurInf2d(const Handle_Geom2d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsMinKC(const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		~Geom2dLProp_FCurExtOfNumericCurInf2d();

};