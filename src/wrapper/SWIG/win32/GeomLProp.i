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

%module GeomLProp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomLProp_renames.i


%include GeomLProp_required_python_modules.i


%include GeomLProp_dependencies.i


%include GeomLProp_headers.i




%nodefaultctor GeomLProp_SLProps;
class GeomLProp_SLProps {
	public:
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Handle_Geom_Surface &S, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_SLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		const gp_Vec  D1U();
		%feature("autodoc", "1");
		const gp_Vec  D1V();
		%feature("autodoc", "1");
		const gp_Vec  D2U();
		%feature("autodoc", "1");
		const gp_Vec  D2V();
		%feature("autodoc", "1");
		const gp_Vec  DUV();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentUDefined();
		%feature("autodoc", "1");
		void TangentU(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsTangentVDefined();
		%feature("autodoc", "1");
		void TangentV(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsNormalDefined();
		%feature("autodoc", "1");
		const gp_Dir  Normal();
		%feature("autodoc", "1");
		Standard_Boolean IsCurvatureDefined();
		%feature("autodoc", "1");
		Standard_Boolean IsUmbilic();
		%feature("autodoc", "1");
		Standard_Real MaxCurvature();
		%feature("autodoc", "1");
		Standard_Real MinCurvature();
		%feature("autodoc", "1");
		void CurvatureDirections(gp_Dir & MaxD, gp_Dir & MinD);
		%feature("autodoc", "1");
		Standard_Real MeanCurvature();
		%feature("autodoc", "1");
		Standard_Real GaussianCurvature();

};
%feature("shadow") GeomLProp_SLProps::~GeomLProp_SLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomLProp_SLProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomLProp_CLProps;
class GeomLProp_CLProps {
	public:
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Handle_Geom_Curve &C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Handle_Geom_Curve &C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		GeomLProp_CLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		const gp_Vec  D1();
		%feature("autodoc", "1");
		const gp_Vec  D2();
		%feature("autodoc", "1");
		const gp_Vec  D3();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentDefined();
		%feature("autodoc", "1");
		void Tangent(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Real Curvature();
		%feature("autodoc", "1");
		void Normal(gp_Dir & N);
		%feature("autodoc", "1");
		void CentreOfCurvature(gp_Pnt & P);

};
%feature("shadow") GeomLProp_CLProps::~GeomLProp_CLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomLProp_CLProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomLProp;
class GeomLProp {
	public:
		%feature("autodoc", "1");
		GeomLProp();
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean r1, const Standard_Boolean r2, const Standard_Real tl, const Standard_Real ta);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean r1, const Standard_Boolean r2);

};
%feature("shadow") GeomLProp::~GeomLProp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomLProp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomLProp_SurfaceTool;
class GeomLProp_SurfaceTool {
	public:
		%feature("autodoc", "1");
		GeomLProp_SurfaceTool();
		%feature("autodoc", "1");
		static		void Value(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & DUV);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Handle_Geom_Surface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer IU, const Standard_Integer IV);
		%feature("autodoc", "1");
		static		Standard_Integer Continuity(const Handle_Geom_Surface &S);
		%feature("autodoc","Bounds(const S) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		void Bounds(const Handle_Geom_Surface &S, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") GeomLProp_SurfaceTool::~GeomLProp_SurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomLProp_SurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomLProp_CurveTool;
class GeomLProp_CurveTool {
	public:
		%feature("autodoc", "1");
		GeomLProp_CurveTool();
		%feature("autodoc", "1");
		static		void Value(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1);
		%feature("autodoc", "1");
		static		void D2(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		static		void D3(const Handle_Geom_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		static		Standard_Integer Continuity(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Handle_Geom_Curve &C);

};
%feature("shadow") GeomLProp_CurveTool::~GeomLProp_CurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomLProp_CurveTool {
	void _kill_pointed() {
		delete $self;
	}
};
