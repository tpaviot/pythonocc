/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%module LProp3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include LProp3d_dependencies.i


%include LProp3d_headers.i




%nodefaultctor LProp3d_SurfaceTool;
class LProp3d_SurfaceTool {
	public:
		%feature("autodoc", "1");
		LProp3d_SurfaceTool();
		%feature("autodoc", "1");
		void Value(const Adaptor3d_HSurface *S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Adaptor3d_HSurface *S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		void D2(const Adaptor3d_HSurface *S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & DUV);
		%feature("autodoc", "1");
		gp_Vec DN(const Adaptor3d_HSurface *S, const Standard_Real U, const Standard_Real V, const Standard_Integer IU, const Standard_Integer IV);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Adaptor3d_HSurface *S);
		%feature("autodoc","Bounds(const S) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Bounds(const Adaptor3d_HSurface *S, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") LProp3d_SurfaceTool::~LProp3d_SurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp3d_SurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp3d_CurveTool;
class LProp3d_CurveTool {
	public:
		%feature("autodoc", "1");
		LProp3d_CurveTool();
		%feature("autodoc", "1");
		void Value(const Adaptor3d_HCurve *C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Adaptor3d_HCurve *C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1);
		%feature("autodoc", "1");
		void D2(const Adaptor3d_HCurve *C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		void D3(const Adaptor3d_HCurve *C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		Standard_Integer Continuity(const Adaptor3d_HCurve *C);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Adaptor3d_HCurve *C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Adaptor3d_HCurve *C);

};
%feature("shadow") LProp3d_CurveTool::~LProp3d_CurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp3d_CurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp3d_CLProps;
class LProp3d_CLProps {
	public:
		%feature("autodoc", "1");
		LProp3d_CLProps(const Adaptor3d_HCurve *C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		LProp3d_CLProps(const Adaptor3d_HCurve *C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		LProp3d_CLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Adaptor3d_HCurve *C);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		const gp_Vec & D1();
		%feature("autodoc", "1");
		const gp_Vec & D2();
		%feature("autodoc", "1");
		const gp_Vec & D3();
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
%feature("shadow") LProp3d_CLProps::~LProp3d_CLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp3d_CLProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp3d_SLProps;
class LProp3d_SLProps {
	public:
		%feature("autodoc", "1");
		LProp3d_SLProps(const Adaptor3d_HSurface *S, const Standard_Real U, const Standard_Real V, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		LProp3d_SLProps(const Adaptor3d_HSurface *S, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		LProp3d_SLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetSurface(const Adaptor3d_HSurface *S);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		const gp_Vec & D1U();
		%feature("autodoc", "1");
		const gp_Vec & D1V();
		%feature("autodoc", "1");
		const gp_Vec & D2U();
		%feature("autodoc", "1");
		const gp_Vec & D2V();
		%feature("autodoc", "1");
		const gp_Vec & DUV();
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
		const gp_Dir & Normal();
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
%feature("shadow") LProp3d_SLProps::~LProp3d_SLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp3d_SLProps {
	void _kill_pointed() {
		delete $self;
	}
};
