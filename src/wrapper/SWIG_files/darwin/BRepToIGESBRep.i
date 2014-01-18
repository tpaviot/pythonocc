/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module BRepToIGESBRep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepToIGESBRep_renames.i


%include BRepToIGESBRep_required_python_modules.i


%include BRepToIGESBRep_dependencies.i


%include BRepToIGESBRep_headers.i




%nodefaultctor BRepToIGESBRep_Entity;
class BRepToIGESBRep_Entity : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGESBRep_Entity();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void TransferVertexList();
		%feature("autodoc", "1");
		Standard_Integer IndexVertex(const TopoDS_Vertex myvertex) const;
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const TopoDS_Vertex myvertex);
		%feature("autodoc", "1");
		void TransferEdgeList();
		%feature("autodoc", "1");
		Standard_Integer IndexEdge(const TopoDS_Edge myedge) const;
		%feature("autodoc", "1");
		Standard_Integer AddEdge(const TopoDS_Edge myedge, const Handle_IGESData_IGESEntity &mycurve3d);
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity TransferShape(const TopoDS_Shape start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge myedge);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge myedge, const TopoDS_Face myface, const Standard_Real length);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop TransferWire(const TopoDS_Wire mywire, const TopoDS_Face myface, const Standard_Real length);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face TransferFace(const TopoDS_Face start);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell TransferShell(const TopoDS_Shell start);
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid TransferSolid(const TopoDS_Solid start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompSolid(const TopoDS_CompSolid start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompound(const TopoDS_Compound start);

};
%feature("shadow") BRepToIGESBRep_Entity::~BRepToIGESBRep_Entity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepToIGESBRep_Entity {
	void _kill_pointed() {
		delete $self;
	}
};
