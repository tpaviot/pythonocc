/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module GeomAdaptor
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomAdaptor_renames.i


%include GeomAdaptor_required_python_modules.i


%include GeomAdaptor_dependencies.i


%include GeomAdaptor_headers.i




%nodefaultctor Handle_GeomAdaptor_GHCurve;
class Handle_GeomAdaptor_GHCurve : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHCurve();
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHCurve(const Handle_GeomAdaptor_GHCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHCurve(const GeomAdaptor_GHCurve *anItem);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHCurve & operator=(const Handle_GeomAdaptor_GHCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHCurve & operator=(const GeomAdaptor_GHCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomAdaptor_GHCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomAdaptor_GHCurve {
	GeomAdaptor_GHCurve* GetObject() {
	return (GeomAdaptor_GHCurve*)$self->Access();
	}
};
%feature("shadow") Handle_GeomAdaptor_GHCurve::~Handle_GeomAdaptor_GHCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomAdaptor_GHCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomAdaptor_HCurve;
class Handle_GeomAdaptor_HCurve : public Handle_GeomAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HCurve();
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HCurve(const Handle_GeomAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HCurve(const GeomAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HCurve & operator=(const Handle_GeomAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HCurve & operator=(const GeomAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomAdaptor_HCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomAdaptor_HCurve {
	GeomAdaptor_HCurve* GetObject() {
	return (GeomAdaptor_HCurve*)$self->Access();
	}
};
%feature("shadow") Handle_GeomAdaptor_HCurve::~Handle_GeomAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomAdaptor_GHSurface;
class Handle_GeomAdaptor_GHSurface : public Handle_Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHSurface();
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHSurface(const Handle_GeomAdaptor_GHSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHSurface(const GeomAdaptor_GHSurface *anItem);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHSurface & operator=(const Handle_GeomAdaptor_GHSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_GHSurface & operator=(const GeomAdaptor_GHSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomAdaptor_GHSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomAdaptor_GHSurface {
	GeomAdaptor_GHSurface* GetObject() {
	return (GeomAdaptor_GHSurface*)$self->Access();
	}
};
%feature("shadow") Handle_GeomAdaptor_GHSurface::~Handle_GeomAdaptor_GHSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomAdaptor_GHSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomAdaptor_HSurface;
class Handle_GeomAdaptor_HSurface : public Handle_GeomAdaptor_GHSurface {
	public:
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HSurface();
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HSurface(const Handle_GeomAdaptor_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HSurface(const GeomAdaptor_HSurface *anItem);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HSurface & operator=(const Handle_GeomAdaptor_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomAdaptor_HSurface & operator=(const GeomAdaptor_HSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomAdaptor_HSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomAdaptor_HSurface {
	GeomAdaptor_HSurface* GetObject() {
	return (GeomAdaptor_HSurface*)$self->Access();
	}
};
%feature("shadow") Handle_GeomAdaptor_HSurface::~Handle_GeomAdaptor_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomAdaptor_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_GHCurve;
class GeomAdaptor_GHCurve : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_GHCurve();
		%feature("autodoc", "1");
		GeomAdaptor_GHCurve(const GeomAdaptor_Curve &C);
		%feature("autodoc", "1");
		void Set(const GeomAdaptor_Curve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		GeomAdaptor_Curve & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomAdaptor_GHCurve {
	Handle_GeomAdaptor_GHCurve GetHandle() {
	return *(Handle_GeomAdaptor_GHCurve*) &$self;
	}
};
%extend GeomAdaptor_GHCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomAdaptor_GHCurve::~GeomAdaptor_GHCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_GHCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_HCurve;
class GeomAdaptor_HCurve : public GeomAdaptor_GHCurve {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_HCurve();
		%feature("autodoc", "1");
		GeomAdaptor_HCurve(const GeomAdaptor_Curve &AS);
		%feature("autodoc", "1");
		GeomAdaptor_HCurve(const Handle_Geom_Curve &S);
		%feature("autodoc", "1");
		GeomAdaptor_HCurve(const Handle_Geom_Curve &S, const Standard_Real UFirst, const Standard_Real ULast);

};
%extend GeomAdaptor_HCurve {
	Handle_GeomAdaptor_HCurve GetHandle() {
	return *(Handle_GeomAdaptor_HCurve*) &$self;
	}
};
%extend GeomAdaptor_HCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomAdaptor_HCurve::~GeomAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_GHSurface;
class GeomAdaptor_GHSurface : public Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_GHSurface();
		%feature("autodoc", "1");
		GeomAdaptor_GHSurface(const GeomAdaptor_Surface &S);
		%feature("autodoc", "1");
		void Set(const GeomAdaptor_Surface &S);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Surface & Surface() const;
		%feature("autodoc", "1");
		GeomAdaptor_Surface & ChangeSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomAdaptor_GHSurface {
	Handle_GeomAdaptor_GHSurface GetHandle() {
	return *(Handle_GeomAdaptor_GHSurface*) &$self;
	}
};
%extend GeomAdaptor_GHSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomAdaptor_GHSurface::~GeomAdaptor_GHSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_GHSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_HSurface;
class GeomAdaptor_HSurface : public GeomAdaptor_GHSurface {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_HSurface();
		%feature("autodoc", "1");
		GeomAdaptor_HSurface(const GeomAdaptor_Surface &AS);
		%feature("autodoc", "1");
		GeomAdaptor_HSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		GeomAdaptor_HSurface(const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast, const Standard_Real TolU=0.0, const Standard_Real TolV=0.0);

};
%extend GeomAdaptor_HSurface {
	Handle_GeomAdaptor_HSurface GetHandle() {
	return *(Handle_GeomAdaptor_HSurface*) &$self;
	}
};
%extend GeomAdaptor_HSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomAdaptor_HSurface::~GeomAdaptor_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor;
class GeomAdaptor {
	public:
		%feature("autodoc", "1");
		GeomAdaptor();
		%feature("autodoc", "1");
		static		Handle_Geom_Curve MakeCurve(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_Surface MakeSurface(const Adaptor3d_Surface &S);

};
%feature("shadow") GeomAdaptor::~GeomAdaptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_Surface;
class GeomAdaptor_Surface : public Adaptor3d_Surface {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_Surface();
		%feature("autodoc", "1");
		GeomAdaptor_Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		GeomAdaptor_Surface(const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast, const Standard_Real TolU=0.0, const Standard_Real TolV=0.0);
		%feature("autodoc", "1");
		void Load(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Load(const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast, const Standard_Real TolU=0.0, const Standard_Real TolV=0.0);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
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
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
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
%feature("shadow") GeomAdaptor_Surface::~GeomAdaptor_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomAdaptor_Curve;
class GeomAdaptor_Curve : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		GeomAdaptor_Curve();
		%feature("autodoc", "1");
		GeomAdaptor_Curve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		GeomAdaptor_Curve(const Handle_Geom_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		void Load(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Load(const Handle_Geom_Curve &C, const Standard_Real UFirst, const Standard_Real ULast);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;
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
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
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
%feature("shadow") GeomAdaptor_Curve::~GeomAdaptor_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomAdaptor_Curve {
	void _kill_pointed() {
		delete $self;
	}
};
