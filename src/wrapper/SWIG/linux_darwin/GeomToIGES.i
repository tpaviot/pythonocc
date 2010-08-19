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

%module GeomToIGES
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomToIGES_renames.i


%include GeomToIGES_required_python_modules.i


%include GeomToIGES_dependencies.i


%include GeomToIGES_headers.i




%nodefaultctor GeomToIGES_GeomEntity;
class GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomEntity();
		%feature("autodoc", "1");
		GeomToIGES_GeomEntity(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		void SetUnit(const Standard_Real unit);
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;

};
%feature("shadow") GeomToIGES_GeomEntity::~GeomToIGES_GeomEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToIGES_GeomEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToIGES_GeomCurve;
class GeomToIGES_GeomCurve : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomCurve();
		%feature("autodoc", "1");
		GeomToIGES_GeomCurve(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Curve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BoundedCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BSplineCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_BezierCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_TrimmedCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Conic &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Circle &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Ellipse &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Hyperbola &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Line &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_Parabola &start, const Standard_Real Udeb, const Standard_Real Ufin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCurve(const Handle_Geom_OffsetCurve &start, const Standard_Real Udeb, const Standard_Real Ufin);

};
%feature("shadow") GeomToIGES_GeomCurve::~GeomToIGES_GeomCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToIGES_GeomCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToIGES_GeomPoint;
class GeomToIGES_GeomPoint : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint();
		%feature("autodoc", "1");
		GeomToIGES_GeomPoint(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_Point &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point TransferPoint(const Handle_Geom_CartesianPoint &start);

};
%feature("shadow") GeomToIGES_GeomPoint::~GeomToIGES_GeomPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToIGES_GeomPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToIGES_GeomSurface;
class GeomToIGES_GeomSurface : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomSurface();
		%feature("autodoc", "1");
		GeomToIGES_GeomSurface(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_Surface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BoundedSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BSplineSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_BezierSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_RectangularTrimmedSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ElementarySurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_Plane &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_CylindricalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ConicalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SphericalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_ToroidalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SweptSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SurfaceOfLinearExtrusion &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_SurfaceOfRevolution &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSurface(const Handle_Geom_OffsetSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferPlaneSurface(const Handle_Geom_Plane &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCylindricalSurface(const Handle_Geom_CylindricalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferConicalSurface(const Handle_Geom_ConicalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSphericalSurface(const Handle_Geom_SphericalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferToroidalSurface(const Handle_Geom_ToroidalSurface &start, const Standard_Real Udeb, const Standard_Real Ufin, const Standard_Real Vdeb, const Standard_Real Vfin);
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		Standard_Boolean GetBRepMode() const;
		%feature("autodoc", "1");
		void SetBRepMode(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean GetAnalyticMode() const;
		%feature("autodoc", "1");
		void SetAnalyticMode(const Standard_Boolean flag);

};
%feature("shadow") GeomToIGES_GeomSurface::~GeomToIGES_GeomSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToIGES_GeomSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomToIGES_GeomVector;
class GeomToIGES_GeomVector : public GeomToIGES_GeomEntity {
	public:
		%feature("autodoc", "1");
		GeomToIGES_GeomVector();
		%feature("autodoc", "1");
		GeomToIGES_GeomVector(const GeomToIGES_GeomEntity &GE);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_Vector &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_VectorWithMagnitude &start);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction TransferVector(const Handle_Geom_Direction &start);

};
%feature("shadow") GeomToIGES_GeomVector::~GeomToIGES_GeomVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomToIGES_GeomVector {
	void _kill_pointed() {
		delete $self;
	}
};
