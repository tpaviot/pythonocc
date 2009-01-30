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
%module GCE2d

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


%include GCE2d_dependencies.i


%include GCE2d_headers.i




%nodefaultctor GCE2d_Root;
class GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_Root();
		%feature("autodoc", "1");
		GCE2d_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};

%nodefaultctor GCE2d_MakeLine;
class GCE2d_MakeLine : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeLine();
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Ax2d &A);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &L);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Pnt2d &P, const gp_Dir2d &V);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &Lin, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Lin2d &Lin, const Standard_Real Dist);
		%feature("autodoc", "1");
		GCE2d_MakeLine(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Line & Operator() const;

};

%nodefaultctor GCE2d_MakeMirror;
class GCE2d_MakeMirror {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeMirror();
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Ax2d &Axis);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Lin2d &Line);
		%feature("autodoc", "1");
		GCE2d_MakeMirror(const gp_Pnt2d &Point, const gp_Dir2d &Direc);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};

%nodefaultctor GCE2d_MakeArcOfCircle;
class GCE2d_MakeArcOfCircle : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeArcOfCircle();
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Circ2d &Circ, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const gp_Pnt2d &P3);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfCircle(const gp_Pnt2d &P1, const gp_Vec2d &V, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};

%nodefaultctor GCE2d_MakeParabola;
class GCE2d_MakeParabola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeParabola();
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Parab2d &Prb);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax22d &Axis, const Standard_Real Focal);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax2d &MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax22d &D, const gp_Pnt2d &F);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Ax2d &D, const gp_Pnt2d &F, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeParabola(const gp_Pnt2d &S1, const gp_Pnt2d &O);
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Parabola & Operator() const;

};

%nodefaultctor GCE2d_MakeScale;
class GCE2d_MakeScale {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeScale();
		%feature("autodoc", "1");
		GCE2d_MakeScale(const gp_Pnt2d &Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};

%nodefaultctor GCE2d_MakeHyperbola;
class GCE2d_MakeHyperbola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeHyperbola();
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GCE2d_MakeHyperbola(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Hyperbola & Operator() const;

};

%nodefaultctor GCE2d_MakeArcOfHyperbola;
class GCE2d_MakeArcOfHyperbola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeArcOfHyperbola();
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfHyperbola(const gp_Hypr2d &Hypr, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};

%nodefaultctor GCE2d_MakeSegment;
class GCE2d_MakeSegment : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeSegment();
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Pnt2d &P1, const gp_Dir2d &V, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const gp_Pnt2d &Point, const Standard_Real Ulast);
		%feature("autodoc", "1");
		GCE2d_MakeSegment(const gp_Lin2d &Line, const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};

%nodefaultctor GCE2d_MakeEllipse;
class GCE2d_MakeEllipse : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeEllipse();
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Elips2d &E);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		GCE2d_MakeEllipse(const gp_Pnt2d &S1, const gp_Pnt2d &S2, const gp_Pnt2d &Center);
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Ellipse & Operator() const;

};

%nodefaultctor GCE2d_MakeArcOfParabola;
class GCE2d_MakeArcOfParabola : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeArcOfParabola();
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfParabola(const gp_Parab2d &Parab, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};

%nodefaultctor GCE2d_MakeCircle;
class GCE2d_MakeCircle : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeCircle();
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &C);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Ax2d &A, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Ax22d &A, const Standard_Real Radius);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Circ2d &Circ, const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const gp_Pnt2d &P3);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &P, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeCircle(const gp_Pnt2d &Center, const gp_Pnt2d &Point, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Circle & Operator() const;

};

%nodefaultctor GCE2d_MakeRotation;
class GCE2d_MakeRotation {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeRotation();
		%feature("autodoc", "1");
		GCE2d_MakeRotation(const gp_Pnt2d &Point, const Standard_Real Angle);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};

%nodefaultctor GCE2d_MakeArcOfEllipse;
class GCE2d_MakeArcOfEllipse : public GCE2d_Root {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeArcOfEllipse();
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const gp_Pnt2d &P, const Standard_Real Alpha, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		GCE2d_MakeArcOfEllipse(const gp_Elips2d &Elips, const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_TrimmedCurve & Operator() const;

};

%nodefaultctor GCE2d_MakeTranslation;
class GCE2d_MakeTranslation {
	public:
		%feature("autodoc", "1");
		~GCE2d_MakeTranslation();
		%feature("autodoc", "1");
		GCE2d_MakeTranslation(const gp_Vec2d &Vect);
		%feature("autodoc", "1");
		GCE2d_MakeTranslation(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Value() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Transformation & Operator() const;

};