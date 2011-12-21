/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Geom
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom_renames.i


%include Geom_required_python_modules.i


%include Geom_dependencies.i


%include Geom_headers.i




%nodefaultctor Handle_Geom_Geometry;
class Handle_Geom_Geometry : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Geometry();
		%feature("autodoc", "1");
		Handle_Geom_Geometry(const Handle_Geom_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Geometry(const Geom_Geometry *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Geometry & operator=(const Handle_Geom_Geometry &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Geometry & operator=(const Geom_Geometry *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Geometry DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Geometry {
	Geom_Geometry* GetObject() {
	return (Geom_Geometry*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Geometry::~Handle_Geom_Geometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Geometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Surface;
class Handle_Geom_Surface : public Handle_Geom_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Surface();
		%feature("autodoc", "1");
		Handle_Geom_Surface(const Handle_Geom_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Surface(const Geom_Surface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Surface & operator=(const Handle_Geom_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Surface & operator=(const Geom_Surface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Surface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Surface {
	Geom_Surface* GetObject() {
	return (Geom_Surface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Surface::~Handle_Geom_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_OffsetSurface;
class Handle_Geom_OffsetSurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_Geom_OffsetSurface(const Handle_Geom_OffsetSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_OffsetSurface(const Geom_OffsetSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_OffsetSurface & operator=(const Handle_Geom_OffsetSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_OffsetSurface & operator=(const Geom_OffsetSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_OffsetSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_OffsetSurface {
	Geom_OffsetSurface* GetObject() {
	return (Geom_OffsetSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_OffsetSurface::~Handle_Geom_OffsetSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_OffsetSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_UndefinedValue;
class Handle_Geom_UndefinedValue : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Geom_UndefinedValue();
		%feature("autodoc", "1");
		Handle_Geom_UndefinedValue(const Handle_Geom_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedValue(const Geom_UndefinedValue *anItem);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedValue & operator=(const Handle_Geom_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedValue & operator=(const Geom_UndefinedValue *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_UndefinedValue DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_UndefinedValue {
	Geom_UndefinedValue* GetObject() {
	return (Geom_UndefinedValue*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_UndefinedValue::~Handle_Geom_UndefinedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_UndefinedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SweptSurface;
class Handle_Geom_SweptSurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SweptSurface();
		%feature("autodoc", "1");
		Handle_Geom_SweptSurface(const Handle_Geom_SweptSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SweptSurface(const Geom_SweptSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SweptSurface & operator=(const Handle_Geom_SweptSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SweptSurface & operator=(const Geom_SweptSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SweptSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SweptSurface {
	Geom_SweptSurface* GetObject() {
	return (Geom_SweptSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SweptSurface::~Handle_Geom_SweptSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SweptSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SurfaceOfRevolution;
class Handle_Geom_SurfaceOfRevolution : public Handle_Geom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfRevolution(const Handle_Geom_SurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfRevolution(const Geom_SurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfRevolution & operator=(const Handle_Geom_SurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfRevolution & operator=(const Geom_SurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SurfaceOfRevolution DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SurfaceOfRevolution {
	Geom_SurfaceOfRevolution* GetObject() {
	return (Geom_SurfaceOfRevolution*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SurfaceOfRevolution::~Handle_Geom_SurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BoundedSurface;
class Handle_Geom_BoundedSurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_Geom_BoundedSurface(const Handle_Geom_BoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BoundedSurface(const Geom_BoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BoundedSurface & operator=(const Handle_Geom_BoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BoundedSurface & operator=(const Geom_BoundedSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BoundedSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BoundedSurface {
	Geom_BoundedSurface* GetObject() {
	return (Geom_BoundedSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BoundedSurface::~Handle_Geom_BoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BezierSurface;
class Handle_Geom_BezierSurface : public Handle_Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface();
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface(const Handle_Geom_BezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface(const Geom_BezierSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface & operator=(const Handle_Geom_BezierSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface & operator=(const Geom_BezierSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BezierSurface {
	Geom_BezierSurface* GetObject() {
	return (Geom_BezierSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BezierSurface::~Handle_Geom_BezierSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BezierSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Vector;
class Handle_Geom_Vector : public Handle_Geom_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Vector();
		%feature("autodoc", "1");
		Handle_Geom_Vector(const Handle_Geom_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Vector(const Geom_Vector *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Vector & operator=(const Handle_Geom_Vector &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Vector & operator=(const Geom_Vector *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Vector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Vector {
	Geom_Vector* GetObject() {
	return (Geom_Vector*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Vector::~Handle_Geom_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Vector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_VectorWithMagnitude;
class Handle_Geom_VectorWithMagnitude : public Handle_Geom_Vector {
	public:
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude();
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude(const Handle_Geom_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude(const Geom_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude & operator=(const Handle_Geom_VectorWithMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude & operator=(const Geom_VectorWithMagnitude *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_VectorWithMagnitude DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_VectorWithMagnitude {
	Geom_VectorWithMagnitude* GetObject() {
	return (Geom_VectorWithMagnitude*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_VectorWithMagnitude::~Handle_Geom_VectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_VectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_ElementarySurface;
class Handle_Geom_ElementarySurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_ElementarySurface();
		%feature("autodoc", "1");
		Handle_Geom_ElementarySurface(const Handle_Geom_ElementarySurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ElementarySurface(const Geom_ElementarySurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_ElementarySurface & operator=(const Handle_Geom_ElementarySurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ElementarySurface & operator=(const Geom_ElementarySurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_ElementarySurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_ElementarySurface {
	Geom_ElementarySurface* GetObject() {
	return (Geom_ElementarySurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_ElementarySurface::~Handle_Geom_ElementarySurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_ElementarySurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_ToroidalSurface;
class Handle_Geom_ToroidalSurface : public Handle_Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface();
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface(const Handle_Geom_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface(const Geom_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface & operator=(const Handle_Geom_ToroidalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface & operator=(const Geom_ToroidalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_ToroidalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_ToroidalSurface {
	Geom_ToroidalSurface* GetObject() {
	return (Geom_ToroidalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_ToroidalSurface::~Handle_Geom_ToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_ToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Curve;
class Handle_Geom_Curve : public Handle_Geom_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Curve();
		%feature("autodoc", "1");
		Handle_Geom_Curve(const Handle_Geom_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Curve(const Geom_Curve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Curve & operator=(const Handle_Geom_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Curve & operator=(const Geom_Curve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Curve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Curve {
	Geom_Curve* GetObject() {
	return (Geom_Curve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Curve::~Handle_Geom_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Conic;
class Handle_Geom_Conic : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Conic();
		%feature("autodoc", "1");
		Handle_Geom_Conic(const Handle_Geom_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Conic(const Geom_Conic *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Conic & operator=(const Handle_Geom_Conic &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Conic & operator=(const Geom_Conic *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Conic DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Conic {
	Geom_Conic* GetObject() {
	return (Geom_Conic*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Conic::~Handle_Geom_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Conic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Parabola;
class Handle_Geom_Parabola : public Handle_Geom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Parabola();
		%feature("autodoc", "1");
		Handle_Geom_Parabola(const Handle_Geom_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Parabola(const Geom_Parabola *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Parabola & operator=(const Handle_Geom_Parabola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Parabola & operator=(const Geom_Parabola *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Parabola DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Parabola {
	Geom_Parabola* GetObject() {
	return (Geom_Parabola*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Parabola::~Handle_Geom_Parabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Parabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BoundedCurve;
class Handle_Geom_BoundedCurve : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BoundedCurve();
		%feature("autodoc", "1");
		Handle_Geom_BoundedCurve(const Handle_Geom_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BoundedCurve(const Geom_BoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BoundedCurve & operator=(const Handle_Geom_BoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BoundedCurve & operator=(const Geom_BoundedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BoundedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BoundedCurve {
	Geom_BoundedCurve* GetObject() {
	return (Geom_BoundedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BoundedCurve::~Handle_Geom_BoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_TrimmedCurve;
class Handle_Geom_TrimmedCurve : public Handle_Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_TrimmedCurve();
		%feature("autodoc", "1");
		Handle_Geom_TrimmedCurve(const Handle_Geom_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_TrimmedCurve(const Geom_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_TrimmedCurve & operator=(const Handle_Geom_TrimmedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_TrimmedCurve & operator=(const Geom_TrimmedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_TrimmedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_TrimmedCurve {
	Geom_TrimmedCurve* GetObject() {
	return (Geom_TrimmedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_TrimmedCurve::~Handle_Geom_TrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_TrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SequenceNodeOfSequenceOfSurface;
class Handle_Geom_SequenceNodeOfSequenceOfSurface : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfSurface();
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfSurface(const Handle_Geom_SequenceNodeOfSequenceOfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfSurface(const Geom_SequenceNodeOfSequenceOfSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfSurface & operator=(const Handle_Geom_SequenceNodeOfSequenceOfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfSurface & operator=(const Geom_SequenceNodeOfSequenceOfSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SequenceNodeOfSequenceOfSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SequenceNodeOfSequenceOfSurface {
	Geom_SequenceNodeOfSequenceOfSurface* GetObject() {
	return (Geom_SequenceNodeOfSequenceOfSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SequenceNodeOfSequenceOfSurface::~Handle_Geom_SequenceNodeOfSequenceOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SequenceNodeOfSequenceOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SurfaceOfLinearExtrusion;
class Handle_Geom_SurfaceOfLinearExtrusion : public Handle_Geom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfLinearExtrusion(const Handle_Geom_SurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfLinearExtrusion(const Geom_SurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfLinearExtrusion & operator=(const Handle_Geom_SurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SurfaceOfLinearExtrusion & operator=(const Geom_SurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SurfaceOfLinearExtrusion DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SurfaceOfLinearExtrusion {
	Geom_SurfaceOfLinearExtrusion* GetObject() {
	return (Geom_SurfaceOfLinearExtrusion*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SurfaceOfLinearExtrusion::~Handle_Geom_SurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Circle;
class Handle_Geom_Circle : public Handle_Geom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Circle();
		%feature("autodoc", "1");
		Handle_Geom_Circle(const Handle_Geom_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Circle(const Geom_Circle *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Circle & operator=(const Handle_Geom_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Circle & operator=(const Geom_Circle *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Circle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Circle {
	Geom_Circle* GetObject() {
	return (Geom_Circle*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Circle::~Handle_Geom_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Line;
class Handle_Geom_Line : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Line();
		%feature("autodoc", "1");
		Handle_Geom_Line(const Handle_Geom_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Line(const Geom_Line *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Line & operator=(const Handle_Geom_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Line & operator=(const Geom_Line *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Line DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Line {
	Geom_Line* GetObject() {
	return (Geom_Line*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Line::~Handle_Geom_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Point;
class Handle_Geom_Point : public Handle_Geom_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Point();
		%feature("autodoc", "1");
		Handle_Geom_Point(const Handle_Geom_Point &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Point(const Geom_Point *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Point & operator=(const Handle_Geom_Point &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Point & operator=(const Geom_Point *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Point DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Point {
	Geom_Point* GetObject() {
	return (Geom_Point*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Point::~Handle_Geom_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_ConicalSurface;
class Handle_Geom_ConicalSurface : public Handle_Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface();
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface(const Handle_Geom_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface(const Geom_ConicalSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface & operator=(const Handle_Geom_ConicalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface & operator=(const Geom_ConicalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_ConicalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_ConicalSurface {
	Geom_ConicalSurface* GetObject() {
	return (Geom_ConicalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_ConicalSurface::~Handle_Geom_ConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_ConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_RectangularTrimmedSurface;
class Handle_Geom_RectangularTrimmedSurface : public Handle_Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_RectangularTrimmedSurface();
		%feature("autodoc", "1");
		Handle_Geom_RectangularTrimmedSurface(const Handle_Geom_RectangularTrimmedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_RectangularTrimmedSurface(const Geom_RectangularTrimmedSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_RectangularTrimmedSurface & operator=(const Handle_Geom_RectangularTrimmedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_RectangularTrimmedSurface & operator=(const Geom_RectangularTrimmedSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_RectangularTrimmedSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_RectangularTrimmedSurface {
	Geom_RectangularTrimmedSurface* GetObject() {
	return (Geom_RectangularTrimmedSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_RectangularTrimmedSurface::~Handle_Geom_RectangularTrimmedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_RectangularTrimmedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_AxisPlacement;
class Handle_Geom_AxisPlacement : public Handle_Geom_Geometry {
	public:
		%feature("autodoc", "1");
		Handle_Geom_AxisPlacement();
		%feature("autodoc", "1");
		Handle_Geom_AxisPlacement(const Handle_Geom_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_AxisPlacement(const Geom_AxisPlacement *anItem);
		%feature("autodoc", "1");
		Handle_Geom_AxisPlacement & operator=(const Handle_Geom_AxisPlacement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_AxisPlacement & operator=(const Geom_AxisPlacement *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_AxisPlacement DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_AxisPlacement {
	Geom_AxisPlacement* GetObject() {
	return (Geom_AxisPlacement*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_AxisPlacement::~Handle_Geom_AxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_AxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_HSequenceOfBSplineSurface;
class Handle_Geom_HSequenceOfBSplineSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface();
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface(const Handle_Geom_HSequenceOfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface(const Geom_HSequenceOfBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface & operator=(const Handle_Geom_HSequenceOfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface & operator=(const Geom_HSequenceOfBSplineSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_HSequenceOfBSplineSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_HSequenceOfBSplineSurface {
	Geom_HSequenceOfBSplineSurface* GetObject() {
	return (Geom_HSequenceOfBSplineSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_HSequenceOfBSplineSurface::~Handle_Geom_HSequenceOfBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_HSequenceOfBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SphericalSurface;
class Handle_Geom_SphericalSurface : public Handle_Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface();
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface(const Handle_Geom_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface(const Geom_SphericalSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface & operator=(const Handle_Geom_SphericalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface & operator=(const Geom_SphericalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SphericalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SphericalSurface {
	Geom_SphericalSurface* GetObject() {
	return (Geom_SphericalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SphericalSurface::~Handle_Geom_SphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Axis1Placement;
class Handle_Geom_Axis1Placement : public Handle_Geom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement();
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement(const Handle_Geom_Axis1Placement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement(const Geom_Axis1Placement *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement & operator=(const Handle_Geom_Axis1Placement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement & operator=(const Geom_Axis1Placement *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Axis1Placement DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Axis1Placement {
	Geom_Axis1Placement* GetObject() {
	return (Geom_Axis1Placement*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Axis1Placement::~Handle_Geom_Axis1Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Axis1Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BSplineSurface;
class Handle_Geom_BSplineSurface : public Handle_Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface(const Handle_Geom_BSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface(const Geom_BSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & operator=(const Handle_Geom_BSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & operator=(const Geom_BSplineSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BSplineSurface {
	Geom_BSplineSurface* GetObject() {
	return (Geom_BSplineSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BSplineSurface::~Handle_Geom_BSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface;
class Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface();
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface(const Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface(const Geom_SequenceNodeOfSequenceOfBSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface & operator=(const Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface & operator=(const Geom_SequenceNodeOfSequenceOfBSplineSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface {
	Geom_SequenceNodeOfSequenceOfBSplineSurface* GetObject() {
	return (Geom_SequenceNodeOfSequenceOfBSplineSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface::~Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BezierCurve;
class Handle_Geom_BezierCurve : public Handle_Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve();
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve(const Handle_Geom_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve(const Geom_BezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve & operator=(const Handle_Geom_BezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve & operator=(const Geom_BezierCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BezierCurve {
	Geom_BezierCurve* GetObject() {
	return (Geom_BezierCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BezierCurve::~Handle_Geom_BezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_CylindricalSurface;
class Handle_Geom_CylindricalSurface : public Handle_Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface();
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface(const Handle_Geom_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface(const Geom_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface & operator=(const Handle_Geom_CylindricalSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface & operator=(const Geom_CylindricalSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_CylindricalSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_CylindricalSurface {
	Geom_CylindricalSurface* GetObject() {
	return (Geom_CylindricalSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_CylindricalSurface::~Handle_Geom_CylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_CylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_CartesianPoint;
class Handle_Geom_CartesianPoint : public Handle_Geom_Point {
	public:
		%feature("autodoc", "1");
		Handle_Geom_CartesianPoint();
		%feature("autodoc", "1");
		Handle_Geom_CartesianPoint(const Handle_Geom_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_CartesianPoint(const Geom_CartesianPoint *anItem);
		%feature("autodoc", "1");
		Handle_Geom_CartesianPoint & operator=(const Handle_Geom_CartesianPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_CartesianPoint & operator=(const Geom_CartesianPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_CartesianPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_CartesianPoint {
	Geom_CartesianPoint* GetObject() {
	return (Geom_CartesianPoint*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_CartesianPoint::~Handle_Geom_CartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_CartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_OffsetCurve;
class Handle_Geom_OffsetCurve : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_OffsetCurve();
		%feature("autodoc", "1");
		Handle_Geom_OffsetCurve(const Handle_Geom_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_OffsetCurve(const Geom_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_OffsetCurve & operator=(const Handle_Geom_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_OffsetCurve & operator=(const Geom_OffsetCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_OffsetCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_OffsetCurve {
	Geom_OffsetCurve* GetObject() {
	return (Geom_OffsetCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_OffsetCurve::~Handle_Geom_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_BSplineCurve;
class Handle_Geom_BSplineCurve : public Handle_Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve(const Handle_Geom_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve(const Geom_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve & operator=(const Handle_Geom_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve & operator=(const Geom_BSplineCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_BSplineCurve {
	Geom_BSplineCurve* GetObject() {
	return (Geom_BSplineCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_BSplineCurve::~Handle_Geom_BSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_BSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Direction;
class Handle_Geom_Direction : public Handle_Geom_Vector {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Direction();
		%feature("autodoc", "1");
		Handle_Geom_Direction(const Handle_Geom_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Direction(const Geom_Direction *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Direction & operator=(const Handle_Geom_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Direction & operator=(const Geom_Direction *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Direction DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Direction {
	Geom_Direction* GetObject() {
	return (Geom_Direction*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Direction::~Handle_Geom_Direction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Direction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_HSequenceOfSurface;
class Handle_Geom_HSequenceOfSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface();
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface(const Handle_Geom_HSequenceOfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface(const Geom_HSequenceOfSurface *anItem);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface & operator=(const Handle_Geom_HSequenceOfSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface & operator=(const Geom_HSequenceOfSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_HSequenceOfSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_HSequenceOfSurface {
	Geom_HSequenceOfSurface* GetObject() {
	return (Geom_HSequenceOfSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_HSequenceOfSurface::~Handle_Geom_HSequenceOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_HSequenceOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_UndefinedDerivative;
class Handle_Geom_UndefinedDerivative : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Geom_UndefinedDerivative();
		%feature("autodoc", "1");
		Handle_Geom_UndefinedDerivative(const Handle_Geom_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedDerivative(const Geom_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedDerivative & operator=(const Handle_Geom_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_UndefinedDerivative & operator=(const Geom_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_UndefinedDerivative DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_UndefinedDerivative {
	Geom_UndefinedDerivative* GetObject() {
	return (Geom_UndefinedDerivative*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_UndefinedDerivative::~Handle_Geom_UndefinedDerivative %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_UndefinedDerivative {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Hyperbola;
class Handle_Geom_Hyperbola : public Handle_Geom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Hyperbola();
		%feature("autodoc", "1");
		Handle_Geom_Hyperbola(const Handle_Geom_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Hyperbola(const Geom_Hyperbola *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Hyperbola & operator=(const Handle_Geom_Hyperbola &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Hyperbola & operator=(const Geom_Hyperbola *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Hyperbola DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Hyperbola {
	Geom_Hyperbola* GetObject() {
	return (Geom_Hyperbola*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Hyperbola::~Handle_Geom_Hyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Hyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Axis2Placement;
class Handle_Geom_Axis2Placement : public Handle_Geom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement();
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement(const Handle_Geom_Axis2Placement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement(const Geom_Axis2Placement *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement & operator=(const Handle_Geom_Axis2Placement &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement & operator=(const Geom_Axis2Placement *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Axis2Placement DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Axis2Placement {
	Geom_Axis2Placement* GetObject() {
	return (Geom_Axis2Placement*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Axis2Placement::~Handle_Geom_Axis2Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Axis2Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Ellipse;
class Handle_Geom_Ellipse : public Handle_Geom_Conic {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Ellipse();
		%feature("autodoc", "1");
		Handle_Geom_Ellipse(const Handle_Geom_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Ellipse(const Geom_Ellipse *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Ellipse & operator=(const Handle_Geom_Ellipse &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Ellipse & operator=(const Geom_Ellipse *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Ellipse DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Ellipse {
	Geom_Ellipse* GetObject() {
	return (Geom_Ellipse*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Ellipse::~Handle_Geom_Ellipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Ellipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Transformation;
class Handle_Geom_Transformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Transformation();
		%feature("autodoc", "1");
		Handle_Geom_Transformation(const Handle_Geom_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Transformation(const Geom_Transformation *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Transformation & operator=(const Handle_Geom_Transformation &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Transformation & operator=(const Geom_Transformation *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Transformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Transformation {
	Geom_Transformation* GetObject() {
	return (Geom_Transformation*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Transformation::~Handle_Geom_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Geom_Plane;
class Handle_Geom_Plane : public Handle_Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Plane();
		%feature("autodoc", "1");
		Handle_Geom_Plane(const Handle_Geom_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Plane(const Geom_Plane *anItem);
		%feature("autodoc", "1");
		Handle_Geom_Plane & operator=(const Handle_Geom_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_Geom_Plane & operator=(const Geom_Plane *anItem);
		%feature("autodoc", "1");
		static		Handle_Geom_Plane DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom_Plane {
	Geom_Plane* GetObject() {
	return (Geom_Plane*)$self->Access();
	}
};
%feature("shadow") Handle_Geom_Plane::~Handle_Geom_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Geom_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Geometry;
class Geom_Geometry : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		Handle_Geom_Geometry Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		Handle_Geom_Geometry Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Geometry {
	Handle_Geom_Geometry GetHandle() {
	return *(Handle_Geom_Geometry*) &$self;
	}
};
%extend Geom_Geometry {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Geometry::~Geom_Geometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Geometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Curve;
class Geom_Curve : public Geom_Geometry {
	public:
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Reversed() const;
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
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U) const;

};
%extend Geom_Curve {
	Handle_Geom_Curve GetHandle() {
	return *(Handle_Geom_Curve*) &$self;
	}
};
%extend Geom_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Curve::~Geom_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BoundedCurve;
class Geom_BoundedCurve : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		virtual		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt StartPoint() const;

};
%extend Geom_BoundedCurve {
	Handle_Geom_BoundedCurve GetHandle() {
	return *(Handle_Geom_BoundedCurve*) &$self;
	}
};
%extend Geom_BoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BoundedCurve::~Geom_BoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Surface;
class Geom_Surface : public Geom_Geometry {
	public:
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		Handle_Geom_Surface UReversed() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		Handle_Geom_Surface VReversed() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Surface {
	Handle_Geom_Surface GetHandle() {
	return *(Handle_Geom_Surface*) &$self;
	}
};
%extend Geom_Surface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Surface::~Geom_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BoundedSurface;
class Geom_BoundedSurface : public Geom_Surface {
	public:

};
%extend Geom_BoundedSurface {
	Handle_Geom_BoundedSurface GetHandle() {
	return *(Handle_Geom_BoundedSurface*) &$self;
	}
};
%extend Geom_BoundedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BoundedSurface::~Geom_BoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BSplineSurface;
class Geom_BSplineSurface : public Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Geom_BSplineSurface(const TColgp_Array2OfPnt &Poles, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean UPeriodic=0, const Standard_Boolean VPeriodic=0);
		%feature("autodoc", "1");
		Geom_BSplineSurface(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean UPeriodic=0, const Standard_Boolean VPeriodic=0);
		%feature("autodoc", "1");
		void ExchangeUV();
		%feature("autodoc", "1");
		void SetUPeriodic();
		%feature("autodoc", "1");
		void SetVPeriodic();
		%feature("autodoc","PeriodicNormalization() -> [Standard_Real, Standard_Real]");

		void PeriodicNormalization(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetUOrigin(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetVOrigin(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetUNotPeriodic();
		%feature("autodoc", "1");
		void SetVNotPeriodic();
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer UDegree, const Standard_Integer VDegree);
		%feature("autodoc", "1");
		void InsertUKnots(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertVKnots(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveUKnot(const Standard_Integer Index, const Standard_Integer M, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean RemoveVKnot(const Standard_Integer Index, const Standard_Integer M, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void IncreaseUMultiplicity(const Standard_Integer UIndex, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncreaseUMultiplicity(const Standard_Integer FromI1, const Standard_Integer ToI2, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncrementUMultiplicity(const Standard_Integer FromI1, const Standard_Integer ToI2, const Standard_Integer Step);
		%feature("autodoc", "1");
		void IncreaseVMultiplicity(const Standard_Integer VIndex, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncreaseVMultiplicity(const Standard_Integer FromI1, const Standard_Integer ToI2, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncrementVMultiplicity(const Standard_Integer FromI1, const Standard_Integer ToI2, const Standard_Integer Step);
		%feature("autodoc", "1");
		void InsertUKnot(const Standard_Real U, const Standard_Integer M, const Standard_Real ParametricTolerance, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertVKnot(const Standard_Real V, const Standard_Integer M, const Standard_Real ParametricTolerance, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		void CheckAndSegment(const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		void SetUKnot(const Standard_Integer UIndex, const Standard_Real K);
		%feature("autodoc", "1");
		void SetUKnots(const TColStd_Array1OfReal &UK);
		%feature("autodoc", "1");
		void SetUKnot(const Standard_Integer UIndex, const Standard_Real K, const Standard_Integer M);
		%feature("autodoc", "1");
		void SetVKnot(const Standard_Integer VIndex, const Standard_Real K);
		%feature("autodoc", "1");
		void SetVKnots(const TColStd_Array1OfReal &VK);
		%feature("autodoc", "1");
		void SetVKnot(const Standard_Integer VIndex, const Standard_Real K, const Standard_Integer M);
		%feature("autodoc","LocateU(Standard_Real U, Standard_Real ParametricTolerance, Standard_Boolean WithKnotRepetition=0) -> [Standard_Integer, Standard_Integer]");

		void LocateU(const Standard_Real U, const Standard_Real ParametricTolerance, Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Boolean WithKnotRepetition=0) const;
		%feature("autodoc","LocateV(Standard_Real V, Standard_Real ParametricTolerance, Standard_Boolean WithKnotRepetition=0) -> [Standard_Integer, Standard_Integer]");

		void LocateV(const Standard_Real V, const Standard_Real ParametricTolerance, Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Boolean WithKnotRepetition=0) const;
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer UIndex, const Standard_Integer VIndex, const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer UIndex, const Standard_Integer VIndex, const gp_Pnt P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetPoleCol(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void SetPoleCol(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetPoleRow(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetPoleRow(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer UIndex, const Standard_Integer VIndex, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeightCol(const Standard_Integer VIndex, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetWeightRow(const Standard_Integer UIndex, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc","MovePoint(Standard_Real U, Standard_Real V, const P, Standard_Integer UIndex1, Standard_Integer UIndex2, Standard_Integer VIndex1, Standard_Integer VIndex2) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void MovePoint(const Standard_Real U, const Standard_Real V, const gp_Pnt P, const Standard_Integer UIndex1, const Standard_Integer UIndex2, const Standard_Integer VIndex1, const Standard_Integer VIndex2, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsURational() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVRational() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCacheValid(const Standard_Real UParameter, const Standard_Real VParameter) const;
		%feature("autodoc", "1");
		Standard_Integer FirstUKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FirstVKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Integer LastUKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Integer LastVKnotIndex() const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array2OfPnt & P) const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Real UKnot(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		GeomAbs_BSplKnotDistribution UKnotDistribution() const;
		%feature("autodoc", "1");
		void UKnots(TColStd_Array1OfReal & Ku) const;
		%feature("autodoc", "1");
		void UKnotSequence(TColStd_Array1OfReal & Ku) const;
		%feature("autodoc", "1");
		Standard_Integer UMultiplicity(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		void UMultiplicities(TColStd_Array1OfInteger & Mu) const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Real VKnot(const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		GeomAbs_BSplKnotDistribution VKnotDistribution() const;
		%feature("autodoc", "1");
		void VKnots(TColStd_Array1OfReal & Kv) const;
		%feature("autodoc", "1");
		void VKnotSequence(TColStd_Array1OfReal & Kv) const;
		%feature("autodoc", "1");
		Standard_Integer VMultiplicity(const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		void VMultiplicities(TColStd_Array1OfInteger & Mv) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array2OfReal & W) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		gp_Vec LocalDN(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		gp_Pnt LocalValue(const Standard_Real U, const Standard_Real V, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve UIso(const Standard_Real U, const Standard_Boolean CheckRational) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve VIso(const Standard_Real V, const Standard_Boolean CheckRational) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		static		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real Tolerance3D) -> [Standard_Real, Standard_Real]");

		void Resolution(const Standard_Real Tolerance3D, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;

};
%extend Geom_BSplineSurface {
	Handle_Geom_BSplineSurface GetHandle() {
	return *(Handle_Geom_BSplineSurface*) &$self;
	}
};
%extend Geom_BSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BSplineSurface::~Geom_BSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Point;
class Geom_Point : public Geom_Geometry {
	public:
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Pnt() const;
		%feature("autodoc", "1");
		virtual		Standard_Real X() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Y() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Handle_Geom_Point &Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Handle_Geom_Point &Other) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Point {
	Handle_Geom_Point GetHandle() {
	return *(Handle_Geom_Point*) &$self;
	}
};
%extend Geom_Point {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Point::~Geom_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BezierSurface;
class Geom_BezierSurface : public Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Geom_BezierSurface(const TColgp_Array2OfPnt &SurfacePoles);
		%feature("autodoc", "1");
		Geom_BezierSurface(const TColgp_Array2OfPnt &SurfacePoles, const TColStd_Array2OfReal &PoleWeights);
		%feature("autodoc", "1");
		void ExchangeUV();
		%feature("autodoc", "1");
		void Increase(const Standard_Integer UDeg, const Standard_Integer VDeg);
		%feature("autodoc", "1");
		void InsertPoleColAfter(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void InsertPoleColAfter(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void InsertPoleColBefore(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void InsertPoleColBefore(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void InsertPoleRowAfter(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void InsertPoleRowAfter(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void InsertPoleRowBefore(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void InsertPoleRowBefore(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void RemovePoleCol(const Standard_Integer VIndex);
		%feature("autodoc", "1");
		void RemovePoleRow(const Standard_Integer UIndex);
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer UIndex, const Standard_Integer VIndex, const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer UIndex, const Standard_Integer VIndex, const gp_Pnt P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetPoleCol(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void SetPoleCol(const Standard_Integer VIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetPoleRow(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles);
		%feature("autodoc", "1");
		void SetPoleRow(const Standard_Integer UIndex, const TColgp_Array1OfPnt &CPoles, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer UIndex, const Standard_Integer VIndex, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeightCol(const Standard_Integer VIndex, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		void SetWeightRow(const Standard_Integer UIndex, const TColStd_Array1OfReal &CPoleWeights);
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array2OfPnt & P) const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array2OfReal & W) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean IsURational() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVRational() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		static		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real Tolerance3D) -> [Standard_Real, Standard_Real]");

		void Resolution(const Standard_Real Tolerance3D, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_BezierSurface {
	Handle_Geom_BezierSurface GetHandle() {
	return *(Handle_Geom_BezierSurface*) &$self;
	}
};
%extend Geom_BezierSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BezierSurface::~Geom_BezierSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BezierSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Vector;
class Geom_Vector : public Geom_Geometry {
	public:
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Handle_Geom_Vector Reversed() const;
		%feature("autodoc", "1");
		Standard_Real Angle(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		Standard_Real AngleWithRef(const Handle_Geom_Vector &Other, const Handle_Geom_Vector &VRef) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		virtual		void Cross(const Handle_Geom_Vector &Other);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector Crossed(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void CrossCross(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector CrossCrossed(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		Standard_Real DotCross(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2) const;
		%feature("autodoc", "1");
		const gp_Vec  Vec() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Vector {
	Handle_Geom_Vector GetHandle() {
	return *(Handle_Geom_Vector*) &$self;
	}
};
%extend Geom_Vector {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Vector::~Geom_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Vector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_AxisPlacement;
class Geom_AxisPlacement : public Geom_Geometry {
	public:
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		virtual		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Real Angle(const Handle_Geom_AxisPlacement &Other) const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		gp_Dir Direction() const;
		%feature("autodoc", "1");
		gp_Pnt Location() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_AxisPlacement {
	Handle_Geom_AxisPlacement GetHandle() {
	return *(Handle_Geom_AxisPlacement*) &$self;
	}
};
%extend Geom_AxisPlacement {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_AxisPlacement::~Geom_AxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_AxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_UndefinedDerivative;
class Geom_UndefinedDerivative : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Geom_UndefinedDerivative();
		%feature("autodoc", "1");
		Geom_UndefinedDerivative(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Geom_UndefinedDerivative NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_UndefinedDerivative {
	Handle_Geom_UndefinedDerivative GetHandle() {
	return *(Handle_Geom_UndefinedDerivative*) &$self;
	}
};
%extend Geom_UndefinedDerivative {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_UndefinedDerivative::~Geom_UndefinedDerivative %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_UndefinedDerivative {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SequenceNodeOfSequenceOfSurface;
class Geom_SequenceNodeOfSequenceOfSurface : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Geom_SequenceNodeOfSequenceOfSurface(const Handle_Geom_Surface &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom_Surface & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SequenceNodeOfSequenceOfSurface {
	Handle_Geom_SequenceNodeOfSequenceOfSurface GetHandle() {
	return *(Handle_Geom_SequenceNodeOfSequenceOfSurface*) &$self;
	}
};
%extend Geom_SequenceNodeOfSequenceOfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SequenceNodeOfSequenceOfSurface::~Geom_SequenceNodeOfSequenceOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SequenceNodeOfSequenceOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_OffsetCurve;
class Geom_OffsetCurve : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		Geom_OffsetCurve(const Handle_Geom_Curve &C, const Standard_Real Offset, const gp_Dir V);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetOffsetValue(const Standard_Real D);
		%feature("autodoc", "1");
		Handle_Geom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Value(const Standard_Real U, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & V1basis) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & V1basis) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & V1, gp_Vec & V1basis, gp_Vec & V2basis) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & V1, gp_Vec & V2, gp_Vec & V1basis, gp_Vec & V2basis, gp_Vec & V3basis) const;
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
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_OffsetCurve {
	Handle_Geom_OffsetCurve GetHandle() {
	return *(Handle_Geom_OffsetCurve*) &$self;
	}
};
%extend Geom_OffsetCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_OffsetCurve::~Geom_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SweptSurface;
class Geom_SweptSurface : public Geom_Surface {
	public:
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SweptSurface {
	Handle_Geom_SweptSurface GetHandle() {
	return *(Handle_Geom_SweptSurface*) &$self;
	}
};
%extend Geom_SweptSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SweptSurface::~Geom_SweptSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SweptSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SurfaceOfRevolution;
class Geom_SurfaceOfRevolution : public Geom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Geom_SurfaceOfRevolution(const Handle_Geom_Curve &C, const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Ax1 Axis() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		gp_Ax2 ReferencePlane() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		gp_Vec LocalDN(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SurfaceOfRevolution {
	Handle_Geom_SurfaceOfRevolution GetHandle() {
	return *(Handle_Geom_SurfaceOfRevolution*) &$self;
	}
};
%extend Geom_SurfaceOfRevolution {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SurfaceOfRevolution::~Geom_SurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_VectorWithMagnitude;
class Geom_VectorWithMagnitude : public Geom_Vector {
	public:
		%feature("autodoc", "1");
		Geom_VectorWithMagnitude(const gp_Vec V);
		%feature("autodoc", "1");
		Geom_VectorWithMagnitude(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		Geom_VectorWithMagnitude(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetVec(const gp_Vec V);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		virtual		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		void Add(const Handle_Geom_Vector &Other);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude Added(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void Cross(const Handle_Geom_Vector &Other);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector Crossed(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void CrossCross(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector CrossCrossed(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude Normalized() const;
		%feature("autodoc", "1");
		void Subtract(const Handle_Geom_Vector &Other);
		%feature("autodoc", "1");
		Handle_Geom_VectorWithMagnitude Subtracted(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_VectorWithMagnitude {
	Handle_Geom_VectorWithMagnitude GetHandle() {
	return *(Handle_Geom_VectorWithMagnitude*) &$self;
	}
};
%extend Geom_VectorWithMagnitude {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_VectorWithMagnitude::~Geom_VectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_VectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Conic;
class Geom_Conic : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Ax1 Axis() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		gp_Pnt Location() const;
		%feature("autodoc", "1");
		const gp_Ax2  Position() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
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
%extend Geom_Conic {
	Handle_Geom_Conic GetHandle() {
	return *(Handle_Geom_Conic*) &$self;
	}
};
%extend Geom_Conic {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Conic::~Geom_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Conic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SequenceOfSurface;
class Geom_SequenceOfSurface : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Geom_SequenceOfSurface();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Geom_SequenceOfSurface & Assign(const Geom_SequenceOfSurface &Other);
		%feature("autodoc", "1");
		const Geom_SequenceOfSurface & operator=(const Geom_SequenceOfSurface &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom_Surface &T);
		%feature("autodoc", "1");
		void Append(Geom_SequenceOfSurface & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_Surface &T);
		%feature("autodoc", "1");
		void Prepend(Geom_SequenceOfSurface & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom_Surface &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Geom_SequenceOfSurface & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom_Surface &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Geom_SequenceOfSurface & S);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & First() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Geom_SequenceOfSurface & S);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom_Surface &I);
		%feature("autodoc", "1");
		Handle_Geom_Surface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom_Surface & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Geom_SequenceOfSurface::~Geom_SequenceOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SequenceOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SequenceOfBSplineSurface;
class Geom_SequenceOfBSplineSurface : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Geom_SequenceOfBSplineSurface();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Geom_SequenceOfBSplineSurface & Assign(const Geom_SequenceOfBSplineSurface &Other);
		%feature("autodoc", "1");
		const Geom_SequenceOfBSplineSurface & operator=(const Geom_SequenceOfBSplineSurface &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom_BSplineSurface &T);
		%feature("autodoc", "1");
		void Append(Geom_SequenceOfBSplineSurface & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_BSplineSurface &T);
		%feature("autodoc", "1");
		void Prepend(Geom_SequenceOfBSplineSurface & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom_BSplineSurface &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Geom_SequenceOfBSplineSurface & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom_BSplineSurface &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Geom_SequenceOfBSplineSurface & S);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & First() const;
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Geom_SequenceOfBSplineSurface & S);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom_BSplineSurface &I);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Geom_SequenceOfBSplineSurface::~Geom_SequenceOfBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SequenceOfBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Circle;
class Geom_Circle : public Geom_Conic {
	public:
		%feature("autodoc", "1");
		Geom_Circle(const gp_Circ C);
		%feature("autodoc", "1");
		Geom_Circle(const gp_Ax2 A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetCirc(const gp_Circ C);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		gp_Circ Circ() const;
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
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Circle {
	Handle_Geom_Circle GetHandle() {
	return *(Handle_Geom_Circle*) &$self;
	}
};
%extend Geom_Circle {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Circle::~Geom_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_ElementarySurface;
class Geom_ElementarySurface : public Geom_Surface {
	public:
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
		%feature("autodoc", "1");
		gp_Ax1 Axis() const;
		%feature("autodoc", "1");
		gp_Pnt Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_ElementarySurface {
	Handle_Geom_ElementarySurface GetHandle() {
	return *(Handle_Geom_ElementarySurface*) &$self;
	}
};
%extend Geom_ElementarySurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_ElementarySurface::~Geom_ElementarySurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_ElementarySurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_ToroidalSurface;
class Geom_ToroidalSurface : public Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Geom_ToroidalSurface(const gp_Ax3 A3, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		Geom_ToroidalSurface(const gp_Torus T);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetTorus(const gp_Torus T);
		%feature("autodoc", "1");
		gp_Torus Torus() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Coefficients(TColStd_Array1OfReal & Coef) const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Standard_Real Volume() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;

};
%extend Geom_ToroidalSurface {
	Handle_Geom_ToroidalSurface GetHandle() {
	return *(Handle_Geom_ToroidalSurface*) &$self;
	}
};
%extend Geom_ToroidalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_ToroidalSurface::~Geom_ToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_ToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_UndefinedValue;
class Geom_UndefinedValue : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Geom_UndefinedValue();
		%feature("autodoc", "1");
		Geom_UndefinedValue(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Geom_UndefinedValue NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_UndefinedValue {
	Handle_Geom_UndefinedValue GetHandle() {
	return *(Handle_Geom_UndefinedValue*) &$self;
	}
};
%extend Geom_UndefinedValue {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_UndefinedValue::~Geom_UndefinedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_UndefinedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_RectangularTrimmedSurface;
class Geom_RectangularTrimmedSurface : public Geom_BoundedSurface {
	public:
		%feature("autodoc", "1");
		Geom_RectangularTrimmedSurface(const Handle_Geom_Surface &S, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Boolean USense=1, const Standard_Boolean VSense=1);
		%feature("autodoc", "1");
		Geom_RectangularTrimmedSurface(const Handle_Geom_Surface &S, const Standard_Real Param1, const Standard_Real Param2, const Standard_Boolean UTrim, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Boolean USense=1, const Standard_Boolean VSense=1);
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real Param1, const Standard_Real Param2, const Standard_Boolean UTrim, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Handle_Geom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_RectangularTrimmedSurface {
	Handle_Geom_RectangularTrimmedSurface GetHandle() {
	return *(Handle_Geom_RectangularTrimmedSurface*) &$self;
	}
};
%extend Geom_RectangularTrimmedSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_RectangularTrimmedSurface::~Geom_RectangularTrimmedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_RectangularTrimmedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Line;
class Geom_Line : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		Geom_Line(const gp_Ax1 A1);
		%feature("autodoc", "1");
		Geom_Line(const gp_Lin L);
		%feature("autodoc", "1");
		Geom_Line(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		void SetLin(const gp_Lin L);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Lin Lin() const;
		%feature("autodoc", "1");
		const gp_Ax1  Position() const;
		%feature("autodoc", "1");
		virtual		void Reverse();
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
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Line {
	Handle_Geom_Line GetHandle() {
	return *(Handle_Geom_Line*) &$self;
	}
};
%extend Geom_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Line::~Geom_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Axis1Placement;
class Geom_Axis1Placement : public Geom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		Geom_Axis1Placement(const gp_Ax1 A1);
		%feature("autodoc", "1");
		Geom_Axis1Placement(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		const gp_Ax1  Ax1() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		Handle_Geom_Axis1Placement Reversed() const;
		%feature("autodoc", "1");
		virtual		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Axis1Placement {
	Handle_Geom_Axis1Placement GetHandle() {
	return *(Handle_Geom_Axis1Placement*) &$self;
	}
};
%extend Geom_Axis1Placement {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Axis1Placement::~Geom_Axis1Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Axis1Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_CylindricalSurface;
class Geom_CylindricalSurface : public Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Geom_CylindricalSurface(const gp_Ax3 A3, const Standard_Real Radius);
		%feature("autodoc", "1");
		Geom_CylindricalSurface(const gp_Cylinder C);
		%feature("autodoc", "1");
		void SetCylinder(const gp_Cylinder C);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_CylindricalSurface {
	Handle_Geom_CylindricalSurface GetHandle() {
	return *(Handle_Geom_CylindricalSurface*) &$self;
	}
};
%extend Geom_CylindricalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_CylindricalSurface::~Geom_CylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_CylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Ellipse;
class Geom_Ellipse : public Geom_Conic {
	public:
		%feature("autodoc", "1");
		Geom_Ellipse(const gp_Elips E);
		%feature("autodoc", "1");
		Geom_Ellipse(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetElips(const gp_Elips E);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gp_Elips Elips() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt Focus2() const;
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
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Ellipse {
	Handle_Geom_Ellipse GetHandle() {
	return *(Handle_Geom_Ellipse*) &$self;
	}
};
%extend Geom_Ellipse {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Ellipse::~Geom_Ellipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Ellipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SequenceNodeOfSequenceOfBSplineSurface;
class Geom_SequenceNodeOfSequenceOfBSplineSurface : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Geom_SequenceNodeOfSequenceOfBSplineSurface(const Handle_Geom_BSplineSurface &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SequenceNodeOfSequenceOfBSplineSurface {
	Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface GetHandle() {
	return *(Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface*) &$self;
	}
};
%extend Geom_SequenceNodeOfSequenceOfBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SequenceNodeOfSequenceOfBSplineSurface::~Geom_SequenceNodeOfSequenceOfBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SequenceNodeOfSequenceOfBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_OsculatingSurface;
class Geom_OsculatingSurface {
	public:
		%feature("autodoc", "1");
		Geom_OsculatingSurface();
		%feature("autodoc", "1");
		Geom_OsculatingSurface(const Handle_Geom_Surface &BS, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &BS, const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_Geom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean UOscSurf(const Standard_Real U, const Standard_Real V, Standard_Boolean & t, Handle_Geom_BSplineSurface & L) const;
		%feature("autodoc", "1");
		Standard_Boolean VOscSurf(const Standard_Real U, const Standard_Real V, Standard_Boolean & t, Handle_Geom_BSplineSurface & L) const;

};
%feature("shadow") Geom_OsculatingSurface::~Geom_OsculatingSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_OsculatingSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SurfaceOfLinearExtrusion;
class Geom_SurfaceOfLinearExtrusion : public Geom_SweptSurface {
	public:
		%feature("autodoc", "1");
		Geom_SurfaceOfLinearExtrusion(const Handle_Geom_Curve &C, const gp_Dir V);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetBasisCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		gp_Vec LocalDN(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SurfaceOfLinearExtrusion {
	Handle_Geom_SurfaceOfLinearExtrusion GetHandle() {
	return *(Handle_Geom_SurfaceOfLinearExtrusion*) &$self;
	}
};
%extend Geom_SurfaceOfLinearExtrusion {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SurfaceOfLinearExtrusion::~Geom_SurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_HSequenceOfSurface;
class Geom_HSequenceOfSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Geom_HSequenceOfSurface();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Geom_Surface &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Geom_HSequenceOfSurface &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_Surface &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_HSequenceOfSurface &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom_Surface &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom_HSequenceOfSurface &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom_Surface &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom_HSequenceOfSurface &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Geom_Surface &anItem);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Geom_SequenceOfSurface & Sequence() const;
		%feature("autodoc", "1");
		Geom_SequenceOfSurface & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfSurface ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_HSequenceOfSurface {
	Handle_Geom_HSequenceOfSurface GetHandle() {
	return *(Handle_Geom_HSequenceOfSurface*) &$self;
	}
};
%extend Geom_HSequenceOfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_HSequenceOfSurface::~Geom_HSequenceOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_HSequenceOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_SphericalSurface;
class Geom_SphericalSurface : public Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Geom_SphericalSurface(const gp_Ax3 A3, const Standard_Real Radius);
		%feature("autodoc", "1");
		Geom_SphericalSurface(const gp_Sphere S);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetSphere(const gp_Sphere S);
		%feature("autodoc", "1");
		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Real Volume() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_SphericalSurface {
	Handle_Geom_SphericalSurface GetHandle() {
	return *(Handle_Geom_SphericalSurface*) &$self;
	}
};
%extend Geom_SphericalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_SphericalSurface::~Geom_SphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_SphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_ConicalSurface;
class Geom_ConicalSurface : public Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Geom_ConicalSurface(const gp_Ax3 A3, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		Geom_ConicalSurface(const gp_Cone C);
		%feature("autodoc", "1");
		void SetCone(const gp_Cone C);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetSemiAngle(const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Cone Cone() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		gp_Pnt Apex() const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real RefRadius() const;
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_ConicalSurface {
	Handle_Geom_ConicalSurface GetHandle() {
	return *(Handle_Geom_ConicalSurface*) &$self;
	}
};
%extend Geom_ConicalSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_ConicalSurface::~Geom_ConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_ConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_OffsetSurface;
class Geom_OffsetSurface : public Geom_Surface {
	public:
		%feature("autodoc", "1");
		Geom_OffsetSurface(const Handle_Geom_Surface &S, const Standard_Real Offset);
		%feature("autodoc", "1");
		void SetBasisSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void SetOffsetValue(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Real Offset() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface BasisSurface() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		void Value(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & D1Ubasis, gp_Vec & D1Vbasis) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D1Ubasis, gp_Vec & D1Vbasis, gp_Vec & D2Ubasis, gp_Vec & D2Vbasis, gp_Vec & D2UVbasis) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D1Ubasis, gp_Vec & D1Vbasis, gp_Vec & D2Ubasis, gp_Vec & D2Vbasis, gp_Vec & D2UVbasis, gp_Vec & D3Ubasis, gp_Vec & D3Vbasis, gp_Vec & D3UUVbasis, gp_Vec & D3UVVbasis) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer VSide, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		gp_Vec LocalDN(const Standard_Real U, const Standard_Real V, const Standard_Integer USide, const Standard_Integer VSide, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean UOsculatingSurface(const Standard_Real U, const Standard_Real V, Standard_Boolean & IsOpposite, Handle_Geom_BSplineSurface & UOsculSurf) const;
		%feature("autodoc", "1");
		Standard_Boolean VOsculatingSurface(const Standard_Real U, const Standard_Real V, Standard_Boolean & IsOpposite, Handle_Geom_BSplineSurface & VOsculSurf) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_OffsetSurface {
	Handle_Geom_OffsetSurface GetHandle() {
	return *(Handle_Geom_OffsetSurface*) &$self;
	}
};
%extend Geom_OffsetSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_OffsetSurface::~Geom_OffsetSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_OffsetSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_TrimmedCurve;
class Geom_TrimmedCurve : public Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom_TrimmedCurve(const Handle_Geom_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void SetTrim(const Standard_Real U1, const Standard_Real U2, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		Handle_Geom_Curve BasisCurve() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt EndPoint() const;
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
		virtual		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_TrimmedCurve {
	Handle_Geom_TrimmedCurve GetHandle() {
	return *(Handle_Geom_TrimmedCurve*) &$self;
	}
};
%extend Geom_TrimmedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_TrimmedCurve::~Geom_TrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_TrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Plane;
class Geom_Plane : public Geom_ElementarySurface {
	public:
		%feature("autodoc", "1");
		Geom_Plane(const gp_Ax3 A3);
		%feature("autodoc", "1");
		Geom_Plane(const gp_Pln Pl);
		%feature("autodoc", "1");
		Geom_Plane(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		Geom_Plane(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		void SetPln(const gp_Pln Pl);
		%feature("autodoc", "1");
		gp_Pln Pln() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Plane {
	Handle_Geom_Plane GetHandle() {
	return *(Handle_Geom_Plane*) &$self;
	}
};
%extend Geom_Plane {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Plane::~Geom_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Axis2Placement;
class Geom_Axis2Placement : public Geom_AxisPlacement {
	public:
		%feature("autodoc", "1");
		Geom_Axis2Placement(const gp_Ax2 A2);
		%feature("autodoc", "1");
		Geom_Axis2Placement(const gp_Pnt P, const gp_Dir N, const gp_Dir Vx);
		%feature("autodoc", "1");
		void SetAx2(const gp_Ax2 A2);
		%feature("autodoc", "1");
		virtual		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetXDirection(const gp_Dir Vx);
		%feature("autodoc", "1");
		void SetYDirection(const gp_Dir Vy);
		%feature("autodoc", "1");
		gp_Ax2 Ax2() const;
		%feature("autodoc", "1");
		const gp_Dir  XDirection() const;
		%feature("autodoc", "1");
		const gp_Dir  YDirection() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Axis2Placement {
	Handle_Geom_Axis2Placement GetHandle() {
	return *(Handle_Geom_Axis2Placement*) &$self;
	}
};
%extend Geom_Axis2Placement {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Axis2Placement::~Geom_Axis2Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Axis2Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Parabola;
class Geom_Parabola : public Geom_Conic {
	public:
		%feature("autodoc", "1");
		Geom_Parabola(const gp_Parab Prb);
		%feature("autodoc", "1");
		Geom_Parabola(const gp_Ax2 A2, const Standard_Real Focal);
		%feature("autodoc", "1");
		Geom_Parabola(const gp_Ax1 D, const gp_Pnt F);
		%feature("autodoc", "1");
		void SetFocal(const Standard_Real Focal);
		%feature("autodoc", "1");
		void SetParab(const gp_Parab Prb);
		%feature("autodoc", "1");
		gp_Parab Parab() const;
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
		gp_Ax1 Directrix() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		gp_Pnt Focus() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Standard_Real TransformedParameter(const Standard_Real U, const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParametricTransformation(const gp_Trsf T) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Parabola {
	Handle_Geom_Parabola GetHandle() {
	return *(Handle_Geom_Parabola*) &$self;
	}
};
%extend Geom_Parabola {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Parabola::~Geom_Parabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Parabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Direction;
class Geom_Direction : public Geom_Vector {
	public:
		%feature("autodoc", "1");
		Geom_Direction(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		Geom_Direction(const gp_Dir V);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetDir(const gp_Dir V);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		gp_Dir Dir() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		virtual		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		virtual		void Cross(const Handle_Geom_Vector &Other);
		%feature("autodoc", "1");
		virtual		void CrossCross(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector Crossed(const Handle_Geom_Vector &Other) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Vector CrossCrossed(const Handle_Geom_Vector &V1, const Handle_Geom_Vector &V2) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Direction {
	Handle_Geom_Direction GetHandle() {
	return *(Handle_Geom_Direction*) &$self;
	}
};
%extend Geom_Direction {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Direction::~Geom_Direction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Direction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Transformation;
class Geom_Transformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Geom_Transformation();
		%feature("autodoc", "1");
		Geom_Transformation(const gp_Trsf T);
		%feature("autodoc", "1");
		void SetMirror(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		void SetRotation(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetScale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax3 FromSystem1, const gp_Ax3 ToSystem2);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax3 ToSystem);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec V);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void SetTrsf(const gp_Trsf T);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		const gp_Trsf  Trsf() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		Handle_Geom_Transformation Inverted() const;
		%feature("autodoc", "1");
		Handle_Geom_Transformation Multiplied(const Handle_Geom_Transformation &Other) const;
		%feature("autodoc", "1");
		void Multiply(const Handle_Geom_Transformation &Other);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		Handle_Geom_Transformation Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void PreMultiply(const Handle_Geom_Transformation &Other);
		%feature("autodoc","Transforms() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Geom_Transformation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Transformation {
	Handle_Geom_Transformation GetHandle() {
	return *(Handle_Geom_Transformation*) &$self;
	}
};
%extend Geom_Transformation {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Transformation::~Geom_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_Hyperbola;
class Geom_Hyperbola : public Geom_Conic {
	public:
		%feature("autodoc", "1");
		Geom_Hyperbola(const gp_Hypr H);
		%feature("autodoc", "1");
		Geom_Hyperbola(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetHypr(const gp_Hypr H);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gp_Hypr Hypr() const;
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
		gp_Ax1 Asymptote1() const;
		%feature("autodoc", "1");
		gp_Ax1 Asymptote2() const;
		%feature("autodoc", "1");
		gp_Hypr ConjugateBranch1() const;
		%feature("autodoc", "1");
		gp_Hypr ConjugateBranch2() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt Focus2() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		gp_Hypr OtherBranch() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_Hyperbola {
	Handle_Geom_Hyperbola GetHandle() {
	return *(Handle_Geom_Hyperbola*) &$self;
	}
};
%extend Geom_Hyperbola {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_Hyperbola::~Geom_Hyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_Hyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BezierCurve;
class Geom_BezierCurve : public Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom_BezierCurve(const TColgp_Array1OfPnt &CurvePoles);
		%feature("autodoc", "1");
		Geom_BezierCurve(const TColgp_Array1OfPnt &CurvePoles, const TColStd_Array1OfReal &PoleWeights);
		%feature("autodoc", "1");
		void Increase(const Standard_Integer Degree);
		%feature("autodoc", "1");
		void InsertPoleAfter(const Standard_Integer Index, const gp_Pnt P);
		%feature("autodoc", "1");
		void InsertPoleAfter(const Standard_Integer Index, const gp_Pnt P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void InsertPoleBefore(const Standard_Integer Index, const gp_Pnt P);
		%feature("autodoc", "1");
		void InsertPoleBefore(const Standard_Integer Index, const gp_Pnt P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void RemovePole(const Standard_Integer Index);
		%feature("autodoc", "1");
		virtual		void Reverse();
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Segment(const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt P, const Standard_Real Weight);
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
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt & P) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array1OfReal & W) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		static		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real Tolerance3D) -> Standard_Real");

		void Resolution(const Standard_Real Tolerance3D, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_BezierCurve {
	Handle_Geom_BezierCurve GetHandle() {
	return *(Handle_Geom_BezierCurve*) &$self;
	}
};
%extend Geom_BezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BezierCurve::~Geom_BezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_CartesianPoint;
class Geom_CartesianPoint : public Geom_Point {
	public:
		%feature("autodoc", "1");
		Geom_CartesianPoint(const gp_Pnt P);
		%feature("autodoc", "1");
		Geom_CartesianPoint(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Pnt() const;
		%feature("autodoc", "1");
		virtual		Standard_Real X() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Y() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Z() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_CartesianPoint {
	Handle_Geom_CartesianPoint GetHandle() {
	return *(Handle_Geom_CartesianPoint*) &$self;
	}
};
%extend Geom_CartesianPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_CartesianPoint::~Geom_CartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_CartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_BSplineCurve;
class Geom_BSplineCurve : public Geom_BoundedCurve {
	public:
		%feature("autodoc", "1");
		Geom_BSplineCurve(const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		Geom_BSplineCurve(const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Multiplicities, const Standard_Integer Degree, const Standard_Boolean Periodic=0, const Standard_Boolean CheckRational=1);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer Index, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncreaseMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void IncrementMultiplicity(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer M);
		%feature("autodoc", "1");
		void InsertKnot(const Standard_Real U, const Standard_Integer M=1, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnots(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real ParametricTolerance=0.0, const Standard_Boolean Add=0);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer M, const Standard_Real Tolerance);
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
		%feature("autodoc","PeriodicNormalization() -> Standard_Real");

		void PeriodicNormalization(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetPeriodic();
		%feature("autodoc", "1");
		void SetOrigin(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetOrigin(const Standard_Real U, const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetNotPeriodic();
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPole(const Standard_Integer Index, const gp_Pnt P, const Standard_Real Weight);
		%feature("autodoc", "1");
		void SetWeight(const Standard_Integer Index, const Standard_Real Weight);
		%feature("autodoc","MovePoint(Standard_Real U, const P, Standard_Integer Index1, Standard_Integer Index2) -> [Standard_Integer, Standard_Integer]");

		void MovePoint(const Standard_Real U, const gp_Pnt P, const Standard_Integer Index1, const Standard_Integer Index2, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","MovePointAndTangent(Standard_Real U, const P, const Tangent, Standard_Real Tolerance, Standard_Integer StartingCondition, Standard_Integer EndingCondition) -> Standard_Integer");

		void MovePointAndTangent(const Standard_Real U, const gp_Pnt P, const gp_Vec Tangent, const Standard_Real Tolerance, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, Standard_Integer &OutValue);
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
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt LocalValue(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2) const;
		%feature("autodoc", "1");
		void LocalD0(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void LocalD1(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		void LocalD2(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		void LocalD3(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		gp_Vec LocalDN(const Standard_Real U, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt EndPoint() const;
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
		%feature("autodoc","LocateU(Standard_Real U, Standard_Real ParametricTolerance, Standard_Boolean WithKnotRepetition=0) -> [Standard_Integer, Standard_Integer]");

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
		gp_Pnt Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt & P) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array1OfReal & W) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		static		Standard_Integer MaxDegree();
		%feature("autodoc","Resolution(Standard_Real Tolerance3D) -> Standard_Real");

		void Resolution(const Standard_Real Tolerance3D, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_BSplineCurve {
	Handle_Geom_BSplineCurve GetHandle() {
	return *(Handle_Geom_BSplineCurve*) &$self;
	}
};
%extend Geom_BSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_BSplineCurve::~Geom_BSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_BSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom_HSequenceOfBSplineSurface;
class Geom_HSequenceOfBSplineSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Geom_HSequenceOfBSplineSurface();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Geom_BSplineSurface &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Geom_HSequenceOfBSplineSurface &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_BSplineSurface &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom_HSequenceOfBSplineSurface &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom_BSplineSurface &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom_HSequenceOfBSplineSurface &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom_BSplineSurface &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom_HSequenceOfBSplineSurface &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Geom_BSplineSurface &anItem);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Geom_SequenceOfBSplineSurface & Sequence() const;
		%feature("autodoc", "1");
		Geom_SequenceOfBSplineSurface & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Geom_HSequenceOfBSplineSurface ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Geom_HSequenceOfBSplineSurface {
	Handle_Geom_HSequenceOfBSplineSurface GetHandle() {
	return *(Handle_Geom_HSequenceOfBSplineSurface*) &$self;
	}
};
%extend Geom_HSequenceOfBSplineSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Geom_HSequenceOfBSplineSurface::~Geom_HSequenceOfBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom_HSequenceOfBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};
