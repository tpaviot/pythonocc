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
%module MgtBRep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include MgtBRep_dependencies.i


%include MgtBRep_headers.i


enum MgtBRep_TriangleMode {
	MgtBRep_WithTriangle,
	MgtBRep_WithoutTriangle,
	};



%nodefaultctor Handle_MgtBRep_TranslateTool1;
class Handle_MgtBRep_TranslateTool1 : public Handle_MgtTopoDS_TranslateTool1 {
	public:
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1();
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1(const Handle_MgtBRep_TranslateTool1 &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1(const MgtBRep_TranslateTool1 *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1 & operator=(const Handle_MgtBRep_TranslateTool1 &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1 & operator=(const MgtBRep_TranslateTool1 *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtBRep_TranslateTool1 {
	MgtBRep_TranslateTool1* GetObject() {
	return (MgtBRep_TranslateTool1*)$self->Access();
	}
};
%feature("shadow") Handle_MgtBRep_TranslateTool1::~Handle_MgtBRep_TranslateTool1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MgtBRep_TranslateTool1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MgtBRep_TranslateTool;
class Handle_MgtBRep_TranslateTool : public Handle_MgtTopoDS_TranslateTool {
	public:
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool();
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool(const Handle_MgtBRep_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool(const MgtBRep_TranslateTool *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool & operator=(const Handle_MgtBRep_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool & operator=(const MgtBRep_TranslateTool *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtBRep_TranslateTool {
	MgtBRep_TranslateTool* GetObject() {
	return (MgtBRep_TranslateTool*)$self->Access();
	}
};
%feature("shadow") Handle_MgtBRep_TranslateTool::~Handle_MgtBRep_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MgtBRep_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtBRep_TranslateTool1;
class MgtBRep_TranslateTool1 : public MgtTopoDS_TranslateTool1 {
	public:
		%feature("autodoc", "1");
		MgtBRep_TranslateTool1(const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		virtual		void Add(TopoDS_Shape & S1, const TopoDS_Shape &S2) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtBRep_TranslateTool1 {
	Handle_MgtBRep_TranslateTool1 GetHandle() {
	return *(Handle_MgtBRep_TranslateTool1*) &$self;
	}
};
%extend MgtBRep_TranslateTool1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MgtBRep_TranslateTool1::~MgtBRep_TranslateTool1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtBRep_TranslateTool1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtBRep_TranslateTool;
class MgtBRep_TranslateTool : public MgtTopoDS_TranslateTool {
	public:
		%feature("autodoc", "1");
		MgtBRep_TranslateTool(const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		virtual		void Add(TopoDS_Shape & S1, const TopoDS_Shape &S2) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtBRep_TranslateTool {
	Handle_MgtBRep_TranslateTool GetHandle() {
	return *(Handle_MgtBRep_TranslateTool*) &$self;
	}
};
%extend MgtBRep_TranslateTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MgtBRep_TranslateTool::~MgtBRep_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtBRep_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtBRep;
class MgtBRep {
	public:
		%feature("autodoc", "1");
		MgtBRep();
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape Translate(const TopoDS_Shape &aShape, PTColStd_TransientPersistentMap & aMap, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate1(const TopoDS_Shape &aShape, PTColStd_TransientPersistentMap & aMap, PTopoDS_Shape1 & aResult, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate(const Handle_PTopoDS_HShape &aShape, PTColStd_PersistentTransientMap & aMap, TopoDS_Shape & aResult, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate1(const PTopoDS_Shape1 &aShape, PTColStd_PersistentTransientMap & aMap, TopoDS_Shape & aResult, const MgtBRep_TriangleMode aTriMode);

};
%feature("shadow") MgtBRep::~MgtBRep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtBRep {
	void _kill_pointed() {
		delete $self;
	}
};
