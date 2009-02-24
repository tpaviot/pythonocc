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
%module IntAna2d

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


%include IntAna2d_dependencies.i


%include IntAna2d_headers.i




%nodefaultctor IntAna2d_Conic;
class IntAna2d_Conic {
	public:
		%feature("autodoc", "1");
		~IntAna2d_Conic();
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Lin2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Parab2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Hypr2d &C);
		%feature("autodoc", "1");
		IntAna2d_Conic(const gp_Elips2d &C);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		gp_XY Grad(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		void ValAndGrad(const Standard_Real X, const Standard_Real Y, Standard_Real &OutValue, gp_XY & Grd) const;
		%feature("autodoc", "1");
		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void NewCoefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const gp_Ax2d &Axis) const;

};

%nodefaultctor IntAna2d_AnaIntersection;
class IntAna2d_AnaIntersection {
	public:
		%feature("autodoc", "1");
		~IntAna2d_AnaIntersection();
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection();
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L1, const gp_Lin2d &L2);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Circ2d &C1, const gp_Circ2d &C2);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L, const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Lin2d &L, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Circ2d &C, const IntAna2d_Conic &Co);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Elips2d &E, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Parab2d &P, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		IntAna2d_AnaIntersection(const gp_Hypr2d &H, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L1, const gp_Lin2d &L2);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C1, const gp_Circ2d &C2);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const gp_Circ2d &C);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C, const IntAna2d_Conic &Co);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d &E, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d &P, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d &H, const IntAna2d_Conic &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IdenticalElements() const;
		%feature("autodoc", "1");
		Standard_Boolean ParallelElements() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntAna2d_IntPoint & Point(const Standard_Integer N) const;

};

%nodefaultctor IntAna2d_IntPoint;
class IntAna2d_IntPoint {
	public:
		%feature("autodoc", "1");
		~IntAna2d_IntPoint();
		%feature("autodoc", "1");
		IntAna2d_IntPoint(const Standard_Real X, const Standard_Real Y, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		IntAna2d_IntPoint(const Standard_Real X, const Standard_Real Y, const Standard_Real U1);
		%feature("autodoc", "1");
		IntAna2d_IntPoint();
		%feature("autodoc", "1");
		virtual		void SetValue(const Standard_Real X, const Standard_Real Y, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		virtual		void SetValue(const Standard_Real X, const Standard_Real Y, const Standard_Real U1);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean SecondIsImplicit() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntAna2d_IntPointmyu1() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyu1(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetIntAna2d_IntPointmyu2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyu2(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetIntAna2d_IntPointmyp() const;
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetIntAna2d_IntPointmyimplicit() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIntAna2d_IntPointmyimplicit(const Standard_Boolean p);

};