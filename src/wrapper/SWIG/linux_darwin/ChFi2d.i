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
%module ChFi2d

%include ChFi2d_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include ChFi2d_dependencies.i


%include ChFi2d_headers.i


enum ChFi2d_ConstructionError {
	ChFi2d_NotPlanar,
	ChFi2d_NoFace,
	ChFi2d_InitialisationError,
	ChFi2d_ParametersError,
	ChFi2d_Ready,
	ChFi2d_IsDone,
	ChFi2d_ComputationError,
	ChFi2d_ConnexionError,
	ChFi2d_TangencyError,
	ChFi2d_FirstEdgeDegenerated,
	ChFi2d_LastEdgeDegenerated,
	ChFi2d_BothEdgesDegenerated,
	ChFi2d_NotAuthorized,
	};



%nodefaultctor ChFi2d;
class ChFi2d {
	public:
		%feature("autodoc", "1");
		ChFi2d();

};
%feature("shadow") ChFi2d::~ChFi2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor ChFi2d_Builder;
class ChFi2d_Builder {
	public:
		%feature("autodoc", "1");
		ChFi2d_Builder();
		%feature("autodoc", "1");
		ChFi2d_Builder(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &RefFace, const TopoDS_Face &ModFace);
		%feature("autodoc", "1");
		TopoDS_Edge AddFillet(const TopoDS_Vertex &V, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyFillet(const TopoDS_Edge &Fillet, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveFillet(const TopoDS_Edge &Fillet);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E, const TopoDS_Vertex &V, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveChamfer(const TopoDS_Edge &Chamfer);
		%feature("autodoc", "1");
		TopoDS_Face Result() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & FilletEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbFillet() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & ChamferEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbChamfer() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDescendant(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & DescendantEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & BasisEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		ChFi2d_ConstructionError Status() const;

};
%feature("shadow") ChFi2d_Builder::~ChFi2d_Builder %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
