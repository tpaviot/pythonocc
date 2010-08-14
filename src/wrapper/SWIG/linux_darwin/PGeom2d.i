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
%module PGeom2d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include PGeom2d_dependencies.i


%include PGeom2d_headers.i




%nodefaultctor Handle_PGeom2d_Geometry;
class Handle_PGeom2d_Geometry : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Geometry();
		%feature("autodoc", "1");
		Handle_PGeom2d_Geometry(const Handle_PGeom2d_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Geometry(const PGeom2d_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Geometry & operator=(const Handle_PGeom2d_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Geometry & operator=(const PGeom2d_Geometry *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Geometry const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Geometry {
	PGeom2d_Geometry* GetObject() {
	return (PGeom2d_Geometry*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Geometry::~Handle_PGeom2d_Geometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Geometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Curve;
class Handle_PGeom2d_Curve : public Handle_PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve();
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve(const Handle_PGeom2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve(const PGeom2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve & operator=(const Handle_PGeom2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve & operator=(const PGeom2d_Curve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Curve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Curve {
	PGeom2d_Curve* GetObject() {
	return (PGeom2d_Curve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Curve::~Handle_PGeom2d_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Line;
class Handle_PGeom2d_Line : public Handle_PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Line();
		%feature("autodoc", "1");
		Handle_PGeom2d_Line(const Handle_PGeom2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Line(const PGeom2d_Line *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Line & operator=(const Handle_PGeom2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Line & operator=(const PGeom2d_Line *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Line const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Line {
	PGeom2d_Line* GetObject() {
	return (PGeom2d_Line*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Line::~Handle_PGeom2d_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Conic;
class Handle_PGeom2d_Conic : public Handle_PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Conic();
		%feature("autodoc", "1");
		Handle_PGeom2d_Conic(const Handle_PGeom2d_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Conic(const PGeom2d_Conic *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Conic & operator=(const Handle_PGeom2d_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Conic & operator=(const PGeom2d_Conic *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Conic const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Conic {
	PGeom2d_Conic* GetObject() {
	return (PGeom2d_Conic*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Conic::~Handle_PGeom2d_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Conic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Ellipse;
class Handle_PGeom2d_Ellipse : public Handle_PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Ellipse();
		%feature("autodoc", "1");
		Handle_PGeom2d_Ellipse(const Handle_PGeom2d_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Ellipse(const PGeom2d_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Ellipse & operator=(const Handle_PGeom2d_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Ellipse & operator=(const PGeom2d_Ellipse *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Ellipse const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Ellipse {
	PGeom2d_Ellipse* GetObject() {
	return (PGeom2d_Ellipse*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Ellipse::~Handle_PGeom2d_Ellipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Ellipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_OffsetCurve;
class Handle_PGeom2d_OffsetCurve : public Handle_PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_OffsetCurve();
		%feature("autodoc", "1");
		Handle_PGeom2d_OffsetCurve(const Handle_PGeom2d_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_OffsetCurve(const PGeom2d_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_OffsetCurve & operator=(const Handle_PGeom2d_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_OffsetCurve & operator=(const PGeom2d_OffsetCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_OffsetCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_OffsetCurve {
	PGeom2d_OffsetCurve* GetObject() {
	return (PGeom2d_OffsetCurve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_OffsetCurve::~Handle_PGeom2d_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Vector;
class Handle_PGeom2d_Vector : public Handle_PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Vector();
		%feature("autodoc", "1");
		Handle_PGeom2d_Vector(const Handle_PGeom2d_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Vector(const PGeom2d_Vector *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Vector & operator=(const Handle_PGeom2d_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Vector & operator=(const PGeom2d_Vector *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Vector const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Vector {
	PGeom2d_Vector* GetObject() {
	return (PGeom2d_Vector*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Vector::~Handle_PGeom2d_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Vector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_VectorWithMagnitude;
class Handle_PGeom2d_VectorWithMagnitude : public Handle_PGeom2d_Vector {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_VectorWithMagnitude();
		%feature("autodoc", "1");
		Handle_PGeom2d_VectorWithMagnitude(const Handle_PGeom2d_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_VectorWithMagnitude(const PGeom2d_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_VectorWithMagnitude & operator=(const Handle_PGeom2d_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_VectorWithMagnitude & operator=(const PGeom2d_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_VectorWithMagnitude const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_VectorWithMagnitude {
	PGeom2d_VectorWithMagnitude* GetObject() {
	return (PGeom2d_VectorWithMagnitude*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_VectorWithMagnitude::~Handle_PGeom2d_VectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_VectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_BoundedCurve;
class Handle_PGeom2d_BoundedCurve : public Handle_PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve();
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve(const Handle_PGeom2d_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve(const PGeom2d_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve & operator=(const Handle_PGeom2d_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BoundedCurve & operator=(const PGeom2d_BoundedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_BoundedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_BoundedCurve {
	PGeom2d_BoundedCurve* GetObject() {
	return (PGeom2d_BoundedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_BoundedCurve::~Handle_PGeom2d_BoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_BoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_BezierCurve;
class Handle_PGeom2d_BezierCurve : public Handle_PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve();
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve(const Handle_PGeom2d_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve(const PGeom2d_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve & operator=(const Handle_PGeom2d_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BezierCurve & operator=(const PGeom2d_BezierCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_BezierCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_BezierCurve {
	PGeom2d_BezierCurve* GetObject() {
	return (PGeom2d_BezierCurve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_BezierCurve::~Handle_PGeom2d_BezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_BezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Circle;
class Handle_PGeom2d_Circle : public Handle_PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Circle();
		%feature("autodoc", "1");
		Handle_PGeom2d_Circle(const Handle_PGeom2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Circle(const PGeom2d_Circle *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Circle & operator=(const Handle_PGeom2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Circle & operator=(const PGeom2d_Circle *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Circle const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Circle {
	PGeom2d_Circle* GetObject() {
	return (PGeom2d_Circle*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Circle::~Handle_PGeom2d_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Point;
class Handle_PGeom2d_Point : public Handle_PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Point();
		%feature("autodoc", "1");
		Handle_PGeom2d_Point(const Handle_PGeom2d_Point &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Point(const PGeom2d_Point *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Point & operator=(const Handle_PGeom2d_Point &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Point & operator=(const PGeom2d_Point *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Point const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Point {
	PGeom2d_Point* GetObject() {
	return (PGeom2d_Point*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Point::~Handle_PGeom2d_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Hyperbola;
class Handle_PGeom2d_Hyperbola : public Handle_PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Hyperbola();
		%feature("autodoc", "1");
		Handle_PGeom2d_Hyperbola(const Handle_PGeom2d_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Hyperbola(const PGeom2d_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Hyperbola & operator=(const Handle_PGeom2d_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Hyperbola & operator=(const PGeom2d_Hyperbola *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Hyperbola const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Hyperbola {
	PGeom2d_Hyperbola* GetObject() {
	return (PGeom2d_Hyperbola*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Hyperbola::~Handle_PGeom2d_Hyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Hyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_TrimmedCurve;
class Handle_PGeom2d_TrimmedCurve : public Handle_PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_PGeom2d_TrimmedCurve(const Handle_PGeom2d_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_TrimmedCurve(const PGeom2d_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_TrimmedCurve & operator=(const Handle_PGeom2d_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_TrimmedCurve & operator=(const PGeom2d_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_TrimmedCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_TrimmedCurve {
	PGeom2d_TrimmedCurve* GetObject() {
	return (PGeom2d_TrimmedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_TrimmedCurve::~Handle_PGeom2d_TrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_TrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Transformation;
class Handle_PGeom2d_Transformation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Transformation();
		%feature("autodoc", "1");
		Handle_PGeom2d_Transformation(const Handle_PGeom2d_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Transformation(const PGeom2d_Transformation *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Transformation & operator=(const Handle_PGeom2d_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Transformation & operator=(const PGeom2d_Transformation *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Transformation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Transformation {
	PGeom2d_Transformation* GetObject() {
	return (PGeom2d_Transformation*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Transformation::~Handle_PGeom2d_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Parabola;
class Handle_PGeom2d_Parabola : public Handle_PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Parabola();
		%feature("autodoc", "1");
		Handle_PGeom2d_Parabola(const Handle_PGeom2d_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Parabola(const PGeom2d_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Parabola & operator=(const Handle_PGeom2d_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Parabola & operator=(const PGeom2d_Parabola *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Parabola const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Parabola {
	PGeom2d_Parabola* GetObject() {
	return (PGeom2d_Parabola*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Parabola::~Handle_PGeom2d_Parabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Parabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_Direction;
class Handle_PGeom2d_Direction : public Handle_PGeom2d_Vector {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_Direction();
		%feature("autodoc", "1");
		Handle_PGeom2d_Direction(const Handle_PGeom2d_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Direction(const PGeom2d_Direction *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_Direction & operator=(const Handle_PGeom2d_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_Direction & operator=(const PGeom2d_Direction *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_Direction const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_Direction {
	PGeom2d_Direction* GetObject() {
	return (PGeom2d_Direction*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_Direction::~Handle_PGeom2d_Direction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_Direction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_CartesianPoint;
class Handle_PGeom2d_CartesianPoint : public Handle_PGeom2d_Point {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_CartesianPoint();
		%feature("autodoc", "1");
		Handle_PGeom2d_CartesianPoint(const Handle_PGeom2d_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_CartesianPoint(const PGeom2d_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_CartesianPoint & operator=(const Handle_PGeom2d_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_CartesianPoint & operator=(const PGeom2d_CartesianPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_CartesianPoint const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_CartesianPoint {
	PGeom2d_CartesianPoint* GetObject() {
	return (PGeom2d_CartesianPoint*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_CartesianPoint::~Handle_PGeom2d_CartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_CartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_AxisPlacement;
class Handle_PGeom2d_AxisPlacement : public Handle_PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_AxisPlacement();
		%feature("autodoc", "1");
		Handle_PGeom2d_AxisPlacement(const Handle_PGeom2d_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_AxisPlacement(const PGeom2d_AxisPlacement *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_AxisPlacement & operator=(const Handle_PGeom2d_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_AxisPlacement & operator=(const PGeom2d_AxisPlacement *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_AxisPlacement const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_AxisPlacement {
	PGeom2d_AxisPlacement* GetObject() {
	return (PGeom2d_AxisPlacement*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_AxisPlacement::~Handle_PGeom2d_AxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_AxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PGeom2d_BSplineCurve;
class Handle_PGeom2d_BSplineCurve : public Handle_PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve();
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve(const Handle_PGeom2d_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve(const PGeom2d_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve & operator=(const Handle_PGeom2d_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PGeom2d_BSplineCurve & operator=(const PGeom2d_BSplineCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_PGeom2d_BSplineCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PGeom2d_BSplineCurve {
	PGeom2d_BSplineCurve* GetObject() {
	return (PGeom2d_BSplineCurve*)$self->Access();
	}
};
%feature("shadow") Handle_PGeom2d_BSplineCurve::~Handle_PGeom2d_BSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PGeom2d_BSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Geometry;
class PGeom2d_Geometry : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PGeom2d_Geometry(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom2d_Geometry();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Geometry {
	Handle_PGeom2d_Geometry GetHandle() {
	return *(Handle_PGeom2d_Geometry*) &$self;
	}
};
%extend PGeom2d_Geometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Geometry::~PGeom2d_Geometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Geometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Point;
class PGeom2d_Point : public PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom2d_Point(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom2d_Point();

};
%extend PGeom2d_Point {
	Handle_PGeom2d_Point GetHandle() {
	return *(Handle_PGeom2d_Point*) &$self;
	}
};
%extend PGeom2d_Point {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Point::~PGeom2d_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_CartesianPoint;
class PGeom2d_CartesianPoint : public PGeom2d_Point {
	public:
		%feature("autodoc", "1");
		PGeom2d_CartesianPoint();
		%feature("autodoc", "1");
		PGeom2d_CartesianPoint(const gp_Pnt2d &aPnt2d);
		%feature("autodoc", "1");
		void Pnt(const gp_Pnt2d &aPnt2d);
		%feature("autodoc", "1");
		gp_Pnt2d Pnt() const;
		%feature("autodoc", "1");
		PGeom2d_CartesianPoint(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPGeom2d_CartesianPointpnt() const;

};
%extend PGeom2d_CartesianPoint {
	Handle_PGeom2d_CartesianPoint GetHandle() {
	return *(Handle_PGeom2d_CartesianPoint*) &$self;
	}
};
%extend PGeom2d_CartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_CartesianPoint::~PGeom2d_CartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_CartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Curve;
class PGeom2d_Curve : public PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom2d_Curve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom2d_Curve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Curve {
	Handle_PGeom2d_Curve GetHandle() {
	return *(Handle_PGeom2d_Curve*) &$self;
	}
};
%extend PGeom2d_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Curve::~PGeom2d_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_BoundedCurve;
class PGeom2d_BoundedCurve : public PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		PGeom2d_BoundedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PGeom2d_BoundedCurve();

};
%extend PGeom2d_BoundedCurve {
	Handle_PGeom2d_BoundedCurve GetHandle() {
	return *(Handle_PGeom2d_BoundedCurve*) &$self;
	}
};
%extend PGeom2d_BoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_BoundedCurve::~PGeom2d_BoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_BoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Vector;
class PGeom2d_Vector : public PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		void Vec(const gp_Vec2d &aVec);
		%feature("autodoc", "1");
		gp_Vec2d Vec() const;
		%feature("autodoc", "1");
		PGeom2d_Vector(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec2d & _CSFDB_GetPGeom2d_Vectorvec() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Vector {
	Handle_PGeom2d_Vector GetHandle() {
	return *(Handle_PGeom2d_Vector*) &$self;
	}
};
%extend PGeom2d_Vector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Vector::~PGeom2d_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Vector {
	void _kill_pointed() {
		delete $self;
	}
};
%extend PGeom2d_Vector {
	PGeom2d_Vector () {}
};


%nodefaultctor PGeom2d_Direction;
class PGeom2d_Direction : public PGeom2d_Vector {
	public:
		%feature("autodoc", "1");
		PGeom2d_Direction();
		%feature("autodoc", "1");
		PGeom2d_Direction(const gp_Vec2d &aVec);
		%feature("autodoc", "1");
		PGeom2d_Direction(const Storage_stCONSTclCOM &a);

};
%extend PGeom2d_Direction {
	Handle_PGeom2d_Direction GetHandle() {
	return *(Handle_PGeom2d_Direction*) &$self;
	}
};
%extend PGeom2d_Direction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Direction::~PGeom2d_Direction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Direction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Conic;
class PGeom2d_Conic : public PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		void Position(const gp_Ax22d &aPosition);
		%feature("autodoc", "1");
		gp_Ax22d Position() const;
		%feature("autodoc", "1");
		PGeom2d_Conic(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax22d & _CSFDB_GetPGeom2d_Conicposition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Conic {
	Handle_PGeom2d_Conic GetHandle() {
	return *(Handle_PGeom2d_Conic*) &$self;
	}
};
%extend PGeom2d_Conic {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Conic::~PGeom2d_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Conic {
	void _kill_pointed() {
		delete $self;
	}
};
%extend PGeom2d_Conic {
	PGeom2d_Conic () {}
};


%nodefaultctor PGeom2d_Circle;
class PGeom2d_Circle : public PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		PGeom2d_Circle();
		%feature("autodoc", "1");
		PGeom2d_Circle(const gp_Ax22d &aPosition, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void Radius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		PGeom2d_Circle(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_Circleradius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_Circleradius(const Standard_Real p);

};
%extend PGeom2d_Circle {
	Handle_PGeom2d_Circle GetHandle() {
	return *(Handle_PGeom2d_Circle*) &$self;
	}
};
%extend PGeom2d_Circle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Circle::~PGeom2d_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Parabola;
class PGeom2d_Parabola : public PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		PGeom2d_Parabola();
		%feature("autodoc", "1");
		PGeom2d_Parabola(const gp_Ax22d &aPosition, const Standard_Real aFocalLength);
		%feature("autodoc", "1");
		void FocalLength(const Standard_Real aFocalLength);
		%feature("autodoc", "1");
		Standard_Real FocalLength() const;
		%feature("autodoc", "1");
		PGeom2d_Parabola(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_ParabolafocalLength() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_ParabolafocalLength(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Parabola {
	Handle_PGeom2d_Parabola GetHandle() {
	return *(Handle_PGeom2d_Parabola*) &$self;
	}
};
%extend PGeom2d_Parabola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Parabola::~PGeom2d_Parabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Parabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Ellipse;
class PGeom2d_Ellipse : public PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		PGeom2d_Ellipse();
		%feature("autodoc", "1");
		PGeom2d_Ellipse(const gp_Ax22d &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void MajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void MinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		PGeom2d_Ellipse(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_EllipsemajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_EllipsemajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_EllipseminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_EllipseminorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Ellipse {
	Handle_PGeom2d_Ellipse GetHandle() {
	return *(Handle_PGeom2d_Ellipse*) &$self;
	}
};
%extend PGeom2d_Ellipse {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Ellipse::~PGeom2d_Ellipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Ellipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Hyperbola;
class PGeom2d_Hyperbola : public PGeom2d_Conic {
	public:
		%feature("autodoc", "1");
		PGeom2d_Hyperbola();
		%feature("autodoc", "1");
		PGeom2d_Hyperbola(const gp_Ax22d &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void MajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void MinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		PGeom2d_Hyperbola(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_HyperbolamajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_HyperbolamajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_HyperbolaminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_HyperbolaminorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Hyperbola {
	Handle_PGeom2d_Hyperbola GetHandle() {
	return *(Handle_PGeom2d_Hyperbola*) &$self;
	}
};
%extend PGeom2d_Hyperbola {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Hyperbola::~PGeom2d_Hyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Hyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_OffsetCurve;
class PGeom2d_OffsetCurve : public PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		PGeom2d_OffsetCurve();
		%feature("autodoc", "1");
		PGeom2d_OffsetCurve(const Handle_PGeom2d_Curve &aBasisCurve, const Standard_Real aOffsetValue);
		%feature("autodoc", "1");
		void BasisCurve(const Handle_PGeom2d_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve BasisCurve() const;
		%feature("autodoc", "1");
		void OffsetValue(const Standard_Real aOffsetValue);
		%feature("autodoc", "1");
		Standard_Real OffsetValue() const;
		%feature("autodoc", "1");
		PGeom2d_OffsetCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPGeom2d_OffsetCurvebasisCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_OffsetCurvebasisCurve(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_OffsetCurveoffsetValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_OffsetCurveoffsetValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_OffsetCurve {
	Handle_PGeom2d_OffsetCurve GetHandle() {
	return *(Handle_PGeom2d_OffsetCurve*) &$self;
	}
};
%extend PGeom2d_OffsetCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_OffsetCurve::~PGeom2d_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Transformation;
class PGeom2d_Transformation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PGeom2d_Transformation();
		%feature("autodoc", "1");
		PGeom2d_Transformation(const gp_Trsf2d &aTrsf);
		%feature("autodoc", "1");
		void Trsf(const gp_Trsf2d &aTrsf);
		%feature("autodoc", "1");
		gp_Trsf2d Trsf() const;
		%feature("autodoc", "1");
		PGeom2d_Transformation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Trsf2d & _CSFDB_GetPGeom2d_Transformationtrsf() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Transformation {
	Handle_PGeom2d_Transformation GetHandle() {
	return *(Handle_PGeom2d_Transformation*) &$self;
	}
};
%extend PGeom2d_Transformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Transformation::~PGeom2d_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_VectorWithMagnitude;
class PGeom2d_VectorWithMagnitude : public PGeom2d_Vector {
	public:
		%feature("autodoc", "1");
		PGeom2d_VectorWithMagnitude();
		%feature("autodoc", "1");
		PGeom2d_VectorWithMagnitude(const gp_Vec2d &aVec);
		%feature("autodoc", "1");
		PGeom2d_VectorWithMagnitude(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_VectorWithMagnitude {
	Handle_PGeom2d_VectorWithMagnitude GetHandle() {
	return *(Handle_PGeom2d_VectorWithMagnitude*) &$self;
	}
};
%extend PGeom2d_VectorWithMagnitude {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_VectorWithMagnitude::~PGeom2d_VectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_VectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_Line;
class PGeom2d_Line : public PGeom2d_Curve {
	public:
		%feature("autodoc", "1");
		PGeom2d_Line();
		%feature("autodoc", "1");
		PGeom2d_Line(const gp_Ax2d &aPosition);
		%feature("autodoc", "1");
		void Position(const gp_Ax2d &aPosition);
		%feature("autodoc", "1");
		gp_Ax2d Position() const;
		%feature("autodoc", "1");
		PGeom2d_Line(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax2d & _CSFDB_GetPGeom2d_Lineposition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_Line {
	Handle_PGeom2d_Line GetHandle() {
	return *(Handle_PGeom2d_Line*) &$self;
	}
};
%extend PGeom2d_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_Line::~PGeom2d_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_TrimmedCurve;
class PGeom2d_TrimmedCurve : public PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom2d_TrimmedCurve();
		%feature("autodoc", "1");
		PGeom2d_TrimmedCurve(const Handle_PGeom2d_Curve &aBasisCurve, const Standard_Real aFirstU, const Standard_Real aLastU);
		%feature("autodoc", "1");
		void FirstU(const Standard_Real aFirstU);
		%feature("autodoc", "1");
		Standard_Real FirstU() const;
		%feature("autodoc", "1");
		void LastU(const Standard_Real aLastU);
		%feature("autodoc", "1");
		Standard_Real LastU() const;
		%feature("autodoc", "1");
		void BasisCurve(const Handle_PGeom2d_Curve &aBasisCurve);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve BasisCurve() const;
		%feature("autodoc", "1");
		PGeom2d_TrimmedCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPGeom2d_TrimmedCurvebasisCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_TrimmedCurvebasisCurve(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_TrimmedCurvefirstU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_TrimmedCurvefirstU(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPGeom2d_TrimmedCurvelastU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_TrimmedCurvelastU(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_TrimmedCurve {
	Handle_PGeom2d_TrimmedCurve GetHandle() {
	return *(Handle_PGeom2d_TrimmedCurve*) &$self;
	}
};
%extend PGeom2d_TrimmedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_TrimmedCurve::~PGeom2d_TrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_TrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_AxisPlacement;
class PGeom2d_AxisPlacement : public PGeom2d_Geometry {
	public:
		%feature("autodoc", "1");
		PGeom2d_AxisPlacement();
		%feature("autodoc", "1");
		PGeom2d_AxisPlacement(const gp_Ax2d &aAxis);
		%feature("autodoc", "1");
		void Axis(const gp_Ax2d &aAxis);
		%feature("autodoc", "1");
		gp_Ax2d Axis() const;
		%feature("autodoc", "1");
		PGeom2d_AxisPlacement(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Ax2d & _CSFDB_GetPGeom2d_AxisPlacementaxis() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_AxisPlacement {
	Handle_PGeom2d_AxisPlacement GetHandle() {
	return *(Handle_PGeom2d_AxisPlacement*) &$self;
	}
};
%extend PGeom2d_AxisPlacement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_AxisPlacement::~PGeom2d_AxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_AxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_BezierCurve;
class PGeom2d_BezierCurve : public PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom2d_BezierCurve();
		%feature("autodoc", "1");
		PGeom2d_BezierCurve(const Handle_PColgp_HArray1OfPnt2d &aPoles, const Handle_PColStd_HArray1OfReal &aWeights, const Standard_Boolean aRational);
		%feature("autodoc", "1");
		void Rational(const Standard_Boolean aRational);
		%feature("autodoc", "1");
		Standard_Boolean Rational() const;
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray1OfPnt2d &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray1OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Weights() const;
		%feature("autodoc", "1");
		PGeom2d_BezierCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom2d_BezierCurverational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BezierCurverational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d _CSFDB_GetPGeom2d_BezierCurvepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BezierCurvepoles(const Handle_PColgp_HArray1OfPnt2d &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom2d_BezierCurveweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BezierCurveweights(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_BezierCurve {
	Handle_PGeom2d_BezierCurve GetHandle() {
	return *(Handle_PGeom2d_BezierCurve*) &$self;
	}
};
%extend PGeom2d_BezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_BezierCurve::~PGeom2d_BezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_BezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PGeom2d_BSplineCurve;
class PGeom2d_BSplineCurve : public PGeom2d_BoundedCurve {
	public:
		%feature("autodoc", "1");
		PGeom2d_BSplineCurve();
		%feature("autodoc", "1");
		PGeom2d_BSplineCurve(const Standard_Boolean aRational, const Standard_Boolean aPeriodic, const Standard_Integer aSpineDegree, const Handle_PColgp_HArray1OfPnt2d &aPoles, const Handle_PColStd_HArray1OfReal &aWeights, const Handle_PColStd_HArray1OfReal &aKnots, const Handle_PColStd_HArray1OfInteger &aMultiplicities);
		%feature("autodoc", "1");
		void Periodic(const Standard_Boolean aPeriodic);
		%feature("autodoc", "1");
		Standard_Boolean Periodic() const;
		%feature("autodoc", "1");
		void Rational(const Standard_Boolean aRational);
		%feature("autodoc", "1");
		Standard_Boolean Rational() const;
		%feature("autodoc", "1");
		void SpineDegree(const Standard_Integer aSpineDegree);
		%feature("autodoc", "1");
		Standard_Integer SpineDegree() const;
		%feature("autodoc", "1");
		void Poles(const Handle_PColgp_HArray1OfPnt2d &aPoles);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d Poles() const;
		%feature("autodoc", "1");
		void Weights(const Handle_PColStd_HArray1OfReal &aWeights);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Weights() const;
		%feature("autodoc", "1");
		void Knots(const Handle_PColStd_HArray1OfReal &aKnots);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		void Multiplicities(const Handle_PColStd_HArray1OfInteger &aMultiplicities);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger Multiplicities() const;
		%feature("autodoc", "1");
		PGeom2d_BSplineCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom2d_BSplineCurverational() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurverational(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPGeom2d_BSplineCurveperiodic() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurveperiodic(const Standard_Boolean p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPGeom2d_BSplineCurvespineDegree() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurvespineDegree(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d _CSFDB_GetPGeom2d_BSplineCurvepoles() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurvepoles(const Handle_PColgp_HArray1OfPnt2d &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom2d_BSplineCurveweights() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurveweights(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPGeom2d_BSplineCurveknots() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurveknots(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPGeom2d_BSplineCurvemultiplicities() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPGeom2d_BSplineCurvemultiplicities(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PGeom2d_BSplineCurve {
	Handle_PGeom2d_BSplineCurve GetHandle() {
	return *(Handle_PGeom2d_BSplineCurve*) &$self;
	}
};
%extend PGeom2d_BSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PGeom2d_BSplineCurve::~PGeom2d_BSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PGeom2d_BSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};
