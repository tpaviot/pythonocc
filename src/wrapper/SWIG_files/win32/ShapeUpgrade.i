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

%module ShapeUpgrade
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeUpgrade_renames.i


%include ShapeUpgrade_required_python_modules.i


%include ShapeUpgrade_dependencies.i


%include ShapeUpgrade_headers.i




%nodefaultctor Handle_ShapeUpgrade_Tool;
class Handle_ShapeUpgrade_Tool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool(const Handle_ShapeUpgrade_Tool &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool(const ShapeUpgrade_Tool *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool & operator=(const Handle_ShapeUpgrade_Tool &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_Tool & operator=(const ShapeUpgrade_Tool *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_Tool DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_Tool {
	ShapeUpgrade_Tool* GetObject() {
	return (ShapeUpgrade_Tool*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_Tool::~Handle_ShapeUpgrade_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_FixSmallCurves;
class Handle_ShapeUpgrade_FixSmallCurves : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves(const Handle_ShapeUpgrade_FixSmallCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves(const ShapeUpgrade_FixSmallCurves *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves & operator=(const Handle_ShapeUpgrade_FixSmallCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves & operator=(const ShapeUpgrade_FixSmallCurves *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_FixSmallCurves DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FixSmallCurves {
	ShapeUpgrade_FixSmallCurves* GetObject() {
	return (ShapeUpgrade_FixSmallCurves*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_FixSmallCurves::~Handle_ShapeUpgrade_FixSmallCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_FixSmallCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_FixSmallBezierCurves;
class Handle_ShapeUpgrade_FixSmallBezierCurves : public Handle_ShapeUpgrade_FixSmallCurves {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves(const Handle_ShapeUpgrade_FixSmallBezierCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves(const ShapeUpgrade_FixSmallBezierCurves *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves & operator=(const Handle_ShapeUpgrade_FixSmallBezierCurves &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallBezierCurves & operator=(const ShapeUpgrade_FixSmallBezierCurves *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_FixSmallBezierCurves DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FixSmallBezierCurves {
	ShapeUpgrade_FixSmallBezierCurves* GetObject() {
	return (ShapeUpgrade_FixSmallBezierCurves*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_FixSmallBezierCurves::~Handle_ShapeUpgrade_FixSmallBezierCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_FixSmallBezierCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitSurface;
class Handle_ShapeUpgrade_SplitSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface(const Handle_ShapeUpgrade_SplitSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface(const ShapeUpgrade_SplitSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface & operator=(const Handle_ShapeUpgrade_SplitSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurface & operator=(const ShapeUpgrade_SplitSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurface {
	ShapeUpgrade_SplitSurface* GetObject() {
	return (ShapeUpgrade_SplitSurface*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitSurface::~Handle_ShapeUpgrade_SplitSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceAngle;
class Handle_ShapeUpgrade_SplitSurfaceAngle : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle(const Handle_ShapeUpgrade_SplitSurfaceAngle &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle(const ShapeUpgrade_SplitSurfaceAngle *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle & operator=(const Handle_ShapeUpgrade_SplitSurfaceAngle &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceAngle & operator=(const ShapeUpgrade_SplitSurfaceAngle *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitSurfaceAngle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceAngle {
	ShapeUpgrade_SplitSurfaceAngle* GetObject() {
	return (ShapeUpgrade_SplitSurfaceAngle*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitSurfaceAngle::~Handle_ShapeUpgrade_SplitSurfaceAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitSurfaceAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_EdgeDivide;
class Handle_ShapeUpgrade_EdgeDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide(const Handle_ShapeUpgrade_EdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide(const ShapeUpgrade_EdgeDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide & operator=(const Handle_ShapeUpgrade_EdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_EdgeDivide & operator=(const ShapeUpgrade_EdgeDivide *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_EdgeDivide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_EdgeDivide {
	ShapeUpgrade_EdgeDivide* GetObject() {
	return (ShapeUpgrade_EdgeDivide*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_EdgeDivide::~Handle_ShapeUpgrade_EdgeDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_EdgeDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_ClosedEdgeDivide;
class Handle_ShapeUpgrade_ClosedEdgeDivide : public Handle_ShapeUpgrade_EdgeDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide(const Handle_ShapeUpgrade_ClosedEdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide(const ShapeUpgrade_ClosedEdgeDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide & operator=(const Handle_ShapeUpgrade_ClosedEdgeDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedEdgeDivide & operator=(const ShapeUpgrade_ClosedEdgeDivide *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_ClosedEdgeDivide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ClosedEdgeDivide {
	ShapeUpgrade_ClosedEdgeDivide* GetObject() {
	return (ShapeUpgrade_ClosedEdgeDivide*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_ClosedEdgeDivide::~Handle_ShapeUpgrade_ClosedEdgeDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_ClosedEdgeDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitCurve;
class Handle_ShapeUpgrade_SplitCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve(const Handle_ShapeUpgrade_SplitCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve(const ShapeUpgrade_SplitCurve *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve & operator=(const Handle_ShapeUpgrade_SplitCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve & operator=(const ShapeUpgrade_SplitCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve {
	ShapeUpgrade_SplitCurve* GetObject() {
	return (ShapeUpgrade_SplitCurve*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitCurve::~Handle_ShapeUpgrade_SplitCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitCurve3d;
class Handle_ShapeUpgrade_SplitCurve3d : public Handle_ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d(const Handle_ShapeUpgrade_SplitCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d(const ShapeUpgrade_SplitCurve3d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d & operator=(const Handle_ShapeUpgrade_SplitCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3d & operator=(const ShapeUpgrade_SplitCurve3d *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitCurve3d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve3d {
	ShapeUpgrade_SplitCurve3d* GetObject() {
	return (ShapeUpgrade_SplitCurve3d*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitCurve3d::~Handle_ShapeUpgrade_SplitCurve3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitCurve3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_ConvertCurve3dToBezier;
class Handle_ShapeUpgrade_ConvertCurve3dToBezier : public Handle_ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier(const Handle_ShapeUpgrade_ConvertCurve3dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier(const ShapeUpgrade_ConvertCurve3dToBezier *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier & operator=(const Handle_ShapeUpgrade_ConvertCurve3dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve3dToBezier & operator=(const ShapeUpgrade_ConvertCurve3dToBezier *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_ConvertCurve3dToBezier DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertCurve3dToBezier {
	ShapeUpgrade_ConvertCurve3dToBezier* GetObject() {
	return (ShapeUpgrade_ConvertCurve3dToBezier*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_ConvertCurve3dToBezier::~Handle_ShapeUpgrade_ConvertCurve3dToBezier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_ConvertCurve3dToBezier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis;
class Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis(const Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis(const ShapeUpgrade_ConvertSurfaceToBezierBasis *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis & operator=(const Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis & operator=(const ShapeUpgrade_ConvertSurfaceToBezierBasis *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis {
	ShapeUpgrade_ConvertSurfaceToBezierBasis* GetObject() {
	return (ShapeUpgrade_ConvertSurfaceToBezierBasis*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis::~Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_RemoveLocations;
class Handle_ShapeUpgrade_RemoveLocations : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations(const Handle_ShapeUpgrade_RemoveLocations &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations(const ShapeUpgrade_RemoveLocations *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations & operator=(const Handle_ShapeUpgrade_RemoveLocations &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveLocations & operator=(const ShapeUpgrade_RemoveLocations *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_RemoveLocations DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_RemoveLocations {
	ShapeUpgrade_RemoveLocations* GetObject() {
	return (ShapeUpgrade_RemoveLocations*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_RemoveLocations::~Handle_ShapeUpgrade_RemoveLocations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_RemoveLocations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_RemoveInternalWires;
class Handle_ShapeUpgrade_RemoveInternalWires : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires(const Handle_ShapeUpgrade_RemoveInternalWires &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires(const ShapeUpgrade_RemoveInternalWires *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires & operator=(const Handle_ShapeUpgrade_RemoveInternalWires &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_RemoveInternalWires & operator=(const ShapeUpgrade_RemoveInternalWires *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_RemoveInternalWires DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_RemoveInternalWires {
	ShapeUpgrade_RemoveInternalWires* GetObject() {
	return (ShapeUpgrade_RemoveInternalWires*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_RemoveInternalWires::~Handle_ShapeUpgrade_RemoveInternalWires %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_RemoveInternalWires {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitCurve2d;
class Handle_ShapeUpgrade_SplitCurve2d : public Handle_ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d(const Handle_ShapeUpgrade_SplitCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d(const ShapeUpgrade_SplitCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d & operator=(const Handle_ShapeUpgrade_SplitCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2d & operator=(const ShapeUpgrade_SplitCurve2d *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitCurve2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve2d {
	ShapeUpgrade_SplitCurve2d* GetObject() {
	return (ShapeUpgrade_SplitCurve2d*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitCurve2d::~Handle_ShapeUpgrade_SplitCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_ConvertCurve2dToBezier;
class Handle_ShapeUpgrade_ConvertCurve2dToBezier : public Handle_ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier(const Handle_ShapeUpgrade_ConvertCurve2dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier(const ShapeUpgrade_ConvertCurve2dToBezier *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier & operator=(const Handle_ShapeUpgrade_ConvertCurve2dToBezier &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ConvertCurve2dToBezier & operator=(const ShapeUpgrade_ConvertCurve2dToBezier *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_ConvertCurve2dToBezier DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ConvertCurve2dToBezier {
	ShapeUpgrade_ConvertCurve2dToBezier* GetObject() {
	return (ShapeUpgrade_ConvertCurve2dToBezier*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_ConvertCurve2dToBezier::~Handle_ShapeUpgrade_ConvertCurve2dToBezier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_ConvertCurve2dToBezier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceArea;
class Handle_ShapeUpgrade_SplitSurfaceArea : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea(const Handle_ShapeUpgrade_SplitSurfaceArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea(const ShapeUpgrade_SplitSurfaceArea *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea & operator=(const Handle_ShapeUpgrade_SplitSurfaceArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceArea & operator=(const ShapeUpgrade_SplitSurfaceArea *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitSurfaceArea DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceArea {
	ShapeUpgrade_SplitSurfaceArea* GetObject() {
	return (ShapeUpgrade_SplitSurfaceArea*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitSurfaceArea::~Handle_ShapeUpgrade_SplitSurfaceArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitSurfaceArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitSurfaceContinuity;
class Handle_ShapeUpgrade_SplitSurfaceContinuity : public Handle_ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity(const Handle_ShapeUpgrade_SplitSurfaceContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity(const ShapeUpgrade_SplitSurfaceContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity & operator=(const Handle_ShapeUpgrade_SplitSurfaceContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitSurfaceContinuity & operator=(const ShapeUpgrade_SplitSurfaceContinuity *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitSurfaceContinuity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitSurfaceContinuity {
	ShapeUpgrade_SplitSurfaceContinuity* GetObject() {
	return (ShapeUpgrade_SplitSurfaceContinuity*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitSurfaceContinuity::~Handle_ShapeUpgrade_SplitSurfaceContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitSurfaceContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitCurve2dContinuity;
class Handle_ShapeUpgrade_SplitCurve2dContinuity : public Handle_ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity(const Handle_ShapeUpgrade_SplitCurve2dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity(const ShapeUpgrade_SplitCurve2dContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity & operator=(const Handle_ShapeUpgrade_SplitCurve2dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve2dContinuity & operator=(const ShapeUpgrade_SplitCurve2dContinuity *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitCurve2dContinuity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve2dContinuity {
	ShapeUpgrade_SplitCurve2dContinuity* GetObject() {
	return (ShapeUpgrade_SplitCurve2dContinuity*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitCurve2dContinuity::~Handle_ShapeUpgrade_SplitCurve2dContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitCurve2dContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_FaceDivide;
class Handle_ShapeUpgrade_FaceDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide(const Handle_ShapeUpgrade_FaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide(const ShapeUpgrade_FaceDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide & operator=(const Handle_ShapeUpgrade_FaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivide & operator=(const ShapeUpgrade_FaceDivide *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_FaceDivide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FaceDivide {
	ShapeUpgrade_FaceDivide* GetObject() {
	return (ShapeUpgrade_FaceDivide*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_FaceDivide::~Handle_ShapeUpgrade_FaceDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_FaceDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_FaceDivideArea;
class Handle_ShapeUpgrade_FaceDivideArea : public Handle_ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea(const Handle_ShapeUpgrade_FaceDivideArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea(const ShapeUpgrade_FaceDivideArea *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea & operator=(const Handle_ShapeUpgrade_FaceDivideArea &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FaceDivideArea & operator=(const ShapeUpgrade_FaceDivideArea *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_FaceDivideArea DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_FaceDivideArea {
	ShapeUpgrade_FaceDivideArea* GetObject() {
	return (ShapeUpgrade_FaceDivideArea*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_FaceDivideArea::~Handle_ShapeUpgrade_FaceDivideArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_FaceDivideArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_SplitCurve3dContinuity;
class Handle_ShapeUpgrade_SplitCurve3dContinuity : public Handle_ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity(const Handle_ShapeUpgrade_SplitCurve3dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity(const ShapeUpgrade_SplitCurve3dContinuity *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity & operator=(const Handle_ShapeUpgrade_SplitCurve3dContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_SplitCurve3dContinuity & operator=(const ShapeUpgrade_SplitCurve3dContinuity *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_SplitCurve3dContinuity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_SplitCurve3dContinuity {
	ShapeUpgrade_SplitCurve3dContinuity* GetObject() {
	return (ShapeUpgrade_SplitCurve3dContinuity*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_SplitCurve3dContinuity::~Handle_ShapeUpgrade_SplitCurve3dContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_SplitCurve3dContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_WireDivide;
class Handle_ShapeUpgrade_WireDivide : public Handle_ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide(const Handle_ShapeUpgrade_WireDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide(const ShapeUpgrade_WireDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide & operator=(const Handle_ShapeUpgrade_WireDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_WireDivide & operator=(const ShapeUpgrade_WireDivide *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_WireDivide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_WireDivide {
	ShapeUpgrade_WireDivide* GetObject() {
	return (ShapeUpgrade_WireDivide*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_WireDivide::~Handle_ShapeUpgrade_WireDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_WireDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeUpgrade_ClosedFaceDivide;
class Handle_ShapeUpgrade_ClosedFaceDivide : public Handle_ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide();
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide(const Handle_ShapeUpgrade_ClosedFaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide(const ShapeUpgrade_ClosedFaceDivide *anItem);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide & operator=(const Handle_ShapeUpgrade_ClosedFaceDivide &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_ClosedFaceDivide & operator=(const ShapeUpgrade_ClosedFaceDivide *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeUpgrade_ClosedFaceDivide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeUpgrade_ClosedFaceDivide {
	ShapeUpgrade_ClosedFaceDivide* GetObject() {
	return (ShapeUpgrade_ClosedFaceDivide*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeUpgrade_ClosedFaceDivide::~Handle_ShapeUpgrade_ClosedFaceDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeUpgrade_ClosedFaceDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitCurve;
class ShapeUpgrade_SplitCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve();
		%feature("autodoc", "1");
		void Init(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		void SetSplitValues(const Handle_TColStd_HSequenceOfReal &SplitValues);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & SplitValues() const;
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve {
	Handle_ShapeUpgrade_SplitCurve GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitCurve::~ShapeUpgrade_SplitCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitCurve3d;
class ShapeUpgrade_SplitCurve3d : public ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve3d();
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		const Handle_TColGeom_HArray1OfCurve & GetCurves() const;

};
%extend ShapeUpgrade_SplitCurve3d {
	Handle_ShapeUpgrade_SplitCurve3d GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve3d*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve3d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitCurve3d::~ShapeUpgrade_SplitCurve3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitCurve3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ConvertCurve3dToBezier;
class ShapeUpgrade_ConvertCurve3dToBezier : public ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertCurve3dToBezier();
		%feature("autodoc", "1");
		void SetLineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetLineMode() const;
		%feature("autodoc", "1");
		void SetCircleMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetCircleMode() const;
		%feature("autodoc", "1");
		void SetConicMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetConicMode() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal SplitParams() const;

};
%extend ShapeUpgrade_ConvertCurve3dToBezier {
	Handle_ShapeUpgrade_ConvertCurve3dToBezier GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertCurve3dToBezier*) &$self;
	}
};
%extend ShapeUpgrade_ConvertCurve3dToBezier {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_ConvertCurve3dToBezier::~ShapeUpgrade_ConvertCurve3dToBezier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ConvertCurve3dToBezier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitSurface;
class ShapeUpgrade_SplitSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurface();
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast);
		%feature("autodoc", "1");
		void SetUSplitValues(const Handle_TColStd_HSequenceOfReal &UValues);
		%feature("autodoc", "1");
		void SetVSplitValues(const Handle_TColStd_HSequenceOfReal &VValues);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & USplitValues() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HSequenceOfReal & VSplitValues() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_CompositeSurface & ResSurfaces() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurface {
	Handle_ShapeUpgrade_SplitSurface GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurface*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurface {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitSurface::~ShapeUpgrade_SplitSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitSurfaceContinuity;
class ShapeUpgrade_SplitSurfaceContinuity : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);

};
%extend ShapeUpgrade_SplitSurfaceContinuity {
	Handle_ShapeUpgrade_SplitSurfaceContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceContinuity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitSurfaceContinuity::~ShapeUpgrade_SplitSurfaceContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitSurfaceContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_Tool;
class ShapeUpgrade_Tool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_Tool();
		%feature("autodoc", "1");
		void Set(const Handle_ShapeUpgrade_Tool &tool);
		%feature("autodoc", "1");
		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		Standard_Real MinTolerance() const;
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Real MaxTolerance() const;
		%feature("autodoc", "1");
		Standard_Real LimitTolerance(const Standard_Real toler) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_Tool {
	Handle_ShapeUpgrade_Tool GetHandle() {
	return *(Handle_ShapeUpgrade_Tool*) &$self;
	}
};
%extend ShapeUpgrade_Tool {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_Tool::~ShapeUpgrade_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_FaceDivide;
class ShapeUpgrade_FaceDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivide(const TopoDS_Face F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F);
		%feature("autodoc", "1");
		void SetSurfaceSegmentMode(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitSurface();
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitCurves();
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitSurfaceTool(const Handle_ShapeUpgrade_SplitSurface &splitSurfaceTool);
		%feature("autodoc", "1");
		void SetWireDivideTool(const Handle_ShapeUpgrade_WireDivide &wireDivideTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_WireDivide GetWireDivideTool() const;

};
%extend ShapeUpgrade_FaceDivide {
	Handle_ShapeUpgrade_FaceDivide GetHandle() {
	return *(Handle_ShapeUpgrade_FaceDivide*) &$self;
	}
};
%extend ShapeUpgrade_FaceDivide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_FaceDivide::~ShapeUpgrade_FaceDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_FaceDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_RemoveInternalWires;
class ShapeUpgrade_RemoveInternalWires : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveInternalWires();
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveInternalWires(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopTools_SequenceOfShape &theSeqShapes);
		%feature("autodoc", "1");
		TopoDS_Shape GetResult() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetMinArea() {
				return (Standard_Real) $self->MinArea();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetMinArea(Standard_Real value ) {
				$self->MinArea()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetRemoveFaceMode() {
				return (Standard_Boolean) $self->RemoveFaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetRemoveFaceMode(Standard_Boolean value ) {
				$self->RemoveFaceMode()=value;
				}
		};
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & RemovedFaces() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & RemovedWires() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status theStatus) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_RemoveInternalWires {
	Handle_ShapeUpgrade_RemoveInternalWires GetHandle() {
	return *(Handle_ShapeUpgrade_RemoveInternalWires*) &$self;
	}
};
%extend ShapeUpgrade_RemoveInternalWires {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_RemoveInternalWires::~ShapeUpgrade_RemoveInternalWires %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_RemoveInternalWires {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitCurve3dContinuity;
class ShapeUpgrade_SplitCurve3dContinuity : public ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve3dContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		const Handle_Geom_Curve & GetCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve3dContinuity {
	Handle_ShapeUpgrade_SplitCurve3dContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve3dContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve3dContinuity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitCurve3dContinuity::~ShapeUpgrade_SplitCurve3dContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitCurve3dContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivide;
class ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivide(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real Prec);
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		void SetSurfaceSegmentMode(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Standard_Boolean newContext=1);
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape GetContext() const;
		%feature("autodoc", "1");
		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitFaceTool(const Handle_ShapeUpgrade_FaceDivide &splitFaceTool);
		%feature("autodoc", "1");
		void SetEdgeMode(const Standard_Integer aEdgeMode);

};
%feature("shadow") ShapeUpgrade_ShapeDivide::~ShapeUpgrade_ShapeDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivideContinuity;
class ShapeUpgrade_ShapeDivideContinuity : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideContinuity();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideContinuity(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetTolerance2d(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetBoundaryCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);
		%feature("autodoc", "1");
		void SetPCurveCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);
		%feature("autodoc", "1");
		void SetSurfaceCriterion(const GeomAbs_Shape Criterion=GeomAbs_C1);

};
%feature("shadow") ShapeUpgrade_ShapeDivideContinuity::~ShapeUpgrade_ShapeDivideContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivideContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_RemoveLocations;
class ShapeUpgrade_RemoveLocations : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_RemoveLocations();
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		TopoDS_Shape GetResult() const;
		%feature("autodoc", "1");
		void SetRemoveLevel(const TopAbs_ShapeEnum theLevel);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum RemoveLevel() const;
		%feature("autodoc", "1");
		TopoDS_Shape ModifiedShape(const TopoDS_Shape theInitShape) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_RemoveLocations {
	Handle_ShapeUpgrade_RemoveLocations GetHandle() {
	return *(Handle_ShapeUpgrade_RemoveLocations*) &$self;
	}
};
%extend ShapeUpgrade_RemoveLocations {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_RemoveLocations::~ShapeUpgrade_RemoveLocations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_RemoveLocations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_EdgeDivide;
class ShapeUpgrade_EdgeDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_EdgeDivide();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(const TopoDS_Edge E);
		%feature("autodoc", "1");
		Standard_Boolean HasCurve2d() const;
		%feature("autodoc", "1");
		Standard_Boolean HasCurve3d() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Knots2d() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Knots3d() const;
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_SplitCurve2d GetSplitCurve2dTool() const;
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_SplitCurve3d GetSplitCurve3dTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_EdgeDivide {
	Handle_ShapeUpgrade_EdgeDivide GetHandle() {
	return *(Handle_ShapeUpgrade_EdgeDivide*) &$self;
	}
};
%extend ShapeUpgrade_EdgeDivide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_EdgeDivide::~ShapeUpgrade_EdgeDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_EdgeDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ClosedEdgeDivide;
class ShapeUpgrade_ClosedEdgeDivide : public ShapeUpgrade_EdgeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedEdgeDivide();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(const TopoDS_Edge anEdge);

};
%extend ShapeUpgrade_ClosedEdgeDivide {
	Handle_ShapeUpgrade_ClosedEdgeDivide GetHandle() {
	return *(Handle_ShapeUpgrade_ClosedEdgeDivide*) &$self;
	}
};
%extend ShapeUpgrade_ClosedEdgeDivide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_ClosedEdgeDivide::~ShapeUpgrade_ClosedEdgeDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ClosedEdgeDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivideAngle;
class ShapeUpgrade_ShapeDivideAngle : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideAngle(const Standard_Real MaxAngle, const TopoDS_Shape S);
		%feature("autodoc", "1");
		void InitTool(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		void SetMaxAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		Standard_Real MaxAngle() const;

};
%feature("shadow") ShapeUpgrade_ShapeDivideAngle::~ShapeUpgrade_ShapeDivideAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivideAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_FixSmallCurves;
class ShapeUpgrade_FixSmallCurves : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FixSmallCurves();
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge theEdge, const TopoDS_Face theFace);
		%feature("autodoc","Approx() -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Approx(Handle_Geom_Curve & Curve3d, Handle_Geom2d_Curve & Curve2d, Handle_Geom2d_Curve & Curve2dR, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FixSmallCurves {
	Handle_ShapeUpgrade_FixSmallCurves GetHandle() {
	return *(Handle_ShapeUpgrade_FixSmallCurves*) &$self;
	}
};
%extend ShapeUpgrade_FixSmallCurves {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_FixSmallCurves::~ShapeUpgrade_FixSmallCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_FixSmallCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_FaceDivideArea;
class ShapeUpgrade_FaceDivideArea : public ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivideArea();
		%feature("autodoc", "1");
		ShapeUpgrade_FaceDivideArea(const TopoDS_Face F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetMaxArea() {
				return (Standard_Real) $self->MaxArea();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetMaxArea(Standard_Real value ) {
				$self->MaxArea()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FaceDivideArea {
	Handle_ShapeUpgrade_FaceDivideArea GetHandle() {
	return *(Handle_ShapeUpgrade_FaceDivideArea*) &$self;
	}
};
%extend ShapeUpgrade_FaceDivideArea {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_FaceDivideArea::~ShapeUpgrade_FaceDivideArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_FaceDivideArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade;
class ShapeUpgrade {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade();
		%feature("autodoc", "1");
		static		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom_BSplineCurve &BS, Handle_TColGeom_HSequenceOfBoundedCurve & seqBS);
		%feature("autodoc", "1");
		static		Standard_Boolean C0BSplineToSequenceOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HSequenceOfBoundedCurve & seqBS);

};
%feature("shadow") ShapeUpgrade::~ShapeUpgrade %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_FixSmallBezierCurves;
class ShapeUpgrade_FixSmallBezierCurves : public ShapeUpgrade_FixSmallCurves {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_FixSmallBezierCurves();
		%feature("autodoc","Approx() -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Approx(Handle_Geom_Curve & Curve3d, Handle_Geom2d_Curve & Curve2d, Handle_Geom2d_Curve & Curve2dR, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_FixSmallBezierCurves {
	Handle_ShapeUpgrade_FixSmallBezierCurves GetHandle() {
	return *(Handle_ShapeUpgrade_FixSmallBezierCurves*) &$self;
	}
};
%extend ShapeUpgrade_FixSmallBezierCurves {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_FixSmallBezierCurves::~ShapeUpgrade_FixSmallBezierCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_FixSmallBezierCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivideClosedEdges;
class ShapeUpgrade_ShapeDivideClosedEdges : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideClosedEdges(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);

};
%feature("shadow") ShapeUpgrade_ShapeDivideClosedEdges::~ShapeUpgrade_ShapeDivideClosedEdges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivideClosedEdges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitSurfaceArea;
class ShapeUpgrade_SplitSurfaceArea : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceArea();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetNbParts() {
				return (Standard_Integer) $self->NbParts();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetNbParts(Standard_Integer value ) {
				$self->NbParts()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurfaceArea {
	Handle_ShapeUpgrade_SplitSurfaceArea GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceArea*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceArea {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitSurfaceArea::~ShapeUpgrade_SplitSurfaceArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitSurfaceArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShellSewing;
class ShapeUpgrade_ShellSewing {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShellSewing();
		%feature("autodoc", "1");
		TopoDS_Shape ApplySewing(const TopoDS_Shape shape, const Standard_Real tol=0.0);

};
%feature("shadow") ShapeUpgrade_ShellSewing::~ShapeUpgrade_ShellSewing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShellSewing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitCurve2d;
class ShapeUpgrade_SplitCurve2d : public ShapeUpgrade_SplitCurve {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve2d();
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &C, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		const Handle_TColGeom2d_HArray1OfCurve & GetCurves() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve2d {
	Handle_ShapeUpgrade_SplitCurve2d GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve2d*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve2d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitCurve2d::~ShapeUpgrade_SplitCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitSurfaceAngle;
class ShapeUpgrade_SplitSurfaceAngle : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitSurfaceAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		void SetMaxAngle(const Standard_Real MaxAngle);
		%feature("autodoc", "1");
		Standard_Real MaxAngle() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitSurfaceAngle {
	Handle_ShapeUpgrade_SplitSurfaceAngle GetHandle() {
	return *(Handle_ShapeUpgrade_SplitSurfaceAngle*) &$self;
	}
};
%extend ShapeUpgrade_SplitSurfaceAngle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitSurfaceAngle::~ShapeUpgrade_SplitSurfaceAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitSurfaceAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ClosedFaceDivide;
class ShapeUpgrade_ClosedFaceDivide : public ShapeUpgrade_FaceDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedFaceDivide();
		%feature("autodoc", "1");
		ShapeUpgrade_ClosedFaceDivide(const TopoDS_Face F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SplitSurface();
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Integer GetNbSplitPoints() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_ClosedFaceDivide {
	Handle_ShapeUpgrade_ClosedFaceDivide GetHandle() {
	return *(Handle_ShapeUpgrade_ClosedFaceDivide*) &$self;
	}
};
%extend ShapeUpgrade_ClosedFaceDivide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_ClosedFaceDivide::~ShapeUpgrade_ClosedFaceDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ClosedFaceDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeConvertToBezier;
class ShapeUpgrade_ShapeConvertToBezier : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeConvertToBezier();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeConvertToBezier(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Set2dConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get2dConversion() const;
		%feature("autodoc", "1");
		void Set3dConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dConversion() const;
		%feature("autodoc", "1");
		void SetSurfaceConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetSurfaceConversion() const;
		%feature("autodoc", "1");
		void Set3dLineConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dLineConversion() const;
		%feature("autodoc", "1");
		void Set3dCircleConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dCircleConversion() const;
		%feature("autodoc", "1");
		void Set3dConicConversion(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean Get3dConicConversion() const;
		%feature("autodoc", "1");
		void SetPlaneMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetPlaneMode() const;
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetRevolutionMode() const;
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetExtrusionMode() const;
		%feature("autodoc", "1");
		void SetBSplineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetBSplineMode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Standard_Boolean newContext=1);

};
%feature("shadow") ShapeUpgrade_ShapeConvertToBezier::~ShapeUpgrade_ShapeConvertToBezier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeConvertToBezier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_WireDivide;
class ShapeUpgrade_WireDivide : public ShapeUpgrade_Tool {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_WireDivide();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire W, const TopoDS_Face F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire W, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire W);
		%feature("autodoc", "1");
		void Load(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face F);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetSplitCurve3dTool(const Handle_ShapeUpgrade_SplitCurve3d &splitCurve3dTool);
		%feature("autodoc", "1");
		void SetSplitCurve2dTool(const Handle_ShapeUpgrade_SplitCurve2d &splitCurve2dTool);
		%feature("autodoc", "1");
		void SetTransferParamTool(const Handle_ShapeAnalysis_TransferParameters &TransferParam);
		%feature("autodoc", "1");
		void SetEdgeDivideTool(const Handle_ShapeUpgrade_EdgeDivide &edgeDivideTool);
		%feature("autodoc", "1");
		virtual		Handle_ShapeUpgrade_EdgeDivide GetEdgeDivideTool() const;
		%feature("autodoc", "1");
		virtual		Handle_ShapeAnalysis_TransferParameters GetTransferParamTool();
		%feature("autodoc", "1");
		void SetEdgeMode(const Standard_Integer EdgeMode);
		%feature("autodoc", "1");
		void SetFixSmallCurveTool(const Handle_ShapeUpgrade_FixSmallCurves &FixSmallCurvesTool);
		%feature("autodoc", "1");
		Handle_ShapeUpgrade_FixSmallCurves GetFixSmallCurveTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_WireDivide {
	Handle_ShapeUpgrade_WireDivide GetHandle() {
	return *(Handle_ShapeUpgrade_WireDivide*) &$self;
	}
};
%extend ShapeUpgrade_WireDivide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_WireDivide::~ShapeUpgrade_WireDivide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_WireDivide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_SplitCurve2dContinuity;
class ShapeUpgrade_SplitCurve2dContinuity : public ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_SplitCurve2dContinuity();
		%feature("autodoc", "1");
		void SetCriterion(const GeomAbs_Shape Criterion);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_SplitCurve2dContinuity {
	Handle_ShapeUpgrade_SplitCurve2dContinuity GetHandle() {
	return *(Handle_ShapeUpgrade_SplitCurve2dContinuity*) &$self;
	}
};
%extend ShapeUpgrade_SplitCurve2dContinuity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_SplitCurve2dContinuity::~ShapeUpgrade_SplitCurve2dContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_SplitCurve2dContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ConvertSurfaceToBezierBasis;
class ShapeUpgrade_ConvertSurfaceToBezierBasis : public ShapeUpgrade_SplitSurface {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertSurfaceToBezierBasis();
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		virtual		void Compute(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface Segments() const;
		%feature("autodoc", "1");
		void SetPlaneMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetPlaneMode() const;
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetRevolutionMode() const;
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetExtrusionMode() const;
		%feature("autodoc", "1");
		void SetBSplineMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetBSplineMode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_ConvertSurfaceToBezierBasis {
	Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertSurfaceToBezierBasis*) &$self;
	}
};
%extend ShapeUpgrade_ConvertSurfaceToBezierBasis {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_ConvertSurfaceToBezierBasis::~ShapeUpgrade_ConvertSurfaceToBezierBasis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ConvertSurfaceToBezierBasis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivideArea;
class ShapeUpgrade_ShapeDivideArea : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideArea();
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideArea(const TopoDS_Shape S);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetMaxArea() {
				return (Standard_Real) $self->MaxArea();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetMaxArea(Standard_Real value ) {
				$self->MaxArea()=value;
				}
		};

};
%feature("shadow") ShapeUpgrade_ShapeDivideArea::~ShapeUpgrade_ShapeDivideArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivideArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ShapeDivideClosed;
class ShapeUpgrade_ShapeDivideClosed : public ShapeUpgrade_ShapeDivide {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ShapeDivideClosed(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void SetNbSplitPoints(const Standard_Integer num);

};
%feature("shadow") ShapeUpgrade_ShapeDivideClosed::~ShapeUpgrade_ShapeDivideClosed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ShapeDivideClosed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeUpgrade_ConvertCurve2dToBezier;
class ShapeUpgrade_ConvertCurve2dToBezier : public ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		ShapeUpgrade_ConvertCurve2dToBezier();
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		virtual		void Build(const Standard_Boolean Segment);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal SplitParams() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeUpgrade_ConvertCurve2dToBezier {
	Handle_ShapeUpgrade_ConvertCurve2dToBezier GetHandle() {
	return *(Handle_ShapeUpgrade_ConvertCurve2dToBezier*) &$self;
	}
};
%extend ShapeUpgrade_ConvertCurve2dToBezier {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") ShapeUpgrade_ConvertCurve2dToBezier::~ShapeUpgrade_ConvertCurve2dToBezier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeUpgrade_ConvertCurve2dToBezier {
	void _kill_pointed() {
		delete $self;
	}
};
