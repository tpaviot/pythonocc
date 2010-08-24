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

%module IGESConvGeom
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IGESConvGeom_renames.i


%include IGESConvGeom_required_python_modules.i


%include IGESConvGeom_dependencies.i


%include IGESConvGeom_headers.i




%nodefaultctor IGESConvGeom;
class IGESConvGeom {
	public:
		%feature("autodoc", "1");
		IGESConvGeom();
		%feature("autodoc", "1");
		static		Standard_Integer SplineCurveFromIGES(const Handle_IGESGeom_SplineCurve &igesent, const Standard_Real epscoef, const Standard_Real epsgeom, Handle_Geom_BSplineCurve & result);
		%feature("autodoc", "1");
		static		Standard_Integer IncreaseCurveContinuity(const Handle_Geom_BSplineCurve &curve, const Standard_Real epsgeom, const Standard_Integer continuity=2);
		%feature("autodoc", "1");
		static		Standard_Integer IncreaseCurveContinuity(const Handle_Geom2d_BSplineCurve &curve, const Standard_Real epsgeom, const Standard_Integer continuity=2);
		%feature("autodoc", "1");
		static		Standard_Integer SplineSurfaceFromIGES(const Handle_IGESGeom_SplineSurface &igesent, const Standard_Real epscoef, const Standard_Real epsgeom, Handle_Geom_BSplineSurface & result);
		%feature("autodoc", "1");
		static		Standard_Integer IncreaseSurfaceContinuity(const Handle_Geom_BSplineSurface &surface, const Standard_Real epsgeom, const Standard_Integer continuity=2);

};
%feature("shadow") IGESConvGeom::~IGESConvGeom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESConvGeom {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESConvGeom_GeomBuilder;
class IGESConvGeom_GeomBuilder {
	public:
		%feature("autodoc", "1");
		IGESConvGeom_GeomBuilder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddXY(const gp_XY val);
		%feature("autodoc", "1");
		void AddXYZ(const gp_XYZ val);
		%feature("autodoc", "1");
		void AddVec(const gp_XYZ val);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		gp_XYZ Point(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData MakeCopiousData(const Standard_Integer datatype, const Standard_Boolean polyline=0) const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY MakeXY() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ MakeXYZ() const;
		%feature("autodoc", "1");
		gp_Trsf Position() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Trsf pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 pos);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax1 pos);
		%feature("autodoc", "1");
		Standard_Boolean IsIdentity() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTranslation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsZOnly() const;
		%feature("autodoc","EvalXYZ(const val) -> [Standard_Real, Standard_Real, Standard_Real]");

		void EvalXYZ(const gp_XYZ val, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix MakeTransformation(const Standard_Real unit=1) const;

};
%feature("shadow") IGESConvGeom_GeomBuilder::~IGESConvGeom_GeomBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESConvGeom_GeomBuilder {
	void _kill_pointed() {
		delete $self;
	}
};
