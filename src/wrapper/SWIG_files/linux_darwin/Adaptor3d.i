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

%module Adaptor3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Adaptor3d_renames.i


%include Adaptor3d_required_python_modules.i


%include Adaptor3d_dependencies.i


%include Adaptor3d_headers.i

typedef Adaptor3d_CurveOnSurface * Adaptor3d_CurveOnSurfacePtr;
typedef Adaptor3d_Surface * Adaptor3d_SurfacePtr;
typedef Adaptor3d_Curve * Adaptor3d_CurvePtr;



%nodefaultctor Handle_Adaptor3d_HCurve;
class Handle_Adaptor3d_HCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve(const Handle_Adaptor3d_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve(const Adaptor3d_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve & operator=(const Handle_Adaptor3d_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve & operator=(const Adaptor3d_HCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HCurve {
	Adaptor3d_HCurve* GetObject() {
	return (Adaptor3d_HCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HCurve::~Handle_Adaptor3d_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HIsoCurve;
class Handle_Adaptor3d_HIsoCurve : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HIsoCurve();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HIsoCurve(const Handle_Adaptor3d_HIsoCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HIsoCurve(const Adaptor3d_HIsoCurve *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HIsoCurve & operator=(const Handle_Adaptor3d_HIsoCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HIsoCurve & operator=(const Adaptor3d_HIsoCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HIsoCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HIsoCurve {
	Adaptor3d_HIsoCurve* GetObject() {
	return (Adaptor3d_HIsoCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HIsoCurve::~Handle_Adaptor3d_HIsoCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HIsoCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HSurface;
class Handle_Adaptor3d_HSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface(const Handle_Adaptor3d_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface(const Adaptor3d_HSurface *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & operator=(const Handle_Adaptor3d_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & operator=(const Adaptor3d_HSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HSurface {
	Adaptor3d_HSurface* GetObject() {
	return (Adaptor3d_HSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HSurface::~Handle_Adaptor3d_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HSurfaceOfLinearExtrusion;
class Handle_Adaptor3d_HSurfaceOfLinearExtrusion : public Handle_Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfLinearExtrusion(const Handle_Adaptor3d_HSurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfLinearExtrusion(const Adaptor3d_HSurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfLinearExtrusion & operator=(const Handle_Adaptor3d_HSurfaceOfLinearExtrusion &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfLinearExtrusion & operator=(const Adaptor3d_HSurfaceOfLinearExtrusion *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurfaceOfLinearExtrusion DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HSurfaceOfLinearExtrusion {
	Adaptor3d_HSurfaceOfLinearExtrusion* GetObject() {
	return (Adaptor3d_HSurfaceOfLinearExtrusion*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HSurfaceOfLinearExtrusion::~Handle_Adaptor3d_HSurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HSurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HSurfaceOfRevolution;
class Handle_Adaptor3d_HSurfaceOfRevolution : public Handle_Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfRevolution(const Handle_Adaptor3d_HSurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfRevolution(const Adaptor3d_HSurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfRevolution & operator=(const Handle_Adaptor3d_HSurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurfaceOfRevolution & operator=(const Adaptor3d_HSurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurfaceOfRevolution DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HSurfaceOfRevolution {
	Adaptor3d_HSurfaceOfRevolution* GetObject() {
	return (Adaptor3d_HSurfaceOfRevolution*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HSurfaceOfRevolution::~Handle_Adaptor3d_HSurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HSurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HCurveOnSurface;
class Handle_Adaptor3d_HCurveOnSurface : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface(const Handle_Adaptor3d_HCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface(const Adaptor3d_HCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface & operator=(const Handle_Adaptor3d_HCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface & operator=(const Adaptor3d_HCurveOnSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurveOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HCurveOnSurface {
	Adaptor3d_HCurveOnSurface* GetObject() {
	return (Adaptor3d_HCurveOnSurface*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HCurveOnSurface::~Handle_Adaptor3d_HCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HOffsetCurve;
class Handle_Adaptor3d_HOffsetCurve : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HOffsetCurve();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HOffsetCurve(const Handle_Adaptor3d_HOffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HOffsetCurve(const Adaptor3d_HOffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HOffsetCurve & operator=(const Handle_Adaptor3d_HOffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HOffsetCurve & operator=(const Adaptor3d_HOffsetCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HOffsetCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HOffsetCurve {
	Adaptor3d_HOffsetCurve* GetObject() {
	return (Adaptor3d_HOffsetCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HOffsetCurve::~Handle_Adaptor3d_HOffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HOffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_HVertex;
class Handle_Adaptor3d_HVertex : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_HVertex();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HVertex(const Handle_Adaptor3d_HVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HVertex(const Adaptor3d_HVertex *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HVertex & operator=(const Handle_Adaptor3d_HVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HVertex & operator=(const Adaptor3d_HVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HVertex DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_HVertex {
	Adaptor3d_HVertex* GetObject() {
	return (Adaptor3d_HVertex*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_HVertex::~Handle_Adaptor3d_HVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_HVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Adaptor3d_TopolTool;
class Handle_Adaptor3d_TopolTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Adaptor3d_TopolTool();
		%feature("autodoc", "1");
		Handle_Adaptor3d_TopolTool(const Handle_Adaptor3d_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_TopolTool(const Adaptor3d_TopolTool *anItem);
		%feature("autodoc", "1");
		Handle_Adaptor3d_TopolTool & operator=(const Handle_Adaptor3d_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_Adaptor3d_TopolTool & operator=(const Adaptor3d_TopolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_TopolTool DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Adaptor3d_TopolTool {
	Adaptor3d_TopolTool* GetObject() {
	return (Adaptor3d_TopolTool*)$self->Access();
	}
};
%feature("shadow") Handle_Adaptor3d_TopolTool::~Handle_Adaptor3d_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Adaptor3d_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HSurface;
class Adaptor3d_HSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Surface & Surface() const;
		%feature("autodoc", "1");
		Standard_Real FirstUParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastUParameter() const;
		%feature("autodoc", "1");
		Standard_Real FirstVParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastVParameter() const;
		%feature("autodoc", "1");
		GeomAbs_Shape UContinuity() const;
		%feature("autodoc", "1");
		GeomAbs_Shape VContinuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbUIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		Standard_Integer NbVIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void UIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		void VIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface UTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface VTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec]");

		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		Standard_Real UResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		Standard_Real VResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		GeomAbs_SurfaceType GetType() const;
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		gp_Cone Cone() const;
		%feature("autodoc", "1");
		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		gp_Torus Torus() const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		Standard_Boolean IsURational() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVRational() const;
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface Bezier() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface BSpline() const;
		%feature("autodoc", "1");
		gp_Ax1 AxeOfRevolution() const;
		%feature("autodoc", "1");
		gp_Dir Direction() const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve BasisCurve() const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface BasisSurface() const;
		%feature("autodoc", "1");
		Standard_Real OffsetValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HSurface {
	Handle_Adaptor3d_HSurface GetHandle() {
	return *(Handle_Adaptor3d_HSurface*) &$self;
	}
};
%extend Adaptor3d_HSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HSurface::~Adaptor3d_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HSurfaceOfLinearExtrusion;
class Adaptor3d_HSurfaceOfLinearExtrusion : public Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Adaptor3d_HSurfaceOfLinearExtrusion(const Adaptor3d_SurfaceOfLinearExtrusion &S);
		%feature("autodoc", "1");
		void Set(const Adaptor3d_SurfaceOfLinearExtrusion &S);
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfLinearExtrusion & ChangeSurface();

};
%extend Adaptor3d_HSurfaceOfLinearExtrusion {
	Handle_Adaptor3d_HSurfaceOfLinearExtrusion GetHandle() {
	return *(Handle_Adaptor3d_HSurfaceOfLinearExtrusion*) &$self;
	}
};
%extend Adaptor3d_HSurfaceOfLinearExtrusion {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HSurfaceOfLinearExtrusion::~Adaptor3d_HSurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HSurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_TopolTool;
class Adaptor3d_TopolTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Adaptor3d_TopolTool();
		%feature("autodoc", "1");
		Adaptor3d_TopolTool(const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		virtual		void Initialize();
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor2d_HCurve2d &Curve);
		%feature("autodoc", "1");
		virtual		void Init();
		%feature("autodoc", "1");
		virtual		Standard_Boolean More();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Value();
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		void InitVertexIterator();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreVertex();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HVertex Vertex();
		%feature("autodoc", "1");
		virtual		void NextVertex();
		%feature("autodoc", "1");
		virtual		TopAbs_State Classify(const gp_Pnt2d P, const Standard_Real Tol, const Standard_Boolean ReacdreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsThePointOn(const gp_Pnt2d P, const Standard_Real Tol, const Standard_Boolean ReacdreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor3d_HVertex &V);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Identical(const Handle_Adaptor3d_HVertex &V1, const Handle_Adaptor3d_HVertex &V2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Has3d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor2d_HCurve2d &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Pnt(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		void ComputeSamplePoints();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesU();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesV();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamples();
		%feature("autodoc", "1");
		void UParameters(TColStd_Array1OfReal & theArray) const;
		%feature("autodoc", "1");
		void VParameters(TColStd_Array1OfReal & theArray) const;
		%feature("autodoc", "1");
		virtual		void SamplePoint(const Standard_Integer Index, gp_Pnt2d & P2d, gp_Pnt & P3d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DomainIsInfinite();
		%feature("autodoc", "1");
		virtual		Standard_Address Edge() const;
		%feature("autodoc", "1");
		virtual		void SamplePnts(const Standard_Real theDefl, const Standard_Integer theNUmin, const Standard_Integer theNVmin);
		%feature("autodoc", "1");
		virtual		void BSplSamplePnts(const Standard_Real theDefl, const Standard_Integer theNUmin, const Standard_Integer theNVmin);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUniformSampling() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_TopolTool {
	Handle_Adaptor3d_TopolTool GetHandle() {
	return *(Handle_Adaptor3d_TopolTool*) &$self;
	}
};
%extend Adaptor3d_TopolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_TopolTool::~Adaptor3d_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_Surface;
class Adaptor3d_Surface {
	public:
		%feature("autodoc", "1");
		Adaptor3d_Surface();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstUParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastUParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstVParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastVParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape UContinuity() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape VContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void UIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void VIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HSurface UTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HSurface VTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
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
		virtual		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec]");

		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		Standard_Real UResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_SurfaceType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Pln Plane() const;
		%feature("autodoc", "1");
		virtual		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		virtual		gp_Cone Cone() const;
		%feature("autodoc", "1");
		virtual		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		virtual		gp_Torus Torus() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsURational() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVRational() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierSurface Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface BSpline() const;
		%feature("autodoc", "1");
		virtual		gp_Ax1 AxeOfRevolution() const;
		%feature("autodoc", "1");
		virtual		gp_Dir Direction() const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve BasisCurve() const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HSurface BasisSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Real OffsetValue() const;

};
%feature("shadow") Adaptor3d_Surface::~Adaptor3d_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_SurfaceOfRevolution;
class Adaptor3d_SurfaceOfRevolution : public Adaptor3d_Surface {
	public:
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfRevolution(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfRevolution(const Handle_Adaptor3d_HCurve &C, const gp_Ax1 V);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		void Load(const gp_Ax1 V);
		%feature("autodoc", "1");
		gp_Ax3 Axis() const;

};
%feature("shadow") Adaptor3d_SurfaceOfRevolution::~Adaptor3d_SurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_SurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HCurve;
class Adaptor3d_HCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Period() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U) -> gp_Vec");

		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U) -> [gp_Vec, gp_Vec]");

		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U) -> [gp_Vec, gp_Vec, gp_Vec]");

		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Circ Circle() const;
		%feature("autodoc", "1");
		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSpline() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HCurve {
	Handle_Adaptor3d_HCurve GetHandle() {
	return *(Handle_Adaptor3d_HCurve*) &$self;
	}
};
%extend Adaptor3d_HCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HCurve::~Adaptor3d_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HIsoCurve;
class Adaptor3d_HIsoCurve : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HIsoCurve();
		%feature("autodoc", "1");
		Adaptor3d_HIsoCurve(const Adaptor3d_IsoCurve &C);
		%feature("autodoc", "1");
		void Set(const Adaptor3d_IsoCurve &C);
		%feature("autodoc", "1");
		Adaptor3d_IsoCurve & ChangeCurve();

};
%extend Adaptor3d_HIsoCurve {
	Handle_Adaptor3d_HIsoCurve GetHandle() {
	return *(Handle_Adaptor3d_HIsoCurve*) &$self;
	}
};
%extend Adaptor3d_HIsoCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HIsoCurve::~Adaptor3d_HIsoCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HIsoCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_InterFunc;
class Adaptor3d_InterFunc : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Adaptor3d_InterFunc(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real FixVal, const Standard_Integer Fix);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Adaptor3d_InterFunc::~Adaptor3d_InterFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_InterFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HVertex;
class Adaptor3d_HVertex : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HVertex();
		%feature("autodoc", "1");
		Adaptor3d_HVertex(const gp_Pnt2d P, const TopAbs_Orientation Ori, const Standard_Real Resolution);
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value();
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSame(const Handle_Adaptor3d_HVertex &Other);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HVertex {
	Handle_Adaptor3d_HVertex GetHandle() {
	return *(Handle_Adaptor3d_HVertex*) &$self;
	}
};
%extend Adaptor3d_HVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HVertex::~Adaptor3d_HVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_Curve;
class Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		Adaptor3d_Curve();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U) -> gp_Vec");

		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U) -> [gp_Vec, gp_Vec]");

		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U) -> [gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve BSpline() const;

};
%feature("shadow") Adaptor3d_Curve::~Adaptor3d_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_CurveOnSurface;
class Adaptor3d_CurveOnSurface : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		Adaptor3d_CurveOnSurface();
		%feature("autodoc", "1");
		Adaptor3d_CurveOnSurface(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Adaptor3d_CurveOnSurface(const Handle_Adaptor2d_HCurve2d &C, const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & GetCurve() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & GetSurface() const;
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d & ChangeCurve();
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface & ChangeSurface();

};
%feature("shadow") Adaptor3d_CurveOnSurface::~Adaptor3d_CurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_CurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HCurveOnSurface;
class Adaptor3d_HCurveOnSurface : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HCurveOnSurface();
		%feature("autodoc", "1");
		Adaptor3d_HCurveOnSurface(const Adaptor3d_CurveOnSurface &C);
		%feature("autodoc", "1");
		void Set(const Adaptor3d_CurveOnSurface &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		Adaptor3d_CurveOnSurface & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HCurveOnSurface {
	Handle_Adaptor3d_HCurveOnSurface GetHandle() {
	return *(Handle_Adaptor3d_HCurveOnSurface*) &$self;
	}
};
%extend Adaptor3d_HCurveOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HCurveOnSurface::~Adaptor3d_HCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HSurfaceTool;
class Adaptor3d_HSurfaceTool {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HSurfaceTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real FirstVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Integer NbUIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void UIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void VIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface UTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface VTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Real UPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Real VPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		static		void D0(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc","D1(const S, Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec]");

		static		void D1(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D2(const S, Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D2(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D3(const S, Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D3(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		Standard_Real UResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		Standard_Real VResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_SurfaceType GetType(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Pln Plane(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Cylinder Cylinder(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Cone Cone(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Torus Torus(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Sphere Sphere(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierSurface Bezier(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface BSpline(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Ax1 AxeOfRevolution(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Dir Direction(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurve BasisCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface BasisSurface(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Real OffsetValue(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);

};
%feature("shadow") Adaptor3d_HSurfaceTool::~Adaptor3d_HSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_SurfaceOfLinearExtrusion;
class Adaptor3d_SurfaceOfLinearExtrusion : public Adaptor3d_Surface {
	public:
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfLinearExtrusion(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfLinearExtrusion(const Handle_Adaptor3d_HCurve &C, const gp_Dir V);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		void Load(const gp_Dir V);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstUParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastUParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstVParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastVParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape UContinuity() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape VContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void UIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void VIntervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HSurface UTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HSurface VTrim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
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
		virtual		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec]");

		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U, Standard_Real V) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		Standard_Real UResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VResolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_SurfaceType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Pln Plane() const;
		%feature("autodoc", "1");
		virtual		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		virtual		gp_Cone Cone() const;
		%feature("autodoc", "1");
		virtual		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		virtual		gp_Torus Torus() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsURational() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVRational() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierSurface Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface BSpline() const;
		%feature("autodoc", "1");
		virtual		gp_Ax1 AxeOfRevolution() const;
		%feature("autodoc", "1");
		virtual		gp_Dir Direction() const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve BasisCurve() const;

};
%feature("shadow") Adaptor3d_SurfaceOfLinearExtrusion::~Adaptor3d_SurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_SurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HOffsetCurve;
class Adaptor3d_HOffsetCurve : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HOffsetCurve();
		%feature("autodoc", "1");
		Adaptor3d_HOffsetCurve(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		void Set(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		Adaptor3d_OffsetCurve & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HOffsetCurve {
	Handle_Adaptor3d_HOffsetCurve GetHandle() {
	return *(Handle_Adaptor3d_HOffsetCurve*) &$self;
	}
};
%extend Adaptor3d_HOffsetCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HOffsetCurve::~Adaptor3d_HOffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HOffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_OffsetCurve;
class Adaptor3d_OffsetCurve : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		Adaptor3d_OffsetCurve();
		%feature("autodoc", "1");
		Adaptor3d_OffsetCurve(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Adaptor3d_OffsetCurve(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real Offset);
		%feature("autodoc", "1");
		Adaptor3d_OffsetCurve(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real Offset, const Standard_Real WFirst, const Standard_Real WLast);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor2d_HCurve2d &S);
		%feature("autodoc", "1");
		void Load(const Standard_Real Offset);
		%feature("autodoc", "1");
		void Load(const Standard_Real Offset, const Standard_Real WFirst, const Standard_Real WLast);
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Curve() const;
		%feature("autodoc", "1");
		Standard_Real Offset() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom2d_BSplineCurve BSpline() const;

};
%feature("shadow") Adaptor3d_OffsetCurve::~Adaptor3d_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_IsoCurve;
class Adaptor3d_IsoCurve : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		Adaptor3d_IsoCurve();
		%feature("autodoc", "1");
		Adaptor3d_IsoCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Adaptor3d_IsoCurve(const Handle_Adaptor3d_HSurface &S, const GeomAbs_IsoType Iso, const Standard_Real Param);
		%feature("autodoc", "1");
		Adaptor3d_IsoCurve(const Handle_Adaptor3d_HSurface &S, const GeomAbs_IsoType Iso, const Standard_Real Param, const Standard_Real WFirst, const Standard_Real WLast);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Load(const GeomAbs_IsoType Iso, const Standard_Real Param);
		%feature("autodoc", "1");
		void Load(const GeomAbs_IsoType Iso, const Standard_Real Param, const Standard_Real WFirst, const Standard_Real WLast);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & Surface() const;
		%feature("autodoc", "1");
		GeomAbs_IsoType Iso() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc","D1(Standard_Real U) -> gp_Vec");

		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue) const;
		%feature("autodoc","D2(Standard_Real U) -> [gp_Vec, gp_Vec]");

		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc","D3(Standard_Real U) -> [gp_Vec, gp_Vec, gp_Vec]");

		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		gp_Lin Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve BSpline() const;

};
%feature("shadow") Adaptor3d_IsoCurve::~Adaptor3d_IsoCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_IsoCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Adaptor3d_HSurfaceOfRevolution;
class Adaptor3d_HSurfaceOfRevolution : public Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Adaptor3d_HSurfaceOfRevolution();
		%feature("autodoc", "1");
		Adaptor3d_HSurfaceOfRevolution(const Adaptor3d_SurfaceOfRevolution &S);
		%feature("autodoc", "1");
		void Set(const Adaptor3d_SurfaceOfRevolution &S);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Surface & Surface() const;
		%feature("autodoc", "1");
		Adaptor3d_SurfaceOfRevolution & ChangeSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Adaptor3d_HSurfaceOfRevolution {
	Handle_Adaptor3d_HSurfaceOfRevolution GetHandle() {
	return *(Handle_Adaptor3d_HSurfaceOfRevolution*) &$self;
	}
};
%extend Adaptor3d_HSurfaceOfRevolution {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Adaptor3d_HSurfaceOfRevolution::~Adaptor3d_HSurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Adaptor3d_HSurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};
