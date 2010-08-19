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

%module MgtTopoDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MgtTopoDS_renames.i


%include MgtTopoDS_required_python_modules.i


%include MgtTopoDS_dependencies.i


%include MgtTopoDS_headers.i




%nodefaultctor Handle_MgtTopoDS_TranslateTool;
class Handle_MgtTopoDS_TranslateTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool();
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool(const Handle_MgtTopoDS_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool(const MgtTopoDS_TranslateTool *anItem);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool & operator=(const Handle_MgtTopoDS_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool & operator=(const MgtTopoDS_TranslateTool *anItem);
		%feature("autodoc", "1");
		static		Handle_MgtTopoDS_TranslateTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtTopoDS_TranslateTool {
	MgtTopoDS_TranslateTool* GetObject() {
	return (MgtTopoDS_TranslateTool*)$self->Access();
	}
};
%feature("shadow") Handle_MgtTopoDS_TranslateTool::~Handle_MgtTopoDS_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MgtTopoDS_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MgtTopoDS_TranslateTool1;
class Handle_MgtTopoDS_TranslateTool1 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool1();
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool1(const Handle_MgtTopoDS_TranslateTool1 &aHandle);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool1(const MgtTopoDS_TranslateTool1 *anItem);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool1 & operator=(const Handle_MgtTopoDS_TranslateTool1 &aHandle);
		%feature("autodoc", "1");
		Handle_MgtTopoDS_TranslateTool1 & operator=(const MgtTopoDS_TranslateTool1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MgtTopoDS_TranslateTool1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtTopoDS_TranslateTool1 {
	MgtTopoDS_TranslateTool1* GetObject() {
	return (MgtTopoDS_TranslateTool1*)$self->Access();
	}
};
%feature("shadow") Handle_MgtTopoDS_TranslateTool1::~Handle_MgtTopoDS_TranslateTool1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MgtTopoDS_TranslateTool1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtTopoDS_TranslateTool;
class MgtTopoDS_TranslateTool : public MMgt_TShared {
	public:
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
		void UpdateShape(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		void UpdateShape(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateWire(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateWire(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateShell(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateShell(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateSolid(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateSolid(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompSolid(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompSolid(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompound(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompound(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtTopoDS_TranslateTool {
	Handle_MgtTopoDS_TranslateTool GetHandle() {
	return *(Handle_MgtTopoDS_TranslateTool*) &$self;
	}
};
%extend MgtTopoDS_TranslateTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MgtTopoDS_TranslateTool::~MgtTopoDS_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtTopoDS_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtTopoDS_TranslateTool1;
class MgtTopoDS_TranslateTool1 : public MMgt_TShared {
	public:
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
		void UpdateShape(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		void UpdateShape(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateWire(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateWire(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateShell(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateShell(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateSolid(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateSolid(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompSolid(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompSolid(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompound(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2) const;
		%feature("autodoc", "1");
		virtual		void UpdateCompound(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtTopoDS_TranslateTool1 {
	Handle_MgtTopoDS_TranslateTool1 GetHandle() {
	return *(Handle_MgtTopoDS_TranslateTool1*) &$self;
	}
};
%extend MgtTopoDS_TranslateTool1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MgtTopoDS_TranslateTool1::~MgtTopoDS_TranslateTool1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtTopoDS_TranslateTool1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MgtTopoDS;
class MgtTopoDS {
	public:
		%feature("autodoc", "1");
		MgtTopoDS();
		%feature("autodoc", "1");
		static		Handle_PTopoDS_HShape Translate(const TopoDS_Shape &S, const Handle_MgtTopoDS_TranslateTool &T, PTColStd_TransientPersistentMap & M);
		%feature("autodoc", "1");
		static		void Translate(const Handle_PTopoDS_HShape &S, const Handle_MgtTopoDS_TranslateTool &T, PTColStd_PersistentTransientMap & M, TopoDS_Shape & Sh);
		%feature("autodoc", "1");
		static		void Translate1(const TopoDS_Shape &aShape, const Handle_MgtTopoDS_TranslateTool1 &T, PTColStd_TransientPersistentMap & M, PTopoDS_Shape1 & aPShape);
		%feature("autodoc", "1");
		static		void Translate1(const PTopoDS_Shape1 &aPShape, const Handle_MgtTopoDS_TranslateTool1 &T, PTColStd_PersistentTransientMap & M, TopoDS_Shape & aShape);

};
%feature("shadow") MgtTopoDS::~MgtTopoDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MgtTopoDS {
	void _kill_pointed() {
		delete $self;
	}
};
