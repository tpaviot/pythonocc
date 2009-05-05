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
%module gce

%include gce_renames.i

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


%include gce_dependencies.i


%include gce_headers.i


enum gce_ErrorType {
	gce_Done,
	gce_ConfusedPoints,
	gce_NegativeRadius,
	gce_ColinearPoints,
	gce_IntersectionError,
	gce_NullAxis,
	gce_NullAngle,
	gce_NullRadius,
	gce_InvertAxis,
	gce_BadAngle,
	gce_InvertRadius,
	gce_NullFocusLength,
	gce_NullVector,
	gce_BadEquation,
	};



%nodefaultctor gce_Root;
class gce_Root {
	public:
		%feature("autodoc", "1");
		gce_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};
%extend gce_Root {
	~gce_Root() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_Root\n");}
	}
};


%nodefaultctor gce_MakeParab2d;
class gce_MakeParab2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax2d &MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax22d &A, const Standard_Real Focal);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax2d &D, const gp_Pnt2d &F, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax22d &D, const gp_Pnt2d &F);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Pnt2d &S1, const gp_Pnt2d &Center, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const gp_Parab2d & Value() const;
		%feature("autodoc", "1");
		const gp_Parab2d & Operator() const;

};
%extend gce_MakeParab2d {
	~gce_MakeParab2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeParab2d\n");}
	}
};


%nodefaultctor gce_MakeLin2d;
class gce_MakeLin2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Ax2d &A);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Pnt2d &P, const gp_Dir2d &V);
		%feature("autodoc", "1");
		gce_MakeLin2d(const Standard_Real A, const Standard_Real B, const Standard_Real C);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Lin2d &Lin, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Lin2d &Lin, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		gp_Lin2d Value() const;
		%feature("autodoc", "1");
		gp_Lin2d Operator() const;

};
%extend gce_MakeLin2d {
	~gce_MakeLin2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeLin2d\n");}
	}
};


%nodefaultctor gce_MakeMirror2d;
class gce_MakeMirror2d {
	public:
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Ax2d &Axis);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Lin2d &Line);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Pnt2d &Point, const gp_Dir2d &Direc);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};
%extend gce_MakeMirror2d {
	~gce_MakeMirror2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeMirror2d\n");}
	}
};


%nodefaultctor gce_MakeRotation;
class gce_MakeRotation {
	public:
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Lin &Line, const Standard_Real Angle);
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Ax1 &Axis, const Standard_Real Angle);
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Pnt &Point, const gp_Dir &Direc, const Standard_Real Angle);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};
%extend gce_MakeRotation {
	~gce_MakeRotation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeRotation\n");}
	}
};


%nodefaultctor gce_MakeCirc2d;
class gce_MakeCirc2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Ax2d &XAxis, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Ax22d &Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Circ2d &Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Circ2d &Circ, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const gp_Pnt2d &P3);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d &Center, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d &Center, const gp_Pnt2d &Point, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const gp_Circ2d & Value() const;
		%feature("autodoc", "1");
		const gp_Circ2d & Operator() const;

};
%extend gce_MakeCirc2d {
	~gce_MakeCirc2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeCirc2d\n");}
	}
};


%nodefaultctor gce_MakeHypr2d;
class gce_MakeHypr2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Ax22d &A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		const gp_Hypr2d & Value() const;
		%feature("autodoc", "1");
		const gp_Hypr2d & Operator() const;

};
%extend gce_MakeHypr2d {
	~gce_MakeHypr2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeHypr2d\n");}
	}
};


%nodefaultctor gce_MakeElips2d;
class gce_MakeElips2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Ax22d &A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		const gp_Elips2d & Value() const;
		%feature("autodoc", "1");
		const gp_Elips2d & Operator() const;

};
%extend gce_MakeElips2d {
	~gce_MakeElips2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeElips2d\n");}
	}
};


%nodefaultctor gce_MakeCirc;
class gce_MakeCirc : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Ax2 &A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Circ &Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Circ &Circ, const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt &Center, const gp_Dir &Norm, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt &Center, const gp_Pln &Plane, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt &Center, const gp_Pnt &Ptaxis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Ax1 &Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		const gp_Circ & Value() const;
		%feature("autodoc", "1");
		const gp_Circ & Operator() const;

};
%extend gce_MakeCirc {
	~gce_MakeCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeCirc\n");}
	}
};


%nodefaultctor gce_MakeTranslation;
class gce_MakeTranslation {
	public:
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Vec &Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Pnt &Point1, const gp_Pnt &Point2);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};
%extend gce_MakeTranslation {
	~gce_MakeTranslation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeTranslation\n");}
	}
};


%nodefaultctor gce_MakeParab;
class gce_MakeParab : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax2 &A2, const Standard_Real Focal);
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax1 &D, const gp_Pnt &F);
		%feature("autodoc", "1");
		const gp_Parab & Value() const;
		%feature("autodoc", "1");
		const gp_Parab & Operator() const;

};
%extend gce_MakeParab {
	~gce_MakeParab() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeParab\n");}
	}
};


%nodefaultctor gce_MakeHypr;
class gce_MakeHypr : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const gp_Hypr & Value() const;
		%feature("autodoc", "1");
		const gp_Hypr & Operator() const;

};
%extend gce_MakeHypr {
	~gce_MakeHypr() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeHypr\n");}
	}
};


%nodefaultctor gce_MakeCylinder;
class gce_MakeCylinder : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Ax2 &A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Cylinder &Cyl, const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Cylinder &Cyl, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Ax1 &Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Circ &Circ);
		%feature("autodoc", "1");
		const gp_Cylinder & Value() const;
		%feature("autodoc", "1");
		const gp_Cylinder & Operator() const;

};
%extend gce_MakeCylinder {
	~gce_MakeCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeCylinder\n");}
	}
};


%nodefaultctor gce_MakeDir;
class gce_MakeDir : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeDir(const gp_Vec &V);
		%feature("autodoc", "1");
		gce_MakeDir(const gp_XYZ &Coord);
		%feature("autodoc", "1");
		gce_MakeDir(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		gce_MakeDir(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const gp_Dir & Value() const;
		%feature("autodoc", "1");
		const gp_Dir & Operator() const;

};
%extend gce_MakeDir {
	~gce_MakeDir() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeDir\n");}
	}
};


%nodefaultctor gce_MakeRotation2d;
class gce_MakeRotation2d {
	public:
		%feature("autodoc", "1");
		gce_MakeRotation2d(const gp_Pnt2d &Point, const Standard_Real Angle);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};
%extend gce_MakeRotation2d {
	~gce_MakeRotation2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeRotation2d\n");}
	}
};


%nodefaultctor gce_MakeTranslation2d;
class gce_MakeTranslation2d {
	public:
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Vec2d &Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};
%extend gce_MakeTranslation2d {
	~gce_MakeTranslation2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeTranslation2d\n");}
	}
};


%nodefaultctor gce_MakeDir2d;
class gce_MakeDir2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_Vec2d &V);
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_XY &Coord);
		%feature("autodoc", "1");
		gce_MakeDir2d(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const gp_Dir2d & Value() const;
		%feature("autodoc", "1");
		const gp_Dir2d & Operator() const;

};
%extend gce_MakeDir2d {
	~gce_MakeDir2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeDir2d\n");}
	}
};


%nodefaultctor gce_MakeElips;
class gce_MakeElips : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const gp_Elips & Value() const;
		%feature("autodoc", "1");
		const gp_Elips & Operator() const;

};
%extend gce_MakeElips {
	~gce_MakeElips() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeElips\n");}
	}
};


%nodefaultctor gce_MakeScale2d;
class gce_MakeScale2d {
	public:
		%feature("autodoc", "1");
		gce_MakeScale2d(const gp_Pnt2d &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};
%extend gce_MakeScale2d {
	~gce_MakeScale2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeScale2d\n");}
	}
};


%nodefaultctor gce_MakeMirror;
class gce_MakeMirror {
	public:
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Lin &Line);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pnt &Point, const gp_Dir &Direc);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pln &Plane);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Ax2 &Plane);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};
%extend gce_MakeMirror {
	~gce_MakeMirror() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeMirror\n");}
	}
};


%nodefaultctor gce_MakePln;
class gce_MakePln : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakePln(const gp_Ax2 &A2);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt &P, const gp_Dir &V);
		%feature("autodoc", "1");
		gce_MakePln(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pln &Pln, const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pln &Pln, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		const gp_Pln & Value() const;
		%feature("autodoc", "1");
		const gp_Pln & Operator() const;

};
%extend gce_MakePln {
	~gce_MakePln() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakePln\n");}
	}
};


%nodefaultctor gce_MakeLin;
class gce_MakeLin : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Ax1 &A1);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Pnt &P, const gp_Dir &V);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Lin &Lin, const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		const gp_Lin & Value() const;
		%feature("autodoc", "1");
		const gp_Lin & Operator() const;

};
%extend gce_MakeLin {
	~gce_MakeLin() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeLin\n");}
	}
};


%nodefaultctor gce_MakeScale;
class gce_MakeScale {
	public:
		%feature("autodoc", "1");
		gce_MakeScale(const gp_Pnt &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};
%extend gce_MakeScale {
	~gce_MakeScale() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeScale\n");}
	}
};


%nodefaultctor gce_MakeCone;
class gce_MakeCone : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Ax2 &A2, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Cone &Cone, const gp_Pnt &Point);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Cone &Cone, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &P4);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Ax1 &Axis, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Lin &Axis, const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const gp_Cone & Value() const;
		%feature("autodoc", "1");
		const gp_Cone & Operator() const;

};
%extend gce_MakeCone {
	~gce_MakeCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of gce_MakeCone\n");}
	}
};
