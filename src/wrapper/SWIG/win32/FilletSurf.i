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
%module FilletSurf

%include FilletSurf_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include FilletSurf_dependencies.i


%include FilletSurf_headers.i


enum FilletSurf_StatusType {
	FilletSurf_TwoExtremityOnEdge,
	FilletSurf_OneExtremityOnEdge,
	FilletSurf_NoExtremityOnEdge,
	};

enum FilletSurf_ErrorTypeStatus {
	FilletSurf_EmptyList,
	FilletSurf_EdgeNotG1,
	FilletSurf_FacesNotG1,
	FilletSurf_EdgeNotOnShape,
	FilletSurf_NotSharpEdge,
	FilletSurf_PbFilletCompute,
	};

enum FilletSurf_StatusDone {
	FilletSurf_IsOk,
	FilletSurf_IsNotOk,
	FilletSurf_IsPartial,
	};



%nodefaultctor FilletSurf_InternalBuilder;
class FilletSurf_InternalBuilder : public ChFi3d_FilBuilder {
	public:
		%feature("autodoc", "1");
		FilletSurf_InternalBuilder(const TopoDS_Shape &S, const ChFi3d_FilletShape FShape=ChFi3d_Polynomial, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Tapp3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real Tapp2d=1.00000000000000008180305391403130954586231382564e-5);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopTools_ListOfShape &E, const Standard_Real R);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean Done() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurface() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & SurfaceFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real TolApp3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve1OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve2OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType StartSectionStatus() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType EndSectionStatus() const;
		%feature("autodoc", "1");
		void Simulate();
		%feature("autodoc", "1");
		Standard_Integer NbSection(const Standard_Integer IndexSurf) const;
		%feature("autodoc", "1");
		void Section(const Standard_Integer IndexSurf, const Standard_Integer IndexSec, Handle_Geom_TrimmedCurve & Circ) const;

};
%extend FilletSurf_InternalBuilder {
	~FilletSurf_InternalBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FilletSurf_InternalBuilder\n");}
	}
};


%nodefaultctor FilletSurf_Builder;
class FilletSurf_Builder {
	public:
		%feature("autodoc", "1");
		FilletSurf_Builder(const TopoDS_Shape &S, const TopTools_ListOfShape &E, const Standard_Real R, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Tapp3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real Tapp2d=1.00000000000000008180305391403130954586231382564e-5);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void Simulate();
		%feature("autodoc", "1");
		FilletSurf_StatusDone IsDone() const;
		%feature("autodoc", "1");
		FilletSurf_ErrorTypeStatus StatusError() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurface() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & SurfaceFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real TolApp3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve1OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve2OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType StartSectionStatus() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType EndSectionStatus() const;
		%feature("autodoc", "1");
		Standard_Integer NbSection(const Standard_Integer IndexSurf) const;
		%feature("autodoc", "1");
		void Section(const Standard_Integer IndexSurf, const Standard_Integer IndexSec, Handle_Geom_TrimmedCurve & Circ) const;

};
%extend FilletSurf_Builder {
	~FilletSurf_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FilletSurf_Builder\n");}
	}
};
