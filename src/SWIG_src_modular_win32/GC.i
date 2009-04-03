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
%module GC

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


%include GC_dependencies.i


%include GC_headers.i




%nodefaultctor GC_Root;
class GC_Root {
	public:
		%feature("autodoc", "1");
		GC_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};
%extend GC_Root {
	~GC_Root() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_Root\n");}
	}
};

%nodefaultctor GC_MakeEllipse;
class GC_MakeEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Elips &E);
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GC_MakeEllipse(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Ellipse & Operator() const;

};
%extend GC_MakeEllipse {
	~GC_MakeEllipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeEllipse\n");}
	}
};

%nodefaultctor GC_MakeConicalSurface;
class GC_MakeConicalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Ax2 &A2, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone &C);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone &Cone, const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Cone &Cone, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &P4);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Ax1 &Axis, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Lin &Axis, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		GC_MakeConicalSurface(const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_ConicalSurface & Operator() const;

};
%extend GC_MakeConicalSurface {
	~GC_MakeConicalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeConicalSurface\n");}
	}
};

%nodefaultctor GC_MakeArcOfCircle;
class GC_MakeArcOfCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ &Circ, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ &Circ, const gp_Pnt &P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Circ &Circ, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		GC_MakeArcOfCircle(const gp_Pnt &P1, const gp_Vec &V, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%extend GC_MakeArcOfCircle {
	~GC_MakeArcOfCircle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeArcOfCircle\n");}
	}
};

%nodefaultctor GC_MakeLine;
class GC_MakeLine : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Ax1 &A1);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Lin &L);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Pnt &P, const gp_Dir &V);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Lin &Lin, const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakeLine(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Line & Operator() const;

};
%extend GC_MakeLine {
	~GC_MakeLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeLine\n");}
	}
};

%nodefaultctor GC_MakeTrimmedCone;
class GC_MakeTrimmedCone : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &P4);
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Operator() const;

};
%extend GC_MakeTrimmedCone {
	~GC_MakeTrimmedCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeTrimmedCone\n");}
	}
};

%nodefaultctor GC_MakeScale;
class GC_MakeScale {
	public:
		%feature("autodoc", "1");
		GC_MakeScale(const gp_Pnt &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%extend GC_MakeScale {
	~GC_MakeScale() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeScale\n");}
	}
};

%nodefaultctor GC_MakeCircle;
class GC_MakeCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ &C);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Ax2 &A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ &Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Circ &Circ, const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt &Center, const gp_Dir &Norm, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Pnt &Center, const gp_Pnt &PtAxis, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCircle(const gp_Ax1 &Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Operator() const;

};
%extend GC_MakeCircle {
	~GC_MakeCircle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeCircle\n");}
	}
};

%nodefaultctor GC_MakeArcOfHyperbola;
class GC_MakeArcOfHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr &Hypr, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr &Hypr, const gp_Pnt &P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfHyperbola(const gp_Hypr &Hypr, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%extend GC_MakeArcOfHyperbola {
	~GC_MakeArcOfHyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeArcOfHyperbola\n");}
	}
};

%nodefaultctor GC_MakeMirror;
class GC_MakeMirror {
	public:
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Lin &Line);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pnt &Point, const gp_Dir &Direc);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Pln &Plane);
		%feature("autodoc", "1");
		GC_MakeMirror(const gp_Ax2 &Plane);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%extend GC_MakeMirror {
	~GC_MakeMirror() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeMirror\n");}
	}
};

%nodefaultctor GC_MakeTranslation;
class GC_MakeTranslation {
	public:
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Vec &Vect);
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Pnt &Point1, const gp_Pnt &Point2);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%extend GC_MakeTranslation {
	~GC_MakeTranslation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeTranslation\n");}
	}
};

%nodefaultctor GC_MakeRotation;
class GC_MakeRotation {
	public:
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Lin &Line, const Standard_Real Angle);
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Ax1 &Axis, const Standard_Real Angle);
		%feature("autodoc", "1");
		GC_MakeRotation(const gp_Pnt &Point, const gp_Dir &Direc, const Standard_Real Angle);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};
%extend GC_MakeRotation {
	~GC_MakeRotation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeRotation\n");}
	}
};

%nodefaultctor GC_MakeTrimmedCylinder;
class GC_MakeTrimmedCylinder : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Circ &Circ, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Ax1 &A1, const Standard_Real Radius, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Cylinder &Cyl, const gp_Pnt &P, const Standard_Real Height);
		%feature("autodoc", "1");
		GC_MakeTrimmedCylinder(const gp_Cylinder &Cyl, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Operator() const;

};
%extend GC_MakeTrimmedCylinder {
	~GC_MakeTrimmedCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeTrimmedCylinder\n");}
	}
};

%nodefaultctor GC_MakeCylindricalSurface;
class GC_MakeCylindricalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Ax2 &A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder &C);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder &Cyl, const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Cylinder &Cyl, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Ax1 &Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		GC_MakeCylindricalSurface(const gp_Circ &Circ);
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_CylindricalSurface & Operator() const;

};
%extend GC_MakeCylindricalSurface {
	~GC_MakeCylindricalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeCylindricalSurface\n");}
	}
};

%nodefaultctor GC_MakeArcOfParabola;
class GC_MakeArcOfParabola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab &Parab, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab &Parab, const gp_Pnt &P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfParabola(const gp_Parab &Parab, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%extend GC_MakeArcOfParabola {
	~GC_MakeArcOfParabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeArcOfParabola\n");}
	}
};

%nodefaultctor GC_MakeArcOfEllipse;
class GC_MakeArcOfEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips &Elips, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips &Elips, const gp_Pnt &P, const Standard_Real Alpha, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GC_MakeArcOfEllipse(const gp_Elips &Elips, const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%extend GC_MakeArcOfEllipse {
	~GC_MakeArcOfEllipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeArcOfEllipse\n");}
	}
};

%nodefaultctor GC_MakeHyperbola;
class GC_MakeHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Hypr &H);
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GC_MakeHyperbola(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Hyperbola & Operator() const;

};
%extend GC_MakeHyperbola {
	~GC_MakeHyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeHyperbola\n");}
	}
};

%nodefaultctor GC_MakePlane;
class GC_MakePlane : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Ax2 &A2);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln &Pl);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pnt &P, const gp_Dir &V);
		%feature("autodoc", "1");
		GC_MakePlane(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln &Pln, const gp_Pnt &Point);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pln &Pln, const Standard_Real Dist);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		GC_MakePlane(const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Operator() const;

};
%extend GC_MakePlane {
	~GC_MakePlane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakePlane\n");}
	}
};

%nodefaultctor GC_MakeSegment;
class GC_MakeSegment : public GC_Root {
	public:
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin &Line, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin &Line, const gp_Pnt &Point, const Standard_Real Ulast);
		%feature("autodoc", "1");
		GC_MakeSegment(const gp_Lin &Line, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_TrimmedCurve & Operator() const;

};
%extend GC_MakeSegment {
	~GC_MakeSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GC_MakeSegment\n");}
	}
};