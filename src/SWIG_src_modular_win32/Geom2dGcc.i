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
%module Geom2dGcc

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


%include Geom2dGcc_dependencies.i


%include Geom2dGcc_headers.i




%nodefaultctor Geom2dGcc_Circ2d2TanOn;
class Geom2dGcc_Circ2d2TanOn {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Circ2d2TanOn();
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real ParamOn);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d2TanOn &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2d2TanOn &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_FuncTOblOfMyL2dTanObl;
class Geom2dGcc_FuncTOblOfMyL2dTanObl : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTOblOfMyL2dTanObl(const Geom2dAdaptor_Curve &Curve, const gp_Dir2d &Dir);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Geom2dGcc_FuncTOblOfMyL2dTanObl();

};

%nodefaultctor Geom2dGcc_Circ2d3Tan;
class Geom2dGcc_Circ2d3Tan {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Circ2d3Tan();
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Geom2dGcc_QualifiedCurve &Qualified3, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Handle_Geom2d_Point &Point, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Standard_Real Tolerance, const Standard_Real Param1);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Handle_Geom2d_Point &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d3Tan &Circ, const Standard_Integer Rank1, const Standard_Integer Rank2, const Standard_Integer Rank3);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2, GccEnt_Position & Qualif3) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency3(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame3(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn;
class Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P1, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		void InitDerivative(const math_Vector &X, gp_Pnt2d & Point1, gp_Pnt2d & Point2, gp_Pnt2d & Point3, gp_Vec2d & Tan1, gp_Vec2d & Tan2, gp_Vec2d & Tan3, gp_Vec2d & D21, gp_Vec2d & D22, gp_Vec2d & D23);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		~Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn();

};

%nodefaultctor Geom2dGcc_QualifiedCurve;
class Geom2dGcc_QualifiedCurve {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_QualifiedCurve();
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve(const Geom2dAdaptor_Curve &Curve, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;

};

%nodefaultctor Geom2dGcc_MyCirc2dTanCen;
class Geom2dGcc_MyCirc2dTanCen {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyCirc2dTanCen();
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanCen(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Pcenter, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};

%nodefaultctor Geom2dGcc_FuncTCirCuOfMyL2d2Tan;
class Geom2dGcc_FuncTCirCuOfMyL2d2Tan : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCirCuOfMyL2d2Tan(const gp_Circ2d &Circ, const Geom2dAdaptor_Curve &Curv);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Geom2dGcc_FuncTCirCuOfMyL2d2Tan();

};

%nodefaultctor Geom2dGcc_MyQCurve;
class Geom2dGcc_MyQCurve {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyQCurve();
		%feature("autodoc", "1");
		Geom2dGcc_MyQCurve(const Geom2dAdaptor_Curve &Curve, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;

};

%nodefaultctor Geom2dGcc_FuncTCuPtOfMyL2d2Tan;
class Geom2dGcc_FuncTCuPtOfMyL2d2Tan : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuPtOfMyL2d2Tan(const Geom2dAdaptor_Curve &C, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Geom2dGcc_FuncTCuPtOfMyL2d2Tan();

};

%nodefaultctor Geom2dGcc_MyCurveTool;
class Geom2dGcc_MyCurveTool {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyCurveTool();
		%feature("autodoc", "1");
		Geom2dGcc_MyCurveTool();
		%feature("autodoc", "1");
		GeomAbs_CurveType TheType(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Lin2d Line(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Circ2d Circle(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Elips2d Ellipse(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Parab2d Parabola(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Hypr2d Hyperbola(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		Standard_Real EpsX(const Adaptor3d_OffsetCurve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Adaptor3d_OffsetCurve &C, const Standard_Real X);
		%feature("autodoc", "1");
		void D1(const Adaptor3d_OffsetCurve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		void D2(const Adaptor3d_OffsetCurve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		Standard_Boolean IsComposite(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		Standard_Integer GetIntervals(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		void GetInterval(const Adaptor3d_OffsetCurve &C, const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void SetCurrentInterval(Adaptor3d_OffsetCurve & C, const Standard_Integer Index);

};

%nodefaultctor Geom2dGcc_MyL2dTanObl;
class Geom2dGcc_MyL2dTanObl {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyL2dTanObl();
		%feature("autodoc", "1");
		Geom2dGcc_MyL2dTanObl(const Geom2dGcc_MyQCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real Param1, const Standard_Real TolAng, const Standard_Real Angle=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Intersection2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel2() const;

};

%nodefaultctor Geom2dGcc_Lin2d2Tan;
class Geom2dGcc_Lin2d2Tan {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Lin2d2Tan();
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Tolang, const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Tolang, const Standard_Real Param1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};

%nodefaultctor Geom2dGcc_MyCirc2d2TanRad;
class Geom2dGcc_MyCirc2d2TanRad {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyCirc2d2TanRad();
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_MyCirc2d2TanOn;
class Geom2dGcc_MyCirc2d2TanOn {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyCirc2d2TanOn();
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_Circ2dTanCen;
class Geom2dGcc_Circ2dTanCen {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Circ2dTanCen();
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanCen(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Pcenter, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_FuncTCuCuOfMyL2d2Tan;
class Geom2dGcc_FuncTCuCuOfMyL2d2Tan : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOfMyL2d2Tan(const Geom2dAdaptor_Curve &Curv1, const Geom2dAdaptor_Curve &Curv2);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOfMyL2d2Tan(const gp_Circ2d &Circ1, const Geom2dAdaptor_Curve &Curv2);
		%feature("autodoc", "1");
		void InitDerivative(const math_Vector &X, gp_Pnt2d & Point1, gp_Pnt2d & Point2, gp_Vec2d & Tan1, gp_Vec2d & Tan2, gp_Vec2d & D21, gp_Vec2d & D22);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & Deriv);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & Deriv);
		%feature("autodoc", "1");
		virtual		~Geom2dGcc_FuncTCuCuOfMyL2d2Tan();

};

%nodefaultctor Geom2dGcc_MyC2d2TanOn;
class Geom2dGcc_MyC2d2TanOn {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyC2d2TanOn();
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2() const;

};

%nodefaultctor Geom2dGcc_MyC2d3Tan;
class Geom2dGcc_MyC2d3Tan {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyC2d3Tan();
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const Standard_Real Param1, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point2, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2, GccEnt_Position & Qualif3) const;
		%feature("autodoc", "1");
		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency3(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame3() const;

};

%nodefaultctor Geom2dGcc_MyL2d2Tan;
class Geom2dGcc_MyL2d2Tan {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyL2d2Tan();
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Param1, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Param2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};

%nodefaultctor Geom2dGcc_MyCirc2dTanOnRad;
class Geom2dGcc_MyCirc2dTanOnRad {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_MyCirc2dTanOnRad();
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Lin2d &OnLine, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Circ2d &OnCirc, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const GccEnt_QualifiedCirc &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const GccEnt_QualifiedLin &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const gp_Pnt2d &Point1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_Circ2d2TanRad;
class Geom2dGcc_Circ2d2TanRad {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Circ2d2TanRad();
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d2TanRad &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2d2TanRad &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc_Lin2dTanObl;
class Geom2dGcc_Lin2dTanObl {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Lin2dTanObl();
		%feature("autodoc", "1");
		Geom2dGcc_Lin2dTanObl(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real TolAng, const Standard_Real Angle);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2dTanObl(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real TolAng, const Standard_Real Param1, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};

%nodefaultctor Geom2dGcc_CurveTool;
class Geom2dGcc_CurveTool {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_CurveTool();
		%feature("autodoc", "1");
		Geom2dGcc_CurveTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		Standard_Real EpsX(const Geom2dAdaptor_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Geom2dAdaptor_Curve &C, const Standard_Real X);
		%feature("autodoc", "1");
		void D1(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		void D2(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		void D3(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N, gp_Vec2d & dN);

};

%nodefaultctor Geom2dGcc_Circ2dTanOnRad;
class Geom2dGcc_Circ2dTanOnRad {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc_Circ2dTanOnRad();
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanOnRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanOnRad(const Handle_Geom2d_Point &Point1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2dTanOnRad &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2dTanOnRad &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};

%nodefaultctor Geom2dGcc;
class Geom2dGcc {
	public:
		%feature("autodoc", "1");
		~Geom2dGcc();
		%feature("autodoc", "1");
		Geom2dGcc();
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve Unqualified(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve Enclosing(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve Enclosed(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve Outside(const Geom2dAdaptor_Curve &Obj);

};