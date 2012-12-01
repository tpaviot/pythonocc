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

%module BRepAdaptor
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepAdaptor_renames.i


%include BRepAdaptor_required_python_modules.i


%include BRepAdaptor_dependencies.i


%include BRepAdaptor_headers.i




%nodefaultctor Handle_BRepAdaptor_HCurve;
class Handle_BRepAdaptor_HCurve : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve();
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve(const Handle_BRepAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve(const BRepAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve & operator=(const Handle_BRepAdaptor_HCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve & operator=(const BRepAdaptor_HCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAdaptor_HCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAdaptor_HCurve {
	BRepAdaptor_HCurve* GetObject() {
	return (BRepAdaptor_HCurve*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAdaptor_HCurve::~Handle_BRepAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAdaptor_HCompCurve;
class Handle_BRepAdaptor_HCompCurve : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCompCurve();
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCompCurve(const Handle_BRepAdaptor_HCompCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCompCurve(const BRepAdaptor_HCompCurve *anItem);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCompCurve & operator=(const Handle_BRepAdaptor_HCompCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCompCurve & operator=(const BRepAdaptor_HCompCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAdaptor_HCompCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAdaptor_HCompCurve {
	BRepAdaptor_HCompCurve* GetObject() {
	return (BRepAdaptor_HCompCurve*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAdaptor_HCompCurve::~Handle_BRepAdaptor_HCompCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAdaptor_HCompCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAdaptor_HSurface;
class Handle_BRepAdaptor_HSurface : public Handle_Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface();
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface(const Handle_BRepAdaptor_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface(const BRepAdaptor_HSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface & operator=(const Handle_BRepAdaptor_HSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface & operator=(const BRepAdaptor_HSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAdaptor_HSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAdaptor_HSurface {
	BRepAdaptor_HSurface* GetObject() {
	return (BRepAdaptor_HSurface*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAdaptor_HSurface::~Handle_BRepAdaptor_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAdaptor_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAdaptor_HCurve2d;
class Handle_BRepAdaptor_HCurve2d : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve2d();
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve2d(const Handle_BRepAdaptor_HCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve2d(const BRepAdaptor_HCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve2d & operator=(const Handle_BRepAdaptor_HCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HCurve2d & operator=(const BRepAdaptor_HCurve2d *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAdaptor_HCurve2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAdaptor_HCurve2d {
	BRepAdaptor_HCurve2d* GetObject() {
	return (BRepAdaptor_HCurve2d*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAdaptor_HCurve2d::~Handle_BRepAdaptor_HCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAdaptor_HCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAdaptor_HArray1OfCurve;
class Handle_BRepAdaptor_HArray1OfCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HArray1OfCurve();
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HArray1OfCurve(const Handle_BRepAdaptor_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HArray1OfCurve(const BRepAdaptor_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HArray1OfCurve & operator=(const Handle_BRepAdaptor_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HArray1OfCurve & operator=(const BRepAdaptor_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAdaptor_HArray1OfCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAdaptor_HArray1OfCurve {
	BRepAdaptor_HArray1OfCurve* GetObject() {
	return (BRepAdaptor_HArray1OfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAdaptor_HArray1OfCurve::~Handle_BRepAdaptor_HArray1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAdaptor_HArray1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_HCompCurve;
class BRepAdaptor_HCompCurve : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_HCompCurve();
		%feature("autodoc", "1");
		BRepAdaptor_HCompCurve(const BRepAdaptor_CompCurve &C);
		%feature("autodoc", "1");
		void Set(const BRepAdaptor_CompCurve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		BRepAdaptor_CompCurve & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAdaptor_HCompCurve {
	Handle_BRepAdaptor_HCompCurve GetHandle() {
	return *(Handle_BRepAdaptor_HCompCurve*) &$self;
	}
};
%extend BRepAdaptor_HCompCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAdaptor_HCompCurve::~BRepAdaptor_HCompCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_HCompCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_Curve2d;
class BRepAdaptor_Curve2d : public Geom2dAdaptor_Curve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_Curve2d();
		%feature("autodoc", "1");
		BRepAdaptor_Curve2d(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;

};
%feature("shadow") BRepAdaptor_Curve2d::~BRepAdaptor_Curve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_Curve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_Array1OfCurve;
class BRepAdaptor_Array1OfCurve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_Array1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepAdaptor_Array1OfCurve(const BRepAdaptor_Curve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BRepAdaptor_Array1OfCurve & Assign(const BRepAdaptor_Array1OfCurve &Other);
		%feature("autodoc", "1");
		const BRepAdaptor_Array1OfCurve & operator=(const BRepAdaptor_Array1OfCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepAdaptor_Curve &Value);
		%feature("autodoc", "1");
		const BRepAdaptor_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepAdaptor_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepAdaptor_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepAdaptor_Curve & operator()(const Standard_Integer Index);

};
%feature("shadow") BRepAdaptor_Array1OfCurve::~BRepAdaptor_Array1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_Array1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_CompCurve;
class BRepAdaptor_CompCurve : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_CompCurve();
		%feature("autodoc", "1");
		BRepAdaptor_CompCurve(const TopoDS_Wire W, const Standard_Boolean KnotByCurvilinearAbcissa=0);
		%feature("autodoc", "1");
		BRepAdaptor_CompCurve(const TopoDS_Wire W, const Standard_Boolean KnotByCurvilinearAbcissa, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Wire W, const Standard_Boolean KnotByCurvilinearAbcissa);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Wire W, const Standard_Boolean KnotByCurvilinearAbcissa, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetPeriodic(const Standard_Boolean Periodic);
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;
		%feature("autodoc","Edge(Standard_Real U) -> Standard_Real");

		void Edge(const Standard_Real U, TopoDS_Edge & E, Standard_Real &OutValue) const;
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
%feature("shadow") BRepAdaptor_CompCurve::~BRepAdaptor_CompCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_CompCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_Surface;
class BRepAdaptor_Surface : public Adaptor3d_Surface {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_Surface();
		%feature("autodoc", "1");
		BRepAdaptor_Surface(const TopoDS_Face F, const Standard_Boolean R=1);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Face F, const Standard_Boolean Restriction=1);
		%feature("autodoc", "1");
		const GeomAdaptor_Surface & Surface() const;
		%feature("autodoc", "1");
		GeomAdaptor_Surface & ChangeSurface();
		%feature("autodoc", "1");
		const gp_Trsf  Trsf() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
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
%feature("shadow") BRepAdaptor_Surface::~BRepAdaptor_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_HArray1OfCurve;
class BRepAdaptor_HArray1OfCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepAdaptor_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up, const BRepAdaptor_Curve &V);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepAdaptor_Curve &Value);
		%feature("autodoc", "1");
		const BRepAdaptor_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepAdaptor_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepAdaptor_Array1OfCurve & Array1() const;
		%feature("autodoc", "1");
		BRepAdaptor_Array1OfCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAdaptor_HArray1OfCurve {
	Handle_BRepAdaptor_HArray1OfCurve GetHandle() {
	return *(Handle_BRepAdaptor_HArray1OfCurve*) &$self;
	}
};
%extend BRepAdaptor_HArray1OfCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAdaptor_HArray1OfCurve::~BRepAdaptor_HArray1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_HArray1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_HCurve2d;
class BRepAdaptor_HCurve2d : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_HCurve2d();
		%feature("autodoc", "1");
		BRepAdaptor_HCurve2d(const BRepAdaptor_Curve2d &C);
		%feature("autodoc", "1");
		void Set(const BRepAdaptor_Curve2d &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		BRepAdaptor_Curve2d & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAdaptor_HCurve2d {
	Handle_BRepAdaptor_HCurve2d GetHandle() {
	return *(Handle_BRepAdaptor_HCurve2d*) &$self;
	}
};
%extend BRepAdaptor_HCurve2d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAdaptor_HCurve2d::~BRepAdaptor_HCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_HCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_Curve;
class BRepAdaptor_Curve : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_Curve();
		%feature("autodoc", "1");
		BRepAdaptor_Curve(const TopoDS_Edge E);
		%feature("autodoc", "1");
		BRepAdaptor_Curve(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		const gp_Trsf  Trsf() const;
		%feature("autodoc", "1");
		Standard_Boolean Is3DCurve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCurveOnSurface() const;
		%feature("autodoc", "1");
		const GeomAdaptor_Curve & Curve() const;
		%feature("autodoc", "1");
		const Adaptor3d_CurveOnSurface & CurveOnSurface() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
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
%feature("shadow") BRepAdaptor_Curve::~BRepAdaptor_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_HSurface;
class BRepAdaptor_HSurface : public Adaptor3d_HSurface {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_HSurface();
		%feature("autodoc", "1");
		BRepAdaptor_HSurface(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		void Set(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Surface & Surface() const;
		%feature("autodoc", "1");
		BRepAdaptor_Surface & ChangeSurface();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAdaptor_HSurface {
	Handle_BRepAdaptor_HSurface GetHandle() {
	return *(Handle_BRepAdaptor_HSurface*) &$self;
	}
};
%extend BRepAdaptor_HSurface {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAdaptor_HSurface::~BRepAdaptor_HSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_HSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAdaptor_HCurve;
class BRepAdaptor_HCurve : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		BRepAdaptor_HCurve();
		%feature("autodoc", "1");
		BRepAdaptor_HCurve(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		void Set(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		BRepAdaptor_Curve & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAdaptor_HCurve {
	Handle_BRepAdaptor_HCurve GetHandle() {
	return *(Handle_BRepAdaptor_HCurve*) &$self;
	}
};
%extend BRepAdaptor_HCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAdaptor_HCurve::~BRepAdaptor_HCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAdaptor_HCurve {
	void _kill_pointed() {
		delete $self;
	}
};
