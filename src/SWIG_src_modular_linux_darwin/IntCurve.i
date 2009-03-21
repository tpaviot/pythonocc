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
%module IntCurve

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


%include IntCurve_dependencies.i


%include IntCurve_headers.i




%nodefaultctor IntCurve_PConicTool;
class IntCurve_PConicTool {
	public:
		%feature("autodoc", "1");
		IntCurve_PConicTool();
		%feature("autodoc", "1");
		Standard_Real EpsX(const IntCurve_PConic &C);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const IntCurve_PConic &C);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const IntCurve_PConic &C, const Standard_Real U0, const Standard_Real U1);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const IntCurve_PConic &C, const Standard_Real X);
		%feature("autodoc", "1");
		void D1(const IntCurve_PConic &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		void D2(const IntCurve_PConic &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);

};
%extend IntCurve_PConicTool {
	~IntCurve_PConicTool() {
	printf("Call custom destructor for instance of IntCurve_PConicTool\n");
	}
};

%nodefaultctor IntCurve_MyImpParToolOfIntImpConicParConic;
class IntCurve_MyImpParToolOfIntImpConicParConic : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		IntCurve_MyImpParToolOfIntImpConicParConic(const IntCurve_IConicTool &IT, const IntCurve_PConic &PC);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend IntCurve_MyImpParToolOfIntImpConicParConic {
	~IntCurve_MyImpParToolOfIntImpConicParConic() {
	printf("Call custom destructor for instance of IntCurve_MyImpParToolOfIntImpConicParConic\n");
	}
};

%nodefaultctor IntCurve_IntImpConicParConic;
class IntCurve_IntImpConicParConic : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		IntCurve_IntImpConicParConic();
		%feature("autodoc", "1");
		IntCurve_IntImpConicParConic(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const IntCurve_PConic &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const IntCurve_PConic &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real FindU(const Standard_Real parameter, gp_Pnt2d & point, const IntCurve_PConic &TheParCurev, const IntCurve_IConicTool &TheImpTool) const;
		%feature("autodoc", "1");
		Standard_Real FindV(const Standard_Real parameter, gp_Pnt2d & point, const IntCurve_IConicTool &TheImpTool, const IntCurve_PConic &ParCurve, const IntRes2d_Domain &TheParCurveDomain, const Standard_Real V0, const Standard_Real V1, const Standard_Real Tolerance) const;
		%feature("autodoc", "1");
		void And_Domaine_Objet1_Intersections(const IntCurve_IConicTool &TheImpTool, const IntCurve_PConic &TheParCurve, const IntRes2d_Domain &TheImpCurveDomain, const IntRes2d_Domain &TheParCurveDomain, Standard_Integer & NbResultats, TColStd_Array1OfReal & Inter2_And_Domain2, TColStd_Array1OfReal & Inter1, TColStd_Array1OfReal & Resultat1, TColStd_Array1OfReal & Resultat2, const Standard_Real EpsNul) const;

};
%extend IntCurve_IntImpConicParConic {
	~IntCurve_IntImpConicParConic() {
	printf("Call custom destructor for instance of IntCurve_IntImpConicParConic\n");
	}
};

%nodefaultctor IntCurve_IntConicConic;
class IntCurve_IntConicConic : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		IntCurve_IntConicConic();
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Lin2d &L1, const IntRes2d_Domain &D1, const gp_Lin2d &L2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L1, const IntRes2d_Domain &D1, const gp_Lin2d &L2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Lin2d &L1, const IntRes2d_Domain &D1, const gp_Circ2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Circ2d &C, const IntRes2d_Domain &DC, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Elips2d &E, const IntRes2d_Domain &DE, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Elips2d &E, const IntRes2d_Domain &DE, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const IntRes2d_Domain &DL, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Circ2d &C1, const IntRes2d_Domain &D1, const gp_Circ2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C1, const IntRes2d_Domain &D1, const gp_Circ2d &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Elips2d &E, const IntRes2d_Domain &DE, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Elips2d &E, const IntRes2d_Domain &DE, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d &C, const IntRes2d_Domain &DC, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Elips2d &E1, const IntRes2d_Domain &D1, const gp_Elips2d &E2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d &E1, const IntRes2d_Domain &D1, const gp_Elips2d &E2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Elips2d &E, const IntRes2d_Domain &DE, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d &E, const IntRes2d_Domain &DE, const gp_Parab2d &P, const IntRes2d_Domain &DP, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Elips2d &E, const IntRes2d_Domain &DE, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d &E, const IntRes2d_Domain &DE, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Parab2d &P1, const IntRes2d_Domain &D1, const gp_Parab2d &P2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d &P1, const IntRes2d_Domain &D1, const gp_Parab2d &P2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Parab2d &P, const IntRes2d_Domain &DP, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d &P, const IntRes2d_Domain &DP, const gp_Hypr2d &H, const IntRes2d_Domain &DH, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntCurve_IntConicConic(const gp_Hypr2d &H1, const IntRes2d_Domain &DH1, const gp_Hypr2d &H2, const IntRes2d_Domain &DH2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d &H1, const IntRes2d_Domain &D1, const gp_Hypr2d &H2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);

};
%extend IntCurve_IntConicConic {
	~IntCurve_IntConicConic() {
	printf("Call custom destructor for instance of IntCurve_IntConicConic\n");
	}
};

%nodefaultctor IntCurve_IConicTool;
class IntCurve_IConicTool {
	public:
		%feature("autodoc", "1");
		IntCurve_IConicTool();
		%feature("autodoc", "1");
		IntCurve_IConicTool(const IntCurve_IConicTool &IT);
		%feature("autodoc", "1");
		IntCurve_IConicTool(const gp_Elips2d &E);
		%feature("autodoc", "1");
		IntCurve_IConicTool(const gp_Lin2d &L);
		%feature("autodoc", "1");
		IntCurve_IConicTool(const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntCurve_IConicTool(const gp_Parab2d &P);
		%feature("autodoc", "1");
		IntCurve_IConicTool(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Standard_Real X) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		gp_Vec2d GradDistance(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Real FindParameter(const gp_Pnt2d &P) const;

};
%extend IntCurve_IConicTool {
	~IntCurve_IConicTool() {
	printf("Call custom destructor for instance of IntCurve_IConicTool\n");
	}
};

%nodefaultctor IntCurve_ProjectOnPConicTool;
class IntCurve_ProjectOnPConicTool {
	public:
		%feature("autodoc", "1");
		IntCurve_ProjectOnPConicTool();
		%feature("autodoc", "1");
		Standard_Real FindParameter(const IntCurve_PConic &C, const gp_Pnt2d &Pnt, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real FindParameter(const IntCurve_PConic &C, const gp_Pnt2d &Pnt, const Standard_Real LowParameter, const Standard_Real HighParameter, const Standard_Real Tol);

};
%extend IntCurve_ProjectOnPConicTool {
	~IntCurve_ProjectOnPConicTool() {
	printf("Call custom destructor for instance of IntCurve_ProjectOnPConicTool\n");
	}
};

%nodefaultctor IntCurve_PConic;
class IntCurve_PConic {
	public:
		%feature("autodoc", "1");
		IntCurve_PConic(const IntCurve_PConic &PC);
		%feature("autodoc", "1");
		IntCurve_PConic(const gp_Elips2d &E);
		%feature("autodoc", "1");
		IntCurve_PConic(const gp_Circ2d &C);
		%feature("autodoc", "1");
		IntCurve_PConic(const gp_Parab2d &P);
		%feature("autodoc", "1");
		IntCurve_PConic(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		IntCurve_PConic(const gp_Lin2d &L);
		%feature("autodoc", "1");
		void SetEpsX(const Standard_Real EpsDist);
		%feature("autodoc", "1");
		void SetAccuracy(const Standard_Integer Nb);
		%feature("autodoc", "1");
		Standard_Integer Accuracy() const;
		%feature("autodoc", "1");
		Standard_Real EpsX() const;
		%feature("autodoc", "1");
		GeomAbs_CurveType TypeCurve() const;
		%feature("autodoc", "1");
		const gp_Ax22d & Axis2() const;
		%feature("autodoc", "1");
		Standard_Real Param1() const;
		%feature("autodoc", "1");
		Standard_Real Param2() const;

};
%extend IntCurve_PConic {
	~IntCurve_PConic() {
	printf("Call custom destructor for instance of IntCurve_PConic\n");
	}
};