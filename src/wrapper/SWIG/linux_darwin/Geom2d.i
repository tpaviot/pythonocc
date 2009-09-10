/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module Geom2d

%include Geom2d_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2d_dependencies.i


%include Geom2d_headers.i




%nodefaultctor Handle_Geom2d_Geometry;
class Handle_Geom2d_Geometry : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry();
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry(const Handle_Geom2d_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry(const Geom2d_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & operator=(const Handle_Geom2d_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & operator=(const Geom2d_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Geometry {
	Geom2d_Geometry* GetObject() {
	return (Geom2d_Geometry*)$self->Access();
	}
};
%extend Handle_Geom2d_Geometry {
	~Handle_Geom2d_Geometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Geometry\n");}
	}
};


%nodefaultctor Handle_Geom2d_Curve;
class Handle_Geom2d_Curve : public Handle_Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Curve();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve(const Handle_Geom2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve(const Geom2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator=(const Handle_Geom2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator=(const Geom2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Curve {
	Geom2d_Curve* GetObject() {
	return (Geom2d_Curve*)$self->Access();
	}
};
%extend Handle_Geom2d_Curve {
	~Handle_Geom2d_Curve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Curve\n");}
	}
};


%nodefaultctor Handle_Geom2d_Conic;
class Handle_Geom2d_Conic : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Conic();
		%feature("autodoc", "1");
		Handle_Geom2d_Conic(const Handle_Geom2d_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Conic(const Geom2d_Conic *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Conic & operator=(const Handle_Geom2d_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Conic & operator=(const Geom2d_Conic *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Conic const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Conic {
	Geom2d_Conic* GetObject() {
	return (Geom2d_Conic*)$self->Access();
	}
};
%extend Handle_Geom2d_Conic {
	~Handle_Geom2d_Conic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Conic\n");}
	}
};


%nodefaultctor Handle_Geom2d_OffsetCurve;
class Handle_Geom2d_OffsetCurve : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve(const Handle_Geom2d_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve(const Geom2d_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve & operator=(const Handle_Geom2d_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve & operator=(const Geom2d_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_OffsetCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_OffsetCurve {
	Geom2d_OffsetCurve* GetObject() {
	return (Geom2d_OffsetCurve*)$self->Access();
	}
};
%extend Handle_Geom2d_OffsetCurve {
	~Handle_Geom2d_OffsetCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_OffsetCurve\n");}
	}
};


%nodefaultctor Handle_Geom2d_Circle;
class Handle_Geom2d_Circle : public Handle_Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Circle();
		%feature("autodoc", "1");
		Handle_Geom2d_Circle(const Handle_Geom2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Circle(const Geom2d_Circle *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Circle & operator=(const Handle_Geom2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Circle & operator=(const Geom2d_Circle *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Circle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Circle {
	Geom2d_Circle* GetObject() {
	return (Geom2d_Circle*)$self->Access();
	}
};
%extend Handle_Geom2d_Circle {
	~Handle_Geom2d_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Circle\n");}
	}
};


%nodefaultctor Handle_Geom2d_Vector;
class Handle_Geom2d_Vector : public Handle_Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Vector();
		%feature("autodoc", "1");
		Handle_Geom2d_Vector(const Handle_Geom2d_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Vector(const Geom2d_Vector *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Vector & operator=(const Handle_Geom2d_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Vector & operator=(const Geom2d_Vector *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Vector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Vector {
	Geom2d_Vector* GetObject() {
	return (Geom2d_Vector*)$self->Access();
	}
};
%extend Handle_Geom2d_Vector {
	~Handle_Geom2d_Vector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Vector\n");}
	}
};


%nodefaultctor Handle_Geom2d_BoundedCurve;
class Handle_Geom2d_BoundedCurve : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve(const Handle_Geom2d_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve(const Geom2d_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & operator=(const Handle_Geom2d_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & operator=(const Geom2d_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BoundedCurve {
	Geom2d_BoundedCurve* GetObject() {
	return (Geom2d_BoundedCurve*)$self->Access();
	}
};
%extend Handle_Geom2d_BoundedCurve {
	~Handle_Geom2d_BoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_BoundedCurve\n");}
	}
};


%nodefaultctor Handle_Geom2d_Parabola;
class Handle_Geom2d_Parabola : public Handle_Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola();
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola(const Handle_Geom2d_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola(const Geom2d_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola & operator=(const Handle_Geom2d_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola & operator=(const Geom2d_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Parabola const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Parabola {
	Geom2d_Parabola* GetObject() {
	return (Geom2d_Parabola*)$self->Access();
	}
};
%extend Handle_Geom2d_Parabola {
	~Handle_Geom2d_Parabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Parabola\n");}
	}
};


%nodefaultctor Handle_Geom2d_Transformation;
class Handle_Geom2d_Transformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation();
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation(const Handle_Geom2d_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation(const Geom2d_Transformation *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation & operator=(const Handle_Geom2d_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation & operator=(const Geom2d_Transformation *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Transformation {
	Geom2d_Transformation* GetObject() {
	return (Geom2d_Transformation*)$self->Access();
	}
};
%extend Handle_Geom2d_Transformation {
	~Handle_Geom2d_Transformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Transformation\n");}
	}
};


%nodefaultctor Handle_Geom2d_UndefinedDerivative;
class Handle_Geom2d_UndefinedDerivative : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative();
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative(const Handle_Geom2d_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative(const Geom2d_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative & operator=(const Handle_Geom2d_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative & operator=(const Geom2d_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_UndefinedDerivative {
	Geom2d_UndefinedDerivative* GetObject() {
	return (Geom2d_UndefinedDerivative*)$self->Access();
	}
};
%extend Handle_Geom2d_UndefinedDerivative {
	~Handle_Geom2d_UndefinedDerivative() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_UndefinedDerivative\n");}
	}
};


%nodefaultctor Handle_Geom2d_Point;
class Handle_Geom2d_Point : public Handle_Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Point();
		%feature("autodoc", "1");
		Handle_Geom2d_Point(const Handle_Geom2d_Point &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Point(const Geom2d_Point *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Point & operator=(const Handle_Geom2d_Point &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Point & operator=(const Geom2d_Point *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Point {
	Geom2d_Point* GetObject() {
	return (Geom2d_Point*)$self->Access();
	}
};
%extend Handle_Geom2d_Point {
	~Handle_Geom2d_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Point\n");}
	}
};


%nodefaultctor Handle_Geom2d_Hyperbola;
class Handle_Geom2d_Hyperbola : public Handle_Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola();
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola(const Handle_Geom2d_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola(const Geom2d_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola & operator=(const Handle_Geom2d_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola & operator=(const Geom2d_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Hyperbola const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Hyperbola {
	Geom2d_Hyperbola* GetObject() {
	return (Geom2d_Hyperbola*)$self->Access();
	}
};
%extend Handle_Geom2d_Hyperbola {
	~Handle_Geom2d_Hyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Hyperbola\n");}
	}
};


%nodefaultctor Handle_Geom2d_Ellipse;
class Handle_Geom2d_Ellipse : public Handle_Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse();
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse(const Handle_Geom2d_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse(const Geom2d_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse & operator=(const Handle_Geom2d_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse & operator=(const Geom2d_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Ellipse const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Ellipse {
	Geom2d_Ellipse* GetObject() {
	return (Geom2d_Ellipse*)$self->Access();
	}
};
%extend Handle_Geom2d_Ellipse {
	~Handle_Geom2d_Ellipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Ellipse\n");}
	}
};


%nodefaultctor Handle_Geom2d_BezierCurve;
class Handle_Geom2d_BezierCurve : public Handle_Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve(const Handle_Geom2d_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve(const Geom2d_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve & operator=(const Handle_Geom2d_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve & operator=(const Geom2d_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BezierCurve {
	Geom2d_BezierCurve* GetObject() {
	return (Geom2d_BezierCurve*)$self->Access();
	}
};
%extend Handle_Geom2d_BezierCurve {
	~Handle_Geom2d_BezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_BezierCurve\n");}
	}
};


%nodefaultctor Handle_Geom2d_Line;
class Handle_Geom2d_Line : public Handle_Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Line();
		%feature("autodoc", "1");
		Handle_Geom2d_Line(const Handle_Geom2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Line(const Geom2d_Line *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Line & operator=(const Handle_Geom2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Line & operator=(const Geom2d_Line *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Line {
	Geom2d_Line* GetObject() {
	return (Geom2d_Line*)$self->Access();
	}
};
%extend Handle_Geom2d_Line {
	~Handle_Geom2d_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Line\n");}
	}
};


%nodefaultctor Handle_Geom2d_AxisPlacement;
class Handle_Geom2d_AxisPlacement : public Handle_Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement();
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement(const Handle_Geom2d_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement(const Geom2d_AxisPlacement *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement & operator=(const Handle_Geom2d_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement & operator=(const Geom2d_AxisPlacement *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_AxisPlacement {
	Geom2d_AxisPlacement* GetObject() {
	return (Geom2d_AxisPlacement*)$self->Access();
	}
};
%extend Handle_Geom2d_AxisPlacement {
	~Handle_Geom2d_AxisPlacement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_AxisPlacement\n");}
	}
};


%nodefaultctor Handle_Geom2d_VectorWithMagnitude;
class Handle_Geom2d_VectorWithMagnitude : public Handle_Geom2d_Vector {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude();
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude(const Handle_Geom2d_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude(const Geom2d_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude & operator=(const Handle_Geom2d_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude & operator=(const Geom2d_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_VectorWithMagnitude {
	Geom2d_VectorWithMagnitude* GetObject() {
	return (Geom2d_VectorWithMagnitude*)$self->Access();
	}
};
%extend Handle_Geom2d_VectorWithMagnitude {
	~Handle_Geom2d_VectorWithMagnitude() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_VectorWithMagnitude\n");}
	}
};


%nodefaultctor Handle_Geom2d_UndefinedValue;
class Handle_Geom2d_UndefinedValue : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue();
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue(const Handle_Geom2d_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue(const Geom2d_UndefinedValue *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue & operator=(const Handle_Geom2d_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue & operator=(const Geom2d_UndefinedValue *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_UndefinedValue {
	Geom2d_UndefinedValue* GetObject() {
	return (Geom2d_UndefinedValue*)$self->Access();
	}
};
%extend Handle_Geom2d_UndefinedValue {
	~Handle_Geom2d_UndefinedValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_UndefinedValue\n");}
	}
};


%nodefaultctor Handle_Geom2d_BSplineCurve;
class Handle_Geom2d_BSplineCurve : public Handle_Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve(const Handle_Geom2d_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve(const Geom2d_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve & operator=(const Handle_Geom2d_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve & operator=(const Geom2d_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BSplineCurve {
	Geom2d_BSplineCurve* GetObject() {
	return (Geom2d_BSplineCurve*)$self->Access();
	}
};
%extend Handle_Geom2d_BSplineCurve {
	~Handle_Geom2d_BSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_BSplineCurve\n");}
	}
};


%nodefaultctor Handle_Geom2d_Direction;
class Handle_Geom2d_Direction : public Handle_Geom2d_Vector {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_Direction();
		%feature("autodoc", "1");
		Handle_Geom2d_Direction(const Handle_Geom2d_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Direction(const Geom2d_Direction *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Direction & operator=(const Handle_Geom2d_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_Direction & operator=(const Geom2d_Direction *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_Direction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Direction {
	Geom2d_Direction* GetObject() {
	return (Geom2d_Direction*)$self->Access();
	}
};
%extend Handle_Geom2d_Direction {
	~Handle_Geom2d_Direction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_Direction\n");}
	}
};


%nodefaultctor Handle_Geom2d_CartesianPoint;
class Handle_Geom2d_CartesianPoint : public Handle_Geom2d_Point {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint();
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint(const Handle_Geom2d_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint(const Geom2d_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint & operator=(const Handle_Geom2d_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint & operator=(const Geom2d_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_CartesianPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_CartesianPoint {
	Geom2d_CartesianPoint* GetObject() {
	return (Geom2d_CartesianPoint*)$self->Access();
	}
};
%extend Handle_Geom2d_CartesianPoint {
	~Handle_Geom2d_CartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_CartesianPoint\n");}
	}
};


%nodefaultctor Handle_Geom2d_TrimmedCurve;
class Handle_Geom2d_TrimmedCurve : public Handle_Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve(const Handle_Geom2d_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve(const Geom2d_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve & operator=(const Handle_Geom2d_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve & operator=(const Geom2d_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom2d_TrimmedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_TrimmedCurve {
	Geom2d_TrimmedCurve* GetObject() {
	return (Geom2d_TrimmedCurve*)$self->Access();
	}
};
%extend Handle_Geom2d_TrimmedCurve {
	~Handle_Geom2d_TrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Geom2d_TrimmedCurve\n");}
	}
};


%nodefaultctor Geom2d_Geometry;
class Geom2d_Geometry : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d &P, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d &P, const Standard_Real S);
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d &V);
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Mirrored(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Mirrored(const gp_Ax2d &A) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Rotated(const gp_Pnt2d &P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Scaled(const gp_Pnt2d &P, const Standard_Real S) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Transformed(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Translated(const gp_Vec2d &V) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Translated(const gp_Pnt2d &P1, const gp_Pnt2d &P2) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Geometry {
	Handle_Geom2d_Geometry GetHandle() {
	return *(Handle_Geom2d_Geometry*) &$self;
	}
};
%extend Geom2d_Geometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Geometry {
	~Geom2d_Geometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Geometry\n");}
	}
};


%nodefaultctor Geom2d_AxisPlacement;
class Geom2d_AxisPlacement : public Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Geom2d_AxisPlacement(const gp_Ax2d &A);
		%feature("autodoc", "1");
		Geom2d_AxisPlacement(const gp_Pnt2d &P, const gp_Dir2d &V);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Handle_Geom2d_AxisPlacement Reversed() const;
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir2d &V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Real Angle(const Handle_Geom2d_AxisPlacement &Other) const;
		%feature("autodoc", "1");
		gp_Ax2d Ax2d() const;
		%feature("autodoc", "1");
		gp_Dir2d Direction() const;
		%feature("autodoc", "1");
		gp_Pnt2d Location() const;

};
%extend Geom2d_AxisPlacement {
	Handle_Geom2d_AxisPlacement GetHandle() {
	return *(Handle_Geom2d_AxisPlacement*) &$self;
	}
};
%extend Geom2d_AxisPlacement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_AxisPlacement {
	~Geom2d_AxisPlacement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_AxisPlacement\n");}
	}
};


%nodefaultctor Geom2d_UndefinedValue;
class Geom2d_UndefinedValue : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Geom2d_UndefinedValue();
		%feature("autodoc", "1");
		Geom2d_UndefinedValue(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedValue NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_UndefinedValue {
	Handle_Geom2d_UndefinedValue GetHandle() {
	return *(Handle_Geom2d_UndefinedValue*) &$self;
	}
};
%extend Geom2d_UndefinedValue {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_UndefinedValue {
	~Geom2d_UndefinedValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_UndefinedValue\n");}
	}
};


%nodefaultctor Geom2d_Curve;
class Geom2d_Curve : public Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Reversed() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
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
		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Curve {
	Handle_Geom2d_Curve GetHandle() {
	return *(Handle_Geom2d_Curve*) &$self;
	}
};
%extend Geom2d_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Curve {
	~Geom2d_Curve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Curve\n");}
	}
};


%nodefaultctor Geom2d_Line;
class Geom2d_Line : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Geom2d_Line(const gp_Ax2d &A);
		%feature("autodoc", "1");
		Geom2d_Line(const gp_Lin2d &L);
		%feature("autodoc", "1");
		Geom2d_Line(const gp_Pnt2d &P, const gp_Dir2d &V);
		%feature("autodoc", "1");
		void SetLin2d(const gp_Lin2d &L);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir2d &V);
		%feature("autodoc", "1");
		const gp_Dir2d & Direction() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		const gp_Pnt2d & Location() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2d &A);
		%feature("autodoc", "1");
		const gp_Ax2d & Position() const;
		%feature("autodoc", "1");
		gp_Lin2d Lin2d() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;

};
%extend Geom2d_Line {
	Handle_Geom2d_Line GetHandle() {
	return *(Handle_Geom2d_Line*) &$self;
	}
};
%extend Geom2d_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Line {
	~Geom2d_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Line\n");}
	}
};


%nodefaultctor Geom2d_Point;
class Geom2d_Point : public Geom2d_Geometry {
	public:
		%feature("autodoc","Coord()->[Standard_Real, Standard_Real]");
		virtual		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real X() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Handle_Geom2d_Point &Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Handle_Geom2d_Point &Other) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Point {
	Handle_Geom2d_Point GetHandle() {
	return *(Handle_Geom2d_Point*) &$self;
	}
};
%extend Geom2d_Point {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Point {
	~Geom2d_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Point\n");}
	}
};


%nodefaultctor Geom2d_Conic;
class Geom2d_Conic : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d &A);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		gp_Pnt2d Location() const;
		%feature("autodoc", "1");
		const gp_Ax22d & Position() const;
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Conic {
	Handle_Geom2d_Conic GetHandle() {
	return *(Handle_Geom2d_Conic*) &$self;
	}
};
%extend Geom2d_Conic {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Conic {
	~Geom2d_Conic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Conic\n");}
	}
};


%nodefaultctor Geom2d_Parabola;
class Geom2d_Parabola : public Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Geom2d_Parabola(const gp_Parab2d &Prb);
		%feature("autodoc", "1");
		Geom2d_Parabola(const gp_Ax2d &MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Geom2d_Parabola(const gp_Ax22d &Axis, const Standard_Real Focal);
		%feature("autodoc", "1");
		Geom2d_Parabola(const gp_Ax2d &D, const gp_Pnt2d &F);
		%feature("autodoc", "1");
		void SetFocal(const Standard_Real Focal);
		%feature("autodoc", "1");
		void SetParab2d(const gp_Parab2d &Prb);
		%feature("autodoc", "1");
		gp_Parab2d Parab2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
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
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;

};
%extend Geom2d_Parabola {
	Handle_Geom2d_Parabola GetHandle() {
	return *(Handle_Geom2d_Parabola*) &$self;
	}
};
%extend Geom2d_Parabola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Parabola {
	~Geom2d_Parabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Parabola\n");}
	}
};


%nodefaultctor Geom2d_UndefinedDerivative;
class Geom2d_UndefinedDerivative : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Geom2d_UndefinedDerivative();
		%feature("autodoc", "1");
		Geom2d_UndefinedDerivative(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Geom2d_UndefinedDerivative NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_UndefinedDerivative {
	Handle_Geom2d_UndefinedDerivative GetHandle() {
	return *(Handle_Geom2d_UndefinedDerivative*) &$self;
	}
};
%extend Geom2d_UndefinedDerivative {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_UndefinedDerivative {
	~Geom2d_UndefinedDerivative() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_UndefinedDerivative\n");}
	}
};


%nodefaultctor Geom2d_Transformation;
class Geom2d_Transformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Geom2d_Transformation();
		%feature("autodoc", "1");
		Geom2d_Transformation(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		void SetMirror(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void SetRotation(const gp_Pnt2d &P, const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetScale(const gp_Pnt2d &P, const Standard_Real S);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax2d &FromSystem1, const gp_Ax2d &ToSystem2);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax2d &ToSystem);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec2d &V);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void SetTrsf2d(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		gp_Trsf2d Trsf2d() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation Inverted() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation Multiplied(const Handle_Geom2d_Transformation &Other) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation operator*(const Handle_Geom2d_Transformation &Other) const;
		%feature("autodoc", "1");
		void Multiply(const Handle_Geom2d_Transformation &Other);
		%feature("autodoc", "1");
		void operator*=(const Handle_Geom2d_Transformation &Other);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void PreMultiply(const Handle_Geom2d_Transformation &Other);
		%feature("autodoc","Transforms()->[Standard_Real, Standard_Real]");
		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Transformation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Transformation {
	Handle_Geom2d_Transformation GetHandle() {
	return *(Handle_Geom2d_Transformation*) &$self;
	}
};
%extend Geom2d_Transformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Transformation {
	~Geom2d_Transformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Transformation\n");}
	}
};


%nodefaultctor Geom2d_CartesianPoint;
class Geom2d_CartesianPoint : public Geom2d_Point {
	public:
		%feature("autodoc", "1");
		Geom2d_CartesianPoint(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Geom2d_CartesianPoint(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetPnt2d(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc","Coord()->[Standard_Real, Standard_Real]");
		virtual		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real X() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Y() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_CartesianPoint {
	Handle_Geom2d_CartesianPoint GetHandle() {
	return *(Handle_Geom2d_CartesianPoint*) &$self;
	}
};
%extend Geom2d_CartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_CartesianPoint {
	~Geom2d_CartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_CartesianPoint\n");}
	}
};


%nodefaultctor Geom2d_BoundedCurve;
class Geom2d_BoundedCurve : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		virtual		gp_Pnt2d EndPoint() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d StartPoint() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_BoundedCurve {
	Handle_Geom2d_BoundedCurve GetHandle() {
	return *(Handle_Geom2d_BoundedCurve*) &$self;
	}
};
%extend Geom2d_BoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_BoundedCurve {
	~Geom2d_BoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_BoundedCurve\n");}
	}
};


%nodefaultctor Geom2d_BSplineCurve;
class Geom2d_BSplineCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom2d_BSplineCurve(const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		Geom2d_BSplineCurve(const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer Index, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncrementMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void InsertKnot(const Standard_Real U, const Standard_Integer M=1, const Standard_Real ParametricTolerance=0.0);
		%feature("autodoc", "1");
		void InsertKnots(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=0);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer M, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void InsertPoleAfter(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight=1.0e+0);
		%feature("autodoc", "1");
		void InsertPoleBefore(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight=1.0e+0);
		%feature("autodoc", "1");
		void RemovePole(const Standard_Integer Index);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void SetKnot(const Standard_Integer Index, const Standard_Real K);
		%feature("autodoc", "1");
		void SetKnots(const TColStd_Array1OfReal &K);
		%feature("autodoc", "1");
		void SetKnot(const Standard_Integer Index, const Standard_Real K, const Standard_Integer M);
		%feature("autodoc","PeriodicNormalization()->Standard_Real");
		void PeriodicNormalization(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetPeriodic();
		%feature("autodoc", "1");
		void SetOrigin(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetNotPeriodic();
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer Index, const Standard_Real Weight);
		%feature("autodoc","MovePoint(Standard_Real U, const P, Standard_Integer Index1, Standard_Integer Index2)->[Standard_IntegerStandard_Integer]");
		void MovePoint(const Standard_Real U, const gp_Pnt2d &P, const Standard_Integer Index1, const Standard_Integer Index2, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","MovePointAndTangent(Standard_Real U, const P, const Tangent, Standard_Real Tolerance, Standard_Integer StartingCondition, Standard_Integer EndingCondition)->Standard_Integer");
		void MovePointAndTangent(const Standard_Real U, const gp_Pnt2d &P, const gp_Vec2d &Tangent, const Standard_Real Tolerance, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
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
		gp_Pnt2d LocalValue(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt2d & P, gp_Vec2d & V1) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		gp_Vec2d LocalDN(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer FirstUKnotIndex() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real Knot(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & K) const;
		%feature("autodoc", "1");
		void KnotSequence(TColStd_Array1OfReal & K) const;
		%feature("autodoc", "1");
		GeomAbs_BSplKnotDistribution KnotDistribution() const;
		%feature("autodoc", "1");
		Standard_Integer LastUKnotIndex() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc","LocateU(Standard_Real U, Standard_Real ParametricTolerance, Standard_Boolean WithKnotRepetition=0)->[Standard_IntegerStandard_Integer]");
		void LocateU(const Standard_Real U, const Standard_Real ParametricTolerance, Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Boolean WithKnotRepetition=0) const;
		%feature("autodoc", "1");
		Standard_Integer Multiplicity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Multiplicities(TColStd_Array1OfInteger & M) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		gp_Pnt2d Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & P) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array1OfReal & W) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real ToleranceUV)->Standard_Real");
		void Resolution(const Standard_Real ToleranceUV, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;

};
%extend Geom2d_BSplineCurve {
	Handle_Geom2d_BSplineCurve GetHandle() {
	return *(Handle_Geom2d_BSplineCurve*) &$self;
	}
};
%extend Geom2d_BSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_BSplineCurve {
	~Geom2d_BSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_BSplineCurve\n");}
	}
};


%nodefaultctor Geom2d_Vector;
class Geom2d_Vector : public Geom2d_Geometry {
	public:
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Handle_Geom2d_Vector Reversed() const;
		%feature("autodoc", "1");
		Standard_Real Angle(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc","Coord()->[Standard_Real, Standard_Real]");
		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Crossed(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		gp_Vec2d Vec2d() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Vector {
	Handle_Geom2d_Vector GetHandle() {
	return *(Handle_Geom2d_Vector*) &$self;
	}
};
%extend Geom2d_Vector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Vector {
	~Geom2d_Vector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Vector\n");}
	}
};


%nodefaultctor Geom2d_VectorWithMagnitude;
class Geom2d_VectorWithMagnitude : public Geom2d_Vector {
	public:
		%feature("autodoc", "1");
		Geom2d_VectorWithMagnitude(const gp_Vec2d &V);
		%feature("autodoc", "1");
		Geom2d_VectorWithMagnitude(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		Geom2d_VectorWithMagnitude(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetVec2d(const gp_Vec2d &V);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void Add(const Handle_Geom2d_Vector &Other);
		%feature("autodoc", "1");
		void operator+=(const Handle_Geom2d_Vector &Other);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude Added(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude operator+(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		Standard_Real operator^(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude Normalized() const;
		%feature("autodoc", "1");
		void Subtract(const Handle_Geom2d_Vector &Other);
		%feature("autodoc", "1");
		void operator-=(const Handle_Geom2d_Vector &Other);
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude Subtracted(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		Handle_Geom2d_VectorWithMagnitude operator-(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;

};
%extend Geom2d_VectorWithMagnitude {
	Handle_Geom2d_VectorWithMagnitude GetHandle() {
	return *(Handle_Geom2d_VectorWithMagnitude*) &$self;
	}
};
%extend Geom2d_VectorWithMagnitude {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_VectorWithMagnitude {
	~Geom2d_VectorWithMagnitude() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_VectorWithMagnitude\n");}
	}
};


%nodefaultctor Geom2d_Hyperbola;
class Geom2d_Hyperbola : public Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Geom2d_Hyperbola(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		Geom2d_Hyperbola(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Geom2d_Hyperbola(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetHypr2d(const gp_Hypr2d &H);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gp_Hypr2d Hypr2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		gp_Ax2d Asymptote1() const;
		%feature("autodoc", "1");
		gp_Ax2d Asymptote2() const;
		%feature("autodoc", "1");
		gp_Hypr2d ConjugateBranch1() const;
		%feature("autodoc", "1");
		gp_Hypr2d ConjugateBranch2() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus2() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		gp_Hypr2d OtherBranch() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
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
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Hyperbola {
	Handle_Geom2d_Hyperbola GetHandle() {
	return *(Handle_Geom2d_Hyperbola*) &$self;
	}
};
%extend Geom2d_Hyperbola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Hyperbola {
	~Geom2d_Hyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Hyperbola\n");}
	}
};


%nodefaultctor Geom2d_BezierCurve;
class Geom2d_BezierCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom2d_BezierCurve(const TColgp_Array1OfPnt2d &CurvePoles);
		%feature("autodoc", "1");
		Geom2d_BezierCurve(const TColgp_Array1OfPnt2d &CurvePoles, const TColStd_Array1OfReal &PoleWeights);
		%feature("autodoc", "1");
		void Increase(const Standard_Integer Degree);
		%feature("autodoc", "1");
		void InsertPoleAfter(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight=1.0e+0);
		%feature("autodoc", "1");
		void InsertPoleBefore(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight=1.0e+0);
		%feature("autodoc", "1");
		void RemovePole(const Standard_Integer Index);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt2d &P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer Index, const Standard_Real Weight);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
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
		virtual		gp_Pnt2d EndPoint() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		gp_Pnt2d Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & P) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d StartPoint() const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array1OfReal & W) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real ToleranceUV)->Standard_Real");
		void Resolution(const Standard_Real ToleranceUV, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_BezierCurve {
	Handle_Geom2d_BezierCurve GetHandle() {
	return *(Handle_Geom2d_BezierCurve*) &$self;
	}
};
%extend Geom2d_BezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_BezierCurve {
	~Geom2d_BezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_BezierCurve\n");}
	}
};


%nodefaultctor Geom2d_Direction;
class Geom2d_Direction : public Geom2d_Vector {
	public:
		%feature("autodoc", "1");
		Geom2d_Direction(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		Geom2d_Direction(const gp_Dir2d &V);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetDir2d(const gp_Dir2d &V);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		gp_Dir2d Dir2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Crossed(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		Standard_Real operator^(const Handle_Geom2d_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Direction {
	Handle_Geom2d_Direction GetHandle() {
	return *(Handle_Geom2d_Direction*) &$self;
	}
};
%extend Geom2d_Direction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Direction {
	~Geom2d_Direction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Direction\n");}
	}
};


%nodefaultctor Geom2d_OffsetCurve;
class Geom2d_OffsetCurve : public Geom2d_Curve {
	public:
		%feature("autodoc", "1");
		Geom2d_OffsetCurve(const Handle_Geom2d_Curve &C, const Standard_Real Offset);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void SetOffsetValue(const Standard_Real D);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve BasisCurve() const;
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
		void Value(const Standard_Real U, gp_Pnt2d & P, gp_Pnt2d & Pbasis, gp_Vec2d & V1basis) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Pnt2d & Pbasis, gp_Vec2d & V1, gp_Vec2d & V1basis, gp_Vec2d & V2basis) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Pnt2d & Pbasis, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V1basis, gp_Vec2d & V2basis, gp_Vec2d & V3basis) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Real Offset() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_OffsetCurve {
	Handle_Geom2d_OffsetCurve GetHandle() {
	return *(Handle_Geom2d_OffsetCurve*) &$self;
	}
};
%extend Geom2d_OffsetCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_OffsetCurve {
	~Geom2d_OffsetCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_OffsetCurve\n");}
	}
};


%nodefaultctor Geom2d_Ellipse;
class Geom2d_Ellipse : public Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Geom2d_Ellipse(const gp_Elips2d &E);
		%feature("autodoc", "1");
		Geom2d_Ellipse(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Geom2d_Ellipse(const gp_Ax22d &Axis, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetElips2d(const gp_Elips2d &E);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gp_Elips2d Elips2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus2() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
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
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Ellipse {
	Handle_Geom2d_Ellipse GetHandle() {
	return *(Handle_Geom2d_Ellipse*) &$self;
	}
};
%extend Geom2d_Ellipse {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Ellipse {
	~Geom2d_Ellipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Ellipse\n");}
	}
};


%nodefaultctor Geom2d_Circle;
class Geom2d_Circle : public Geom2d_Conic {
	public:
		%feature("autodoc", "1");
		Geom2d_Circle(const gp_Circ2d &C);
		%feature("autodoc", "1");
		Geom2d_Circle(const gp_Ax2d &A, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Geom2d_Circle(const gp_Ax22d &A, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetCirc2d(const gp_Circ2d &C);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		gp_Circ2d Circ2d() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
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
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_Circle {
	Handle_Geom2d_Circle GetHandle() {
	return *(Handle_Geom2d_Circle*) &$self;
	}
};
%extend Geom2d_Circle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_Circle {
	~Geom2d_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_Circle\n");}
	}
};


%nodefaultctor Geom2d_TrimmedCurve;
class Geom2d_TrimmedCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom2d_TrimmedCurve(const Handle_Geom2d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real U1, const Standard_Real U2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve BasisCurve() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d EndPoint() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d StartPoint() const;
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
		virtual		void Transform(const gp_Trsf2d &T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf2d &T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom2d_TrimmedCurve {
	Handle_Geom2d_TrimmedCurve GetHandle() {
	return *(Handle_Geom2d_TrimmedCurve*) &$self;
	}
};
%extend Geom2d_TrimmedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Geom2d_TrimmedCurve {
	~Geom2d_TrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Geom2d_TrimmedCurve\n");}
	}
};
