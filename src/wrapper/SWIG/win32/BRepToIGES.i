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
%module BRepToIGES
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepToIGES_dependencies.i


%include BRepToIGES_headers.i




%nodefaultctor BRepToIGES_BREntity;
class BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BREntity();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;
		%feature("autodoc", "1");
		void SetTransferProcess(const Handle_Transfer_FinderProcess &TP);
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess GetTransferProcess() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity TransferShape(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		void AddFail(const TopoDS_Shape &start, const char * amess);
		%feature("autodoc", "1");
		void AddWarning(const TopoDS_Shape &start, const char * amess);
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const char * amess);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const char * amess);
		%feature("autodoc", "1");
		Standard_Boolean HasShapeResult(const TopoDS_Shape &start) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient GetShapeResult(const TopoDS_Shape &start) const;
		%feature("autodoc", "1");
		void SetShapeResult(const TopoDS_Shape &start, const Handle_Standard_Transient &result);
		%feature("autodoc", "1");
		Standard_Boolean HasShapeResult(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient GetShapeResult(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void SetShapeResult(const Handle_Standard_Transient &start, const Handle_Standard_Transient &result);
		%feature("autodoc", "1");
		Standard_Boolean GetConvertSurfaceMode() const;
		%feature("autodoc", "1");
		Standard_Boolean GetPCurveMode() const;
		%feature("autodoc", "1");
		virtual		void Delete();

};
%feature("shadow") BRepToIGES_BREntity::~BRepToIGES_BREntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepToIGES_BREntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepToIGES_BRShell;
class BRepToIGES_BRShell : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRShell();
		%feature("autodoc", "1");
		BRepToIGES_BRShell(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferShell(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferShell(const TopoDS_Shell &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferFace(const TopoDS_Face &start);

};
%feature("shadow") BRepToIGES_BRShell::~BRepToIGES_BRShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepToIGES_BRShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepToIGES_BRSolid;
class BRepToIGES_BRSolid : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRSolid();
		%feature("autodoc", "1");
		BRepToIGES_BRSolid(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSolid(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSolid(const TopoDS_Solid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompSolid(const TopoDS_CompSolid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompound(const TopoDS_Compound &start);

};
%feature("shadow") BRepToIGES_BRSolid::~BRepToIGES_BRSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepToIGES_BRSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepToIGES_BRWire;
class BRepToIGES_BRWire : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRWire();
		%feature("autodoc", "1");
		BRepToIGES_BRWire(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex);
		%feature("autodoc","TransferVertex(const myvertex, const myedge) -> Standard_Real");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, Standard_Real &OutValue);
		%feature("autodoc","TransferVertex(const myvertex, const myedge, const myface) -> Standard_Real");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, const TopoDS_Face &myface, Standard_Real &OutValue);
		%feature("autodoc","TransferVertex(const myvertex, const myedge, const mysurface, const myloc) -> Standard_Real");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, const Handle_Geom_Surface &mysurface, const TopLoc_Location &myloc, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Face &myface, gp_Pnt2d & mypoint);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge, const Standard_Boolean isBRepMode);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge, const TopoDS_Face &myface, const Standard_Real length, const Standard_Boolean isBRepMode);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Wire &mywire);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Wire &mywire, const TopoDS_Face &myface, Handle_IGESData_IGESEntity & mycurve2d, const Standard_Real length);

};
%feature("shadow") BRepToIGES_BRWire::~BRepToIGES_BRWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepToIGES_BRWire {
	void _kill_pointed() {
		delete $self;
	}
};
