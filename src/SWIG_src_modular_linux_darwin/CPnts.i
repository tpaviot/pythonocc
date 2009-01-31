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
%module CPnts

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


%include CPnts_dependencies.i


%include CPnts_headers.i




%nodefaultctor CPnts_AbscissaPoint;
class CPnts_AbscissaPoint {
	public:
		%feature("autodoc", "1");
		~CPnts_AbscissaPoint();
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Length(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint();
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor3d_Curve &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		CPnts_AbscissaPoint(const Adaptor2d_Curve2d &C, const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Init(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void AdvPerform(const Standard_Real Abscissa, const Standard_Real U0, const Standard_Real Ui, const Standard_Real Resolution);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real P);

};

%nodefaultctor CPnts_UniformDeflection;
class CPnts_UniformDeflection {
	public:
		%feature("autodoc", "1");
		~CPnts_UniformDeflection();
		%feature("autodoc", "1");
		CPnts_UniformDeflection();
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		CPnts_UniformDeflection(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Deflection, const Standard_Real U1, const Standard_Real U2, const Standard_Real Resolution, const Standard_Boolean WithControl);
		%feature("autodoc", "1");
		Standard_Boolean IsAllDone() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;

};

%nodefaultctor CPnts_MyGaussFunction;
class CPnts_MyGaussFunction : public math_Function {
	public:
		%feature("autodoc", "1");
		~CPnts_MyGaussFunction();
		%feature("autodoc", "1");
		CPnts_MyGaussFunction();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

};

%nodefaultctor CPnts_MyRootFunction;
class CPnts_MyRootFunction : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CPnts_MyRootFunction();
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L);
		%feature("autodoc", "1");
		void Init(const Standard_Real X0, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~CPnts_MyRootFunction();

};