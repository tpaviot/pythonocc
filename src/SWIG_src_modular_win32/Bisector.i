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
%module Bisector

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


%include Bisector_dependencies.i


%include Bisector_headers.i




%nodefaultctor Handle_Bisector_Curve;
class Handle_Bisector_Curve : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_Curve();
		%feature("autodoc", "1");
		Handle_Bisector_Curve(const Handle_Bisector_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_Curve(const Bisector_Curve *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_Curve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_Curve {
	Bisector_Curve* GetObject() {
	return (Bisector_Curve*)$self->Access();
	}
};
%extend Handle_Bisector_Curve {
	~Handle_Bisector_Curve() {
	printf("Call custom destructor for instance of Handle_Bisector_Curve\n");
	}
};

%nodefaultctor Handle_Bisector_BisecAna;
class Handle_Bisector_BisecAna : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna();
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna(const Handle_Bisector_BisecAna &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna(const Bisector_BisecAna *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecAna const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecAna {
	Bisector_BisecAna* GetObject() {
	return (Bisector_BisecAna*)$self->Access();
	}
};
%extend Handle_Bisector_BisecAna {
	~Handle_Bisector_BisecAna() {
	printf("Call custom destructor for instance of Handle_Bisector_BisecAna\n");
	}
};

%nodefaultctor Handle_Bisector_BisecCC;
class Handle_Bisector_BisecCC : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC();
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC(const Handle_Bisector_BisecCC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC(const Bisector_BisecCC *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecCC {
	Bisector_BisecCC* GetObject() {
	return (Bisector_BisecCC*)$self->Access();
	}
};
%extend Handle_Bisector_BisecCC {
	~Handle_Bisector_BisecCC() {
	printf("Call custom destructor for instance of Handle_Bisector_BisecCC\n");
	}
};

%nodefaultctor Handle_Bisector_BisecPC;
class Handle_Bisector_BisecPC : public Handle_Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC();
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC(const Handle_Bisector_BisecPC &aHandle);
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC(const Bisector_BisecPC *anItem);
		%feature("autodoc", "1");
		Handle_Bisector_BisecPC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Bisector_BisecPC {
	Bisector_BisecPC* GetObject() {
	return (Bisector_BisecPC*)$self->Access();
	}
};
%extend Handle_Bisector_BisecPC {
	~Handle_Bisector_BisecPC() {
	printf("Call custom destructor for instance of Handle_Bisector_BisecPC\n");
	}
};

%nodefaultctor Bisector_Inter;
class Bisector_Inter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		~Bisector_Inter();
		%feature("autodoc", "1");
		Bisector_Inter();
		%feature("autodoc", "1");
		Bisector_Inter(const Bisector_Bisec &C1, const IntRes2d_Domain &D1, const Bisector_Bisec &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol, const Standard_Boolean ComunElement);
		%feature("autodoc", "1");
		void Perform(const Bisector_Bisec &C1, const IntRes2d_Domain &D1, const Bisector_Bisec &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol, const Standard_Boolean ComunElement);

};

%nodefaultctor Bisector_FunctionInter;
class Bisector_FunctionInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Bisector_FunctionInter();
		%feature("autodoc", "1");
		Bisector_FunctionInter(const Handle_Geom2d_Curve &C, const Handle_Bisector_Curve &Bis1, const Handle_Bisector_Curve &Bis2);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &C, const Handle_Bisector_Curve &Bis1, const Handle_Bisector_Curve &Bis2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Bisector_FunctionInter();

};

%nodefaultctor Bisector_Curve;
class Bisector_Curve : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_Curve {
	Handle_Bisector_Curve GetHandle() {
	return *(Handle_Bisector_Curve*) &$self;
	}
};
%extend Bisector_Curve {
	~Bisector_Curve() {
	printf("Call custom destructor for instance of Bisector_Curve\n");
	}
};

%nodefaultctor Bisector_BisecCC;
class Bisector_BisecCC : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecCC();
		%feature("autodoc", "1");
		Bisector_BisecCC(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const Standard_Real Side1, const Standard_Real Side2, const gp_Pnt2d &Origin, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const Standard_Real Side1, const Standard_Real Side2, const gp_Pnt2d &Origin, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Handle_Bisector_BisecCC ChangeGuide() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		GeomAbs_Shape IntervalContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueAndDist(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueByInt(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Real LinkBisCurve(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real LinkCurveBis(const Standard_Real U) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve(const Standard_Integer IndCurve) const;
		%feature("autodoc", "1");
		const Bisector_PolyBis & Polygon() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;

};
%extend Bisector_BisecCC {
	Handle_Bisector_BisecCC GetHandle() {
	return *(Handle_Bisector_BisecCC*) &$self;
	}
};
%extend Bisector_BisecCC {
	~Bisector_BisecCC() {
	printf("Call custom destructor for instance of Bisector_BisecCC\n");
	}
};

%nodefaultctor Bisector_BisecPC;
class Bisector_BisecPC : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecPC();
		%feature("autodoc", "1");
		Bisector_BisecPC(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d &P, const Standard_Real Side, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		Bisector_BisecPC(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d &P, const Standard_Real Side, const Standard_Real UMin, const Standard_Real UMax);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const gp_Pnt2d &P, const Standard_Real Side, const Standard_Real DistMax=500);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		GeomAbs_Shape IntervalContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;
		%feature("autodoc", "1");
		Standard_Real LinkBisCurve(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real LinkCurveBis(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_BisecPC {
	Handle_Bisector_BisecPC GetHandle() {
	return *(Handle_Bisector_BisecPC*) &$self;
	}
};
%extend Bisector_BisecPC {
	~Bisector_BisecPC() {
	printf("Call custom destructor for instance of Bisector_BisecPC\n");
	}
};

%nodefaultctor Bisector_BisecAna;
class Bisector_BisecAna : public Bisector_Curve {
	public:
		%feature("autodoc", "1");
		Bisector_BisecAna();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const Handle_Geom2d_Point &Pnt, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt, const Handle_Geom2d_Curve &Cu, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt1, const Handle_Geom2d_Point &Pnt2, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance=0.0, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_TrimmedCurve &bisector);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtStart() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsExtendAtEnd() const;
		%feature("autodoc", "1");
		void SetTrim(const Handle_Geom2d_Curve &Cu);
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real uf, const Standard_Real ul);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Geom2dCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOfStartPoint() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOfEndPoint() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalFirst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real IntervalLast(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Bisector_BisecAna {
	Handle_Bisector_BisecAna GetHandle() {
	return *(Handle_Bisector_BisecAna*) &$self;
	}
};
%extend Bisector_BisecAna {
	~Bisector_BisecAna() {
	printf("Call custom destructor for instance of Bisector_BisecAna\n");
	}
};

%nodefaultctor Bisector_PolyBis;
class Bisector_PolyBis {
	public:
		%feature("autodoc", "1");
		~Bisector_PolyBis();
		%feature("autodoc", "1");
		Bisector_PolyBis();
		%feature("autodoc", "1");
		void Append(const Bisector_PointOnBis &Point);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & First() const;
		%feature("autodoc", "1");
		const Bisector_PointOnBis & Last() const;
		%feature("autodoc", "1");
		Standard_Integer Interval(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d &T);

};

%nodefaultctor Bisector_PointOnBis;
class Bisector_PointOnBis {
	public:
		%feature("autodoc", "1");
		~Bisector_PointOnBis();
		%feature("autodoc", "1");
		Bisector_PointOnBis();
		%feature("autodoc", "1");
		Bisector_PointOnBis(const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamBis, const Standard_Real Distance, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		void ParamOnC1(const Standard_Real Param);
		%feature("autodoc", "1");
		void ParamOnC2(const Standard_Real Param);
		%feature("autodoc", "1");
		void ParamOnBis(const Standard_Real Param);
		%feature("autodoc", "1");
		void Distance(const Standard_Real Distance);
		%feature("autodoc", "1");
		void IsInfinite(const Standard_Boolean Infinite);
		%feature("autodoc", "1");
		void Point(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Real ParamOnC1() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnC2() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnBis() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite() const;
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor Bisector_Bisec;
class Bisector_Bisec {
	public:
		%feature("autodoc", "1");
		~Bisector_Bisec();
		%feature("autodoc", "1");
		Bisector_Bisec();
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu1, const Handle_Geom2d_Curve &Cu2, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Curve &Cu, const Handle_Geom2d_Point &Pnt, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt, const Handle_Geom2d_Curve &Cu, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom2d_Point &Pnt1, const Handle_Geom2d_Point &Pnt2, const gp_Pnt2d &P, const gp_Vec2d &V1, const gp_Vec2d &V2, const Standard_Real Sense, const Standard_Real Tolerance=0.0, const Standard_Boolean oncurve=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & ChangeValue();

};

%nodefaultctor Bisector;
class Bisector {
	public:
		%feature("autodoc", "1");
		~Bisector();
		%feature("autodoc", "1");
		Bisector();
		%feature("autodoc", "1");
		Standard_Boolean IsConvex(const Handle_Geom2d_Curve &Cu, const Standard_Real Sign);

};

%nodefaultctor Bisector_FunctionH;
class Bisector_FunctionH : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Bisector_FunctionH(const Handle_Geom2d_Curve &C2, const gp_Pnt2d &P1, const gp_Vec2d &T1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~Bisector_FunctionH();

};