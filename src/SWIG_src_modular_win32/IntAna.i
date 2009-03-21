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
%module IntAna

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


%include IntAna_dependencies.i


%include IntAna_headers.i


enum IntAna_ResultType {
	IntAna_Point,
	IntAna_Line,
	IntAna_Circle,
	IntAna_PointAndCircle,
	IntAna_Ellipse,
	IntAna_Parabola,
	IntAna_Hyperbola,
	IntAna_Empty,
	IntAna_Same,
	IntAna_NoGeometricSolution,
	};



%nodefaultctor Handle_IntAna_ListNodeOfListOfCurve;
class Handle_IntAna_ListNodeOfListOfCurve : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntAna_ListNodeOfListOfCurve();
		%feature("autodoc", "1");
		Handle_IntAna_ListNodeOfListOfCurve(const Handle_IntAna_ListNodeOfListOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_IntAna_ListNodeOfListOfCurve(const IntAna_ListNodeOfListOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_IntAna_ListNodeOfListOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntAna_ListNodeOfListOfCurve {
	IntAna_ListNodeOfListOfCurve* GetObject() {
	return (IntAna_ListNodeOfListOfCurve*)$self->Access();
	}
};
%extend Handle_IntAna_ListNodeOfListOfCurve {
	~Handle_IntAna_ListNodeOfListOfCurve() {
	printf("Call custom destructor for instance of Handle_IntAna_ListNodeOfListOfCurve\n");
	}
};

%nodefaultctor IntAna_Quadric;
class IntAna_Quadric {
	public:
		%feature("autodoc", "1");
		~IntAna_Quadric();
		%feature("autodoc", "1");
		IntAna_Quadric();
		%feature("autodoc", "1");
		IntAna_Quadric(const gp_Pln &P);
		%feature("autodoc", "1");
		IntAna_Quadric(const gp_Sphere &Sph);
		%feature("autodoc", "1");
		IntAna_Quadric(const gp_Cylinder &Cyl);
		%feature("autodoc", "1");
		IntAna_Quadric(const gp_Cone &Cone);
		%feature("autodoc", "1");
		void SetQuadric(const gp_Pln &P);
		%feature("autodoc", "1");
		void SetQuadric(const gp_Sphere &Sph);
		%feature("autodoc", "1");
		void SetQuadric(const gp_Cone &Con);
		%feature("autodoc", "1");
		void SetQuadric(const gp_Cylinder &Cyl);
		%feature("autodoc", "1");
		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void NewCoefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const gp_Ax3 &Axis) const;

};
%extend IntAna_Quadric {
	~IntAna_Quadric() {
	printf("Call custom destructor for instance of IntAna_Quadric\n");
	}
};

%nodefaultctor IntAna_QuadQuadGeo;
class IntAna_QuadQuadGeo {
	public:
		%feature("autodoc", "1");
		~IntAna_QuadQuadGeo();
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo();
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Pln &P1, const gp_Pln &P2, const Standard_Real TolAng, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &P1, const gp_Pln &P2, const Standard_Real TolAng, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Pln &P, const gp_Cylinder &C, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &P, const gp_Cylinder &C, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Pln &P, const gp_Sphere &S);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &P, const gp_Sphere &S);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Pln &P, const gp_Cone &C, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &P, const gp_Cone &C, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Cylinder &Cyl1, const gp_Cylinder &Cyl2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &Cyl1, const gp_Cylinder &Cyl2, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Cylinder &Cyl, const gp_Sphere &Sph, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &Cyl, const gp_Sphere &Sph, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Cylinder &Cyl, const gp_Cone &Con, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &Cyl, const gp_Cone &Con, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Sphere &Sph1, const gp_Sphere &Sph2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &Sph1, const gp_Sphere &Sph2, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Sphere &Sph, const gp_Cone &Con, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &Sph, const gp_Cone &Con, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_QuadQuadGeo(const gp_Cone &Con1, const gp_Cone &Con2, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &Con1, const gp_Cone &Con2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		IntAna_ResultType TypeInter() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		gp_Lin Line(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		gp_Circ Circle(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		gp_Elips Ellipse(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		gp_Parab Parabola(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		gp_Hypr Hyperbola(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		Standard_Boolean HasCommonGen() const;
		%feature("autodoc", "1");
		const gp_Pnt & PChar() const;

};
%extend IntAna_QuadQuadGeo {
	~IntAna_QuadQuadGeo() {
	printf("Call custom destructor for instance of IntAna_QuadQuadGeo\n");
	}
};

%nodefaultctor IntAna_ListNodeOfListOfCurve;
class IntAna_ListNodeOfListOfCurve : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntAna_ListNodeOfListOfCurve(const IntAna_Curve &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntAna_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntAna_ListNodeOfListOfCurve {
	Handle_IntAna_ListNodeOfListOfCurve GetHandle() {
	return *(Handle_IntAna_ListNodeOfListOfCurve*) &$self;
	}
};
%extend IntAna_ListNodeOfListOfCurve {
	~IntAna_ListNodeOfListOfCurve() {
	printf("Call custom destructor for instance of IntAna_ListNodeOfListOfCurve\n");
	}
};

%nodefaultctor IntAna_IntQuadQuad;
class IntAna_IntQuadQuad {
	public:
		%feature("autodoc", "1");
		~IntAna_IntQuadQuad();
		%feature("autodoc", "1");
		IntAna_IntQuadQuad();
		%feature("autodoc", "1");
		IntAna_IntQuadQuad(const gp_Cylinder &C, const IntAna_Quadric &Q, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_IntQuadQuad(const gp_Cone &C, const IntAna_Quadric &Q, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &C, const IntAna_Quadric &Q, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &C, const IntAna_Quadric &Q, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IdenticalElements() const;
		%feature("autodoc", "1");
		Standard_Integer NbCurve() const;
		%feature("autodoc", "1");
		const IntAna_Curve & Curve(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbPnt() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasNextCurve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NextCurve(const Standard_Integer I, Standard_Boolean & Opposite) const;
		%feature("autodoc", "1");
		Standard_Boolean HasPreviousCurve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer PreviousCurve(const Standard_Integer I, Standard_Boolean & Opposite) const;

};
%extend IntAna_IntQuadQuad {
	~IntAna_IntQuadQuad() {
	printf("Call custom destructor for instance of IntAna_IntQuadQuad\n");
	}
};

%nodefaultctor IntAna_IntConicQuad;
class IntAna_IntConicQuad {
	public:
		%feature("autodoc", "1");
		~IntAna_IntConicQuad();
		%feature("autodoc", "1");
		IntAna_IntConicQuad();
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Lin &L, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Circ &C, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Elips &E, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		void Perform(const gp_Elips &E, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Parab &P, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		void Perform(const gp_Parab &P, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Hypr &H, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr &H, const IntAna_Quadric &Q);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Lin &L, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Circ &C, const gp_Pln &P, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Pln &P, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Elips &E, const gp_Pln &P, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips &E, const gp_Pln &P, const Standard_Real Tolang, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Parab &Pb, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		void Perform(const gp_Parab &Pb, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		IntAna_IntConicQuad(const gp_Hypr &H, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr &H, const gp_Pln &P, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInQuadric() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real ParamOnConic(const Standard_Integer i) const;

};
%extend IntAna_IntConicQuad {
	~IntAna_IntConicQuad() {
	printf("Call custom destructor for instance of IntAna_IntConicQuad\n");
	}
};

%nodefaultctor IntAna_ListOfCurve;
class IntAna_ListOfCurve {
	public:
		%feature("autodoc", "1");
		IntAna_ListOfCurve();
		%feature("autodoc", "1");
		void Assign(const IntAna_ListOfCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntAna_ListOfCurve();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const IntAna_Curve &I);
		%feature("autodoc", "1");
		void Prepend(const IntAna_Curve &I, IntAna_ListIteratorOfListOfCurve & theIt);
		%feature("autodoc", "1");
		void Prepend(IntAna_ListOfCurve & Other);
		%feature("autodoc", "1");
		void Append(const IntAna_Curve &I);
		%feature("autodoc", "1");
		void Append(const IntAna_Curve &I, IntAna_ListIteratorOfListOfCurve & theIt);
		%feature("autodoc", "1");
		void Append(IntAna_ListOfCurve & Other);
		%feature("autodoc", "1");
		IntAna_Curve & First() const;
		%feature("autodoc", "1");
		IntAna_Curve & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(IntAna_ListIteratorOfListOfCurve & It);
		%feature("autodoc", "1");
		void InsertBefore(const IntAna_Curve &I, IntAna_ListIteratorOfListOfCurve & It);
		%feature("autodoc", "1");
		void InsertBefore(IntAna_ListOfCurve & Other, IntAna_ListIteratorOfListOfCurve & It);
		%feature("autodoc", "1");
		void InsertAfter(const IntAna_Curve &I, IntAna_ListIteratorOfListOfCurve & It);
		%feature("autodoc", "1");
		void InsertAfter(IntAna_ListOfCurve & Other, IntAna_ListIteratorOfListOfCurve & It);

};
%extend IntAna_ListOfCurve {
	~IntAna_ListOfCurve() {
	printf("Call custom destructor for instance of IntAna_ListOfCurve\n");
	}
};

%nodefaultctor IntAna_ListIteratorOfListOfCurve;
class IntAna_ListIteratorOfListOfCurve {
	public:
		%feature("autodoc", "1");
		~IntAna_ListIteratorOfListOfCurve();
		%feature("autodoc", "1");
		IntAna_ListIteratorOfListOfCurve();
		%feature("autodoc", "1");
		IntAna_ListIteratorOfListOfCurve(const IntAna_ListOfCurve &L);
		%feature("autodoc", "1");
		void Initialize(const IntAna_ListOfCurve &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		IntAna_Curve & Value() const;

};
%extend IntAna_ListIteratorOfListOfCurve {
	~IntAna_ListIteratorOfListOfCurve() {
	printf("Call custom destructor for instance of IntAna_ListIteratorOfListOfCurve\n");
	}
};

%nodefaultctor IntAna_Int3Pln;
class IntAna_Int3Pln {
	public:
		%feature("autodoc", "1");
		~IntAna_Int3Pln();
		%feature("autodoc", "1");
		IntAna_Int3Pln();
		%feature("autodoc", "1");
		IntAna_Int3Pln(const gp_Pln &P1, const gp_Pln &P2, const gp_Pln &P3);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &P1, const gp_Pln &P2, const gp_Pln &P3);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;

};
%extend IntAna_Int3Pln {
	~IntAna_Int3Pln() {
	printf("Call custom destructor for instance of IntAna_Int3Pln\n");
	}
};

%nodefaultctor IntAna_Curve;
class IntAna_Curve {
	public:
		%feature("autodoc", "1");
		~IntAna_Curve();
		%feature("autodoc", "1");
		IntAna_Curve();
		%feature("autodoc", "1");
		void SetCylinderQuadValues(const gp_Cylinder &Cylinder, const Standard_Real Qxx, const Standard_Real Qyy, const Standard_Real Qzz, const Standard_Real Qxy, const Standard_Real Qxz, const Standard_Real Qyz, const Standard_Real Qx, const Standard_Real Qy, const Standard_Real Qz, const Standard_Real Q1, const Standard_Real Tol, const Standard_Real DomInf, const Standard_Real DomSup, const Standard_Boolean TwoZForATheta, const Standard_Boolean ZIsPositive);
		%feature("autodoc", "1");
		void SetConeQuadValues(const gp_Cone &Cone, const Standard_Real Qxx, const Standard_Real Qyy, const Standard_Real Qzz, const Standard_Real Qxy, const Standard_Real Qxz, const Standard_Real Qyz, const Standard_Real Qx, const Standard_Real Qy, const Standard_Real Qz, const Standard_Real Q1, const Standard_Real Tol, const Standard_Real DomInf, const Standard_Real DomSup, const Standard_Boolean TwoZForATheta, const Standard_Boolean ZIsPositive);
		%feature("autodoc", "1");
		Standard_Boolean IsOpen() const;
		%feature("autodoc", "1");
		void Domain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFirstOpen() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLastOpen() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real Theta);
		%feature("autodoc", "1");
		Standard_Boolean D1u(const Standard_Real Theta, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		Standard_Boolean FindParameter(const gp_Pnt &P, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetIsFirstOpen(const Standard_Boolean Flag);
		%feature("autodoc", "1");
		void SetIsLastOpen(const Standard_Boolean Flag);
		%feature("autodoc", "1");
		void InternalUVValue(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetDomain(const Standard_Real Theta1, const Standard_Real Theta2);

};
%extend IntAna_Curve {
	~IntAna_Curve() {
	printf("Call custom destructor for instance of IntAna_Curve\n");
	}
};

%nodefaultctor IntAna_IntLinTorus;
class IntAna_IntLinTorus {
	public:
		%feature("autodoc", "1");
		~IntAna_IntLinTorus();
		%feature("autodoc", "1");
		IntAna_IntLinTorus();
		%feature("autodoc", "1");
		IntAna_IntLinTorus(const gp_Lin &L, const gp_Torus &T);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const gp_Torus &T);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const gp_Pnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real ParamOnLine(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ParamOnTorus(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend IntAna_IntLinTorus {
	~IntAna_IntLinTorus() {
	printf("Call custom destructor for instance of IntAna_IntLinTorus\n");
	}
};