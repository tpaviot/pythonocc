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
%module ShapeConstruct

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include ShapeConstruct_dependencies.i


%include ShapeConstruct_headers.i




%nodefaultctor Handle_ShapeConstruct_ProjectCurveOnSurface;
class Handle_ShapeConstruct_ProjectCurveOnSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface();
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface(const Handle_ShapeConstruct_ProjectCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface(const ShapeConstruct_ProjectCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeConstruct_ProjectCurveOnSurface {
	ShapeConstruct_ProjectCurveOnSurface* GetObject() {
	return (ShapeConstruct_ProjectCurveOnSurface*)$self->Access();
	}
};
%extend Handle_ShapeConstruct_ProjectCurveOnSurface {
	~Handle_ShapeConstruct_ProjectCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ShapeConstruct_ProjectCurveOnSurface\n");}
	}
};


%nodefaultctor ShapeConstruct;
class ShapeConstruct {
	public:
		%feature("autodoc", "1");
		ShapeConstruct();
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve ConvertCurveToBSpline(const Handle_Geom_Curve &C3D, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve ConvertCurveToBSpline(const Handle_Geom2d_Curve &C2D, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol2d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface ConvertSurfaceToBSpline(const Handle_Geom_Surface &surf, const Standard_Real UF, const Standard_Real UL, const Standard_Real VF, const Standard_Real VL, const Standard_Real Tol3d, const GeomAbs_Shape Continuity, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Standard_Boolean JoinPCurves(const Handle_TopTools_HSequenceOfShape &theEdges, const TopoDS_Face &theFace, TopoDS_Edge & theEdge);
		%feature("autodoc", "1");
		Standard_Boolean JoinCurves(const Handle_Geom_Curve &c3d1, const Handle_Geom_Curve &ac3d2, const TopAbs_Orientation Orient1, const TopAbs_Orientation Orient2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Handle_Geom_Curve & c3dOut, Standard_Boolean & isRev1, Standard_Boolean & isRev2);
		%feature("autodoc", "1");
		Standard_Boolean JoinCurves(const Handle_Geom2d_Curve &c2d1, const Handle_Geom2d_Curve &ac2d2, const TopAbs_Orientation Orient1, const TopAbs_Orientation Orient2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Handle_Geom2d_Curve & c2dOut, Standard_Boolean & isRev1, Standard_Boolean & isRev2, const Standard_Boolean isError=0);

};
%extend ShapeConstruct {
	~ShapeConstruct() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct\n");}
	}
};


%nodefaultctor ShapeConstruct_ProjectCurveOnSurface;
class ShapeConstruct_ProjectCurveOnSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_ProjectCurveOnSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_Geom_Surface &surf, const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_ShapeAnalysis_Surface &surf, const Standard_Real preci);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf);
		%feature("autodoc", "1");
		void SetSurface(const Handle_ShapeAnalysis_Surface &surf);
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Boolean & BuildCurveMode();
		%feature("autodoc", "1");
		Standard_Integer & AdjustOverDegenMode();
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d, const GeomAbs_Shape continuity=GeomAbs_C1, const Standard_Integer maxdeg=12, const Standard_Integer nbinterval=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean PerformByProjLib(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d, const GeomAbs_Shape continuity=GeomAbs_C1, const Standard_Integer maxdeg=12, const Standard_Integer nbinterval=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean PerformAdvanced(Handle_Geom_Curve & c3d, const Standard_Real First, const Standard_Real Last, Handle_Geom2d_Curve & c2d);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeConstruct_ProjectCurveOnSurface {
	Handle_ShapeConstruct_ProjectCurveOnSurface GetHandle() {
	return *(Handle_ShapeConstruct_ProjectCurveOnSurface*) &$self;
	}
};
%extend ShapeConstruct_ProjectCurveOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend ShapeConstruct_ProjectCurveOnSurface {
	~ShapeConstruct_ProjectCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct_ProjectCurveOnSurface\n");}
	}
};


%nodefaultctor ShapeConstruct_CompBezierCurvesToBSplineCurve;
class ShapeConstruct_CompBezierCurvesToBSplineCurve {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_CompBezierCurvesToBSplineCurve(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%extend ShapeConstruct_CompBezierCurvesToBSplineCurve {
	~ShapeConstruct_CompBezierCurvesToBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct_CompBezierCurvesToBSplineCurve\n");}
	}
};


%nodefaultctor ShapeConstruct_Curve;
class ShapeConstruct_Curve {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_Curve();
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurve(const Handle_Geom_Curve &C3D, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean take1=1, const Standard_Boolean take2=1) const;
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurveSegment(const Handle_Geom_Curve &C3D, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real U1, const Standard_Real U2) const;
		%feature("autodoc", "1");
		Standard_Boolean AdjustCurve2d(const Handle_Geom2d_Curve &C2D, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean take1=1, const Standard_Boolean take2=1) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve ConvertToBSpline(const Handle_Geom_Curve &C, const Standard_Real first, const Standard_Real last, const Standard_Real prec) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve ConvertToBSpline(const Handle_Geom2d_Curve &C, const Standard_Real first, const Standard_Real last, const Standard_Real prec) const;
		%feature("autodoc", "1");
		Standard_Boolean FixKnots(Handle_TColStd_HArray1OfReal & knots);
		%feature("autodoc", "1");
		Standard_Boolean FixKnots(TColStd_Array1OfReal & knots);

};
%extend ShapeConstruct_Curve {
	~ShapeConstruct_Curve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct_Curve\n");}
	}
};


%nodefaultctor ShapeConstruct_MakeTriangulation;
class ShapeConstruct_MakeTriangulation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_MakeTriangulation(const TColgp_Array1OfPnt &pnts, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		ShapeConstruct_MakeTriangulation(const TopoDS_Wire &wire, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;

};
%extend ShapeConstruct_MakeTriangulation {
	~ShapeConstruct_MakeTriangulation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct_MakeTriangulation\n");}
	}
};


%nodefaultctor ShapeConstruct_CompBezierCurves2dToBSplineCurve2d;
class ShapeConstruct_CompBezierCurves2dToBSplineCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeConstruct_CompBezierCurves2dToBSplineCurve2d(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt2d &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%extend ShapeConstruct_CompBezierCurves2dToBSplineCurve2d {
	~ShapeConstruct_CompBezierCurves2dToBSplineCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeConstruct_CompBezierCurves2dToBSplineCurve2d\n");}
	}
};
