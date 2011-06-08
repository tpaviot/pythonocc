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

%module TNaming
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TNaming_renames.i


%include TNaming_required_python_modules.i


%include TNaming_dependencies.i


%include TNaming_headers.i

typedef TNaming_DataMapOfShapePtrRefShape * TNaming_PtrDataMapOfShapePtrRefShape;
typedef TNaming_NamedShape * TNaming_PtrAttribute;
typedef NCollection_DataMap<TopoDS_Shape, NCollection_Map<TopoDS_Shape> > TNaming_DataMapOfShapeMapOfShape;
typedef TNaming_RefShape * TNaming_PtrRefShape;
typedef TNaming_Node * TNaming_PtrNode;
typedef NCollection_Map<TopoDS_Shape> TNaming_MapOfShape;

enum TNaming_Evolution {
	TNaming_PRIMITIVE,
	TNaming_GENERATED,
	TNaming_MODIFY,
	TNaming_DELETE,
	TNaming_REPLACE,
	TNaming_SELECTED,
	};

enum TNaming_NameType {
	TNaming_UNKNOWN,
	TNaming_IDENTITY,
	TNaming_MODIFUNTIL,
	TNaming_GENERATION,
	TNaming_INTERSECTION,
	TNaming_UNION,
	TNaming_SUBSTRACTION,
	TNaming_CONSTSHAPE,
	TNaming_FILTERBYNEIGHBOURGS,
	TNaming_ORIENTATION,
	TNaming_WIREIN,
	};



%nodefaultctor Handle_TNaming_DeltaOnModification;
class Handle_TNaming_DeltaOnModification : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnModification();
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnModification(const Handle_TNaming_DeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnModification(const TNaming_DeltaOnModification *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnModification & operator=(const Handle_TNaming_DeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnModification & operator=(const TNaming_DeltaOnModification *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_DeltaOnModification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_DeltaOnModification {
	TNaming_DeltaOnModification* GetObject() {
	return (TNaming_DeltaOnModification*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_DeltaOnModification::~Handle_TNaming_DeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_DeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_Naming;
class Handle_TNaming_Naming : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_Naming();
		%feature("autodoc", "1");
		Handle_TNaming_Naming(const Handle_TNaming_Naming &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_Naming(const TNaming_Naming *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_Naming & operator=(const Handle_TNaming_Naming &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_Naming & operator=(const TNaming_Naming *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_Naming DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_Naming {
	TNaming_Naming* GetObject() {
	return (TNaming_Naming*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_Naming::~Handle_TNaming_Naming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_Naming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape;
class Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape(const Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape(const TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape & operator=(const Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape & operator=(const TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape {
	TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape* GetObject() {
	return (TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape::~Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_UsedShapes;
class Handle_TNaming_UsedShapes : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_UsedShapes();
		%feature("autodoc", "1");
		Handle_TNaming_UsedShapes(const Handle_TNaming_UsedShapes &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_UsedShapes(const TNaming_UsedShapes *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_UsedShapes & operator=(const Handle_TNaming_UsedShapes &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_UsedShapes & operator=(const TNaming_UsedShapes *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_UsedShapes DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_UsedShapes {
	TNaming_UsedShapes* GetObject() {
	return (TNaming_UsedShapes*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_UsedShapes::~Handle_TNaming_UsedShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_UsedShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_ListNodeOfListOfNamedShape;
class Handle_TNaming_ListNodeOfListOfNamedShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfNamedShape();
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfNamedShape(const Handle_TNaming_ListNodeOfListOfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfNamedShape(const TNaming_ListNodeOfListOfNamedShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfNamedShape & operator=(const Handle_TNaming_ListNodeOfListOfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfNamedShape & operator=(const TNaming_ListNodeOfListOfNamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_ListNodeOfListOfNamedShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_ListNodeOfListOfNamedShape {
	TNaming_ListNodeOfListOfNamedShape* GetObject() {
	return (TNaming_ListNodeOfListOfNamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_ListNodeOfListOfNamedShape::~Handle_TNaming_ListNodeOfListOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_ListNodeOfListOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_TranslateTool;
class Handle_TNaming_TranslateTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_TranslateTool();
		%feature("autodoc", "1");
		Handle_TNaming_TranslateTool(const Handle_TNaming_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_TranslateTool(const TNaming_TranslateTool *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_TranslateTool & operator=(const Handle_TNaming_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_TranslateTool & operator=(const TNaming_TranslateTool *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_TranslateTool DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_TranslateTool {
	TNaming_TranslateTool* GetObject() {
	return (TNaming_TranslateTool*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_TranslateTool::~Handle_TNaming_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_NamedShape;
class Handle_TNaming_NamedShape : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape();
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape(const Handle_TNaming_NamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape(const TNaming_NamedShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & operator=(const Handle_TNaming_NamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & operator=(const TNaming_NamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_NamedShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_NamedShape {
	TNaming_NamedShape* GetObject() {
	return (TNaming_NamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_NamedShape::~Handle_TNaming_NamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_NamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_DeltaOnRemoval;
class Handle_TNaming_DeltaOnRemoval : public Handle_TDF_DeltaOnRemoval {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnRemoval();
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnRemoval(const Handle_TNaming_DeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnRemoval(const TNaming_DeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnRemoval & operator=(const Handle_TNaming_DeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DeltaOnRemoval & operator=(const TNaming_DeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_DeltaOnRemoval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_DeltaOnRemoval {
	TNaming_DeltaOnRemoval* GetObject() {
	return (TNaming_DeltaOnRemoval*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_DeltaOnRemoval::~Handle_TNaming_DeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_DeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_ListNodeOfListOfMapOfShape;
class Handle_TNaming_ListNodeOfListOfMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfMapOfShape();
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfMapOfShape(const Handle_TNaming_ListNodeOfListOfMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfMapOfShape(const TNaming_ListNodeOfListOfMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfMapOfShape & operator=(const Handle_TNaming_ListNodeOfListOfMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_ListNodeOfListOfMapOfShape & operator=(const TNaming_ListNodeOfListOfMapOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_ListNodeOfListOfMapOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_ListNodeOfListOfMapOfShape {
	TNaming_ListNodeOfListOfMapOfShape* GetObject() {
	return (TNaming_ListNodeOfListOfMapOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_ListNodeOfListOfMapOfShape::~Handle_TNaming_ListNodeOfListOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_ListNodeOfListOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet;
class Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet();
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet(const Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet(const TNaming_DataMapNodeOfDataMapOfShapeShapesSet *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet & operator=(const Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet & operator=(const TNaming_DataMapNodeOfDataMapOfShapeShapesSet *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet {
	TNaming_DataMapNodeOfDataMapOfShapeShapesSet* GetObject() {
	return (TNaming_DataMapNodeOfDataMapOfShapeShapesSet*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet::~Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape;
class Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape();
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape(const Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape(const TNaming_DataMapNodeOfDataMapOfShapePtrRefShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape & operator=(const Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape & operator=(const TNaming_DataMapNodeOfDataMapOfShapePtrRefShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape {
	TNaming_DataMapNodeOfDataMapOfShapePtrRefShape* GetObject() {
	return (TNaming_DataMapNodeOfDataMapOfShapePtrRefShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape::~Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TNaming_StdMapNodeOfMapOfNamedShape;
class Handle_TNaming_StdMapNodeOfMapOfNamedShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TNaming_StdMapNodeOfMapOfNamedShape();
		%feature("autodoc", "1");
		Handle_TNaming_StdMapNodeOfMapOfNamedShape(const Handle_TNaming_StdMapNodeOfMapOfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_StdMapNodeOfMapOfNamedShape(const TNaming_StdMapNodeOfMapOfNamedShape *anItem);
		%feature("autodoc", "1");
		Handle_TNaming_StdMapNodeOfMapOfNamedShape & operator=(const Handle_TNaming_StdMapNodeOfMapOfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TNaming_StdMapNodeOfMapOfNamedShape & operator=(const TNaming_StdMapNodeOfMapOfNamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TNaming_StdMapNodeOfMapOfNamedShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TNaming_StdMapNodeOfMapOfNamedShape {
	TNaming_StdMapNodeOfMapOfNamedShape* GetObject() {
	return (TNaming_StdMapNodeOfMapOfNamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_TNaming_StdMapNodeOfMapOfNamedShape::~Handle_TNaming_StdMapNodeOfMapOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TNaming_StdMapNodeOfMapOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_NamedShapeHasher;
class TNaming_NamedShapeHasher {
	public:
		%feature("autodoc", "1");
		TNaming_NamedShapeHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_TNaming_NamedShape &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_TNaming_NamedShape &K1, const Handle_TNaming_NamedShape &K2);

};
%feature("shadow") TNaming_NamedShapeHasher::~TNaming_NamedShapeHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_NamedShapeHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Tool;
class TNaming_Tool {
	public:
		%feature("autodoc", "1");
		TNaming_Tool();
		%feature("autodoc", "1");
		static		TopoDS_Shape CurrentShape(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		static		TopoDS_Shape CurrentShape(const Handle_TNaming_NamedShape &NS, const TDF_LabelMap &Updated);
		%feature("autodoc", "1");
		static		Handle_TNaming_NamedShape CurrentNamedShape(const Handle_TNaming_NamedShape &NS, const TDF_LabelMap &Updated);
		%feature("autodoc", "1");
		static		Handle_TNaming_NamedShape CurrentNamedShape(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		static		Handle_TNaming_NamedShape NamedShape(const TopoDS_Shape aShape, const TDF_Label &anAcces);
		%feature("autodoc", "1");
		static		TopoDS_Shape GetShape(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		static		TopoDS_Shape OriginalShape(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		static		TopoDS_Shape GeneratedShape(const TopoDS_Shape S, const Handle_TNaming_NamedShape &Generation);
		%feature("autodoc", "1");
		static		void Collect(const Handle_TNaming_NamedShape &NS, TNaming_MapOfNamedShape & Labels, const Standard_Boolean OnlyModif=1);
		%feature("autodoc", "1");
		static		Standard_Boolean HasLabel(const TDF_Label &access, const TopoDS_Shape aShape);
		%feature("autodoc","Label(const access, const aShape) -> Standard_Integer");

		static		TDF_Label Label(const TDF_Label &access, const TopoDS_Shape aShape, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		TopoDS_Shape InitialShape(const TopoDS_Shape aShape, const TDF_Label &anAcces, TDF_LabelList & Labels);
		%feature("autodoc", "1");
		static		Standard_Integer ValidUntil(const TDF_Label &access, const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		void FindShape(const TDF_LabelMap &Valid, const TDF_LabelMap &Forbiden, const Handle_TNaming_NamedShape &Arg, TopoDS_Shape & S);

};
%feature("shadow") TNaming_Tool::~TNaming_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Name;
class TNaming_Name {
	public:
		%feature("autodoc", "1");
		TNaming_Name();
		%feature("autodoc", "1");
		void Type(const TNaming_NameType aType);
		%feature("autodoc", "1");
		void ShapeType(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		void Append(const Handle_TNaming_NamedShape &arg);
		%feature("autodoc", "1");
		void StopNamedShape(const Handle_TNaming_NamedShape &arg);
		%feature("autodoc", "1");
		void Index(const Standard_Integer I);
		%feature("autodoc", "1");
		void ContextLabel(const TDF_Label &theLab);
		%feature("autodoc", "1");
		TNaming_NameType Type() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		const TNaming_ListOfNamedShape & Arguments() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape StopNamedShape() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		const TDF_Label & ContextLabel() const;
		%feature("autodoc", "1");
		Standard_Boolean Solve(const TDF_Label &aLab, const TDF_LabelMap &Valid) const;
		%feature("autodoc", "1");
		void Paste(TNaming_Name & into, const Handle_TDF_RelocationTable &RT) const;

};
%feature("shadow") TNaming_Name::~TNaming_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_UsedShapes;
class TNaming_UsedShapes : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		TNaming_DataMapOfShapePtrRefShape & Map();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		void BeforeRemoval();
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnAddition DeltaOnAddition() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnRemoval DeltaOnRemoval() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocTationable) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_UsedShapes {
	Handle_TNaming_UsedShapes GetHandle() {
	return *(Handle_TNaming_UsedShapes*) &$self;
	}
};
%extend TNaming_UsedShapes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_UsedShapes::~TNaming_UsedShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_UsedShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_NamingTool;
class TNaming_NamingTool {
	public:
		%feature("autodoc", "1");
		TNaming_NamingTool();
		%feature("autodoc", "1");
		static		void CurrentShape(const TDF_LabelMap &Valid, const TDF_LabelMap &Forbiden, const Handle_TNaming_NamedShape &NS, TopTools_MapOfShape & MS);
		%feature("autodoc", "1");
		static		void CurrentShapeFromShape(const TDF_LabelMap &Valid, const TDF_LabelMap &Forbiden, const TDF_Label &Acces, const TopoDS_Shape S, TopTools_MapOfShape & MS);
		%feature("autodoc", "1");
		static		void BuildDescendants(const Handle_TNaming_NamedShape &NS, TDF_LabelMap & Labels);

};
%feature("shadow") TNaming_NamingTool::~TNaming_NamingTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_NamingTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_TranslateTool;
class TNaming_TranslateTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TNaming_TranslateTool();
		%feature("autodoc", "1");
		void Add(TopoDS_Shape & S1, const TopoDS_Shape S2) const;
		%feature("autodoc", "1");
		void MakeVertex(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeCompSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void MakeCompound(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Shape S1, TopoDS_Shape & S2, TColStd_IndexedDataMapOfTransientTransient & M) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Shape S1, TopoDS_Shape & S2, TColStd_IndexedDataMapOfTransientTransient & M) const;
		%feature("autodoc", "1");
		void UpdateFace(const TopoDS_Shape S1, TopoDS_Shape & S2, TColStd_IndexedDataMapOfTransientTransient & M) const;
		%feature("autodoc", "1");
		void UpdateShape(const TopoDS_Shape S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_TranslateTool {
	Handle_TNaming_TranslateTool GetHandle() {
	return *(Handle_TNaming_TranslateTool*) &$self;
	}
};
%extend TNaming_TranslateTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_TranslateTool::~TNaming_TranslateTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_TranslateTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_MapOfNamedShape;
class TNaming_MapOfNamedShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TNaming_MapOfNamedShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TNaming_MapOfNamedShape & Assign(const TNaming_MapOfNamedShape &Other);
		%feature("autodoc", "1");
		TNaming_MapOfNamedShape & operator=(const TNaming_MapOfNamedShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_TNaming_NamedShape &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_TNaming_NamedShape &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_TNaming_NamedShape &aKey);

};
%feature("shadow") TNaming_MapOfNamedShape::~TNaming_MapOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_MapOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_IteratorOnShapesSet;
class TNaming_IteratorOnShapesSet {
	public:
		%feature("autodoc", "1");
		TNaming_IteratorOnShapesSet();
		%feature("autodoc", "1");
		TNaming_IteratorOnShapesSet(const TNaming_ShapesSet &S);
		%feature("autodoc", "1");
		void Init(const TNaming_ShapesSet &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") TNaming_IteratorOnShapesSet::~TNaming_IteratorOnShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_IteratorOnShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Builder;
class TNaming_Builder {
	public:
		%feature("autodoc", "1");
		TNaming_Builder(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		void Generated(const TopoDS_Shape newShape);
		%feature("autodoc", "1");
		void Generated(const TopoDS_Shape oldShape, const TopoDS_Shape newShape);
		%feature("autodoc", "1");
		void Delete(const TopoDS_Shape oldShape);
		%feature("autodoc", "1");
		void Modify(const TopoDS_Shape oldShape, const TopoDS_Shape newShape);
		%feature("autodoc", "1");
		void Replace(const TopoDS_Shape oldShape, const TopoDS_Shape newShape);
		%feature("autodoc", "1");
		void Select(const TopoDS_Shape aShape, const TopoDS_Shape inShape);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape NamedShape() const;

};
%feature("shadow") TNaming_Builder::~TNaming_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListIteratorOfListOfNamedShape;
class TNaming_ListIteratorOfListOfNamedShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfNamedShape();
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfNamedShape(const TNaming_ListOfNamedShape &L);
		%feature("autodoc", "1");
		void Initialize(const TNaming_ListOfNamedShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & Value() const;

};
%feature("shadow") TNaming_ListIteratorOfListOfNamedShape::~TNaming_ListIteratorOfListOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListIteratorOfListOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListNodeOfListOfNamedShape;
class TNaming_ListNodeOfListOfNamedShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_ListNodeOfListOfNamedShape(const Handle_TNaming_NamedShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_ListNodeOfListOfNamedShape {
	Handle_TNaming_ListNodeOfListOfNamedShape GetHandle() {
	return *(Handle_TNaming_ListNodeOfListOfNamedShape*) &$self;
	}
};
%extend TNaming_ListNodeOfListOfNamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_ListNodeOfListOfNamedShape::~TNaming_ListNodeOfListOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListNodeOfListOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape;
class TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape(const TopTools_IndexedDataMapOfShapeListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape {
	Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape GetHandle() {
	return *(Handle_TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape*) &$self;
	}
};
%extend TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape::~TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListNodeOfListOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_StdMapNodeOfMapOfNamedShape;
class TNaming_StdMapNodeOfMapOfNamedShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_StdMapNodeOfMapOfNamedShape(const Handle_TNaming_NamedShape &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_StdMapNodeOfMapOfNamedShape {
	Handle_TNaming_StdMapNodeOfMapOfNamedShape GetHandle() {
	return *(Handle_TNaming_StdMapNodeOfMapOfNamedShape*) &$self;
	}
};
%extend TNaming_StdMapNodeOfMapOfNamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_StdMapNodeOfMapOfNamedShape::~TNaming_StdMapNodeOfMapOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_StdMapNodeOfMapOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ShapesSet;
class TNaming_ShapesSet {
	public:
		%feature("autodoc", "1");
		TNaming_ShapesSet();
		%feature("autodoc", "1");
		TNaming_ShapesSet(const TopoDS_Shape S, const TopAbs_ShapeEnum Type=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Add(const TNaming_ShapesSet &Shapes);
		%feature("autodoc", "1");
		void Filter(const TNaming_ShapesSet &Shapes);
		%feature("autodoc", "1");
		void Remove(const TNaming_ShapesSet &Shapes);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & ChangeMap();
		%feature("autodoc", "1");
		const TopTools_MapOfShape & Map() const;

};
%feature("shadow") TNaming_ShapesSet::~TNaming_ShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListOfMapOfShape;
class TNaming_ListOfMapOfShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListOfMapOfShape();
		%feature("autodoc", "1");
		void Assign(const TNaming_ListOfMapOfShape &Other);
		%feature("autodoc", "1");
		void operator=(const TNaming_ListOfMapOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopTools_MapOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const TopTools_MapOfShape &I, TNaming_ListIteratorOfListOfMapOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TNaming_ListOfMapOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopTools_MapOfShape &I);
		%feature("autodoc", "1");
		void Append(const TopTools_MapOfShape &I, TNaming_ListIteratorOfListOfMapOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TNaming_ListOfMapOfShape & Other);
		%feature("autodoc", "1");
		TopTools_MapOfShape & First() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TNaming_ListIteratorOfListOfMapOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopTools_MapOfShape &I, TNaming_ListIteratorOfListOfMapOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TNaming_ListOfMapOfShape & Other, TNaming_ListIteratorOfListOfMapOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopTools_MapOfShape &I, TNaming_ListIteratorOfListOfMapOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TNaming_ListOfMapOfShape & Other, TNaming_ListIteratorOfListOfMapOfShape & It);

};
%feature("shadow") TNaming_ListOfMapOfShape::~TNaming_ListOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListOfIndexedDataMapOfShapeListOfShape;
class TNaming_ListOfIndexedDataMapOfShapeListOfShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListOfIndexedDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		void Assign(const TNaming_ListOfIndexedDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void operator=(const TNaming_ListOfIndexedDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopTools_IndexedDataMapOfShapeListOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const TopTools_IndexedDataMapOfShapeListOfShape &I, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TNaming_ListOfIndexedDataMapOfShapeListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopTools_IndexedDataMapOfShapeListOfShape &I);
		%feature("autodoc", "1");
		void Append(const TopTools_IndexedDataMapOfShapeListOfShape &I, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TNaming_ListOfIndexedDataMapOfShapeListOfShape & Other);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & First() const;
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopTools_IndexedDataMapOfShapeListOfShape &I, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TNaming_ListOfIndexedDataMapOfShapeListOfShape & Other, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopTools_IndexedDataMapOfShapeListOfShape &I, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TNaming_ListOfIndexedDataMapOfShapeListOfShape & Other, TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape & It);

};
%feature("shadow") TNaming_ListOfIndexedDataMapOfShapeListOfShape::~TNaming_ListOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Translator;
class TNaming_Translator {
	public:
		%feature("autodoc", "1");
		TNaming_Translator();
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shape const Copied(const TopoDS_Shape aShape) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Copied() const;
		%feature("autodoc", "1");
		void DumpMap(const Standard_Boolean isWrite=0) const;

};
%feature("shadow") TNaming_Translator::~TNaming_Translator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Translator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Scope;
class TNaming_Scope {
	public:
		%feature("autodoc", "1");
		TNaming_Scope();
		%feature("autodoc", "1");
		TNaming_Scope(const Standard_Boolean WithValid);
		%feature("autodoc", "1");
		TNaming_Scope(TDF_LabelMap & valid);
		%feature("autodoc", "1");
		Standard_Boolean WithValid() const;
		%feature("autodoc", "1");
		void WithValid(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void ClearValid();
		%feature("autodoc", "1");
		void Valid(const TDF_Label &L);
		%feature("autodoc", "1");
		void ValidChildren(const TDF_Label &L, const Standard_Boolean withroot=1);
		%feature("autodoc", "1");
		void Unvalid(const TDF_Label &L);
		%feature("autodoc", "1");
		void UnvalidChildren(const TDF_Label &L, const Standard_Boolean withroot=1);
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const TDF_Label &L) const;
		%feature("autodoc", "1");
		const TDF_LabelMap & GetValid() const;
		%feature("autodoc", "1");
		TDF_LabelMap & ChangeValid();
		%feature("autodoc", "1");
		TopoDS_Shape CurrentShape(const Handle_TNaming_NamedShape &NS) const;

};
%feature("shadow") TNaming_Scope::~TNaming_Scope %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Scope {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_RefShape;
class TNaming_RefShape {
	public:
		%feature("autodoc", "1");
		TNaming_RefShape();
		%feature("autodoc", "1");
		TNaming_RefShape(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void FirstUse(const TNaming_PtrNode &pdn);
		%feature("autodoc", "1");
		TNaming_PtrNode FirstUse() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		TDF_Label Label() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape NamedShape() const;

};
%feature("shadow") TNaming_RefShape::~TNaming_RefShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_RefShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape;
class TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape();
		%feature("autodoc", "1");
		TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape(const TNaming_DataMapOfShapePtrRefShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TNaming_DataMapOfShapePtrRefShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TNaming_PtrRefShape & Value() const;

};
%feature("shadow") TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape::~TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapIteratorOfDataMapOfShapePtrRefShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Iterator;
class TNaming_Iterator {
	public:
		%feature("autodoc", "1");
		TNaming_Iterator(const Handle_TNaming_NamedShape &anAtt);
		%feature("autodoc", "1");
		TNaming_Iterator(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		TNaming_Iterator(const TDF_Label &aLabel, const Standard_Integer aTrans);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape  OldShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  NewShape() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModification() const;
		%feature("autodoc", "1");
		TNaming_Evolution Evolution() const;

};
%feature("shadow") TNaming_Iterator::~TNaming_Iterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Iterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_SameShapeIterator;
class TNaming_SameShapeIterator {
	public:
		%feature("autodoc", "1");
		TNaming_SameShapeIterator(const TopoDS_Shape aShape, const TDF_Label &access);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDF_Label Label() const;

};
%feature("shadow") TNaming_SameShapeIterator::~TNaming_SameShapeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_SameShapeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DeltaOnRemoval;
class TNaming_DeltaOnRemoval : public TDF_DeltaOnRemoval {
	public:
		%feature("autodoc", "1");
		TNaming_DeltaOnRemoval(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_DeltaOnRemoval {
	Handle_TNaming_DeltaOnRemoval GetHandle() {
	return *(Handle_TNaming_DeltaOnRemoval*) &$self;
	}
};
%extend TNaming_DeltaOnRemoval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_DeltaOnRemoval::~TNaming_DeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_CopyShape;
class TNaming_CopyShape {
	public:
		%feature("autodoc", "1");
		TNaming_CopyShape();
		%feature("autodoc", "1");
		static		void CopyTool(const TopoDS_Shape aShape, TColStd_IndexedDataMapOfTransientTransient & aMap, TopoDS_Shape & aResult);
		%feature("autodoc", "1");
		static		void Translate(const TopoDS_Shape aShape, TColStd_IndexedDataMapOfTransientTransient & aMap, TopoDS_Shape & aResult, const Handle_TNaming_TranslateTool &TrTool);
		%feature("autodoc", "1");
		static		TopLoc_Location Translate(const TopLoc_Location &L, TColStd_IndexedDataMapOfTransientTransient & aMap);

};
%feature("shadow") TNaming_CopyShape::~TNaming_CopyShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_CopyShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapNodeOfDataMapOfShapeShapesSet;
class TNaming_DataMapNodeOfDataMapOfShapeShapesSet : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapNodeOfDataMapOfShapeShapesSet(const TopoDS_Shape K, const TNaming_ShapesSet &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TNaming_ShapesSet & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_DataMapNodeOfDataMapOfShapeShapesSet {
	Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet GetHandle() {
	return *(Handle_TNaming_DataMapNodeOfDataMapOfShapeShapesSet*) &$self;
	}
};
%extend TNaming_DataMapNodeOfDataMapOfShapeShapesSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_DataMapNodeOfDataMapOfShapeShapesSet::~TNaming_DataMapNodeOfDataMapOfShapeShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapNodeOfDataMapOfShapeShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DeltaOnModification;
class TNaming_DeltaOnModification : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TNaming_DeltaOnModification(const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_DeltaOnModification {
	Handle_TNaming_DeltaOnModification GetHandle() {
	return *(Handle_TNaming_DeltaOnModification*) &$self;
	}
};
%extend TNaming_DeltaOnModification {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_DeltaOnModification::~TNaming_DeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Selector;
class TNaming_Selector {
	public:
		%feature("autodoc", "1");
		static		Standard_Boolean IsIdentified(const TDF_Label &access, const TopoDS_Shape selection, Handle_TNaming_NamedShape & NS, const Standard_Boolean Geometry=0);
		%feature("autodoc", "1");
		TNaming_Selector(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		Standard_Boolean Select(const TopoDS_Shape Selection, const TopoDS_Shape Context, const Standard_Boolean Geometry=0, const Standard_Boolean KeepOrientatation=0) const;
		%feature("autodoc", "1");
		Standard_Boolean Select(const TopoDS_Shape Selection, const Standard_Boolean Geometry=0, const Standard_Boolean KeepOrientatation=0) const;
		%feature("autodoc", "1");
		Standard_Boolean Solve(TDF_LabelMap & Valid) const;
		%feature("autodoc", "1");
		void Arguments(TDF_AttributeMap & args) const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape NamedShape() const;

};
%feature("shadow") TNaming_Selector::~TNaming_Selector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Selector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListNodeOfListOfMapOfShape;
class TNaming_ListNodeOfListOfMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_ListNodeOfListOfMapOfShape(const TopTools_MapOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopTools_MapOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_ListNodeOfListOfMapOfShape {
	Handle_TNaming_ListNodeOfListOfMapOfShape GetHandle() {
	return *(Handle_TNaming_ListNodeOfListOfMapOfShape*) &$self;
	}
};
%extend TNaming_ListNodeOfListOfMapOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_ListNodeOfListOfMapOfShape::~TNaming_ListNodeOfListOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListNodeOfListOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_NamedShape;
class TNaming_NamedShape : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TNaming_NamedShape();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		TopoDS_Shape Get() const;
		%feature("autodoc", "1");
		TNaming_Evolution Evolution() const;
		%feature("autodoc", "1");
		Standard_Integer Version() const;
		%feature("autodoc", "1");
		void SetVersion(const Standard_Integer v);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		void DeltaOnModification(const Handle_TDF_DeltaOnModification &aDelta);
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnRemoval DeltaOnRemoval() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocTationable) const;
		%feature("autodoc", "1");
		void OldPaste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocTationable) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		virtual		void BeforeRemoval();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_NamedShape {
	Handle_TNaming_NamedShape GetHandle() {
	return *(Handle_TNaming_NamedShape*) &$self;
	}
};
%extend TNaming_NamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_NamedShape::~TNaming_NamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_NamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape;
class TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape(const TNaming_ListOfIndexedDataMapOfShapeListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const TNaming_ListOfIndexedDataMapOfShapeListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & Value() const;

};
%feature("shadow") TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape::~TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListIteratorOfListOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListOfNamedShape;
class TNaming_ListOfNamedShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListOfNamedShape();
		%feature("autodoc", "1");
		void Assign(const TNaming_ListOfNamedShape &Other);
		%feature("autodoc", "1");
		void operator=(const TNaming_ListOfNamedShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TNaming_NamedShape &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TNaming_NamedShape &I, TNaming_ListIteratorOfListOfNamedShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TNaming_ListOfNamedShape & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TNaming_NamedShape &I);
		%feature("autodoc", "1");
		void Append(const Handle_TNaming_NamedShape &I, TNaming_ListIteratorOfListOfNamedShape & theIt);
		%feature("autodoc", "1");
		void Append(TNaming_ListOfNamedShape & Other);
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & First() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TNaming_ListIteratorOfListOfNamedShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TNaming_NamedShape &I, TNaming_ListIteratorOfListOfNamedShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TNaming_ListOfNamedShape & Other, TNaming_ListIteratorOfListOfNamedShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TNaming_NamedShape &I, TNaming_ListIteratorOfListOfNamedShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TNaming_ListOfNamedShape & Other, TNaming_ListIteratorOfListOfNamedShape & It);

};
%feature("shadow") TNaming_ListOfNamedShape::~TNaming_ListOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_ListIteratorOfListOfMapOfShape;
class TNaming_ListIteratorOfListOfMapOfShape {
	public:
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfMapOfShape();
		%feature("autodoc", "1");
		TNaming_ListIteratorOfListOfMapOfShape(const TNaming_ListOfMapOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const TNaming_ListOfMapOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopTools_MapOfShape & Value() const;

};
%feature("shadow") TNaming_ListIteratorOfListOfMapOfShape::~TNaming_ListIteratorOfListOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_ListIteratorOfListOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_OldShapeIterator;
class TNaming_OldShapeIterator {
	public:
		%feature("autodoc", "1");
		TNaming_OldShapeIterator(const TopoDS_Shape aShape, const Standard_Integer Transaction, const TDF_Label &access);
		%feature("autodoc", "1");
		TNaming_OldShapeIterator(const TopoDS_Shape aShape, const TDF_Label &access);
		%feature("autodoc", "1");
		TNaming_OldShapeIterator(const TNaming_OldShapeIterator &anIterator);
		%feature("autodoc", "1");
		TNaming_OldShapeIterator(const TNaming_Iterator &anIterator);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDF_Label Label() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape NamedShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModification() const;

};
%feature("shadow") TNaming_OldShapeIterator::~TNaming_OldShapeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_OldShapeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_MapIteratorOfMapOfNamedShape;
class TNaming_MapIteratorOfMapOfNamedShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TNaming_MapIteratorOfMapOfNamedShape();
		%feature("autodoc", "1");
		TNaming_MapIteratorOfMapOfNamedShape(const TNaming_MapOfNamedShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TNaming_MapOfNamedShape &aMap);
		%feature("autodoc", "1");
		const Handle_TNaming_NamedShape & Key() const;

};
%feature("shadow") TNaming_MapIteratorOfMapOfNamedShape::~TNaming_MapIteratorOfMapOfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_MapIteratorOfMapOfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapNodeOfDataMapOfShapePtrRefShape;
class TNaming_DataMapNodeOfDataMapOfShapePtrRefShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapNodeOfDataMapOfShapePtrRefShape(const TopoDS_Shape K, const TNaming_PtrRefShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TNaming_PtrRefShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_DataMapNodeOfDataMapOfShapePtrRefShape {
	Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape GetHandle() {
	return *(Handle_TNaming_DataMapNodeOfDataMapOfShapePtrRefShape*) &$self;
	}
};
%extend TNaming_DataMapNodeOfDataMapOfShapePtrRefShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_DataMapNodeOfDataMapOfShapePtrRefShape::~TNaming_DataMapNodeOfDataMapOfShapePtrRefShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapNodeOfDataMapOfShapePtrRefShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapIteratorOfDataMapOfShapeShapesSet;
class TNaming_DataMapIteratorOfDataMapOfShapeShapesSet : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapIteratorOfDataMapOfShapeShapesSet();
		%feature("autodoc", "1");
		TNaming_DataMapIteratorOfDataMapOfShapeShapesSet(const TNaming_DataMapOfShapeShapesSet &aMap);
		%feature("autodoc", "1");
		void Initialize(const TNaming_DataMapOfShapeShapesSet &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TNaming_ShapesSet & Value() const;

};
%feature("shadow") TNaming_DataMapIteratorOfDataMapOfShapeShapesSet::~TNaming_DataMapIteratorOfDataMapOfShapeShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapIteratorOfDataMapOfShapeShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Localizer;
class TNaming_Localizer {
	public:
		%feature("autodoc", "1");
		TNaming_Localizer();
		%feature("autodoc", "1");
		void Init(const Handle_TNaming_UsedShapes &US, const Standard_Integer CurTrans);
		%feature("autodoc", "1");
		const TopTools_MapOfShape & SubShapes(const TopoDS_Shape S, const TopAbs_ShapeEnum Type);
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & Ancestors(const TopoDS_Shape S, const TopAbs_ShapeEnum Type);
		%feature("autodoc", "1");
		void FindFeaturesInAncestors(const TopoDS_Shape S, const TopoDS_Shape In, TopTools_MapOfShape & AncInFeatures);
		%feature("autodoc", "1");
		void GoBack(const TopoDS_Shape S, const TDF_Label &Lab, const TNaming_Evolution Evol, TopTools_ListOfShape & OldS, TNaming_ListOfNamedShape & OldLab);
		%feature("autodoc", "1");
		void Backward(const Handle_TNaming_NamedShape &NS, const TopoDS_Shape S, TNaming_MapOfNamedShape & Primitives, TopTools_MapOfShape & ValidShapes);
		%feature("autodoc", "1");
		void FindNeighbourg(const TopoDS_Shape Cont, const TopoDS_Shape S, TopTools_MapOfShape & Neighbourg);
		%feature("autodoc", "1");
		static		Standard_Boolean IsNew(const TopoDS_Shape S, const Handle_TNaming_NamedShape &NS);
		%feature("autodoc", "1");
		static		void FindGenerator(const Handle_TNaming_NamedShape &NS, const TopoDS_Shape S, TopTools_ListOfShape & theListOfGenerators);
		%feature("autodoc", "1");
		static		void FindShapeContext(const Handle_TNaming_NamedShape &NS, const TopoDS_Shape theS, TopoDS_Shape & theSC);

};
%feature("shadow") TNaming_Localizer::~TNaming_Localizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Localizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapOfShapePtrRefShape;
class TNaming_DataMapOfShapePtrRefShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapOfShapePtrRefShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TNaming_DataMapOfShapePtrRefShape & Assign(const TNaming_DataMapOfShapePtrRefShape &Other);
		%feature("autodoc", "1");
		TNaming_DataMapOfShapePtrRefShape & operator=(const TNaming_DataMapOfShapePtrRefShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TNaming_PtrRefShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TNaming_PtrRefShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TNaming_PtrRefShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TNaming_PtrRefShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TNaming_PtrRefShape & operator()(const TopoDS_Shape K);

};
%feature("shadow") TNaming_DataMapOfShapePtrRefShape::~TNaming_DataMapOfShapePtrRefShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapOfShapePtrRefShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_NewShapeIterator;
class TNaming_NewShapeIterator {
	public:
		%feature("autodoc", "1");
		TNaming_NewShapeIterator(const TopoDS_Shape aShape, const Standard_Integer Transaction, const TDF_Label &access);
		%feature("autodoc", "1");
		TNaming_NewShapeIterator(const TopoDS_Shape aShape, const TDF_Label &access);
		%feature("autodoc", "1");
		TNaming_NewShapeIterator(const TNaming_NewShapeIterator &anIterator);
		%feature("autodoc", "1");
		TNaming_NewShapeIterator(const TNaming_Iterator &anIterator);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDF_Label Label() const;
		%feature("autodoc", "1");
		Handle_TNaming_NamedShape NamedShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModification() const;

};
%feature("shadow") TNaming_NewShapeIterator::~TNaming_NewShapeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_NewShapeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_Naming;
class TNaming_Naming : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TNaming_Naming Insert(const TDF_Label &under);
		%feature("autodoc", "1");
		static		Handle_TNaming_NamedShape Name(const TDF_Label &where, const TopoDS_Shape Selection, const TopoDS_Shape Context, const Standard_Boolean Geometry=0, const Standard_Boolean KeepOrientation=0, const Standard_Boolean BNproblem=0);
		%feature("autodoc", "1");
		TNaming_Naming();
		%feature("autodoc", "1");
		Standard_Boolean IsDefined() const;
		%feature("autodoc", "1");
		const TNaming_Name & GetName() const;
		%feature("autodoc", "1");
		TNaming_Name & ChangeName();
		%feature("autodoc", "1");
		Standard_Boolean Regenerate(TDF_LabelMap & scope);
		%feature("autodoc", "1");
		Standard_Boolean Solve(TDF_LabelMap & scope);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		void ExtendedDump(Standard_OStream & anOS, const TDF_IDFilter &aFilter, TDF_AttributeIndexedMap & aMap) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TNaming_Naming {
	Handle_TNaming_Naming GetHandle() {
	return *(Handle_TNaming_Naming*) &$self;
	}
};
%extend TNaming_Naming {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TNaming_Naming::~TNaming_Naming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_Naming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming;
class TNaming {
	public:
		%feature("autodoc", "1");
		TNaming();
		%feature("autodoc", "1");
		static		void Substitute(const TDF_Label &labelsource, const TDF_Label &labelcible, TopTools_DataMapOfShapeShape & mapOldNew);
		%feature("autodoc", "1");
		static		void Update(const TDF_Label &label, TopTools_DataMapOfShapeShape & mapOldNew);
		%feature("autodoc", "1");
		static		void Displace(const TDF_Label &label, const TopLoc_Location &aLocation, const Standard_Boolean WithOld=1);
		%feature("autodoc", "1");
		static		void ChangeShapes(const TDF_Label &label, TopTools_DataMapOfShapeShape & M);
		%feature("autodoc", "1");
		static		void Transform(const TDF_Label &label, const gp_Trsf aTransformation);
		%feature("autodoc", "1");
		static		void Replicate(const Handle_TNaming_NamedShape &NS, const gp_Trsf T, const TDF_Label &L);
		%feature("autodoc", "1");
		static		void Replicate(const TopoDS_Shape SH, const gp_Trsf T, const TDF_Label &L);
		%feature("autodoc", "1");
		static		TopoDS_Shape MakeShape(const TopTools_MapOfShape &MS);
		%feature("autodoc", "1");
		static		TopoDS_Shape FindUniqueContext(const TopoDS_Shape S, const TopoDS_Shape Context);
		%feature("autodoc", "1");
		static		TopoDS_Shape FindUniqueContextSet(const TopoDS_Shape S, const TopoDS_Shape Context, Handle_TopTools_HArray1OfShape & Arr);
		%feature("autodoc", "1");
		static		Standard_Boolean SubstituteSShape(const TDF_Label &accesslabel, const TopoDS_Shape From, TopoDS_Shape & To);
		%feature("autodoc", "1");
		static		void IDList(TDF_IDList & anIDList);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TNaming_Evolution EVOL, Standard_OStream & S);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TNaming_NameType NAME, Standard_OStream & S);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TDF_Label &ACCESS, Standard_OStream & S);

};
%feature("shadow") TNaming::~TNaming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TNaming_DataMapOfShapeShapesSet;
class TNaming_DataMapOfShapeShapesSet : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TNaming_DataMapOfShapeShapesSet(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TNaming_DataMapOfShapeShapesSet & Assign(const TNaming_DataMapOfShapeShapesSet &Other);
		%feature("autodoc", "1");
		TNaming_DataMapOfShapeShapesSet & operator=(const TNaming_DataMapOfShapeShapesSet &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TNaming_ShapesSet &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TNaming_ShapesSet & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TNaming_ShapesSet & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TNaming_ShapesSet & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TNaming_ShapesSet & operator()(const TopoDS_Shape K);

};
%feature("shadow") TNaming_DataMapOfShapeShapesSet::~TNaming_DataMapOfShapeShapesSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TNaming_DataMapOfShapeShapesSet {
	void _kill_pointed() {
		delete $self;
	}
};
