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

%module TopoDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopoDS_renames.i


%include TopoDS_required_python_modules.i


%include TopoDS_dependencies.i


%include TopoDS_headers.i




%nodefaultctor Handle_TopoDS_TShape;
class Handle_TopoDS_TShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TShape();
		%feature("autodoc", "1");
		Handle_TopoDS_TShape(const Handle_TopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShape(const TopoDS_TShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TShape & operator=(const Handle_TopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShape & operator=(const TopoDS_TShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TShape {
	TopoDS_TShape* GetObject() {
	return (TopoDS_TShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TShape::~Handle_TopoDS_TShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TVertex;
class Handle_TopoDS_TVertex : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex(const Handle_TopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex(const TopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex & operator=(const Handle_TopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex & operator=(const TopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TVertex {
	TopoDS_TVertex* GetObject() {
	return (TopoDS_TVertex*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TVertex::~Handle_TopoDS_TVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_ListNodeOfListOfShape;
class Handle_TopoDS_ListNodeOfListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape();
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape(const Handle_TopoDS_ListNodeOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape(const TopoDS_ListNodeOfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape & operator=(const Handle_TopoDS_ListNodeOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape & operator=(const TopoDS_ListNodeOfListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_ListNodeOfListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_ListNodeOfListOfShape {
	TopoDS_ListNodeOfListOfShape* GetObject() {
	return (TopoDS_ListNodeOfListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_ListNodeOfListOfShape::~Handle_TopoDS_ListNodeOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_ListNodeOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TFace;
class Handle_TopoDS_TFace : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TFace();
		%feature("autodoc", "1");
		Handle_TopoDS_TFace(const Handle_TopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TFace(const TopoDS_TFace *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TFace & operator=(const Handle_TopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TFace & operator=(const TopoDS_TFace *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TFace {
	TopoDS_TFace* GetObject() {
	return (TopoDS_TFace*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TFace::~Handle_TopoDS_TFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_FrozenShape;
class Handle_TopoDS_FrozenShape : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape();
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape(const Handle_TopoDS_FrozenShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape(const TopoDS_FrozenShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape & operator=(const Handle_TopoDS_FrozenShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape & operator=(const TopoDS_FrozenShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_FrozenShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_FrozenShape {
	TopoDS_FrozenShape* GetObject() {
	return (TopoDS_FrozenShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_FrozenShape::~Handle_TopoDS_FrozenShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_FrozenShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TCompound;
class Handle_TopoDS_TCompound : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound(const Handle_TopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound(const TopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound & operator=(const Handle_TopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound & operator=(const TopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TCompound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TCompound {
	TopoDS_TCompound* GetObject() {
	return (TopoDS_TCompound*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TCompound::~Handle_TopoDS_TCompound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TCompound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TWire;
class Handle_TopoDS_TWire : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TWire();
		%feature("autodoc", "1");
		Handle_TopoDS_TWire(const Handle_TopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TWire(const TopoDS_TWire *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TWire & operator=(const Handle_TopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TWire & operator=(const TopoDS_TWire *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TWire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TWire {
	TopoDS_TWire* GetObject() {
	return (TopoDS_TWire*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TWire::~Handle_TopoDS_TWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_UnCompatibleShapes;
class Handle_TopoDS_UnCompatibleShapes : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes();
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes(const Handle_TopoDS_UnCompatibleShapes &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes(const TopoDS_UnCompatibleShapes *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes & operator=(const Handle_TopoDS_UnCompatibleShapes &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes & operator=(const TopoDS_UnCompatibleShapes *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_UnCompatibleShapes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_UnCompatibleShapes {
	TopoDS_UnCompatibleShapes* GetObject() {
	return (TopoDS_UnCompatibleShapes*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_UnCompatibleShapes::~Handle_TopoDS_UnCompatibleShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_UnCompatibleShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_HShape;
class Handle_TopoDS_HShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_HShape();
		%feature("autodoc", "1");
		Handle_TopoDS_HShape(const Handle_TopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_HShape(const TopoDS_HShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_HShape & operator=(const Handle_TopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_HShape & operator=(const TopoDS_HShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_HShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_HShape {
	TopoDS_HShape* GetObject() {
	return (TopoDS_HShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_HShape::~Handle_TopoDS_HShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_HShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TShell;
class Handle_TopoDS_TShell : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TShell();
		%feature("autodoc", "1");
		Handle_TopoDS_TShell(const Handle_TopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShell(const TopoDS_TShell *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TShell & operator=(const Handle_TopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShell & operator=(const TopoDS_TShell *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TShell {
	TopoDS_TShell* GetObject() {
	return (TopoDS_TShell*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TShell::~Handle_TopoDS_TShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TEdge;
class Handle_TopoDS_TEdge : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge(const Handle_TopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge(const TopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge & operator=(const Handle_TopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge & operator=(const TopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TEdge {
	TopoDS_TEdge* GetObject() {
	return (TopoDS_TEdge*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TEdge::~Handle_TopoDS_TEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TSolid;
class Handle_TopoDS_TSolid : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid(const Handle_TopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid(const TopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid & operator=(const Handle_TopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid & operator=(const TopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TSolid {
	TopoDS_TSolid* GetObject() {
	return (TopoDS_TSolid*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TSolid::~Handle_TopoDS_TSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopoDS_TCompSolid;
class Handle_TopoDS_TCompSolid : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid(const Handle_TopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid(const TopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid & operator=(const Handle_TopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid & operator=(const TopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_TopoDS_TCompSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TCompSolid {
	TopoDS_TCompSolid* GetObject() {
	return (TopoDS_TCompSolid*)$self->Access();
	}
};
%feature("shadow") Handle_TopoDS_TCompSolid::~Handle_TopoDS_TCompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopoDS_TCompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Shape;
class TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Shape(const TopoDS_Shape arg0);
		%feature("autodoc", "1");
		TopoDS_Shape();
		%feature("autodoc", "1");
		Standard_Boolean IsNull() const;
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		void Location(const TopLoc_Location &Loc);
		%feature("autodoc", "1");
		TopoDS_Shape Located(const TopLoc_Location &Loc) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		TopoDS_Shape Oriented(const TopAbs_Orientation Or) const;
		%feature("autodoc", "1");
		const Handle_TopoDS_TShape & TShape() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		Standard_Boolean Free() const;
		%feature("autodoc", "1");
		void Free(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Modified() const;
		%feature("autodoc", "1");
		void Modified(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Checked() const;
		%feature("autodoc", "1");
		void Checked(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Orientable() const;
		%feature("autodoc", "1");
		void Orientable(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Infinite() const;
		%feature("autodoc", "1");
		void Infinite(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Convex() const;
		%feature("autodoc", "1");
		void Convex(const Standard_Boolean B);
		%feature("autodoc", "1");
		void Move(const TopLoc_Location &position);
		%feature("autodoc", "1");
		TopoDS_Shape Moved(const TopLoc_Location &position) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		TopoDS_Shape Reversed() const;
		%feature("autodoc", "1");
		void Complement();
		%feature("autodoc", "1");
		TopoDS_Shape Complemented() const;
		%feature("autodoc", "1");
		void Compose(const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		TopoDS_Shape Composed(const TopAbs_Orientation Orient) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPartner(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSame(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNotEqual(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const TopoDS_Shape other) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void EmptyCopy();
		%feature("autodoc", "1");
		TopoDS_Shape EmptyCopied() const;
		%feature("autodoc", "1");
		void TShape(const Handle_TopoDS_TShape &TS);

};
%extend TopoDS_Shape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_Shape::~TopoDS_Shape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Shape {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TopoDS_Shape {
%pythoncode {
	def __getstate__(self):
		from BRepTools import BRepTools_ShapeSet
		ss = BRepTools_ShapeSet()
		ss.Add(self)
		str_shape = ss.WriteToString()
		return str_shape
	def __setstate__(self, state):
		from BRepTools import BRepTools_ShapeSet
		ss = BRepTools_ShapeSet()
		ss.ReadFromString(state)
		the_shape = ss.Shape(ss.NbShapes())
		self.this = the_shape.this
	}
};


%nodefaultctor TopoDS_Compound;
class TopoDS_Compound : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Compound(const TopoDS_Compound arg0);
		%feature("autodoc", "1");
		TopoDS_Compound();

};
%feature("shadow") TopoDS_Compound::~TopoDS_Compound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Compound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_ListNodeOfListOfShape;
class TopoDS_ListNodeOfListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopoDS_ListNodeOfListOfShape(const TopoDS_ListNodeOfListOfShape arg0);
		%feature("autodoc", "1");
		TopoDS_ListNodeOfListOfShape(const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_ListNodeOfListOfShape {
	Handle_TopoDS_ListNodeOfListOfShape GetHandle() {
	return *(Handle_TopoDS_ListNodeOfListOfShape*) &$self;
	}
};
%extend TopoDS_ListNodeOfListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_ListNodeOfListOfShape::~TopoDS_ListNodeOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_ListNodeOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Vertex;
class TopoDS_Vertex : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Vertex(const TopoDS_Vertex arg0);
		%feature("autodoc", "1");
		TopoDS_Vertex();

};
%feature("shadow") TopoDS_Vertex::~TopoDS_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TShape;
class TopoDS_TShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Free() const;
		%feature("autodoc", "1");
		void Free(const Standard_Boolean F);
		%feature("autodoc", "1");
		Standard_Boolean Modified() const;
		%feature("autodoc", "1");
		void Modified(const Standard_Boolean M);
		%feature("autodoc", "1");
		Standard_Boolean Checked() const;
		%feature("autodoc", "1");
		void Checked(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Orientable() const;
		%feature("autodoc", "1");
		void Orientable(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Infinite() const;
		%feature("autodoc", "1");
		void Infinite(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Convex() const;
		%feature("autodoc", "1");
		void Convex(const Standard_Boolean C);
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TShape {
	Handle_TopoDS_TShape GetHandle() {
	return *(Handle_TopoDS_TShape*) &$self;
	}
};
%extend TopoDS_TShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TShape::~TopoDS_TShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Iterator;
class TopoDS_Iterator {
	public:
		%feature("autodoc", "1");
		TopoDS_Iterator(const TopoDS_Iterator arg0);
		%feature("autodoc", "1");
		TopoDS_Iterator();
		%feature("autodoc", "1");
		TopoDS_Iterator(const TopoDS_Shape S, const Standard_Boolean cumOri=1, const Standard_Boolean cumLoc=1);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Shape S, const Standard_Boolean cumOri=1, const Standard_Boolean cumLoc=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") TopoDS_Iterator::~TopoDS_Iterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Iterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Builder;
class TopoDS_Builder {
	public:
		%feature("autodoc", "1");
		TopoDS_Builder(const TopoDS_Builder arg0);
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Wire & W) const;
		%feature("autodoc", "1");
		void MakeCompound(TopoDS_Compound & C) const;
		%feature("autodoc", "1");
		void Add(TopoDS_Shape & S, const TopoDS_Shape C) const;
		%feature("autodoc", "1");
		void Remove(TopoDS_Shape & S, const TopoDS_Shape C) const;

};
%feature("shadow") TopoDS_Builder::~TopoDS_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Builder {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TopoDS_Builder {
	TopoDS_Builder () {}
};


%nodefaultctor TopoDS_CompSolid;
class TopoDS_CompSolid : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_CompSolid(const TopoDS_CompSolid arg0);
		%feature("autodoc", "1");
		TopoDS_CompSolid();

};
%feature("shadow") TopoDS_CompSolid::~TopoDS_CompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_CompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_ListOfShape;
class TopoDS_ListOfShape {
	public:
		%feature("autodoc", "1");
		TopoDS_ListOfShape();
		%feature("autodoc", "1");
		void Assign(const TopoDS_ListOfShape Other);
		%feature("autodoc", "1");
		void operator=(const TopoDS_ListOfShape Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape I, TopoDS_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TopoDS_ListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape I, TopoDS_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TopoDS_ListOfShape & Other);
		%feature("autodoc", "1");
		TopoDS_Shape  First() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopoDS_Shape I, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TopoDS_ListOfShape & Other, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopoDS_Shape I, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TopoDS_ListOfShape & Other, TopoDS_ListIteratorOfListOfShape & It);

};
%feature("shadow") TopoDS_ListOfShape::~TopoDS_ListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_ListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS;
class TopoDS {
	public:
		%feature("autodoc", "1");
		TopoDS(const TopoDS arg0);
		%feature("autodoc", "1");
		TopoDS();
		%feature("autodoc", "1");
		static		const TopoDS_Vertex  Vertex(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Vertex  Vertex(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Edge  Edge(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Edge  Edge(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Wire  Wire(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Wire  Wire(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Face  Face(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Face  Face(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Shell  Shell(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Shell  Shell(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Solid  Solid(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Solid  Solid(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_CompSolid  CompSolid(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_CompSolid  CompSolid(TopoDS_Shape & S);
		%feature("autodoc", "1");
		static		const TopoDS_Compound  Compound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		TopoDS_Compound  Compound(TopoDS_Shape & S);

};
%feature("shadow") TopoDS::~TopoDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TWire;
class TopoDS_TWire : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TWire();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TWire {
	Handle_TopoDS_TWire GetHandle() {
	return *(Handle_TopoDS_TWire*) &$self;
	}
};
%extend TopoDS_TWire {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TWire::~TopoDS_TWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Edge;
class TopoDS_Edge : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Edge(const TopoDS_Edge arg0);
		%feature("autodoc", "1");
		TopoDS_Edge();

};
%feature("shadow") TopoDS_Edge::~TopoDS_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Shell;
class TopoDS_Shell : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Shell(const TopoDS_Shell arg0);
		%feature("autodoc", "1");
		TopoDS_Shell();

};
%feature("shadow") TopoDS_Shell::~TopoDS_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_ListIteratorOfListOfShape;
class TopoDS_ListIteratorOfListOfShape {
	public:
		%feature("autodoc", "1");
		TopoDS_ListIteratorOfListOfShape(const TopoDS_ListIteratorOfListOfShape arg0);
		%feature("autodoc", "1");
		TopoDS_ListIteratorOfListOfShape();
		%feature("autodoc", "1");
		TopoDS_ListIteratorOfListOfShape(const TopoDS_ListOfShape L);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_ListOfShape L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;

};
%feature("shadow") TopoDS_ListIteratorOfListOfShape::~TopoDS_ListIteratorOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_ListIteratorOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_HShape;
class TopoDS_HShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopoDS_HShape(const TopoDS_HShape arg0);
		%feature("autodoc", "1");
		TopoDS_HShape();
		%feature("autodoc", "1");
		TopoDS_HShape(const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeShape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_HShape {
	Handle_TopoDS_HShape GetHandle() {
	return *(Handle_TopoDS_HShape*) &$self;
	}
};
%extend TopoDS_HShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_HShape::~TopoDS_HShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_HShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Solid;
class TopoDS_Solid : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Solid(const TopoDS_Solid arg0);
		%feature("autodoc", "1");
		TopoDS_Solid();

};
%feature("shadow") TopoDS_Solid::~TopoDS_Solid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Solid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TCompound;
class TopoDS_TCompound : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TCompound();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TCompound {
	Handle_TopoDS_TCompound GetHandle() {
	return *(Handle_TopoDS_TCompound*) &$self;
	}
};
%extend TopoDS_TCompound {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TCompound::~TopoDS_TCompound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TCompound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TEdge;
class TopoDS_TEdge : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TEdge {
	Handle_TopoDS_TEdge GetHandle() {
	return *(Handle_TopoDS_TEdge*) &$self;
	}
};
%extend TopoDS_TEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TEdge::~TopoDS_TEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TShell;
class TopoDS_TShell : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TShell();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TShell {
	Handle_TopoDS_TShell GetHandle() {
	return *(Handle_TopoDS_TShell*) &$self;
	}
};
%extend TopoDS_TShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TShell::~TopoDS_TShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Builder3D;
class TopoDS_Builder3D : public TopoDS_Builder {
	public:
		%feature("autodoc", "1");
		TopoDS_Builder3D(const TopoDS_Builder3D arg0);
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shell & S) const;
		%feature("autodoc", "1");
		void MakeSolid(TopoDS_Solid & S) const;
		%feature("autodoc", "1");
		void MakeCompSolid(TopoDS_CompSolid & C) const;

};
%feature("shadow") TopoDS_Builder3D::~TopoDS_Builder3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Builder3D {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TopoDS_Builder3D {
	TopoDS_Builder3D () {}
};


%nodefaultctor TopoDS_TVertex;
class TopoDS_TVertex : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TVertex {
	Handle_TopoDS_TVertex GetHandle() {
	return *(Handle_TopoDS_TVertex*) &$self;
	}
};
%extend TopoDS_TVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TVertex::~TopoDS_TVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TCompSolid;
class TopoDS_TCompSolid : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TCompSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TCompSolid {
	Handle_TopoDS_TCompSolid GetHandle() {
	return *(Handle_TopoDS_TCompSolid*) &$self;
	}
};
%extend TopoDS_TCompSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TCompSolid::~TopoDS_TCompSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TCompSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Wire;
class TopoDS_Wire : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Wire(const TopoDS_Wire arg0);
		%feature("autodoc", "1");
		TopoDS_Wire();

};
%feature("shadow") TopoDS_Wire::~TopoDS_Wire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Wire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TFace;
class TopoDS_TFace : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TFace();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TFace {
	Handle_TopoDS_TFace GetHandle() {
	return *(Handle_TopoDS_TFace*) &$self;
	}
};
%extend TopoDS_TFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TFace::~TopoDS_TFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_Face;
class TopoDS_Face : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		TopoDS_Face(const TopoDS_Face arg0);
		%feature("autodoc", "1");
		TopoDS_Face();

};
%feature("shadow") TopoDS_Face::~TopoDS_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopoDS_TSolid;
class TopoDS_TSolid : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TSolid {
	Handle_TopoDS_TSolid GetHandle() {
	return *(Handle_TopoDS_TSolid*) &$self;
	}
};
%extend TopoDS_TSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopoDS_TSolid::~TopoDS_TSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopoDS_TSolid {
	void _kill_pointed() {
		delete $self;
	}
};
