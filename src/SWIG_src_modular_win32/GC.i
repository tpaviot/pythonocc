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
%module GC

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


%include GC_dependencies.i


%include GC_headers.i




%nodefaultctor GC_Root;
class GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_Root();
		%feature("autodoc", "1");
		GC_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};

%nodefaultctor GC_MakeEllipse;
class GC_MakeEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeEllipse();
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

%nodefaultctor GC_MakeConicalSurface;
class GC_MakeConicalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeConicalSurface();
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

%nodefaultctor GC_MakeArcOfCircle;
class GC_MakeArcOfCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeArcOfCircle();
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

%nodefaultctor GC_MakeLine;
class GC_MakeLine : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeLine();
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

%nodefaultctor GC_MakeTrimmedCone;
class GC_MakeTrimmedCone : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeTrimmedCone();
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &P4);
		%feature("autodoc", "1");
		GC_MakeTrimmedCone(const gp_Pnt &P1, const gp_Pnt &P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_RectangularTrimmedSurface & Operator() const;

};

%nodefaultctor GC_MakeScale;
class GC_MakeScale {
	public:
		%feature("autodoc", "1");
		~GC_MakeScale();
		%feature("autodoc", "1");
		GC_MakeScale(const gp_Pnt &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};

%nodefaultctor GC_MakeCircle;
class GC_MakeCircle : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeCircle();
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

%nodefaultctor GC_MakeArcOfHyperbola;
class GC_MakeArcOfHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeArcOfHyperbola();
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

%nodefaultctor GC_MakeMirror;
class GC_MakeMirror {
	public:
		%feature("autodoc", "1");
		~GC_MakeMirror();
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

%nodefaultctor GC_MakeTranslation;
class GC_MakeTranslation {
	public:
		%feature("autodoc", "1");
		~GC_MakeTranslation();
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Vec &Vect);
		%feature("autodoc", "1");
		GC_MakeTranslation(const gp_Pnt &Point1, const gp_Pnt &Point2);
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom_Transformation & Operator() const;

};

%nodefaultctor GC_MakeRotation;
class GC_MakeRotation {
	public:
		%feature("autodoc", "1");
		~GC_MakeRotation();
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

%nodefaultctor GC_MakeTrimmedCylinder;
class GC_MakeTrimmedCylinder : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeTrimmedCylinder();
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

%nodefaultctor GC_MakeCylindricalSurface;
class GC_MakeCylindricalSurface : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeCylindricalSurface();
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

%nodefaultctor GC_MakeArcOfParabola;
class GC_MakeArcOfParabola : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeArcOfParabola();
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

%nodefaultctor GC_MakeArcOfEllipse;
class GC_MakeArcOfEllipse : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeArcOfEllipse();
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

%nodefaultctor GC_MakeHyperbola;
class GC_MakeHyperbola : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeHyperbola();
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

%nodefaultctor GC_MakePlane;
class GC_MakePlane : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakePlane();
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

%nodefaultctor GC_MakeSegment;
class GC_MakeSegment : public GC_Root {
	public:
		%feature("autodoc", "1");
		~GC_MakeSegment();
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