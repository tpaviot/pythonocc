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

%module IntCurveSurface
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntCurveSurface_renames.i


%include IntCurveSurface_required_python_modules.i


%include IntCurveSurface_dependencies.i


%include IntCurveSurface_headers.i


enum IntCurveSurface_TransitionOnCurve {
	IntCurveSurface_Tangent,
	IntCurveSurface_In,
	IntCurveSurface_Out,
	};



%nodefaultctor Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg;
class Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg(const IntCurveSurface_SequenceNodeOfSequenceOfSeg *anItem);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg & operator=(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg & operator=(const IntCurveSurface_SequenceNodeOfSequenceOfSeg *anItem);
		%feature("autodoc", "1");
		static		Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	IntCurveSurface_SequenceNodeOfSequenceOfSeg* GetObject() {
	return (IntCurveSurface_SequenceNodeOfSequenceOfSeg*)$self->Access();
	}
};
%feature("shadow") Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg::~Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt;
class Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt(const IntCurveSurface_SequenceNodeOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt & operator=(const Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt & operator=(const IntCurveSurface_SequenceNodeOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	IntCurveSurface_SequenceNodeOfSequenceOfPnt* GetObject() {
	return (IntCurveSurface_SequenceNodeOfSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt::~Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_ThePolyhedronToolOfHInter;
class IntCurveSurface_ThePolyhedronToolOfHInter {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_ThePolyhedronToolOfHInter();
		%feature("autodoc", "1");
		static		const Bnd_Box & Bounding(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		static		const Handle_Bnd_HArray1OfBox & ComponentsBounding(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Integer NbTriangles(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc","Triangle(const thePolyh, Standard_Integer Index) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void Triangle(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		const gp_Pnt & Point(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index);
		%feature("autodoc","TriConnex(const thePolyh, Standard_Integer Triang, Standard_Integer Pivot, Standard_Integer Pedge) -> [Standard_Integer, Standard_Integer]");

		static		Standard_Integer TriConnex(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Triang, const Standard_Integer Pivot, const Standard_Integer Pedge, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsOnBound(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, const Standard_Integer Index1, const Standard_Integer Index2);
		%feature("autodoc", "1");
		static		Standard_Real GetBorderDeflection(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		static		void Dump(const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);

};
%feature("shadow") IntCurveSurface_ThePolyhedronToolOfHInter::~IntCurveSurface_ThePolyhedronToolOfHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_ThePolyhedronToolOfHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_Intersection;
class IntCurveSurface_Intersection {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Segment(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntCurveSurface_Intersection::~IntCurveSurface_Intersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_Intersection {
	void _kill_pointed() {
		delete $self;
	}
};
%extend IntCurveSurface_Intersection {
	IntCurveSurface_Intersection () {}
};


%nodefaultctor IntCurveSurface_SequenceOfPnt;
class IntCurveSurface_SequenceOfPnt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceOfPnt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfPnt & Assign(const IntCurveSurface_SequenceOfPnt &Other);
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfPnt & operator=(const IntCurveSurface_SequenceOfPnt &Other);
		%feature("autodoc", "1");
		void Append(const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Append(IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void Prepend(const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & First() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntCurveSurface_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntCurveSurface_IntersectionPoint &I);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntCurveSurface_SequenceOfPnt::~IntCurveSurface_SequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_SequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_IntersectionPoint;
class IntCurveSurface_IntersectionPoint {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint(const gp_Pnt &P, const Standard_Real USurf, const Standard_Real VSurf, const Standard_Real UCurv, const IntCurveSurface_TransitionOnCurve TrCurv);
		%feature("autodoc", "1");
		void SetValues(const gp_Pnt &P, const Standard_Real USurf, const Standard_Real VSurf, const Standard_Real UCurv, const IntCurveSurface_TransitionOnCurve TrCurv);
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Values(gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, IntCurveSurface_TransitionOnCurve & TrCurv) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		Standard_Real U() const;
		%feature("autodoc", "1");
		Standard_Real V() const;
		%feature("autodoc", "1");
		Standard_Real W() const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntCurveSurface_IntersectionPoint::~IntCurveSurface_IntersectionPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_IntersectionPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_HInter;
class IntCurveSurface_HInter : public IntCurveSurface_Intersection {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_HInter();
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &Polygon, const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &ThePolygon, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const IntCurveSurface_ThePolygonOfHInter &ThePolygon, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron, Bnd_BoundSortBox & BndBSB);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Curve, const Handle_Adaptor3d_HSurface &Surface, const IntCurveSurface_ThePolyhedronOfHInter &Polyhedron);

};
%feature("shadow") IntCurveSurface_HInter::~IntCurveSurface_HInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_HInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_IntersectionSegment;
class IntCurveSurface_IntersectionSegment {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment(const IntCurveSurface_IntersectionPoint &P1, const IntCurveSurface_IntersectionPoint &P2);
		%feature("autodoc", "1");
		void SetValues(const IntCurveSurface_IntersectionPoint &P1, const IntCurveSurface_IntersectionPoint &P2);
		%feature("autodoc", "1");
		void Values(IntCurveSurface_IntersectionPoint & P1, IntCurveSurface_IntersectionPoint & P2) const;
		%feature("autodoc", "1");
		void FirstPoint(IntCurveSurface_IntersectionPoint & P1) const;
		%feature("autodoc", "1");
		void SecondPoint(IntCurveSurface_IntersectionPoint & P2) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & FirstPoint() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & SecondPoint() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntCurveSurface_IntersectionSegment::~IntCurveSurface_IntersectionSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_IntersectionSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheQuadCurvExactHInter;
class IntCurveSurface_TheQuadCurvExactHInter {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheQuadCurvExactHInter(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc", "1");
		Standard_Real Root(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc","Intervals(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Intervals(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntCurveSurface_TheQuadCurvExactHInter::~IntCurveSurface_TheQuadCurvExactHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheQuadCurvExactHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheHSurfaceTool;
class IntCurveSurface_TheHSurfaceTool {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheHSurfaceTool();
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
		%feature("autodoc", "1");
		static		void D1(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		static		void D3(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
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
%feature("shadow") IntCurveSurface_TheHSurfaceTool::~IntCurveSurface_TheHSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheHSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheExactHInter;
class IntCurveSurface_TheExactHInter {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheExactHInter(const Standard_Real U, const Standard_Real V, const Standard_Real W, const IntCurveSurface_TheCSFunctionOfHInter &F, const Standard_Real TolTangency, const Standard_Real MarginCoef=0.0);
		%feature("autodoc", "1");
		IntCurveSurface_TheExactHInter(const IntCurveSurface_TheCSFunctionOfHInter &F, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		void Perform(const Standard_Real U, const Standard_Real V, const Standard_Real W, math_FunctionSetRoot & Rsnld, const Standard_Real u0, const Standard_Real v0, const Standard_Real u1, const Standard_Real v1, const Standard_Real w0, const Standard_Real w1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnCurve() const;
		%feature("autodoc","ParameterOnSurface() -> [Standard_Real, Standard_Real]");

		void ParameterOnSurface(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		IntCurveSurface_TheCSFunctionOfHInter & Function();

};
%feature("shadow") IntCurveSurface_TheExactHInter::~IntCurveSurface_TheExactHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheExactHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter;
class IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter(const IntSurf_Quadric &Q, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc","Value(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real Param) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter::~IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_ThePolygonToolOfHInter;
class IntCurveSurface_ThePolygonToolOfHInter {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonToolOfHInter();
		%feature("autodoc", "1");
		static		const Bnd_Box & Bounding(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Boolean Closed(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const IntCurveSurface_ThePolygonOfHInter &thePolygon);
		%feature("autodoc", "1");
		static		const gp_Pnt & BeginOfSeg(const IntCurveSurface_ThePolygonOfHInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		const gp_Pnt & EndOfSeg(const IntCurveSurface_ThePolygonOfHInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		void Dump(const IntCurveSurface_ThePolygonOfHInter &thePolygon);

};
%feature("shadow") IntCurveSurface_ThePolygonToolOfHInter::~IntCurveSurface_ThePolygonToolOfHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_ThePolygonToolOfHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_ThePolygonOfHInter;
class IntCurveSurface_ThePolygonOfHInter {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const Standard_Real U1, const Standard_Real U2, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		IntCurveSurface_ThePolygonOfHInter(const Handle_Adaptor3d_HCurve &Curve, const TColStd_Array1OfReal &Upars);
		%feature("autodoc", "1");
		const Bnd_Box & Bounding() const;
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		void SetDeflectionOverEstimation(const Standard_Real x);
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const gp_Pnt & BeginOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt & EndOfSeg(const Standard_Integer TheIndex) const;
		%feature("autodoc", "1");
		Standard_Real InfParameter() const;
		%feature("autodoc", "1");
		Standard_Real SupParameter() const;
		%feature("autodoc", "1");
		Standard_Real ApproxParamOnCurve(const Standard_Integer Index, const Standard_Real ParamOnLine) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") IntCurveSurface_ThePolygonOfHInter::~IntCurveSurface_ThePolygonOfHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_ThePolygonOfHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_SequenceNodeOfSequenceOfSeg;
class IntCurveSurface_SequenceNodeOfSequenceOfSeg : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceNodeOfSequenceOfSeg(const IntCurveSurface_IntersectionSegment &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg GetHandle() {
	return *(Handle_IntCurveSurface_SequenceNodeOfSequenceOfSeg*) &$self;
	}
};
%extend IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntCurveSurface_SequenceNodeOfSequenceOfSeg::~IntCurveSurface_SequenceNodeOfSequenceOfSeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_SequenceNodeOfSequenceOfSeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheCSFunctionOfHInter;
class IntCurveSurface_TheCSFunctionOfHInter : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheCSFunctionOfHInter(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
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
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurve & AuxillarCurve() const;

};
%feature("shadow") IntCurveSurface_TheCSFunctionOfHInter::~IntCurveSurface_TheCSFunctionOfHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheCSFunctionOfHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_SequenceOfSeg;
class IntCurveSurface_SequenceOfSeg : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceOfSeg();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfSeg & Assign(const IntCurveSurface_SequenceOfSeg &Other);
		%feature("autodoc", "1");
		const IntCurveSurface_SequenceOfSeg & operator=(const IntCurveSurface_SequenceOfSeg &Other);
		%feature("autodoc", "1");
		void Append(const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Append(IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void Prepend(const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void Prepend(IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & First() const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntCurveSurface_SequenceOfSeg & S);
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntCurveSurface_IntersectionSegment &I);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionSegment & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntCurveSurface_SequenceOfSeg::~IntCurveSurface_SequenceOfSeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_SequenceOfSeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheHCurveTool;
class IntCurveSurface_TheHCurveTool {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheHCurveTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const Handle_Adaptor3d_HCurve &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		void Intervals(const Handle_Adaptor3d_HCurve &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Handle_Adaptor3d_HCurve &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T);
		%feature("autodoc", "1");
		static		void D2(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T, gp_Vec & N);
		%feature("autodoc", "1");
		static		void D3(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const Handle_Adaptor3d_HCurve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Lin Line(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Circ Circle(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Elips Ellipse(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Hypr Hyperbola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		gp_Parab Parabola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierCurve Bezier(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve BSpline(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Handle_Adaptor3d_HCurve &C, const Standard_Real U0, const Standard_Real U1);
		%feature("autodoc", "1");
		static		void SamplePars(const Handle_Adaptor3d_HCurve &C, const Standard_Real U0, const Standard_Real U1, const Standard_Real Defl, const Standard_Integer NbMin, Handle_TColStd_HArray1OfReal & Pars);

};
%feature("shadow") IntCurveSurface_TheHCurveTool::~IntCurveSurface_TheHCurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheHCurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_TheInterferenceOfHInter;
class IntCurveSurface_TheInterferenceOfHInter : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter();
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		IntCurveSurface_TheInterferenceOfHInter(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &theLin, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const IntCurveSurface_ThePolygonOfHInter &thePolyg, const IntCurveSurface_ThePolyhedronOfHInter &thePolyh);

};
%feature("shadow") IntCurveSurface_TheInterferenceOfHInter::~IntCurveSurface_TheInterferenceOfHInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_TheInterferenceOfHInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntCurveSurface_SequenceNodeOfSequenceOfPnt;
class IntCurveSurface_SequenceNodeOfSequenceOfPnt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntCurveSurface_SequenceNodeOfSequenceOfPnt(const IntCurveSurface_IntersectionPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt GetHandle() {
	return *(Handle_IntCurveSurface_SequenceNodeOfSequenceOfPnt*) &$self;
	}
};
%extend IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntCurveSurface_SequenceNodeOfSequenceOfPnt::~IntCurveSurface_SequenceNodeOfSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntCurveSurface_SequenceNodeOfSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};
