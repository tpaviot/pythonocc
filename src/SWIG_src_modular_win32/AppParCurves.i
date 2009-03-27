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
%module AppParCurves

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


%include AppParCurves_dependencies.i


%include AppParCurves_headers.i


enum AppParCurves_Constraint {
	AppParCurves_NoConstraint,
	AppParCurves_PassPoint,
	AppParCurves_TangencyPoint,
	AppParCurves_CurvaturePoint,
	};



%nodefaultctor Handle_AppParCurves_HArray1OfMultiCurve;
class Handle_AppParCurves_HArray1OfMultiCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiCurve();
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiCurve(const Handle_AppParCurves_HArray1OfMultiCurve &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiCurve(const AppParCurves_HArray1OfMultiCurve *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_HArray1OfMultiCurve {
	AppParCurves_HArray1OfMultiCurve* GetObject() {
	return (AppParCurves_HArray1OfMultiCurve*)$self->Access();
	}
};
%extend Handle_AppParCurves_HArray1OfMultiCurve {
	~Handle_AppParCurves_HArray1OfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_HArray1OfMultiCurve\n");}
	}
};

%nodefaultctor Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve;
class Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve();
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve(const Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve(const AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve {
	AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve* GetObject() {
	return (AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve*)$self->Access();
	}
};
%extend Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve {
	~Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve\n");}
	}
};

%nodefaultctor Handle_AppParCurves_HArray1OfMultiBSpCurve;
class Handle_AppParCurves_HArray1OfMultiBSpCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiBSpCurve();
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiBSpCurve(const Handle_AppParCurves_HArray1OfMultiBSpCurve &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiBSpCurve(const AppParCurves_HArray1OfMultiBSpCurve *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiBSpCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_HArray1OfMultiBSpCurve {
	AppParCurves_HArray1OfMultiBSpCurve* GetObject() {
	return (AppParCurves_HArray1OfMultiBSpCurve*)$self->Access();
	}
};
%extend Handle_AppParCurves_HArray1OfMultiBSpCurve {
	~Handle_AppParCurves_HArray1OfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_HArray1OfMultiBSpCurve\n");}
	}
};

%nodefaultctor Handle_AppParCurves_HArray1OfMultiPoint;
class Handle_AppParCurves_HArray1OfMultiPoint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiPoint();
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiPoint(const Handle_AppParCurves_HArray1OfMultiPoint &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiPoint(const AppParCurves_HArray1OfMultiPoint *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfMultiPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_HArray1OfMultiPoint {
	AppParCurves_HArray1OfMultiPoint* GetObject() {
	return (AppParCurves_HArray1OfMultiPoint*)$self->Access();
	}
};
%extend Handle_AppParCurves_HArray1OfMultiPoint {
	~Handle_AppParCurves_HArray1OfMultiPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_HArray1OfMultiPoint\n");}
	}
};

%nodefaultctor Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve;
class Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve();
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve(const Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve(const AppParCurves_SequenceNodeOfSequenceOfMultiCurve *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve {
	AppParCurves_SequenceNodeOfSequenceOfMultiCurve* GetObject() {
	return (AppParCurves_SequenceNodeOfSequenceOfMultiCurve*)$self->Access();
	}
};
%extend Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve {
	~Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve\n");}
	}
};

%nodefaultctor Handle_AppParCurves_HArray1OfConstraintCouple;
class Handle_AppParCurves_HArray1OfConstraintCouple : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfConstraintCouple();
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfConstraintCouple(const Handle_AppParCurves_HArray1OfConstraintCouple &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfConstraintCouple(const AppParCurves_HArray1OfConstraintCouple *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_HArray1OfConstraintCouple const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_HArray1OfConstraintCouple {
	AppParCurves_HArray1OfConstraintCouple* GetObject() {
	return (AppParCurves_HArray1OfConstraintCouple*)$self->Access();
	}
};
%extend Handle_AppParCurves_HArray1OfConstraintCouple {
	~Handle_AppParCurves_HArray1OfConstraintCouple() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_HArray1OfConstraintCouple\n");}
	}
};

%nodefaultctor Handle_AppParCurves_SmoothCriterion;
class Handle_AppParCurves_SmoothCriterion : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppParCurves_SmoothCriterion();
		%feature("autodoc", "1");
		Handle_AppParCurves_SmoothCriterion(const Handle_AppParCurves_SmoothCriterion &aHandle);
		%feature("autodoc", "1");
		Handle_AppParCurves_SmoothCriterion(const AppParCurves_SmoothCriterion *anItem);
		%feature("autodoc", "1");
		Handle_AppParCurves_SmoothCriterion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppParCurves_SmoothCriterion {
	AppParCurves_SmoothCriterion* GetObject() {
	return (AppParCurves_SmoothCriterion*)$self->Access();
	}
};
%extend Handle_AppParCurves_SmoothCriterion {
	~Handle_AppParCurves_SmoothCriterion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AppParCurves_SmoothCriterion\n");}
	}
};

%nodefaultctor AppParCurves_MultiCurve;
class AppParCurves_MultiCurve {
	public:
		%feature("autodoc", "1");
		AppParCurves_MultiCurve();
		%feature("autodoc", "1");
		AppParCurves_MultiCurve(const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppParCurves_MultiCurve(const AppParCurves_Array1OfMultiPoint &tabMU);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetNbPoles(const Standard_Integer nbPoles);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiPoint &MPoint);
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer Dimension(const Standard_Integer CuIndex) const;
		%feature("autodoc", "1");
		void Curve(const Standard_Integer CuIndex, TColgp_Array1OfPnt & TabPnt) const;
		%feature("autodoc", "1");
		void Curve(const Standard_Integer CuIndex, TColgp_Array1OfPnt2d & TabPnt) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pole(const Standard_Integer CuIndex, const Standard_Integer Nieme) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & Pole2d(const Standard_Integer CuIndex, const Standard_Integer Nieme) const;
		%feature("autodoc", "1");
		void Transform(const Standard_Integer CuIndex, const Standard_Real x, const Standard_Real dx, const Standard_Real y, const Standard_Real dy, const Standard_Real z, const Standard_Real dz);
		%feature("autodoc", "1");
		void Transform2d(const Standard_Integer CuIndex, const Standard_Real x, const Standard_Real dx, const Standard_Real y, const Standard_Real dy);
		%feature("autodoc", "1");
		virtual		void Value(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt & Pt) const;
		%feature("autodoc", "1");
		virtual		void Value(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt2d & Pt) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt & Pt, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt2d & Pt, gp_Vec2d & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt & Pt, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Integer CuIndex, const Standard_Real U, gp_Pnt2d & Pt, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & o) const;

};
%extend AppParCurves_MultiCurve {
	~AppParCurves_MultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_MultiCurve\n");}
	}
};

%nodefaultctor AppParCurves_MultiBSpCurve;
class AppParCurves_MultiBSpCurve : public AppParCurves_MultiCurve {
	public:
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve();
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve(const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve(const AppParCurves_Array1OfMultiPoint &tabMU, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve(const AppParCurves_MultiCurve &SC, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		void SetKnots(const TColStd_Array1OfReal &theKnots);
		%feature("autodoc", "1");
		void SetMultiplicities(const TColStd_Array1OfInteger &theMults);
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Knots() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Multiplicities() const;

};
%extend AppParCurves_MultiBSpCurve {
	~AppParCurves_MultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_MultiBSpCurve\n");}
	}
};

%nodefaultctor AppParCurves_Array1OfMultiCurve;
class AppParCurves_Array1OfMultiCurve {
	public:
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiCurve(const AppParCurves_MultiCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiCurve & Assign(const AppParCurves_Array1OfMultiCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiCurve &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & operator()(const Standard_Integer Index);

};
%extend AppParCurves_Array1OfMultiCurve {
	~AppParCurves_Array1OfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_Array1OfMultiCurve\n");}
	}
};

%nodefaultctor AppParCurves_Array1OfMultiBSpCurve;
class AppParCurves_Array1OfMultiBSpCurve {
	public:
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiBSpCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiBSpCurve(const AppParCurves_MultiBSpCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiBSpCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiBSpCurve & Assign(const AppParCurves_Array1OfMultiBSpCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiBSpCurve &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & operator()(const Standard_Integer Index);

};
%extend AppParCurves_Array1OfMultiBSpCurve {
	~AppParCurves_Array1OfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_Array1OfMultiBSpCurve\n");}
	}
};

%nodefaultctor AppParCurves_ConstraintCouple;
class AppParCurves_ConstraintCouple {
	public:
		%feature("autodoc", "1");
		AppParCurves_ConstraintCouple();
		%feature("autodoc", "1");
		AppParCurves_ConstraintCouple(const Standard_Integer TheIndex, const AppParCurves_Constraint Cons);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint Constraint() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer TheIndex);
		%feature("autodoc", "1");
		void SetConstraint(const AppParCurves_Constraint Cons);

};
%extend AppParCurves_ConstraintCouple {
	~AppParCurves_ConstraintCouple() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_ConstraintCouple\n");}
	}
};

%nodefaultctor AppParCurves_SequenceNodeOfSequenceOfMultiCurve;
class AppParCurves_SequenceNodeOfSequenceOfMultiCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AppParCurves_SequenceNodeOfSequenceOfMultiCurve(const AppParCurves_MultiCurve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_SequenceNodeOfSequenceOfMultiCurve {
	Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve GetHandle() {
	return *(Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve*) &$self;
	}
};
%extend AppParCurves_SequenceNodeOfSequenceOfMultiCurve {
	~AppParCurves_SequenceNodeOfSequenceOfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_SequenceNodeOfSequenceOfMultiCurve\n");}
	}
};

%nodefaultctor AppParCurves_HArray1OfMultiCurve;
class AppParCurves_HArray1OfMultiCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiCurve(const Standard_Integer Low, const Standard_Integer Up, const AppParCurves_MultiCurve &V);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiCurve &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiCurve & Array1() const;
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_HArray1OfMultiCurve {
	Handle_AppParCurves_HArray1OfMultiCurve GetHandle() {
	return *(Handle_AppParCurves_HArray1OfMultiCurve*) &$self;
	}
};
%extend AppParCurves_HArray1OfMultiCurve {
	~AppParCurves_HArray1OfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_HArray1OfMultiCurve\n");}
	}
};

%nodefaultctor AppParCurves_SmoothCriterion;
class AppParCurves_SmoothCriterion : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void SetParameters(const Handle_TColStd_HArray1OfReal &Parameters);
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_FEmTool_Curve &C);
		%feature("autodoc", "1");
		virtual		void GetCurve(Handle_FEmTool_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void SetEstimation(const Standard_Real E1, const Standard_Real E2, const Standard_Real E3);
		%feature("autodoc", "1");
		virtual		Standard_Real & EstLength();
		%feature("autodoc", "1");
		virtual		void GetEstimation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_FEmTool_HAssemblyTable AssemblyTable() const;
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer QualityValues(const Standard_Real J1min, const Standard_Real J2min, const Standard_Real J3min, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void ErrorValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Element, const Standard_Integer Dimension1, const Standard_Integer Dimension2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Element, const Standard_Integer Dimension, math_Vector & G);
		%feature("autodoc", "1");
		virtual		void InputVector(const math_Vector &X, const Handle_FEmTool_HAssemblyTable &AssTable);
		%feature("autodoc", "1");
		virtual		void SetWeight(const Standard_Real QuadraticWeight, const Standard_Real QualityWeight, const Standard_Real percentJ1, const Standard_Real percentJ2, const Standard_Real percentJ3);
		%feature("autodoc", "1");
		virtual		void GetWeight(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void SetWeight(const TColStd_Array1OfReal &Weight);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_SmoothCriterion {
	Handle_AppParCurves_SmoothCriterion GetHandle() {
	return *(Handle_AppParCurves_SmoothCriterion*) &$self;
	}
};
%extend AppParCurves_SmoothCriterion {
	~AppParCurves_SmoothCriterion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_SmoothCriterion\n");}
	}
};

%nodefaultctor AppParCurves_MultiPoint;
class AppParCurves_MultiPoint {
	public:
		%feature("autodoc", "1");
		AppParCurves_MultiPoint();
		%feature("autodoc", "1");
		AppParCurves_MultiPoint(const Standard_Integer NbPoints, const Standard_Integer NbPoints2d);
		%feature("autodoc", "1");
		AppParCurves_MultiPoint(const TColgp_Array1OfPnt &tabP);
		%feature("autodoc", "1");
		AppParCurves_MultiPoint(const TColgp_Array1OfPnt2d &tabP2d);
		%feature("autodoc", "1");
		AppParCurves_MultiPoint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfPnt2d &tabP2d);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetPoint(const Standard_Integer Index, const gp_Pnt &Point);
		%feature("autodoc", "1");
		const gp_Pnt & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetPoint2d(const Standard_Integer Index, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		const gp_Pnt2d & Point2d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Dimension(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints2d() const;
		%feature("autodoc", "1");
		void Transform(const Standard_Integer CuIndex, const Standard_Real x, const Standard_Real dx, const Standard_Real y, const Standard_Real dy, const Standard_Real z, const Standard_Real dz);
		%feature("autodoc", "1");
		void Transform2d(const Standard_Integer CuIndex, const Standard_Real x, const Standard_Real dx, const Standard_Real y, const Standard_Real dy);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & o) const;

};
%extend AppParCurves_MultiPoint {
	~AppParCurves_MultiPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_MultiPoint\n");}
	}
};

%nodefaultctor AppParCurves_Array1OfConstraintCouple;
class AppParCurves_Array1OfConstraintCouple {
	public:
		%feature("autodoc", "1");
		AppParCurves_Array1OfConstraintCouple(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_Array1OfConstraintCouple(const AppParCurves_ConstraintCouple &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const AppParCurves_ConstraintCouple &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const AppParCurves_Array1OfConstraintCouple & Assign(const AppParCurves_Array1OfConstraintCouple &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_ConstraintCouple &Value);
		%feature("autodoc", "1");
		const AppParCurves_ConstraintCouple & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_ConstraintCouple & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_ConstraintCouple & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_ConstraintCouple & operator()(const Standard_Integer Index);

};
%extend AppParCurves_Array1OfConstraintCouple {
	~AppParCurves_Array1OfConstraintCouple() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_Array1OfConstraintCouple\n");}
	}
};

%nodefaultctor AppParCurves_SequenceOfMultiBSpCurve;
class AppParCurves_SequenceOfMultiBSpCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AppParCurves_SequenceOfMultiBSpCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AppParCurves_SequenceOfMultiBSpCurve & Assign(const AppParCurves_SequenceOfMultiBSpCurve &Other);
		%feature("autodoc", "1");
		void Append(const AppParCurves_MultiBSpCurve &T);
		%feature("autodoc", "1");
		void Append(AppParCurves_SequenceOfMultiBSpCurve & S);
		%feature("autodoc", "1");
		void Prepend(const AppParCurves_MultiBSpCurve &T);
		%feature("autodoc", "1");
		void Prepend(AppParCurves_SequenceOfMultiBSpCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AppParCurves_MultiBSpCurve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AppParCurves_SequenceOfMultiBSpCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AppParCurves_MultiBSpCurve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AppParCurves_SequenceOfMultiBSpCurve & S);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & First() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AppParCurves_SequenceOfMultiBSpCurve & S);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiBSpCurve &I);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend AppParCurves_SequenceOfMultiBSpCurve {
	~AppParCurves_SequenceOfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_SequenceOfMultiBSpCurve\n");}
	}
};

%nodefaultctor AppParCurves_SequenceOfMultiCurve;
class AppParCurves_SequenceOfMultiCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AppParCurves_SequenceOfMultiCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AppParCurves_SequenceOfMultiCurve & Assign(const AppParCurves_SequenceOfMultiCurve &Other);
		%feature("autodoc", "1");
		void Append(const AppParCurves_MultiCurve &T);
		%feature("autodoc", "1");
		void Append(AppParCurves_SequenceOfMultiCurve & S);
		%feature("autodoc", "1");
		void Prepend(const AppParCurves_MultiCurve &T);
		%feature("autodoc", "1");
		void Prepend(AppParCurves_SequenceOfMultiCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AppParCurves_MultiCurve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AppParCurves_SequenceOfMultiCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AppParCurves_MultiCurve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AppParCurves_SequenceOfMultiCurve & S);
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & First() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AppParCurves_SequenceOfMultiCurve & S);
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiCurve &I);
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend AppParCurves_SequenceOfMultiCurve {
	~AppParCurves_SequenceOfMultiCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_SequenceOfMultiCurve\n");}
	}
};

%nodefaultctor AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve;
class AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve(const AppParCurves_MultiBSpCurve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve {
	Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve GetHandle() {
	return *(Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve*) &$self;
	}
};
%extend AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve {
	~AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve\n");}
	}
};

%nodefaultctor AppParCurves_Array1OfMultiPoint;
class AppParCurves_Array1OfMultiPoint {
	public:
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiPoint(const AppParCurves_MultiPoint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiPoint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiPoint & Assign(const AppParCurves_Array1OfMultiPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiPoint &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppParCurves_MultiPoint & operator()(const Standard_Integer Index);

};
%extend AppParCurves_Array1OfMultiPoint {
	~AppParCurves_Array1OfMultiPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_Array1OfMultiPoint\n");}
	}
};

%nodefaultctor AppParCurves_HArray1OfConstraintCouple;
class AppParCurves_HArray1OfConstraintCouple : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AppParCurves_HArray1OfConstraintCouple(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_HArray1OfConstraintCouple(const Standard_Integer Low, const Standard_Integer Up, const AppParCurves_ConstraintCouple &V);
		%feature("autodoc", "1");
		void Init(const AppParCurves_ConstraintCouple &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_ConstraintCouple &Value);
		%feature("autodoc", "1");
		const AppParCurves_ConstraintCouple & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_ConstraintCouple & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const AppParCurves_Array1OfConstraintCouple & Array1() const;
		%feature("autodoc", "1");
		AppParCurves_Array1OfConstraintCouple & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_HArray1OfConstraintCouple {
	Handle_AppParCurves_HArray1OfConstraintCouple GetHandle() {
	return *(Handle_AppParCurves_HArray1OfConstraintCouple*) &$self;
	}
};
%extend AppParCurves_HArray1OfConstraintCouple {
	~AppParCurves_HArray1OfConstraintCouple() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_HArray1OfConstraintCouple\n");}
	}
};

%nodefaultctor AppParCurves_HArray1OfMultiPoint;
class AppParCurves_HArray1OfMultiPoint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiPoint(const Standard_Integer Low, const Standard_Integer Up, const AppParCurves_MultiPoint &V);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiPoint &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiPoint &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiPoint & Array1() const;
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiPoint & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_HArray1OfMultiPoint {
	Handle_AppParCurves_HArray1OfMultiPoint GetHandle() {
	return *(Handle_AppParCurves_HArray1OfMultiPoint*) &$self;
	}
};
%extend AppParCurves_HArray1OfMultiPoint {
	~AppParCurves_HArray1OfMultiPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_HArray1OfMultiPoint\n");}
	}
};

%nodefaultctor AppParCurves;
class AppParCurves {
	public:
		%feature("autodoc", "1");
		AppParCurves();
		%feature("autodoc", "1");
		void BernsteinMatrix(const Standard_Integer NbPoles, const math_Vector &U, math_Matrix & A);
		%feature("autodoc", "1");
		void Bernstein(const Standard_Integer NbPoles, const math_Vector &U, math_Matrix & A, math_Matrix & DA);
		%feature("autodoc", "1");
		void SecondDerivativeBernstein(const Standard_Real U, math_Vector & DDA);
		%feature("autodoc", "1");
		void SplineFunction(const Standard_Integer NbPoles, const Standard_Integer Degree, const math_Vector &Parameters, const math_Vector &FlatKnots, math_Matrix & A, math_Matrix & DA, math_IntegerVector & Index);

};
%extend AppParCurves {
	~AppParCurves() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves\n");}
	}
};

%nodefaultctor AppParCurves_HArray1OfMultiBSpCurve;
class AppParCurves_HArray1OfMultiBSpCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiBSpCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppParCurves_HArray1OfMultiBSpCurve(const Standard_Integer Low, const Standard_Integer Up, const AppParCurves_MultiBSpCurve &V);
		%feature("autodoc", "1");
		void Init(const AppParCurves_MultiBSpCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppParCurves_MultiBSpCurve &Value);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const AppParCurves_Array1OfMultiBSpCurve & Array1() const;
		%feature("autodoc", "1");
		AppParCurves_Array1OfMultiBSpCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppParCurves_HArray1OfMultiBSpCurve {
	Handle_AppParCurves_HArray1OfMultiBSpCurve GetHandle() {
	return *(Handle_AppParCurves_HArray1OfMultiBSpCurve*) &$self;
	}
};
%extend AppParCurves_HArray1OfMultiBSpCurve {
	~AppParCurves_HArray1OfMultiBSpCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AppParCurves_HArray1OfMultiBSpCurve\n");}
	}
};