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
%module gce

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
		~gce_Root();
		%feature("autodoc", "1");
		gce_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};

%nodefaultctor gce_MakeParab2d;
class gce_MakeParab2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeParab2d();
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

%nodefaultctor gce_MakeLin2d;
class gce_MakeLin2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeLin2d();
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

%nodefaultctor gce_MakeMirror2d;
class gce_MakeMirror2d {
	public:
		%feature("autodoc", "1");
		~gce_MakeMirror2d();
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

%nodefaultctor gce_MakeRotation;
class gce_MakeRotation {
	public:
		%feature("autodoc", "1");
		~gce_MakeRotation();
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

%nodefaultctor gce_MakeCirc2d;
class gce_MakeCirc2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeCirc2d();
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

%nodefaultctor gce_MakeHypr2d;
class gce_MakeHypr2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeHypr2d();
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

%nodefaultctor gce_MakeParab;
class gce_MakeParab : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeParab();
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax2 &A2, const Standard_Real Focal);
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax1 &D, const gp_Pnt &F);
		%feature("autodoc", "1");
		const gp_Parab & Value() const;
		%feature("autodoc", "1");
		const gp_Parab & Operator() const;

};

%nodefaultctor gce_MakeCylinder;
class gce_MakeCylinder : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeCylinder();
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

%nodefaultctor gce_MakeElips2d;
class gce_MakeElips2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeElips2d();
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

%nodefaultctor gce_MakeCirc;
class gce_MakeCirc : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeCirc();
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

%nodefaultctor gce_MakeHypr;
class gce_MakeHypr : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeHypr();
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const gp_Hypr & Value() const;
		%feature("autodoc", "1");
		const gp_Hypr & Operator() const;

};

%nodefaultctor gce_MakeScale;
class gce_MakeScale {
	public:
		%feature("autodoc", "1");
		~gce_MakeScale();
		%feature("autodoc", "1");
		gce_MakeScale(const gp_Pnt &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};

%nodefaultctor gce_MakeElips;
class gce_MakeElips : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeElips();
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Ax2 &A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &Center);
		%feature("autodoc", "1");
		const gp_Elips & Value() const;
		%feature("autodoc", "1");
		const gp_Elips & Operator() const;

};

%nodefaultctor gce_MakeDir;
class gce_MakeDir : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeDir();
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

%nodefaultctor gce_MakeRotation2d;
class gce_MakeRotation2d {
	public:
		%feature("autodoc", "1");
		~gce_MakeRotation2d();
		%feature("autodoc", "1");
		gce_MakeRotation2d(const gp_Pnt2d &Point, const Standard_Real Angle);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};

%nodefaultctor gce_MakeTranslation2d;
class gce_MakeTranslation2d {
	public:
		%feature("autodoc", "1");
		~gce_MakeTranslation2d();
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Vec2d &Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};

%nodefaultctor gce_MakeDir2d;
class gce_MakeDir2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeDir2d();
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

%nodefaultctor gce_MakeTranslation;
class gce_MakeTranslation {
	public:
		%feature("autodoc", "1");
		~gce_MakeTranslation();
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Vec &Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Pnt &Point1, const gp_Pnt &Point2);
		%feature("autodoc", "1");
		const gp_Trsf & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf & Operator() const;

};

%nodefaultctor gce_MakeScale2d;
class gce_MakeScale2d {
	public:
		%feature("autodoc", "1");
		~gce_MakeScale2d();
		%feature("autodoc", "1");
		gce_MakeScale2d(const gp_Pnt2d &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf2d & Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d & Operator() const;

};

%nodefaultctor gce_MakeMirror;
class gce_MakeMirror {
	public:
		%feature("autodoc", "1");
		~gce_MakeMirror();
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

%nodefaultctor gce_MakePln;
class gce_MakePln : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakePln();
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

%nodefaultctor gce_MakeLin;
class gce_MakeLin : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeLin();
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

%nodefaultctor gce_MakeCone;
class gce_MakeCone : public gce_Root {
	public:
		%feature("autodoc", "1");
		~gce_MakeCone();
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