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

%module ProjLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ProjLib_renames.i


%include ProjLib_required_python_modules.i


%include ProjLib_dependencies.i


%include ProjLib_headers.i




%nodefaultctor Handle_ProjLib_HProjectedCurve;
class Handle_ProjLib_HProjectedCurve : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ProjLib_HProjectedCurve();
		%feature("autodoc", "1");
		Handle_ProjLib_HProjectedCurve(const Handle_ProjLib_HProjectedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HProjectedCurve(const ProjLib_HProjectedCurve *anItem);
		%feature("autodoc", "1");
		Handle_ProjLib_HProjectedCurve & operator=(const Handle_ProjLib_HProjectedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HProjectedCurve & operator=(const ProjLib_HProjectedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_ProjLib_HProjectedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ProjLib_HProjectedCurve {
	ProjLib_HProjectedCurve* GetObject() {
	return (ProjLib_HProjectedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_ProjLib_HProjectedCurve::~Handle_ProjLib_HProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ProjLib_HProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt;
class Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt(const Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt(const ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt & operator=(const Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt & operator=(const ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt {
	ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt* GetObject() {
	return (ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt::~Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ProjLib_HCompProjectedCurve;
class Handle_ProjLib_HCompProjectedCurve : public Handle_Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ProjLib_HCompProjectedCurve();
		%feature("autodoc", "1");
		Handle_ProjLib_HCompProjectedCurve(const Handle_ProjLib_HCompProjectedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HCompProjectedCurve(const ProjLib_HCompProjectedCurve *anItem);
		%feature("autodoc", "1");
		Handle_ProjLib_HCompProjectedCurve & operator=(const Handle_ProjLib_HCompProjectedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HCompProjectedCurve & operator=(const ProjLib_HCompProjectedCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_ProjLib_HCompProjectedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ProjLib_HCompProjectedCurve {
	ProjLib_HCompProjectedCurve* GetObject() {
	return (ProjLib_HCompProjectedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_ProjLib_HCompProjectedCurve::~Handle_ProjLib_HCompProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ProjLib_HCompProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ProjLib_HSequenceOfHSequenceOfPnt;
class Handle_ProjLib_HSequenceOfHSequenceOfPnt : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt(const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt(const ProjLib_HSequenceOfHSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt & operator=(const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt & operator=(const ProjLib_HSequenceOfHSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_ProjLib_HSequenceOfHSequenceOfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ProjLib_HSequenceOfHSequenceOfPnt {
	ProjLib_HSequenceOfHSequenceOfPnt* GetObject() {
	return (ProjLib_HSequenceOfHSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_ProjLib_HSequenceOfHSequenceOfPnt::~Handle_ProjLib_HSequenceOfHSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ProjLib_HSequenceOfHSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_SequenceOfHSequenceOfPnt;
class ProjLib_SequenceOfHSequenceOfPnt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ProjLib_SequenceOfHSequenceOfPnt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ProjLib_SequenceOfHSequenceOfPnt & Assign(const ProjLib_SequenceOfHSequenceOfPnt &Other);
		%feature("autodoc", "1");
		const ProjLib_SequenceOfHSequenceOfPnt & operator=(const ProjLib_SequenceOfHSequenceOfPnt &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfPnt &T);
		%feature("autodoc", "1");
		void Append(ProjLib_SequenceOfHSequenceOfPnt & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfPnt &T);
		%feature("autodoc", "1");
		void Prepend(ProjLib_SequenceOfHSequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TColgp_HSequenceOfPnt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ProjLib_SequenceOfHSequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TColgp_HSequenceOfPnt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ProjLib_SequenceOfHSequenceOfPnt & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HSequenceOfPnt & First() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HSequenceOfPnt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ProjLib_SequenceOfHSequenceOfPnt & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HSequenceOfPnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HSequenceOfPnt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TColgp_HSequenceOfPnt &I);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ProjLib_SequenceOfHSequenceOfPnt::~ProjLib_SequenceOfHSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_SequenceOfHSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_CompProjectedCurve;
class ProjLib_CompProjectedCurve : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		ProjLib_CompProjectedCurve();
		%feature("autodoc", "1");
		ProjLib_CompProjectedCurve(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		ProjLib_CompProjectedCurve(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Standard_Real TolU, const Standard_Real TolV, const Standard_Real MaxDist);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & GetSurface() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurve & GetCurve() const;
		%feature("autodoc","GetTolerance() -> [Standard_Real, Standard_Real]");

		void GetTolerance(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc","Bounds(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Bounds(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSinglePnt(const Standard_Integer Index, gp_Pnt2d & P) const;
		%feature("autodoc","IsUIso(Standard_Integer Index) -> Standard_Real");

		Standard_Boolean IsUIso(const Standard_Integer Index, Standard_Real &OutValue) const;
		%feature("autodoc","IsVIso(Standard_Integer Index) -> Standard_Real");

		Standard_Boolean IsVIso(const Standard_Integer Index, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		virtual		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Trim(const Standard_Real FirstParam, const Standard_Real LastParam, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		Standard_Real MaxDistance(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_ProjLib_HSequenceOfHSequenceOfPnt & GetSequence() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;

};
%feature("shadow") ProjLib_CompProjectedCurve::~ProjLib_CompProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_CompProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_ProjectedCurve;
class ProjLib_ProjectedCurve : public Adaptor2d_Curve2d {
	public:
		%feature("autodoc", "1");
		ProjLib_ProjectedCurve();
		%feature("autodoc", "1");
		ProjLib_ProjectedCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		ProjLib_ProjectedCurve(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		ProjLib_ProjectedCurve(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & GetSurface() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurve & GetCurve() const;
		%feature("autodoc", "1");
		Standard_Real GetTolerance() const;
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
%feature("shadow") ProjLib_ProjectedCurve::~ProjLib_ProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_ProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Projector;
class ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Projector();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Done();
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		void SetBSpline(const Handle_Geom2d_BSplineCurve &C);
		%feature("autodoc", "1");
		void SetBezier(const Handle_Geom2d_BezierCurve &C);
		%feature("autodoc", "1");
		void SetType(const GeomAbs_CurveType Type);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		void SetPeriodic();
		%feature("autodoc", "1");
		const gp_Lin2d  Line() const;
		%feature("autodoc", "1");
		const gp_Circ2d  Circle() const;
		%feature("autodoc", "1");
		const gp_Elips2d  Ellipse() const;
		%feature("autodoc", "1");
		const gp_Hypr2d  Hyperbola() const;
		%feature("autodoc", "1");
		const gp_Parab2d  Parabola() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSpline() const;
		%feature("autodoc", "1");
		virtual		void Project(const gp_Lin L);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Circ C);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Elips E);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Parab P);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Hypr H);
		%feature("autodoc", "1");
		void UFrame(const Standard_Real CFirst, const Standard_Real CLast, const Standard_Real UFirst, const Standard_Real Period);
		%feature("autodoc", "1");
		void VFrame(const Standard_Real CFirst, const Standard_Real CLast, const Standard_Real VFirst, const Standard_Real Period);

};
%feature("shadow") ProjLib_Projector::~ProjLib_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Cylinder;
class ProjLib_Cylinder : public ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Cylinder();
		%feature("autodoc", "1");
		ProjLib_Cylinder(const gp_Cylinder Cyl);
		%feature("autodoc", "1");
		ProjLib_Cylinder(const gp_Cylinder Cyl, const gp_Lin L);
		%feature("autodoc", "1");
		ProjLib_Cylinder(const gp_Cylinder Cyl, const gp_Circ C);
		%feature("autodoc", "1");
		ProjLib_Cylinder(const gp_Cylinder Cyl, const gp_Elips E);
		%feature("autodoc", "1");
		void Init(const gp_Cylinder Cyl);

};
%feature("shadow") ProjLib_Cylinder::~ProjLib_Cylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Cylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Sphere;
class ProjLib_Sphere : public ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Sphere();
		%feature("autodoc", "1");
		ProjLib_Sphere(const gp_Sphere Sp);
		%feature("autodoc", "1");
		ProjLib_Sphere(const gp_Sphere Sp, const gp_Circ C);
		%feature("autodoc", "1");
		void Init(const gp_Sphere Sp);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Lin L);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Circ C);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Elips E);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Parab P);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Hypr H);
		%feature("autodoc", "1");
		void SetInBounds(const Standard_Real U);

};
%feature("shadow") ProjLib_Sphere::~ProjLib_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_HSequenceOfHSequenceOfPnt;
class ProjLib_HSequenceOfHSequenceOfPnt : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ProjLib_HSequenceOfHSequenceOfPnt();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfPnt &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfPnt &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_ProjLib_HSequenceOfHSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt &anItem);
		%feature("autodoc", "1");
		const Handle_TColgp_HSequenceOfPnt & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const ProjLib_SequenceOfHSequenceOfPnt & Sequence() const;
		%feature("autodoc", "1");
		ProjLib_SequenceOfHSequenceOfPnt & ChangeSequence();
		%feature("autodoc", "1");
		Handle_ProjLib_HSequenceOfHSequenceOfPnt ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ProjLib_HSequenceOfHSequenceOfPnt {
	Handle_ProjLib_HSequenceOfHSequenceOfPnt GetHandle() {
	return *(Handle_ProjLib_HSequenceOfHSequenceOfPnt*) &$self;
	}
};
%extend ProjLib_HSequenceOfHSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ProjLib_HSequenceOfHSequenceOfPnt::~ProjLib_HSequenceOfHSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_HSequenceOfHSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_HProjectedCurve;
class ProjLib_HProjectedCurve : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		ProjLib_HProjectedCurve();
		%feature("autodoc", "1");
		ProjLib_HProjectedCurve(const ProjLib_ProjectedCurve &C);
		%feature("autodoc", "1");
		void Set(const ProjLib_ProjectedCurve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		ProjLib_ProjectedCurve & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ProjLib_HProjectedCurve {
	Handle_ProjLib_HProjectedCurve GetHandle() {
	return *(Handle_ProjLib_HProjectedCurve*) &$self;
	}
};
%extend ProjLib_HProjectedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ProjLib_HProjectedCurve::~ProjLib_HProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_HProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Torus;
class ProjLib_Torus : public ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Torus();
		%feature("autodoc", "1");
		ProjLib_Torus(const gp_Torus To);
		%feature("autodoc", "1");
		ProjLib_Torus(const gp_Torus To, const gp_Circ C);
		%feature("autodoc", "1");
		void Init(const gp_Torus To);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Lin L);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Circ C);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Elips E);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Parab P);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Hypr H);

};
%feature("shadow") ProjLib_Torus::~ProjLib_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt;
class ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt(const Handle_TColgp_HSequenceOfPnt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt {
	Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt GetHandle() {
	return *(Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt*) &$self;
	}
};
%extend ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt::~ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib;
class ProjLib {
	public:
		%feature("autodoc", "1");
		ProjLib();
		%feature("autodoc", "1");
		static		gp_Pnt2d Project(const gp_Pln Pl, const gp_Pnt P);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Pln Pl, const gp_Lin L);
		%feature("autodoc", "1");
		static		gp_Circ2d Project(const gp_Pln Pl, const gp_Circ C);
		%feature("autodoc", "1");
		static		gp_Elips2d Project(const gp_Pln Pl, const gp_Elips E);
		%feature("autodoc", "1");
		static		gp_Parab2d Project(const gp_Pln Pl, const gp_Parab P);
		%feature("autodoc", "1");
		static		gp_Hypr2d Project(const gp_Pln Pl, const gp_Hypr H);
		%feature("autodoc", "1");
		static		gp_Pnt2d Project(const gp_Cylinder Cy, const gp_Pnt P);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Cylinder Cy, const gp_Lin L);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Cylinder Cy, const gp_Circ Ci);
		%feature("autodoc", "1");
		static		gp_Pnt2d Project(const gp_Cone Co, const gp_Pnt P);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Cone Co, const gp_Lin L);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Cone Co, const gp_Circ Ci);
		%feature("autodoc", "1");
		static		gp_Pnt2d Project(const gp_Sphere Sp, const gp_Pnt P);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Sphere Sp, const gp_Circ Ci);
		%feature("autodoc", "1");
		static		gp_Pnt2d Project(const gp_Torus To, const gp_Pnt P);
		%feature("autodoc", "1");
		static		gp_Lin2d Project(const gp_Torus To, const gp_Circ Ci);

};
%feature("shadow") ProjLib::~ProjLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_ProjectOnSurface;
class ProjLib_ProjectOnSurface {
	public:
		%feature("autodoc", "1");
		ProjLib_ProjectOnSurface();
		%feature("autodoc", "1");
		ProjLib_ProjectOnSurface(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSpline() const;

};
%feature("shadow") ProjLib_ProjectOnSurface::~ProjLib_ProjectOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_ProjectOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_ComputeApproxOnPolarSurface;
class ProjLib_ComputeApproxOnPolarSurface {
	public:
		%feature("autodoc", "1");
		ProjLib_ComputeApproxOnPolarSurface();
		%feature("autodoc", "1");
		ProjLib_ComputeApproxOnPolarSurface(const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		ProjLib_ComputeApproxOnPolarSurface(const Handle_Adaptor2d_HCurve2d &InitCurve2d, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		ProjLib_ComputeApproxOnPolarSurface(const Handle_Adaptor2d_HCurve2d &InitCurve2d, const Handle_Adaptor2d_HCurve2d &InitCurve2dBis, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Perform(const Handle_Adaptor2d_HCurve2d &InitCurve2d, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d BuildInitialCurve2d(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve ProjectUsingInitialCurve2d(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor2d_HCurve2d &InitCurve2d);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSpline() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") ProjLib_ComputeApproxOnPolarSurface::~ProjLib_ComputeApproxOnPolarSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_ComputeApproxOnPolarSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_PrjResolve;
class ProjLib_PrjResolve {
	public:
		%feature("autodoc", "1");
		ProjLib_PrjResolve(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Integer Fix);
		%feature("autodoc", "1");
		void Perform(const Standard_Real t, const Standard_Real U, const Standard_Real V, const gp_Pnt2d Tol, const gp_Pnt2d Inf, const gp_Pnt2d Sup, const Standard_Real FTol=-0x000000001, const Standard_Boolean StrictInside=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Pnt2d Solution() const;

};
%feature("shadow") ProjLib_PrjResolve::~ProjLib_PrjResolve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_PrjResolve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_ProjectOnPlane;
class ProjLib_ProjectOnPlane : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		ProjLib_ProjectOnPlane();
		%feature("autodoc", "1");
		ProjLib_ProjectOnPlane(const gp_Ax3 Pl);
		%feature("autodoc", "1");
		ProjLib_ProjectOnPlane(const gp_Ax3 Pl, const gp_Dir D);
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_HCurve &C, const Standard_Real Tolerance, const Standard_Boolean KeepParametrization=1);
		%feature("autodoc", "1");
		const gp_Ax3  GetPlane() const;
		%feature("autodoc", "1");
		const gp_Dir  GetDirection() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurve & GetCurve() const;
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
%feature("shadow") ProjLib_ProjectOnPlane::~ProjLib_ProjectOnPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_ProjectOnPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Plane;
class ProjLib_Plane : public ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Plane();
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl);
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl, const gp_Lin L);
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl, const gp_Circ C);
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl, const gp_Elips E);
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl, const gp_Parab P);
		%feature("autodoc", "1");
		ProjLib_Plane(const gp_Pln Pl, const gp_Hypr H);
		%feature("autodoc", "1");
		void Init(const gp_Pln Pl);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Lin L);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Circ C);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Elips E);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Parab P);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Hypr H);

};
%feature("shadow") ProjLib_Plane::~ProjLib_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_HCompProjectedCurve;
class ProjLib_HCompProjectedCurve : public Adaptor2d_HCurve2d {
	public:
		%feature("autodoc", "1");
		ProjLib_HCompProjectedCurve();
		%feature("autodoc", "1");
		ProjLib_HCompProjectedCurve(const ProjLib_CompProjectedCurve &C);
		%feature("autodoc", "1");
		void Set(const ProjLib_CompProjectedCurve &C);
		%feature("autodoc", "1");
		virtual		const Adaptor2d_Curve2d & Curve2d() const;
		%feature("autodoc", "1");
		ProjLib_CompProjectedCurve & ChangeCurve2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ProjLib_HCompProjectedCurve {
	Handle_ProjLib_HCompProjectedCurve GetHandle() {
	return *(Handle_ProjLib_HCompProjectedCurve*) &$self;
	}
};
%extend ProjLib_HCompProjectedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ProjLib_HCompProjectedCurve::~ProjLib_HCompProjectedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_HCompProjectedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_PrjFunc;
class ProjLib_PrjFunc : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		ProjLib_PrjFunc(const Adaptor3d_CurvePtr &C, const Standard_Real FixVal, const Adaptor3d_SurfacePtr &S, const Standard_Integer Fix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		gp_Pnt2d Solution() const;

};
%feature("shadow") ProjLib_PrjFunc::~ProjLib_PrjFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_PrjFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_Cone;
class ProjLib_Cone : public ProjLib_Projector {
	public:
		%feature("autodoc", "1");
		ProjLib_Cone();
		%feature("autodoc", "1");
		ProjLib_Cone(const gp_Cone Co);
		%feature("autodoc", "1");
		ProjLib_Cone(const gp_Cone Co, const gp_Lin L);
		%feature("autodoc", "1");
		ProjLib_Cone(const gp_Cone Co, const gp_Circ C);
		%feature("autodoc", "1");
		void Init(const gp_Cone Co);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Lin L);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Circ C);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Elips E);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Parab P);
		%feature("autodoc", "1");
		virtual		void Project(const gp_Hypr H);

};
%feature("shadow") ProjLib_Cone::~ProjLib_Cone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_Cone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ProjLib_ComputeApprox;
class ProjLib_ComputeApprox {
	public:
		%feature("autodoc", "1");
		ProjLib_ComputeApprox(const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HSurface &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSpline() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;

};
%feature("shadow") ProjLib_ComputeApprox::~ProjLib_ComputeApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ProjLib_ComputeApprox {
	void _kill_pointed() {
		delete $self;
	}
};
