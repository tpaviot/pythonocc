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
%module ShapeFix

%include ShapeFix_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include ShapeFix_dependencies.i


%include ShapeFix_headers.i




%nodefaultctor Handle_ShapeFix_EdgeProjAux;
class Handle_ShapeFix_EdgeProjAux : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux();
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux(const Handle_ShapeFix_EdgeProjAux &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux(const ShapeFix_EdgeProjAux *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux & operator=(const Handle_ShapeFix_EdgeProjAux &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux & operator=(const ShapeFix_EdgeProjAux *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_EdgeProjAux {
	ShapeFix_EdgeProjAux* GetObject() {
	return (ShapeFix_EdgeProjAux*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_EdgeProjAux::~Handle_ShapeFix_EdgeProjAux %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_EdgeProjAux {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Root;
class Handle_ShapeFix_Root : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Root();
		%feature("autodoc", "1");
		Handle_ShapeFix_Root(const Handle_ShapeFix_Root &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root(const ShapeFix_Root *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root & operator=(const Handle_ShapeFix_Root &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root & operator=(const ShapeFix_Root *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Root {
	ShapeFix_Root* GetObject() {
	return (ShapeFix_Root*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Root::~Handle_ShapeFix_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Face;
class Handle_ShapeFix_Face : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Face();
		%feature("autodoc", "1");
		Handle_ShapeFix_Face(const Handle_ShapeFix_Face &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face(const ShapeFix_Face *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face & operator=(const Handle_ShapeFix_Face &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face & operator=(const ShapeFix_Face *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Face {
	ShapeFix_Face* GetObject() {
	return (ShapeFix_Face*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Face::~Handle_ShapeFix_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_ComposeShell;
class Handle_ShapeFix_ComposeShell : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell();
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell(const Handle_ShapeFix_ComposeShell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell(const ShapeFix_ComposeShell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell & operator=(const Handle_ShapeFix_ComposeShell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell & operator=(const ShapeFix_ComposeShell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_ComposeShell {
	ShapeFix_ComposeShell* GetObject() {
	return (ShapeFix_ComposeShell*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_ComposeShell::~Handle_ShapeFix_ComposeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_ComposeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_SplitCommonVertex;
class Handle_ShapeFix_SplitCommonVertex : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex();
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex(const Handle_ShapeFix_SplitCommonVertex &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex(const ShapeFix_SplitCommonVertex *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex & operator=(const Handle_ShapeFix_SplitCommonVertex &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex & operator=(const ShapeFix_SplitCommonVertex *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_SplitCommonVertex {
	ShapeFix_SplitCommonVertex* GetObject() {
	return (ShapeFix_SplitCommonVertex*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_SplitCommonVertex::~Handle_ShapeFix_SplitCommonVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_SplitCommonVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Edge;
class Handle_ShapeFix_Edge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge();
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge(const Handle_ShapeFix_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge(const ShapeFix_Edge *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge & operator=(const Handle_ShapeFix_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge & operator=(const ShapeFix_Edge *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Edge {
	ShapeFix_Edge* GetObject() {
	return (ShapeFix_Edge*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Edge::~Handle_ShapeFix_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Solid;
class Handle_ShapeFix_Solid : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid();
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid(const Handle_ShapeFix_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid(const ShapeFix_Solid *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid & operator=(const Handle_ShapeFix_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid & operator=(const ShapeFix_Solid *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Solid {
	ShapeFix_Solid* GetObject() {
	return (ShapeFix_Solid*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Solid::~Handle_ShapeFix_Solid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Solid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d;
class Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const ShapeFix_DataMapNodeOfDataMapOfShapeBox2d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d & operator=(const Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d & operator=(const ShapeFix_DataMapNodeOfDataMapOfShapeBox2d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	ShapeFix_DataMapNodeOfDataMapOfShapeBox2d* GetObject() {
	return (ShapeFix_DataMapNodeOfDataMapOfShapeBox2d*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d::~Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Wire;
class Handle_ShapeFix_Wire : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire(const Handle_ShapeFix_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire(const ShapeFix_Wire *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire & operator=(const Handle_ShapeFix_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire & operator=(const ShapeFix_Wire *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Wire {
	ShapeFix_Wire* GetObject() {
	return (ShapeFix_Wire*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Wire::~Handle_ShapeFix_Wire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Wire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment;
class Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment();
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment(const Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment(const ShapeFix_SequenceNodeOfSequenceOfWireSegment *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment & operator=(const Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment & operator=(const ShapeFix_SequenceNodeOfSequenceOfWireSegment *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	ShapeFix_SequenceNodeOfSequenceOfWireSegment* GetObject() {
	return (ShapeFix_SequenceNodeOfSequenceOfWireSegment*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment::~Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Wireframe;
class Handle_ShapeFix_Wireframe : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe(const Handle_ShapeFix_Wireframe &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe(const ShapeFix_Wireframe *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe & operator=(const Handle_ShapeFix_Wireframe &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe & operator=(const ShapeFix_Wireframe *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Wireframe {
	ShapeFix_Wireframe* GetObject() {
	return (ShapeFix_Wireframe*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Wireframe::~Handle_ShapeFix_Wireframe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Wireframe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Shape;
class Handle_ShapeFix_Shape : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape(const Handle_ShapeFix_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape(const ShapeFix_Shape *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape & operator=(const Handle_ShapeFix_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape & operator=(const ShapeFix_Shape *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Shape {
	ShapeFix_Shape* GetObject() {
	return (ShapeFix_Shape*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Shape::~Handle_ShapeFix_Shape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Shape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_FixSmallFace;
class Handle_ShapeFix_FixSmallFace : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace();
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace(const Handle_ShapeFix_FixSmallFace &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace(const ShapeFix_FixSmallFace *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace & operator=(const Handle_ShapeFix_FixSmallFace &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace & operator=(const ShapeFix_FixSmallFace *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_FixSmallFace {
	ShapeFix_FixSmallFace* GetObject() {
	return (ShapeFix_FixSmallFace*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_FixSmallFace::~Handle_ShapeFix_FixSmallFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_FixSmallFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeFix_Shell;
class Handle_ShapeFix_Shell : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell(const Handle_ShapeFix_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell(const ShapeFix_Shell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell & operator=(const Handle_ShapeFix_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell & operator=(const ShapeFix_Shell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Shell {
	ShapeFix_Shell* GetObject() {
	return (ShapeFix_Shell*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeFix_Shell::~Handle_ShapeFix_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeFix_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Root;
class ShapeFix_Root : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_Root();
		%feature("autodoc", "1");
		virtual		void Set(const Handle_ShapeFix_Root &Root);
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator MsgRegistrator() const;
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		Standard_Real MinTolerance() const;
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Real MaxTolerance() const;
		%feature("autodoc", "1");
		Standard_Real LimitTolerance(const Standard_Real toler) const;
		%feature("autodoc", "1");
		void SendMsg(const TopoDS_Shape &shape, const Message_Msg &message, const Message_Gravity gravity=Message_Info) const;
		%feature("autodoc", "1");
		void SendMsg(const Message_Msg &message, const Message_Gravity gravity=Message_Info) const;
		%feature("autodoc", "1");
		void SendWarning(const TopoDS_Shape &shape, const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendWarning(const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendFail(const TopoDS_Shape &shape, const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendFail(const Message_Msg &message) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Root {
	Handle_ShapeFix_Root GetHandle() {
	return *(Handle_ShapeFix_Root*) &$self;
	}
};
%extend ShapeFix_Root {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Root::~ShapeFix_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_ComposeShell;
class ShapeFix_ComposeShell : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_ComposeShell();
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_CompositeSurface &Grid, const TopLoc_Location &L, const TopoDS_Face &Face, const Standard_Real Prec);
		%feature("autodoc", "1");
		Standard_Boolean & ClosedMode();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		void SplitEdges();
		%feature("autodoc", "1");
		const TopoDS_Shape & Result() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void DispatchWires(TopTools_SequenceOfShape & faces, ShapeFix_SequenceOfWireSegment & wires) const;
		%feature("autodoc", "1");
		void SetTransferParamTool(const Handle_ShapeAnalysis_TransferParameters &TransferParam);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters GetTransferParamTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_ComposeShell {
	Handle_ShapeFix_ComposeShell GetHandle() {
	return *(Handle_ShapeFix_ComposeShell*) &$self;
	}
};
%extend ShapeFix_ComposeShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_ComposeShell::~ShapeFix_ComposeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_ComposeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_EdgeProjAux;
class ShapeFix_EdgeProjAux : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_EdgeProjAux();
		%feature("autodoc", "1");
		ShapeFix_EdgeProjAux(const TopoDS_Face &F, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Compute(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Boolean IsFirstDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLastDone() const;
		%feature("autodoc", "1");
		Standard_Real FirstParam() const;
		%feature("autodoc", "1");
		Standard_Real LastParam() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIso(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_EdgeProjAux {
	Handle_ShapeFix_EdgeProjAux GetHandle() {
	return *(Handle_ShapeFix_EdgeProjAux*) &$self;
	}
};
%extend ShapeFix_EdgeProjAux {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_EdgeProjAux::~ShapeFix_EdgeProjAux %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_EdgeProjAux {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d;
class ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d(const ShapeFix_DataMapOfShapeBox2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeFix_DataMapOfShapeBox2d &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Bnd_Box2d & Value() const;

};
%feature("shadow") ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d::~ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_FreeBounds;
class ShapeFix_FreeBounds {
	public:
		%feature("autodoc", "1");
		ShapeFix_FreeBounds();
		%feature("autodoc", "1");
		ShapeFix_FreeBounds(const TopoDS_Shape &shape, const Standard_Real sewtoler, const Standard_Real closetoler, const Standard_Boolean splitclosed, const Standard_Boolean splitopen);
		%feature("autodoc", "1");
		ShapeFix_FreeBounds(const TopoDS_Shape &shape, const Standard_Real closetoler, const Standard_Boolean splitclosed, const Standard_Boolean splitopen);
		%feature("autodoc", "1");
		const TopoDS_Compound & GetClosedWires() const;
		%feature("autodoc", "1");
		const TopoDS_Compound & GetOpenWires() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape() const;

};
%feature("shadow") ShapeFix_FreeBounds::~ShapeFix_FreeBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_FreeBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Face;
class ShapeFix_Face : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Face();
		%feature("autodoc", "1");
		ShapeFix_Face(const TopoDS_Face &face);
		%feature("autodoc", "1");
		virtual		void ClearModes();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &face);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &surf, const Standard_Real preci, const Standard_Boolean fwd=1);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeAnalysis_Surface &surf, const Standard_Real preci, const Standard_Boolean fwd=1);
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixWireMode() {
				return (Standard_Integer) $self->FixWireMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixWireMode(Standard_Integer value ) {
				$self->FixWireMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixOrientationMode() {
				return (Standard_Integer) $self->FixOrientationMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixOrientationMode(Standard_Integer value ) {
				$self->FixOrientationMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixAddNaturalBoundMode() {
				return (Standard_Integer) $self->FixAddNaturalBoundMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixAddNaturalBoundMode(Standard_Integer value ) {
				$self->FixAddNaturalBoundMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixMissingSeamMode() {
				return (Standard_Integer) $self->FixMissingSeamMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixMissingSeamMode(Standard_Integer value ) {
				$self->FixMissingSeamMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSmallAreaWireMode() {
				return (Standard_Integer) $self->FixSmallAreaWireMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSmallAreaWireMode(Standard_Integer value ) {
				$self->FixSmallAreaWireMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixIntersectingWiresMode() {
				return (Standard_Integer) $self->FixIntersectingWiresMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixIntersectingWiresMode(Standard_Integer value ) {
				$self->FixIntersectingWiresMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixLoopWiresMode() {
				return (Standard_Integer) $self->FixLoopWiresMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixLoopWiresMode(Standard_Integer value ) {
				$self->FixLoopWiresMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSplitFaceMode() {
				return (Standard_Integer) $self->FixSplitFaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSplitFaceMode(Standard_Integer value ) {
				$self->FixSplitFaceMode()=value;
				}
		};
		%feature("autodoc", "1");
		TopoDS_Face Face() const;
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixOrientation();
		%feature("autodoc", "1");
		Standard_Boolean FixOrientation(TopTools_DataMapOfShapeListOfShape & MapWires);
		%feature("autodoc", "1");
		Standard_Boolean FixAddNaturalBound();
		%feature("autodoc", "1");
		Standard_Boolean FixMissingSeam();
		%feature("autodoc", "1");
		Standard_Boolean FixSmallAreaWire();
		%feature("autodoc", "1");
		Standard_Boolean FixLoopWire(TopTools_SequenceOfShape & aResWires);
		%feature("autodoc", "1");
		Standard_Boolean FixIntersectingWires();
		%feature("autodoc", "1");
		Standard_Boolean FixWiresTwoCoincEdges();
		%feature("autodoc", "1");
		Standard_Boolean FixSplitFace(const TopTools_DataMapOfShapeListOfShape &MapWires);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire FixWireTool();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Face {
	Handle_ShapeFix_Face GetHandle() {
	return *(Handle_ShapeFix_Face*) &$self;
	}
};
%extend ShapeFix_Face {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Face::~ShapeFix_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Wire;
class ShapeFix_Wire : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Wire();
		%feature("autodoc", "1");
		ShapeFix_Wire(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real prec);
		%feature("autodoc", "1");
		void ClearModes();
		%feature("autodoc", "1");
		void ClearStatuses();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real prec);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeAnalysis_Wire &saw);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		void Load(const Handle_ShapeExtend_WireData &sbwd);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &face);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf, const TopLoc_Location &loc);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real prec);
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		TopoDS_Wire WireAPIMake() const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire Analyzer() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		Standard_Boolean & ModifyTopologyMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyGeometryMode();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetModifyRemoveLoopMode() {
				return (Standard_Integer) $self->ModifyRemoveLoopMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetModifyRemoveLoopMode(Standard_Integer value ) {
				$self->ModifyRemoveLoopMode()=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & ClosedWireMode();
		%feature("autodoc", "1");
		Standard_Boolean & PreferencePCurveMode();
		%feature("autodoc", "1");
		Standard_Boolean & FixGapsByRangesMode();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixReorderMode() {
				return (Standard_Integer) $self->FixReorderMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixReorderMode(Standard_Integer value ) {
				$self->FixReorderMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSmallMode() {
				return (Standard_Integer) $self->FixSmallMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSmallMode(Standard_Integer value ) {
				$self->FixSmallMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixConnectedMode() {
				return (Standard_Integer) $self->FixConnectedMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixConnectedMode(Standard_Integer value ) {
				$self->FixConnectedMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixEdgeCurvesMode() {
				return (Standard_Integer) $self->FixEdgeCurvesMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixEdgeCurvesMode(Standard_Integer value ) {
				$self->FixEdgeCurvesMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixDegeneratedMode() {
				return (Standard_Integer) $self->FixDegeneratedMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixDegeneratedMode(Standard_Integer value ) {
				$self->FixDegeneratedMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSelfIntersectionMode() {
				return (Standard_Integer) $self->FixSelfIntersectionMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSelfIntersectionMode(Standard_Integer value ) {
				$self->FixSelfIntersectionMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixLackingMode() {
				return (Standard_Integer) $self->FixLackingMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixLackingMode(Standard_Integer value ) {
				$self->FixLackingMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixGaps3dMode() {
				return (Standard_Integer) $self->FixGaps3dMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixGaps3dMode(Standard_Integer value ) {
				$self->FixGaps3dMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixGaps2dMode() {
				return (Standard_Integer) $self->FixGaps2dMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixGaps2dMode(Standard_Integer value ) {
				$self->FixGaps2dMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixReversed2dMode() {
				return (Standard_Integer) $self->FixReversed2dMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixReversed2dMode(Standard_Integer value ) {
				$self->FixReversed2dMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixRemovePCurveMode() {
				return (Standard_Integer) $self->FixRemovePCurveMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixRemovePCurveMode(Standard_Integer value ) {
				$self->FixRemovePCurveMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixAddPCurveMode() {
				return (Standard_Integer) $self->FixAddPCurveMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixAddPCurveMode(Standard_Integer value ) {
				$self->FixAddPCurveMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixRemoveCurve3dMode() {
				return (Standard_Integer) $self->FixRemoveCurve3dMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixRemoveCurve3dMode(Standard_Integer value ) {
				$self->FixRemoveCurve3dMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixAddCurve3dMode() {
				return (Standard_Integer) $self->FixAddCurve3dMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixAddCurve3dMode(Standard_Integer value ) {
				$self->FixAddCurve3dMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSeamMode() {
				return (Standard_Integer) $self->FixSeamMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSeamMode(Standard_Integer value ) {
				$self->FixSeamMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixShiftedMode() {
				return (Standard_Integer) $self->FixShiftedMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixShiftedMode(Standard_Integer value ) {
				$self->FixShiftedMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSameParameterMode() {
				return (Standard_Integer) $self->FixSameParameterMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSameParameterMode(Standard_Integer value ) {
				$self->FixSameParameterMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixVertexToleranceMode() {
				return (Standard_Integer) $self->FixVertexToleranceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixVertexToleranceMode(Standard_Integer value ) {
				$self->FixVertexToleranceMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixNotchedEdgesMode() {
				return (Standard_Integer) $self->FixNotchedEdgesMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixNotchedEdgesMode(Standard_Integer value ) {
				$self->FixNotchedEdgesMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSelfIntersectingEdgeMode() {
				return (Standard_Integer) $self->FixSelfIntersectingEdgeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSelfIntersectingEdgeMode(Standard_Integer value ) {
				$self->FixSelfIntersectingEdgeMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixIntersectingEdgesMode() {
				return (Standard_Integer) $self->FixIntersectingEdgesMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixIntersectingEdgesMode(Standard_Integer value ) {
				$self->FixIntersectingEdgesMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixNonAdjacentIntersectingEdgesMode() {
				return (Standard_Integer) $self->FixNonAdjacentIntersectingEdgesMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixNonAdjacentIntersectingEdgesMode(Standard_Integer value ) {
				$self->FixNonAdjacentIntersectingEdgesMode()=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixReorder();
		%feature("autodoc", "1");
		Standard_Integer FixSmall(const Standard_Boolean lockvtx, const Standard_Real precsmall=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixConnected(const Standard_Real prec=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean FixEdgeCurves();
		%feature("autodoc", "1");
		Standard_Boolean FixDegenerated();
		%feature("autodoc", "1");
		Standard_Boolean FixSelfIntersection();
		%feature("autodoc", "1");
		Standard_Boolean FixLacking(const Standard_Boolean force=0);
		%feature("autodoc", "1");
		Standard_Boolean FixClosed(const Standard_Real prec=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean FixGaps3d();
		%feature("autodoc", "1");
		Standard_Boolean FixGaps2d();
		%feature("autodoc", "1");
		Standard_Boolean FixReorder(const ShapeAnalysis_WireOrder &wi);
		%feature("autodoc", "1");
		Standard_Boolean FixSmall(const Standard_Integer num, const Standard_Boolean lockvtx, const Standard_Real precsmall);
		%feature("autodoc", "1");
		Standard_Boolean FixConnected(const Standard_Integer num, const Standard_Real prec);
		%feature("autodoc", "1");
		Standard_Boolean FixSeam(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean FixShifted();
		%feature("autodoc", "1");
		Standard_Boolean FixDegenerated(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean FixLacking(const Standard_Integer num, const Standard_Boolean force=0);
		%feature("autodoc", "1");
		Standard_Boolean FixNotchedEdges();
		%feature("autodoc", "1");
		Standard_Boolean FixGap3d(const Standard_Integer num, const Standard_Boolean convert=0);
		%feature("autodoc", "1");
		Standard_Boolean FixGap2d(const Standard_Integer num, const Standard_Boolean convert=0);
		%feature("autodoc", "1");
		Standard_Boolean StatusReorder(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSmall(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusConnected(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusEdgeCurves(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusDegenerated(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSelfIntersection(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusLacking(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusClosed(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps3d(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps2d(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusNotches(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusRemovedSegment() const;
		%feature("autodoc", "1");
		Standard_Boolean LastFixStatus(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge FixEdgeTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Wire {
	Handle_ShapeFix_Wire GetHandle() {
	return *(Handle_ShapeFix_Wire*) &$self;
	}
};
%extend ShapeFix_Wire {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Wire::~ShapeFix_Wire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Wire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Solid;
class ShapeFix_Solid : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Solid();
		%feature("autodoc", "1");
		ShapeFix_Solid(const TopoDS_Solid &solid);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Solid &solid);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		TopoDS_Solid SolidFromShell(const TopoDS_Shell &shell);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		TopoDS_Shape Solid() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell FixShellTool() const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixShellMode() {
				return (Standard_Integer) $self->FixShellMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixShellMode(Standard_Integer value ) {
				$self->FixShellMode()=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & CreateOpenSolidMode();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Solid {
	Handle_ShapeFix_Solid GetHandle() {
	return *(Handle_ShapeFix_Solid*) &$self;
	}
};
%extend ShapeFix_Solid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Solid::~ShapeFix_Solid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Solid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_SequenceNodeOfSequenceOfWireSegment;
class ShapeFix_SequenceNodeOfSequenceOfWireSegment : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ShapeFix_SequenceNodeOfSequenceOfWireSegment(const ShapeFix_WireSegment &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment GetHandle() {
	return *(Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment*) &$self;
	}
};
%extend ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_SequenceNodeOfSequenceOfWireSegment::~ShapeFix_SequenceNodeOfSequenceOfWireSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_SequenceOfWireSegment;
class ShapeFix_SequenceOfWireSegment : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ShapeFix_SequenceOfWireSegment();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ShapeFix_SequenceOfWireSegment & Assign(const ShapeFix_SequenceOfWireSegment &Other);
		%feature("autodoc", "1");
		const ShapeFix_SequenceOfWireSegment & operator=(const ShapeFix_SequenceOfWireSegment &Other);
		%feature("autodoc", "1");
		void Append(const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void Append(ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void Prepend(const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void Prepend(ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const ShapeFix_WireSegment &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & First() const;
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const ShapeFix_WireSegment &I);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ShapeFix_SequenceOfWireSegment::~ShapeFix_SequenceOfWireSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_SequenceOfWireSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Edge;
class ShapeFix_Edge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_Edge();
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface Projector();
		%feature("autodoc", "1");
		Standard_Boolean FixRemovePCurve(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixRemovePCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		Standard_Boolean FixRemoveCurve3d(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Boolean isSeam, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Boolean isSeam, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Boolean isSeam, const Handle_ShapeAnalysis_Surface &surfana, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Boolean isSeam, const Handle_ShapeAnalysis_Surface &surfana, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddCurve3d(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexTolerance(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexTolerance(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixReversed2d(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixReversed2d(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		Standard_Boolean FixSameParameter(const TopoDS_Edge &edge, const Standard_Real tolerance=0.0);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Edge {
	Handle_ShapeFix_Edge GetHandle() {
	return *(Handle_ShapeFix_Edge*) &$self;
	}
};
%extend ShapeFix_Edge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Edge::~ShapeFix_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_DataMapOfShapeBox2d;
class ShapeFix_DataMapOfShapeBox2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeFix_DataMapOfShapeBox2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeFix_DataMapOfShapeBox2d & Assign(const ShapeFix_DataMapOfShapeBox2d &Other);
		%feature("autodoc", "1");
		ShapeFix_DataMapOfShapeBox2d & operator=(const ShapeFix_DataMapOfShapeBox2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Bnd_Box2d &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Bnd_Box2d & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Bnd_Box2d & operator()(const TopoDS_Shape &K);

};
%feature("shadow") ShapeFix_DataMapOfShapeBox2d::~ShapeFix_DataMapOfShapeBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_DataMapOfShapeBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_DataMapNodeOfDataMapOfShapeBox2d;
class ShapeFix_DataMapNodeOfDataMapOfShapeBox2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const TopoDS_Shape &K, const Bnd_Box2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Bnd_Box2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d GetHandle() {
	return *(Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d*) &$self;
	}
};
%extend ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_DataMapNodeOfDataMapOfShapeBox2d::~ShapeFix_DataMapNodeOfDataMapOfShapeBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Wireframe;
class ShapeFix_Wireframe : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Wireframe();
		%feature("autodoc", "1");
		ShapeFix_Wireframe(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		virtual		void ClearStatuses();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean FixWireGaps();
		%feature("autodoc", "1");
		Standard_Boolean FixSmallEdges();
		%feature("autodoc", "1");
		Standard_Boolean CheckSmallEdges(TopTools_MapOfShape & theSmallEdges, TopTools_DataMapOfShapeListOfShape & theEdgeToFaces, TopTools_DataMapOfShapeListOfShape & theFaceWithSmall, TopTools_MapOfShape & theMultyEdges);
		%feature("autodoc", "1");
		Standard_Boolean MergeSmallEdges(TopTools_MapOfShape & theSmallEdges, TopTools_DataMapOfShapeListOfShape & theEdgeToFaces, TopTools_DataMapOfShapeListOfShape & theFaceWithSmall, TopTools_MapOfShape & theMultyEdges, const Standard_Boolean theModeDrop=0, const Standard_Real theLimitAngle=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean StatusWireGaps(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSmallEdges(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Boolean & ModeDropSmallEdges();
		%feature("autodoc", "1");
		void SetLimitAngle(const Standard_Real theLimitAngle);
		%feature("autodoc", "1");
		Standard_Real LimitAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Wireframe {
	Handle_ShapeFix_Wireframe GetHandle() {
	return *(Handle_ShapeFix_Wireframe*) &$self;
	}
};
%extend ShapeFix_Wireframe {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Wireframe::~ShapeFix_Wireframe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Wireframe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix;
class ShapeFix {
	public:
		%feature("autodoc", "1");
		ShapeFix();
		%feature("autodoc", "1");
		Standard_Boolean SameParameter(const TopoDS_Shape &shape, const Standard_Boolean enforce, const Standard_Real preci=0.0);
		%feature("autodoc", "1");
		void EncodeRegularity(const TopoDS_Shape &shape, const Standard_Real tolang=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		TopoDS_Shape RemoveSmallEdges(TopoDS_Shape & shape, const Standard_Real Tolerance, Handle_ShapeBuild_ReShape & context);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexPosition(TopoDS_Shape & theshape, const Standard_Real theTolerance, const Handle_ShapeBuild_ReShape &thecontext);

};
%feature("shadow") ShapeFix::~ShapeFix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_IntersectionTool;
class ShapeFix_IntersectionTool {
	public:
		%feature("autodoc", "1");
		ShapeFix_IntersectionTool(const Handle_ShapeBuild_ReShape &context, const Standard_Real preci, const Standard_Real maxtol=1.0e+0);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real preci) const;
		%feature("autodoc", "1");
		Standard_Boolean CutEdge(const TopoDS_Edge &edge, const Standard_Real pend, const Standard_Real cut, const TopoDS_Face &face, Standard_Boolean & iscutline) const;
		%feature("autodoc","FixSelfIntersectWire(const face) -> [Standard_Integer, Standard_IntegerStandard_Integer]");
		Standard_Boolean FixSelfIntersectWire(Handle_ShapeExtend_WireData & sewd, const TopoDS_Face &face, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean FixIntersectingWires(TopoDS_Face & face) const;

};
%feature("shadow") ShapeFix_IntersectionTool::~ShapeFix_IntersectionTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_IntersectionTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_EdgeConnect;
class ShapeFix_EdgeConnect {
	public:
		%feature("autodoc", "1");
		ShapeFix_EdgeConnect();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &aFirst, const TopoDS_Edge &aSecond);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") ShapeFix_EdgeConnect::~ShapeFix_EdgeConnect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_EdgeConnect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_FixSmallFace;
class ShapeFix_FixSmallFace : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_FixSmallFace();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		TopoDS_Shape FixSpotFace();
		%feature("autodoc", "1");
		Standard_Boolean ReplaceVerticesInCaseOfSpot(TopoDS_Face & F, const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveFacesInCaseOfSpot(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		TopoDS_Shape FixStripFace(const Standard_Boolean wasdone=0);
		%feature("autodoc", "1");
		Standard_Boolean ReplaceInCaseOfStrip(TopoDS_Face & F, TopoDS_Edge & E1, TopoDS_Edge & E2, const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveFacesInCaseOfStrip(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		TopoDS_Edge ComputeSharedEdgeForStripFace(const TopoDS_Face &F, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const TopoDS_Face &F1, const Standard_Real tol) const;
		%feature("autodoc", "1");
		TopoDS_Shape FixSplitFace(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape SplitFaces();
		%feature("autodoc", "1");
		Standard_Boolean SplitOneFace(TopoDS_Face & F, TopoDS_Compound & theSplittedFaces);
		%feature("autodoc", "1");
		TopoDS_Shape RemoveSmallFaces();
		%feature("autodoc", "1");
		TopoDS_Face FixFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopoDS_Shape FixShape();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Boolean FixPinFace(TopoDS_Face & F);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_FixSmallFace {
	Handle_ShapeFix_FixSmallFace GetHandle() {
	return *(Handle_ShapeFix_FixSmallFace*) &$self;
	}
};
%extend ShapeFix_FixSmallFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_FixSmallFace::~ShapeFix_FixSmallFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_FixSmallFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_ShapeTolerance;
class ShapeFix_ShapeTolerance {
	public:
		%feature("autodoc", "1");
		ShapeFix_ShapeTolerance();
		%feature("autodoc", "1");
		Standard_Boolean LimitTolerance(const TopoDS_Shape &shape, const Standard_Real tmin, const Standard_Real tmax=0.0, const TopAbs_ShapeEnum styp=TopAbs_SHAPE) const;
		%feature("autodoc", "1");
		void SetTolerance(const TopoDS_Shape &shape, const Standard_Real preci, const TopAbs_ShapeEnum styp=TopAbs_SHAPE) const;

};
%feature("shadow") ShapeFix_ShapeTolerance::~ShapeFix_ShapeTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_ShapeTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_SplitTool;
class ShapeFix_SplitTool {
	public:
		%feature("autodoc", "1");
		ShapeFix_SplitTool();
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real tol3d, const Standard_Real tol2d) const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param1, const Standard_Real param2, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real tol3d, const Standard_Real tol2d) const;
		%feature("autodoc", "1");
		Standard_Boolean CutEdge(const TopoDS_Edge &edge, const Standard_Real pend, const Standard_Real cut, const TopoDS_Face &face, Standard_Boolean & iscutline) const;
		%feature("autodoc","SplitEdge(const edge, Standard_Real fp, const V1, Standard_Real lp, const V2, const face, const context, Standard_Real tol3d, Standard_Real tol2d) -> Standard_Integer");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real fp, const TopoDS_Vertex &V1, const Standard_Real lp, const TopoDS_Vertex &V2, const TopoDS_Face &face, TopTools_SequenceOfShape & SeqE, Standard_Integer &OutValue, const Handle_ShapeBuild_ReShape &context, const Standard_Real tol3d, const Standard_Real tol2d) const;

};
%feature("shadow") ShapeFix_SplitTool::~ShapeFix_SplitTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_SplitTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_WireVertex;
class ShapeFix_WireVertex {
	public:
		%feature("autodoc", "1");
		ShapeFix_WireVertex();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const Standard_Real preci);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &sbwd, const Standard_Real preci);
		%feature("autodoc", "1");
		void Init(const ShapeAnalysis_WireVertex &sawv);
		%feature("autodoc", "1");
		const ShapeAnalysis_WireVertex & Analyzer() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		Standard_Integer FixSame();
		%feature("autodoc", "1");
		Standard_Integer Fix();

};
%feature("shadow") ShapeFix_WireVertex::~ShapeFix_WireVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_WireVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Shell;
class ShapeFix_Shell : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Shell();
		%feature("autodoc", "1");
		ShapeFix_Shell(const TopoDS_Shell &shape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shell &shell);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixFaceOrientation(const TopoDS_Shell &shell, const Standard_Boolean isAccountMultiConex=1, const Standard_Boolean NonManifold=0);
		%feature("autodoc", "1");
		TopoDS_Shell Shell();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Integer NbShells() const;
		%feature("autodoc", "1");
		TopoDS_Compound ErrorFaces() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Face FixFaceTool();
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixFaceMode() {
				return (Standard_Integer) $self->FixFaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixFaceMode(Standard_Integer value ) {
				$self->FixFaceMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixOrientationMode() {
				return (Standard_Integer) $self->FixOrientationMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixOrientationMode(Standard_Integer value ) {
				$self->FixOrientationMode()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Shell {
	Handle_ShapeFix_Shell GetHandle() {
	return *(Handle_ShapeFix_Shell*) &$self;
	}
};
%extend ShapeFix_Shell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Shell::~ShapeFix_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_Shape;
class ShapeFix_Shape : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Shape();
		%feature("autodoc", "1");
		ShapeFix_Shape(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid FixSolidTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell FixShellTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Face FixFaceTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire FixWireTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge FixEdgeTool() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSolidMode() {
				return (Standard_Integer) $self->FixSolidMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSolidMode(Standard_Integer value ) {
				$self->FixSolidMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixFreeShellMode() {
				return (Standard_Integer) $self->FixFreeShellMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixFreeShellMode(Standard_Integer value ) {
				$self->FixFreeShellMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixFreeFaceMode() {
				return (Standard_Integer) $self->FixFreeFaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixFreeFaceMode(Standard_Integer value ) {
				$self->FixFreeFaceMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixFreeWireMode() {
				return (Standard_Integer) $self->FixFreeWireMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixFreeWireMode(Standard_Integer value ) {
				$self->FixFreeWireMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixSameParameterMode() {
				return (Standard_Integer) $self->FixSameParameterMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixSameParameterMode(Standard_Integer value ) {
				$self->FixSameParameterMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFixVertexPositionMode() {
				return (Standard_Integer) $self->FixVertexPositionMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFixVertexPositionMode(Standard_Integer value ) {
				$self->FixVertexPositionMode()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_Shape {
	Handle_ShapeFix_Shape GetHandle() {
	return *(Handle_ShapeFix_Shape*) &$self;
	}
};
%extend ShapeFix_Shape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_Shape::~ShapeFix_Shape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_Shape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_FaceConnect;
class ShapeFix_FaceConnect {
	public:
		%feature("autodoc", "1");
		ShapeFix_FaceConnect();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Face &aFirst, const TopoDS_Face &aSecond);
		%feature("autodoc", "1");
		TopoDS_Shell Build(const TopoDS_Shell &shell, const Standard_Real sewtoler, const Standard_Real fixtoler);
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") ShapeFix_FaceConnect::~ShapeFix_FaceConnect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_FaceConnect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeFix_SplitCommonVertex;
class ShapeFix_SplitCommonVertex : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_SplitCommonVertex();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeFix_SplitCommonVertex {
	Handle_ShapeFix_SplitCommonVertex GetHandle() {
	return *(Handle_ShapeFix_SplitCommonVertex*) &$self;
	}
};
%extend ShapeFix_SplitCommonVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeFix_SplitCommonVertex::~ShapeFix_SplitCommonVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeFix_SplitCommonVertex {
	void _kill_pointed() {
		delete $self;
	}
};
