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
%module Blend

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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


%include Blend_dependencies.i


%include Blend_headers.i


enum Blend_Status {
	Blend_StepTooLarge,
	Blend_StepTooSmall,
	Blend_Backward,
	Blend_SamePoints,
	Blend_OnRst1,
	Blend_OnRst2,
	Blend_OnRst12,
	Blend_OK,
	};

enum Blend_DecrochStatus {
	Blend_NoDecroch,
	Blend_DecrochRst1,
	Blend_DecrochRst2,
	Blend_DecrochBoth,
	};



%nodefaultctor Handle_Blend_SequenceNodeOfSequenceOfPoint;
class Handle_Blend_SequenceNodeOfSequenceOfPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Blend_SequenceNodeOfSequenceOfPoint();
		%feature("autodoc", "1");
		Handle_Blend_SequenceNodeOfSequenceOfPoint(const Handle_Blend_SequenceNodeOfSequenceOfPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Blend_SequenceNodeOfSequenceOfPoint(const Blend_SequenceNodeOfSequenceOfPoint *anItem);
		%feature("autodoc", "1");
		Handle_Blend_SequenceNodeOfSequenceOfPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Blend_SequenceNodeOfSequenceOfPoint {
	Blend_SequenceNodeOfSequenceOfPoint* GetObject() {
	return (Blend_SequenceNodeOfSequenceOfPoint*)$self->Access();
	}
};
%extend Handle_Blend_SequenceNodeOfSequenceOfPoint {
	~Handle_Blend_SequenceNodeOfSequenceOfPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Blend_SequenceNodeOfSequenceOfPoint\n");}
	}
};

%nodefaultctor Blend_SurfCurvFuncInv;
class Blend_SurfCurvFuncInv : public math_FunctionSetWithDerivatives {
	public:
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
		virtual		void Set(const Handle_Adaptor2d_HCurve2d &Rst);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%extend Blend_SurfCurvFuncInv {
	~Blend_SurfCurvFuncInv() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_SurfCurvFuncInv\n");}
	}
};

%nodefaultctor Blend_SurfPointFuncInv;
class Blend_SurfPointFuncInv : public math_FunctionSetWithDerivatives {
	public:
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
		virtual		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%extend Blend_SurfPointFuncInv {
	~Blend_SurfPointFuncInv() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_SurfPointFuncInv\n");}
	}
};

%nodefaultctor Blend_AppFunction;
class Blend_AppFunction : public math_FunctionSetWithDerivatives {
	public:
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
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Blend_Point &P) const;

};
%extend Blend_AppFunction {
	~Blend_AppFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_AppFunction\n");}
	}
};

%nodefaultctor Blend_CSFunction;
class Blend_CSFunction : public Blend_AppFunction {
	public:
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnC() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2d() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnC() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U, const Standard_Real V, gp_Vec & TgS, gp_Vec & NormS) const;

};
%extend Blend_CSFunction {
	~Blend_CSFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_CSFunction\n");}
	}
};

%nodefaultctor Blend_RstRstFunction;
class Blend_RstRstFunction : public Blend_AppFunction {
	public:
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
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst1() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Blend_DecrochStatus Decroch(const math_Vector &Sol, gp_Vec & NRst1, gp_Vec & TgRst1, gp_Vec & NRst2, gp_Vec & TgRst2) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);

};
%extend Blend_RstRstFunction {
	~Blend_RstRstFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_RstRstFunction\n");}
	}
};

%nodefaultctor Blend_CurvPointFuncInv;
class Blend_CurvPointFuncInv : public math_FunctionSetWithDerivatives {
	public:
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
		virtual		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%extend Blend_CurvPointFuncInv {
	~Blend_CurvPointFuncInv() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_CurvPointFuncInv\n");}
	}
};

%nodefaultctor Blend_SequenceOfPoint;
class Blend_SequenceOfPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Blend_SequenceOfPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Blend_SequenceOfPoint & Assign(const Blend_SequenceOfPoint &Other);
		%feature("autodoc", "1");
		void Append(const Blend_Point &T);
		%feature("autodoc", "1");
		void Append(Blend_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void Prepend(const Blend_Point &T);
		%feature("autodoc", "1");
		void Prepend(Blend_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Blend_Point &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Blend_SequenceOfPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Blend_Point &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Blend_SequenceOfPoint & S);
		%feature("autodoc", "1");
		const Blend_Point & First() const;
		%feature("autodoc", "1");
		const Blend_Point & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Blend_SequenceOfPoint & S);
		%feature("autodoc", "1");
		const Blend_Point & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Blend_Point & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Blend_Point &I);
		%feature("autodoc", "1");
		Blend_Point & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Blend_Point & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Blend_SequenceOfPoint {
	~Blend_SequenceOfPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_SequenceOfPoint\n");}
	}
};

%nodefaultctor Blend_FuncInv;
class Blend_FuncInv : public math_FunctionSetWithDerivatives {
	public:
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
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%extend Blend_FuncInv {
	~Blend_FuncInv() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_FuncInv\n");}
	}
};

%nodefaultctor Blend_SequenceNodeOfSequenceOfPoint;
class Blend_SequenceNodeOfSequenceOfPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Blend_SequenceNodeOfSequenceOfPoint(const Blend_Point &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Blend_Point & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Blend_SequenceNodeOfSequenceOfPoint {
	Handle_Blend_SequenceNodeOfSequenceOfPoint GetHandle() {
	return *(Handle_Blend_SequenceNodeOfSequenceOfPoint*) &$self;
	}
};
%extend Blend_SequenceNodeOfSequenceOfPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Blend_SequenceNodeOfSequenceOfPoint {
	~Blend_SequenceNodeOfSequenceOfPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_SequenceNodeOfSequenceOfPoint\n");}
	}
};

%nodefaultctor Blend_Function;
class Blend_Function : public Blend_AppFunction {
	public:
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
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);

};
%extend Blend_Function {
	~Blend_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_Function\n");}
	}
};

%nodefaultctor Blend_SurfRstFunction;
class Blend_SurfRstFunction : public Blend_AppFunction {
	public:
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
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & Pnt2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Decroch(const math_Vector &Sol, gp_Vec & NS, gp_Vec & TgS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);

};
%extend Blend_SurfRstFunction {
	~Blend_SurfRstFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_SurfRstFunction\n");}
	}
};

%nodefaultctor Blend_Point;
class Blend_Point {
	public:
		%feature("autodoc", "1");
		Blend_Point();
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pts, const gp_Pnt &Ptc, const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, const gp_Vec &Tgs, const gp_Vec &Tgc, const gp_Vec2d &Tg2d);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pts, const gp_Pnt &Ptc, const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC1, const Standard_Real PC2, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		Blend_Point(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC1, const Standard_Real PC2);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pts, const gp_Pnt &Ptc, const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, const gp_Vec &Tgs, const gp_Vec &Tgc, const gp_Vec2d &Tg2d);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pts, const gp_Pnt &Ptc, const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC1, const Standard_Real PC2, const gp_Vec &Tg1, const gp_Vec &Tg2, const gp_Vec2d &Tg12d, const gp_Vec2d &Tg22d);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real PC1, const Standard_Real PC2);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt1, const gp_Pnt &Pt2, const Standard_Real Param, const Standard_Real PC1, const Standard_Real PC2);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		void ParametersOnS1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ParametersOnS2(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		gp_Vec2d Tangent2dOnS1() const;
		%feature("autodoc", "1");
		gp_Vec2d Tangent2dOnS2() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnC() const;
		%feature("autodoc", "1");
		void ParametersOnS(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnC() const;
		%feature("autodoc", "1");
		gp_Vec2d Tangent2d() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnC1() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnC2() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnC1() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnC2() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnC1() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnC2() const;

};
%extend Blend_Point {
	~Blend_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Blend_Point\n");}
	}
};