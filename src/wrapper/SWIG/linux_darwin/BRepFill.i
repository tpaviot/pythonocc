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

%module BRepFill
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepFill_renames.i


%include BRepFill_required_python_modules.i


%include BRepFill_dependencies.i


%include BRepFill_headers.i


enum BRepFill_TransitionStyle {
	BRepFill_Modified,
	BRepFill_Right,
	BRepFill_Round,
	};



%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape & operator=(const BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape::~Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_ListNodeOfListOfOffsetWire;
class Handle_BRepFill_ListNodeOfListOfOffsetWire : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire();
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire(const Handle_BRepFill_ListNodeOfListOfOffsetWire &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire(const BRepFill_ListNodeOfListOfOffsetWire *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire & operator=(const Handle_BRepFill_ListNodeOfListOfOffsetWire &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire & operator=(const BRepFill_ListNodeOfListOfOffsetWire *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_ListNodeOfListOfOffsetWire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ListNodeOfListOfOffsetWire {
	BRepFill_ListNodeOfListOfOffsetWire* GetObject() {
	return (BRepFill_ListNodeOfListOfOffsetWire*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_ListNodeOfListOfOffsetWire::~Handle_BRepFill_ListNodeOfListOfOffsetWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_ListNodeOfListOfOffsetWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_SectionLaw;
class Handle_BRepFill_SectionLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw(const Handle_BRepFill_SectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw(const BRepFill_SectionLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw & operator=(const Handle_BRepFill_SectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw & operator=(const BRepFill_SectionLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_SectionLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SectionLaw {
	BRepFill_SectionLaw* GetObject() {
	return (BRepFill_SectionLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_SectionLaw::~Handle_BRepFill_SectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_SectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_NSections;
class Handle_BRepFill_NSections : public Handle_BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_NSections();
		%feature("autodoc", "1");
		Handle_BRepFill_NSections(const Handle_BRepFill_NSections &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_NSections(const BRepFill_NSections *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_NSections & operator=(const Handle_BRepFill_NSections &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_NSections & operator=(const BRepFill_NSections *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_NSections const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_NSections {
	BRepFill_NSections* GetObject() {
	return (BRepFill_NSections*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_NSections::~Handle_BRepFill_NSections %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_NSections {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape & operator=(const BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape::~Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfSection;
class Handle_BRepFill_SequenceNodeOfSequenceOfSection : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection(const Handle_BRepFill_SequenceNodeOfSequenceOfSection &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection(const BRepFill_SequenceNodeOfSequenceOfSection *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection & operator=(const Handle_BRepFill_SequenceNodeOfSequenceOfSection &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection & operator=(const BRepFill_SequenceNodeOfSequenceOfSection *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_SequenceNodeOfSequenceOfSection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfSection {
	BRepFill_SequenceNodeOfSequenceOfSection* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfSection*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_SequenceNodeOfSequenceOfSection::~Handle_BRepFill_SequenceNodeOfSequenceOfSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_SequenceNodeOfSequenceOfSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_LocationLaw;
class Handle_BRepFill_LocationLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw(const Handle_BRepFill_LocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw(const BRepFill_LocationLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw & operator=(const Handle_BRepFill_LocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw & operator=(const BRepFill_LocationLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_LocationLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_LocationLaw {
	BRepFill_LocationLaw* GetObject() {
	return (BRepFill_LocationLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_LocationLaw::~Handle_BRepFill_LocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_LocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal & operator=(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal::~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_CurveConstraint;
class Handle_BRepFill_CurveConstraint : public Handle_GeomPlate_CurveConstraint {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint();
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint(const Handle_BRepFill_CurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint(const BRepFill_CurveConstraint *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint & operator=(const Handle_BRepFill_CurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint & operator=(const BRepFill_CurveConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_CurveConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_CurveConstraint {
	BRepFill_CurveConstraint* GetObject() {
	return (BRepFill_CurveConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_CurveConstraint::~Handle_BRepFill_CurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_CurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape & operator=(const BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape::~Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_PipeShell;
class Handle_BRepFill_PipeShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell();
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell(const Handle_BRepFill_PipeShell &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell(const BRepFill_PipeShell *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell & operator=(const Handle_BRepFill_PipeShell &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell & operator=(const BRepFill_PipeShell *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_PipeShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_PipeShell {
	BRepFill_PipeShell* GetObject() {
	return (BRepFill_PipeShell*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_PipeShell::~Handle_BRepFill_PipeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_PipeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt & operator=(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt::~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_ACRLaw;
class Handle_BRepFill_ACRLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw(const Handle_BRepFill_ACRLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw(const BRepFill_ACRLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw & operator=(const Handle_BRepFill_ACRLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw & operator=(const BRepFill_ACRLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_ACRLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ACRLaw {
	BRepFill_ACRLaw* GetObject() {
	return (BRepFill_ACRLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_ACRLaw::~Handle_BRepFill_ACRLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_ACRLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_ShapeLaw;
class Handle_BRepFill_ShapeLaw : public Handle_BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw(const Handle_BRepFill_ShapeLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw(const BRepFill_ShapeLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw & operator=(const Handle_BRepFill_ShapeLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw & operator=(const BRepFill_ShapeLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_ShapeLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ShapeLaw {
	BRepFill_ShapeLaw* GetObject() {
	return (BRepFill_ShapeLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_ShapeLaw::~Handle_BRepFill_ShapeLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_ShapeLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape & operator=(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape::~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_Edge3DLaw;
class Handle_BRepFill_Edge3DLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw(const Handle_BRepFill_Edge3DLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw(const BRepFill_Edge3DLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw & operator=(const Handle_BRepFill_Edge3DLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw & operator=(const BRepFill_Edge3DLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_Edge3DLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_Edge3DLaw {
	BRepFill_Edge3DLaw* GetObject() {
	return (BRepFill_Edge3DLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_Edge3DLaw::~Handle_BRepFill_Edge3DLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_Edge3DLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DraftLaw;
class Handle_BRepFill_DraftLaw : public Handle_BRepFill_Edge3DLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw(const Handle_BRepFill_DraftLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw(const BRepFill_DraftLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw & operator=(const Handle_BRepFill_DraftLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw & operator=(const BRepFill_DraftLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DraftLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DraftLaw {
	BRepFill_DraftLaw* GetObject() {
	return (BRepFill_DraftLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DraftLaw::~Handle_BRepFill_DraftLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DraftLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder;
class Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder & operator=(const Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder & operator=(const BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder::~Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape(const BRepFill_DataMapNodeOfDataMapOfNodeShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape & operator=(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape & operator=(const BRepFill_DataMapNodeOfDataMapOfNodeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape {
	BRepFill_DataMapNodeOfDataMapOfNodeShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfNodeShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape::~Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_EdgeOnSurfLaw;
class Handle_BRepFill_EdgeOnSurfLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw(const Handle_BRepFill_EdgeOnSurfLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw(const BRepFill_EdgeOnSurfLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw & operator=(const Handle_BRepFill_EdgeOnSurfLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw & operator=(const BRepFill_EdgeOnSurfLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_EdgeOnSurfLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_EdgeOnSurfLaw {
	BRepFill_EdgeOnSurfLaw* GetObject() {
	return (BRepFill_EdgeOnSurfLaw*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_EdgeOnSurfLaw::~Handle_BRepFill_EdgeOnSurfLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_EdgeOnSurfLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder;
class Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const BRepFill_SequenceNodeOfSequenceOfFaceAndOrder *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder & operator=(const Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder & operator=(const BRepFill_SequenceNodeOfSequenceOfFaceAndOrder *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	BRepFill_SequenceNodeOfSequenceOfFaceAndOrder* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfFaceAndOrder*)$self->Access();
	}
};
%feature("shadow") Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder::~Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape::~BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_CurveConstraint;
class BRepFill_CurveConstraint : public GeomPlate_CurveConstraint {
	public:
		%feature("autodoc", "1");
		BRepFill_CurveConstraint(const Handle_Adaptor3d_HCurveOnSurface &Boundary, const Standard_Integer Order, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		BRepFill_CurveConstraint(const Handle_Adaptor3d_HCurve &Boundary, const Standard_Integer Tang, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_CurveConstraint {
	Handle_BRepFill_CurveConstraint GetHandle() {
	return *(Handle_BRepFill_CurveConstraint*) &$self;
	}
};
%extend BRepFill_CurveConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_CurveConstraint::~BRepFill_CurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_CurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapOfNodeDataMapOfShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeDataMapOfShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeDataMapOfShapeShape & Assign(const BRepFill_DataMapOfNodeDataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeDataMapOfShapeShape & operator=(const BRepFill_DataMapOfNodeDataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_MAT_Node &K, const TopTools_DataMapOfShapeShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Find(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & operator()(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & ChangeFind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & operator()(const Handle_MAT_Node &K);

};
%feature("shadow") BRepFill_DataMapOfNodeDataMapOfShapeShape::~BRepFill_DataMapOfNodeDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfNodeDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal(const BRepFill_DataMapOfShapeSequenceOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal::~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape(const BRepFill_DataMapOfOrientedShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfOrientedShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape::~BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfShape;
class BRepFill_DataMapOfShapeSequenceOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfShape & Assign(const BRepFill_DataMapOfShapeSequenceOfShape &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfShape & operator=(const BRepFill_DataMapOfShapeSequenceOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepFill_DataMapOfShapeSequenceOfShape::~BRepFill_DataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_TrimEdgeTool;
class BRepFill_TrimEdgeTool {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimEdgeTool();
		%feature("autodoc", "1");
		BRepFill_TrimEdgeTool(const Bisector_Bisec &Bisec, const Handle_Geom2d_Geometry &S1, const Handle_Geom2d_Geometry &S2, const Standard_Real Offset);
		%feature("autodoc", "1");
		void IntersectWith(const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, TColgp_SequenceOfPnt & Params);
		%feature("autodoc", "1");
		void AddOrConfuse(const Standard_Boolean Start, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, TColgp_SequenceOfPnt & Params) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const gp_Pnt2d P) const;

};
%feature("shadow") BRepFill_TrimEdgeTool::~BRepFill_TrimEdgeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_TrimEdgeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_OffsetWire;
class BRepFill_OffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_OffsetWire();
		%feature("autodoc", "1");
		BRepFill_OffsetWire(const TopoDS_Face Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Offset, const Standard_Real Alt=0.0);
		%feature("autodoc", "1");
		void PerformWithBiLo(const TopoDS_Face WSP, const Standard_Real Offset, const BRepMAT2d_BisectingLocus &Locus, BRepMAT2d_LinkTopoBilo & Link, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Real Alt=0.0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape SpineShape);
		%feature("autodoc", "1");
		GeomAbs_JoinType JoinType() const;

};
%feature("shadow") BRepFill_OffsetWire::~BRepFill_OffsetWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_OffsetWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SectionLaw;
class BRepFill_SectionLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbLaw() const;
		%feature("autodoc", "1");
		const Handle_GeomFill_SectionLaw & Law(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_SectionLaw ConcatenedLaw() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const Standard_Integer Index, const Standard_Real TolAngular) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VertexTol(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex Vertex(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, TopoDS_Shape & S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire W);
		%feature("autodoc", "1");
		TopoDS_Edge CurrentEdge();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SectionLaw {
	Handle_BRepFill_SectionLaw GetHandle() {
	return *(Handle_BRepFill_SectionLaw*) &$self;
	}
};
%extend BRepFill_SectionLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_SectionLaw::~BRepFill_SectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_NSections;
class BRepFill_NSections : public BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_NSections(const TopTools_SequenceOfShape &S, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_NSections(const TopTools_SequenceOfShape &S, const TColStd_SequenceOfReal &P, const Standard_Real VF, const Standard_Real VL, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real Param, TopoDS_Shape & S);

};
%extend BRepFill_NSections {
	Handle_BRepFill_NSections GetHandle() {
	return *(Handle_BRepFill_NSections*) &$self;
	}
};
%extend BRepFill_NSections {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_NSections::~BRepFill_NSections %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_NSections {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Filling;
class BRepFill_Filling {
	public:
		%feature("autodoc", "1");
		BRepFill_Filling(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void SetConstrParam(const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		void SetResolParam(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		void SetApproxParam(const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void LoadInitSurface(const TopoDS_Face aFace);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge anEdge, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge anEdge, const TopoDS_Face Support, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Face Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		Standard_Integer Add(const gp_Pnt Point);
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Real U, const Standard_Real V, const TopoDS_Face Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Face Face() const;
		%feature("autodoc", "1");
		Standard_Real G0Error() const;
		%feature("autodoc", "1");
		Standard_Real G1Error() const;
		%feature("autodoc", "1");
		Standard_Real G2Error() const;
		%feature("autodoc", "1");
		Standard_Real G0Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G1Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G2Error(const Standard_Integer Index);

};
%feature("shadow") BRepFill_Filling::~BRepFill_Filling %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Filling {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Section;
class BRepFill_Section {
	public:
		%feature("autodoc", "1");
		BRepFill_Section();
		%feature("autodoc", "1");
		BRepFill_Section(const TopoDS_Shape Profile, const TopoDS_Vertex V, const Standard_Boolean WithContact, const Standard_Boolean WithCorrection);
		%feature("autodoc", "1");
		void Set(const Standard_Boolean IsLaw);
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLaw() const;
		%feature("autodoc", "1");
		Standard_Boolean WithContact() const;
		%feature("autodoc", "1");
		Standard_Boolean WithCorrection() const;

};
%feature("shadow") BRepFill_Section::~BRepFill_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Section {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_MultiLineTool;
class BRepFill_MultiLineTool {
	public:
		%feature("autodoc", "1");
		BRepFill_MultiLineTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		static		Standard_Integer NbP2d(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		static		Standard_Integer NbP3d(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		static		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		static		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		static		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		static		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		static		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		static		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%feature("shadow") BRepFill_MultiLineTool::~BRepFill_MultiLineTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_MultiLineTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfFaceAndOrder;
class BRepFill_SequenceNodeOfSequenceOfFaceAndOrder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const BRepFill_FaceAndOrder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_SequenceNodeOfSequenceOfFaceAndOrder::~BRepFill_SequenceNodeOfSequenceOfFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfNodeShape;
class BRepFill_DataMapIteratorOfDataMapOfNodeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeShape(const BRepFill_DataMapOfNodeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfNodeShape &aMap);
		%feature("autodoc", "1");
		const Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfNodeShape::~BRepFill_DataMapIteratorOfDataMapOfNodeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfNodeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const TopoDS_Shape K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape::~BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_OffsetAncestors;
class BRepFill_OffsetAncestors {
	public:
		%feature("autodoc", "1");
		BRepFill_OffsetAncestors();
		%feature("autodoc", "1");
		BRepFill_OffsetAncestors(BRepFill_OffsetWire & Paral);
		%feature("autodoc", "1");
		void Perform(BRepFill_OffsetWire & Paral);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestor(const TopoDS_Edge S1) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Ancestor(const TopoDS_Edge S1) const;

};
%feature("shadow") BRepFill_OffsetAncestors::~BRepFill_OffsetAncestors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_OffsetAncestors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapOfShapeDataMapOfShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeDataMapOfShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeDataMapOfShapeListOfShape & Assign(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeDataMapOfShapeListOfShape & operator=(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_DataMapOfShapeListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepFill_DataMapOfShapeDataMapOfShapeListOfShape::~BRepFill_DataMapOfShapeDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfShapeDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_TrimShellCorner;
class BRepFill_TrimShellCorner {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimShellCorner(const Handle_TopTools_HArray2OfShape &theFaces, const gp_Ax2 theAxeOfBisPlane, const TopoDS_Face theSecPlane);
		%feature("autodoc", "1");
		BRepFill_TrimShellCorner(const Handle_TopTools_HArray2OfShape &theFaces, const gp_Ax2 theAxeOfBisPlane, const TopoDS_Wire theSpine, const TopoDS_Face theSecPlane);
		%feature("autodoc", "1");
		void SetSpine(const TopoDS_Wire theSpine);
		%feature("autodoc", "1");
		void AddBounds(const Handle_TopTools_HArray2OfShape &Bounds);
		%feature("autodoc", "1");
		void AddUEdges(const Handle_TopTools_HArray2OfShape &theUEdges);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSection() const;
		%feature("autodoc", "1");
		void Modified(const TopoDS_Shape S, TopTools_ListOfShape & theModified);

};
%feature("shadow") BRepFill_TrimShellCorner::~BRepFill_TrimShellCorner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_TrimShellCorner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_TrimSurfaceTool;
class BRepFill_TrimSurfaceTool {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimSurfaceTool(const Handle_Geom2d_Curve &Bis, const TopoDS_Face Face1, const TopoDS_Face Face2, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Boolean Inv1, const Standard_Boolean Inv2);
		%feature("autodoc", "1");
		void IntersectWith(const TopoDS_Edge EdgeOnF1, const TopoDS_Edge EdgeOnF2, TColgp_SequenceOfPnt & Points) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnFace(const gp_Pnt2d Point) const;
		%feature("autodoc", "1");
		Standard_Real ProjOn(const gp_Pnt2d Point, const TopoDS_Edge Edge) const;
		%feature("autodoc", "1");
		void Project(const Standard_Real U1, const Standard_Real U2, Handle_Geom_Curve & Curve, Handle_Geom2d_Curve & PCurve1, Handle_Geom2d_Curve & PCurve2, GeomAbs_Shape & myCont) const;

};
%feature("shadow") BRepFill_TrimSurfaceTool::~BRepFill_TrimSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_TrimSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfReal;
class BRepFill_DataMapOfShapeSequenceOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfReal & Assign(const BRepFill_DataMapOfShapeSequenceOfReal &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfReal & operator=(const BRepFill_DataMapOfShapeSequenceOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TColStd_SequenceOfReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepFill_DataMapOfShapeSequenceOfReal::~BRepFill_DataMapOfShapeSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfShapeSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_CompatibleWires;
class BRepFill_CompatibleWires {
	public:
		%feature("autodoc", "1");
		BRepFill_CompatibleWires();
		%feature("autodoc", "1");
		BRepFill_CompatibleWires(const TopTools_SequenceOfShape &Sections);
		%feature("autodoc", "1");
		void Init(const TopTools_SequenceOfShape &Sections);
		%feature("autodoc", "1");
		void SetPercent(const Standard_Real percent=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean WithRotation=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Edge SubSection) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Generated() const;

};
%feature("shadow") BRepFill_CompatibleWires::~BRepFill_CompatibleWires %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_CompatibleWires {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_LocationLaw;
class BRepFill_LocationLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepFill_LocationLaw();
		%feature("autodoc", "1");
		GeomFill_PipeError GetStatus() const;
		%feature("autodoc", "1");
		virtual		void TransformInG0Law();
		%feature("autodoc", "1");
		virtual		void TransformInCompatibleLaw(const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void DeleteTransform();
		%feature("autodoc", "1");
		Standard_Integer NbHoles(const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		void Holes(TColStd_Array1OfInteger & Interval) const;
		%feature("autodoc", "1");
		Standard_Integer NbLaw() const;
		%feature("autodoc", "1");
		const Handle_GeomFill_LocationLaw & Law(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Wire  Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Vertex Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void PerformVertex(const Standard_Integer Index, const TopoDS_Vertex InputVertex, const Standard_Real TolMin, TopoDS_Vertex & OutputVertex, const Standard_Integer Location=0) const;
		%feature("autodoc","CurvilinearBounds(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void CurvilinearBounds(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Integer IsG1(const Standard_Integer Index, const Standard_Real SpatialTolerance=9.99999999999999954748111825886258685613938723691e-8, const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real Abscissa, TopoDS_Shape & Section);
		%feature("autodoc","Parameter(Standard_Real Abscissa) -> [Standard_Integer, Standard_Real]");

		void Parameter(const Standard_Real Abscissa, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real Abscissa(const Standard_Integer Index, const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_LocationLaw {
	Handle_BRepFill_LocationLaw GetHandle() {
	return *(Handle_BRepFill_LocationLaw*) &$self;
	}
};
%extend BRepFill_LocationLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_LocationLaw::~BRepFill_LocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_LocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Edge3DLaw;
class BRepFill_Edge3DLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_Edge3DLaw(const TopoDS_Wire Path, const Handle_GeomFill_LocationLaw &Law);

};
%extend BRepFill_Edge3DLaw {
	Handle_BRepFill_Edge3DLaw GetHandle() {
	return *(Handle_BRepFill_Edge3DLaw*) &$self;
	}
};
%extend BRepFill_Edge3DLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_Edge3DLaw::~BRepFill_Edge3DLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Edge3DLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DraftLaw;
class BRepFill_DraftLaw : public BRepFill_Edge3DLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_DraftLaw(const TopoDS_Wire Path, const Handle_GeomFill_LocationDraft &Law);
		%feature("autodoc", "1");
		void CleanLaw(const Standard_Real TolAngular);

};
%extend BRepFill_DraftLaw {
	Handle_BRepFill_DraftLaw GetHandle() {
	return *(Handle_BRepFill_DraftLaw*) &$self;
	}
};
%extend BRepFill_DraftLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DraftLaw::~BRepFill_DraftLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DraftLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceOfFaceAndOrder;
class BRepFill_SequenceOfFaceAndOrder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfFaceAndOrder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfFaceAndOrder & Assign(const BRepFill_SequenceOfFaceAndOrder &Other);
		%feature("autodoc", "1");
		const BRepFill_SequenceOfFaceAndOrder & operator=(const BRepFill_SequenceOfFaceAndOrder &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_FaceAndOrder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & First() const;
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_FaceAndOrder &I);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepFill_SequenceOfFaceAndOrder::~BRepFill_SequenceOfFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceOfFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceOfSection;
class BRepFill_SequenceOfSection : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfSection();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfSection & Assign(const BRepFill_SequenceOfSection &Other);
		%feature("autodoc", "1");
		const BRepFill_SequenceOfSection & operator=(const BRepFill_SequenceOfSection &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_Section &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_Section &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_Section &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_Section &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		const BRepFill_Section & First() const;
		%feature("autodoc", "1");
		const BRepFill_Section & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		const BRepFill_Section & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_Section & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_Section &I);
		%feature("autodoc", "1");
		BRepFill_Section & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_Section & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepFill_SequenceOfSection::~BRepFill_SequenceOfSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceOfSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Pipe;
class BRepFill_Pipe {
	public:
		%feature("autodoc", "1");
		BRepFill_Pipe();
		%feature("autodoc", "1");
		BRepFill_Pipe(const TopoDS_Wire Spine, const TopoDS_Shape Profile, const Standard_Boolean GeneratePartCase=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Wire Spine, const TopoDS_Shape Profile, const Standard_Boolean GeneratePartCase=0);
		%feature("autodoc", "1");
		const TopoDS_Shape  Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Profile() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  LastShape() const;
		%feature("autodoc", "1");
		TopoDS_Face Face(const TopoDS_Edge ESpine, const TopoDS_Edge EProfile);
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const TopoDS_Edge ESpine, const TopoDS_Vertex VProfile);
		%feature("autodoc", "1");
		TopoDS_Shape Section(const TopoDS_Vertex VSpine) const;
		%feature("autodoc", "1");
		TopoDS_Wire PipeLine(const gp_Pnt Point) const;

};
%feature("shadow") BRepFill_Pipe::~BRepFill_Pipe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Pipe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ListIteratorOfListOfOffsetWire;
class BRepFill_ListIteratorOfListOfOffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_ListIteratorOfListOfOffsetWire();
		%feature("autodoc", "1");
		BRepFill_ListIteratorOfListOfOffsetWire(const BRepFill_ListOfOffsetWire &L);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_ListOfOffsetWire &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Value() const;

};
%feature("shadow") BRepFill_ListIteratorOfListOfOffsetWire::~BRepFill_ListIteratorOfListOfOffsetWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ListIteratorOfListOfOffsetWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ListNodeOfListOfOffsetWire;
class BRepFill_ListNodeOfListOfOffsetWire : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_ListNodeOfListOfOffsetWire(const BRepFill_OffsetWire &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ListNodeOfListOfOffsetWire {
	Handle_BRepFill_ListNodeOfListOfOffsetWire GetHandle() {
	return *(Handle_BRepFill_ListNodeOfListOfOffsetWire*) &$self;
	}
};
%extend BRepFill_ListNodeOfListOfOffsetWire {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_ListNodeOfListOfOffsetWire::~BRepFill_ListNodeOfListOfOffsetWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ListNodeOfListOfOffsetWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt(const BRepFill_DataMapOfShapeSequenceOfPnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfPnt &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt::~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_EdgeFaceAndOrder;
class BRepFill_EdgeFaceAndOrder {
	public:
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder();
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder(const TopoDS_Edge anEdge, const TopoDS_Face aFace, const GeomAbs_Shape anOrder);

};
%feature("shadow") BRepFill_EdgeFaceAndOrder::~BRepFill_EdgeFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_EdgeFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ACRLaw;
class BRepFill_ACRLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_ACRLaw(const TopoDS_Wire Path, const Handle_GeomFill_LocationGuide &Law);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ACRLaw {
	Handle_BRepFill_ACRLaw GetHandle() {
	return *(Handle_BRepFill_ACRLaw*) &$self;
	}
};
%extend BRepFill_ACRLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_ACRLaw::~BRepFill_ACRLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ACRLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_EdgeOnSurfLaw;
class BRepFill_EdgeOnSurfLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_EdgeOnSurfLaw(const TopoDS_Wire Path, const TopoDS_Shape Surf);
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_EdgeOnSurfLaw {
	Handle_BRepFill_EdgeOnSurfLaw GetHandle() {
	return *(Handle_BRepFill_EdgeOnSurfLaw*) &$self;
	}
};
%extend BRepFill_EdgeOnSurfLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_EdgeOnSurfLaw::~BRepFill_EdgeOnSurfLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_EdgeOnSurfLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const Handle_MAT_Node &K, const TopTools_DataMapOfShapeShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape::~BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill;
class BRepFill {
	public:
		%feature("autodoc", "1");
		BRepFill();
		%feature("autodoc", "1");
		static		TopoDS_Face Face(const TopoDS_Edge Edge1, const TopoDS_Edge Edge2);
		%feature("autodoc", "1");
		static		TopoDS_Shell Shell(const TopoDS_Wire Wire1, const TopoDS_Wire Wire2);
		%feature("autodoc", "1");
		static		void Axe(const TopoDS_Shape Spine, const TopoDS_Wire Profile, gp_Ax3 & AxeProf, Standard_Boolean & ProfOnSpine, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		void ComputeACR(const TopoDS_Wire wire, TColStd_Array1OfReal & ACR);
		%feature("autodoc", "1");
		static		TopoDS_Wire InsertACR(const TopoDS_Wire wire, const TColStd_Array1OfReal &ACRcuts, const Standard_Real prec);

};
%feature("shadow") BRepFill::~BRepFill %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_PipeShell;
class BRepFill_PipeShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepFill_PipeShell(const TopoDS_Wire Spine);
		%feature("autodoc", "1");
		void Set(const Standard_Boolean Frenet=0);
		%feature("autodoc", "1");
		void Set(const gp_Ax2 Axe);
		%feature("autodoc", "1");
		void Set(const gp_Dir BiNormal);
		%feature("autodoc", "1");
		Standard_Boolean Set(const TopoDS_Shape SpineSupport);
		%feature("autodoc", "1");
		void Set(const TopoDS_Wire AuxiliarySpine, const Standard_Boolean CurvilinearEquivalence=1, const Standard_Boolean KeepContact=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape Profile, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape Profile, const TopoDS_Vertex Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape Profile, const Handle_Law_Function &L, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape Profile, const Handle_Law_Function &L, const TopoDS_Vertex Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Delete(const TopoDS_Shape Profile);
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		GeomFill_PipeError GetStatus() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real BoundTol=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAngular=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetTransition(const BRepFill_TransitionStyle Mode=BRepFill_Modified, const Standard_Real Angmin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Angmax=6.0e+0);
		%feature("autodoc", "1");
		void Simulate(const Standard_Integer NumberOfSection, TopTools_ListOfShape & Sections);
		%feature("autodoc", "1");
		Standard_Boolean Build();
		%feature("autodoc", "1");
		Standard_Boolean MakeSolid();
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  LastShape() const;
		%feature("autodoc", "1");
		void Generated(const TopoDS_Shape S, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_PipeShell {
	Handle_BRepFill_PipeShell GetHandle() {
	return *(Handle_BRepFill_PipeShell*) &$self;
	}
};
%extend BRepFill_PipeShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_PipeShell::~BRepFill_PipeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_PipeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Generator;
class BRepFill_Generator {
	public:
		%feature("autodoc", "1");
		BRepFill_Generator();
		%feature("autodoc", "1");
		void AddWire(const TopoDS_Wire Wire);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Shell  Shell() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Generated() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape SSection) const;

};
%feature("shadow") BRepFill_Generator::~BRepFill_Generator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Generator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ShapeLaw;
class BRepFill_ShapeLaw : public BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Vertex V, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Wire W, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Wire W, const Handle_Law_Function &L, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_SectionLaw ConcatenedLaw() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const Standard_Integer Index, const Standard_Real TolAngular) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VertexTol(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex Vertex(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real Param, TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ShapeLaw {
	Handle_BRepFill_ShapeLaw GetHandle() {
	return *(Handle_BRepFill_ShapeLaw*) &$self;
	}
};
%extend BRepFill_ShapeLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_ShapeLaw::~BRepFill_ShapeLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ShapeLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfNodeShape;
class BRepFill_DataMapOfNodeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeShape & Assign(const BRepFill_DataMapOfNodeShape &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeShape & operator=(const BRepFill_DataMapOfNodeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_MAT_Node &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Handle_MAT_Node &K);

};
%feature("shadow") BRepFill_DataMapOfNodeShape::~BRepFill_DataMapOfNodeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfNodeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SectionPlacement;
class BRepFill_SectionPlacement {
	public:
		%feature("autodoc", "1");
		BRepFill_SectionPlacement(const Handle_BRepFill_LocationLaw &Law, const TopoDS_Shape Section, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		BRepFill_SectionPlacement(const Handle_BRepFill_LocationLaw &Law, const TopoDS_Shape Section, const TopoDS_Shape Vertex, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		const gp_Trsf  Transformation() const;
		%feature("autodoc", "1");
		Standard_Real AbscissaOnPath();

};
%feature("shadow") BRepFill_SectionPlacement::~BRepFill_SectionPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SectionPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Draft;
class BRepFill_Draft {
	public:
		%feature("autodoc", "1");
		BRepFill_Draft(const TopoDS_Shape Shape, const gp_Dir Dir, const Standard_Real Angle);
		%feature("autodoc", "1");
		void SetOptions(const BRepFill_TransitionStyle Style=BRepFill_Right, const Standard_Real AngleMin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real AngleMax=3.0e+0);
		%feature("autodoc", "1");
		void SetDraft(const Standard_Boolean IsInternal=0);
		%feature("autodoc", "1");
		void Perform(const Standard_Real LengthMax);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom_Surface &Surface, const Standard_Boolean KeepInsideSurface=1);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape StopShape, const Standard_Boolean KeepOutSide=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shell Shell() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;

};
%feature("shadow") BRepFill_Draft::~BRepFill_Draft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Draft {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const TopoDS_Shape K, const TopTools_DataMapOfShapeListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape::~BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Evolved;
class BRepFill_Evolved {
	public:
		%feature("autodoc", "1");
		BRepFill_Evolved();
		%feature("autodoc", "1");
		BRepFill_Evolved(const TopoDS_Wire Spine, const TopoDS_Wire Profile, const gp_Ax3 AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		BRepFill_Evolved(const TopoDS_Face Spine, const TopoDS_Wire Profile, const gp_Ax3 AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Wire Spine, const TopoDS_Wire Profile, const gp_Ax3 AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face Spine, const TopoDS_Wire Profile, const gp_Ax3 AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape SpineShape, const TopoDS_Shape ProfShape) const;
		%feature("autodoc", "1");
		GeomAbs_JoinType JoinType() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Top() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Bottom() const;

};
%feature("shadow") BRepFill_Evolved::~BRepFill_Evolved %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Evolved {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_Sweep;
class BRepFill_Sweep {
	public:
		%feature("autodoc", "1");
		BRepFill_Sweep(const Handle_BRepFill_SectionLaw &Section, const Handle_BRepFill_LocationLaw &Location, const Standard_Boolean WithKPart);
		%feature("autodoc", "1");
		void SetBounds(const TopoDS_Wire FirstShape, const TopoDS_Wire LastShape);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d, const Standard_Real BoundTol=1.0e+0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real TolAngular=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetAngularControl(const Standard_Real AngleMin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real AngleMax=6.0e+0);
		%feature("autodoc", "1");
		void Build(const BRepFill_TransitionStyle Transition=BRepFill_Modified, const GeomFill_ApproxStyle Approx=GeomFill_Location, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Integer Degmax=10, const Standard_Integer Segmax=30);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Standard_Real ErrorOnSurface() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape SubShape() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape InterFaces() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape Sections() const;

};
%feature("shadow") BRepFill_Sweep::~BRepFill_Sweep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_Sweep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_MultiLine;
class BRepFill_MultiLine {
	public:
		%feature("autodoc", "1");
		BRepFill_MultiLine();
		%feature("autodoc", "1");
		BRepFill_MultiLine(const TopoDS_Face Face1, const TopoDS_Face Face2, const TopoDS_Edge Edge1, const TopoDS_Edge Edge2, const Standard_Boolean Inv1, const Standard_Boolean Inv2, const Handle_Geom2d_Curve &Bissec);
		%feature("autodoc", "1");
		Standard_Boolean IsParticularCase() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		void Curves(Handle_Geom_Curve & Curve, Handle_Geom2d_Curve & PCurve1, Handle_Geom2d_Curve & PCurve2) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnF1(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnF2(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Value3dOnF1OnF2(const Standard_Real U, gp_Pnt & P3d, gp_Pnt2d & PF1, gp_Pnt2d & PF2) const;

};
%feature("shadow") BRepFill_MultiLine::~BRepFill_MultiLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_MultiLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapOfOrientedShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfOrientedShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfOrientedShapeListOfShape & Assign(const BRepFill_DataMapOfOrientedShapeListOfShape &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfOrientedShapeListOfShape & operator=(const BRepFill_DataMapOfOrientedShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepFill_DataMapOfOrientedShapeListOfShape::~BRepFill_DataMapOfOrientedShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfOrientedShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfNodeShape;
class BRepFill_DataMapNodeOfDataMapOfNodeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfNodeShape(const Handle_MAT_Node &K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfNodeShape::~BRepFill_DataMapNodeOfDataMapOfNodeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceOfEdgeFaceAndOrder;
class BRepFill_SequenceOfEdgeFaceAndOrder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfEdgeFaceAndOrder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfEdgeFaceAndOrder & Assign(const BRepFill_SequenceOfEdgeFaceAndOrder &Other);
		%feature("autodoc", "1");
		const BRepFill_SequenceOfEdgeFaceAndOrder & operator=(const BRepFill_SequenceOfEdgeFaceAndOrder &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & First() const;
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &I);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepFill_SequenceOfEdgeFaceAndOrder::~BRepFill_SequenceOfEdgeFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceOfEdgeFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_MyLeastSquareOfComputeCLine;
class BRepFill_MyLeastSquareOfComputeCLine {
	public:
		%feature("autodoc", "1");
		BRepFill_MyLeastSquareOfComputeCLine(const BRepFill_MultiLine &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepFill_MyLeastSquareOfComputeCLine::~BRepFill_MyLeastSquareOfComputeCLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_MyLeastSquareOfComputeCLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const TopoDS_Shape K, const TopTools_SequenceOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape::~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const TopoDS_Shape K, const TColgp_SequenceOfPnt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt::~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_FaceAndOrder;
class BRepFill_FaceAndOrder {
	public:
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder();
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder(const TopoDS_Face aFace, const GeomAbs_Shape anOrder);

};
%feature("shadow") BRepFill_FaceAndOrder::~BRepFill_FaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_FaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ApproxSeewing;
class BRepFill_ApproxSeewing {
	public:
		%feature("autodoc", "1");
		BRepFill_ApproxSeewing();
		%feature("autodoc", "1");
		BRepFill_ApproxSeewing(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		void Perform(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & CurveOnF1() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & CurveOnF2() const;

};
%feature("shadow") BRepFill_ApproxSeewing::~BRepFill_ApproxSeewing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ApproxSeewing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfSection;
class BRepFill_SequenceNodeOfSequenceOfSection : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfSection(const BRepFill_Section &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_Section & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfSection {
	Handle_BRepFill_SequenceNodeOfSequenceOfSection GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfSection*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfSection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_SequenceNodeOfSequenceOfSection::~BRepFill_SequenceNodeOfSequenceOfSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceNodeOfSequenceOfSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ListOfOffsetWire;
class BRepFill_ListOfOffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_ListOfOffsetWire();
		%feature("autodoc", "1");
		void Assign(const BRepFill_ListOfOffsetWire &Other);
		%feature("autodoc", "1");
		void operator=(const BRepFill_ListOfOffsetWire &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepFill_OffsetWire &I);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepFill_ListOfOffsetWire & Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_OffsetWire &I);
		%feature("autodoc", "1");
		void Append(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & theIt);
		%feature("autodoc", "1");
		void Append(BRepFill_ListOfOffsetWire & Other);
		%feature("autodoc", "1");
		BRepFill_OffsetWire & First() const;
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepFill_ListOfOffsetWire & Other, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepFill_ListOfOffsetWire & Other, BRepFill_ListIteratorOfListOfOffsetWire & It);

};
%feature("shadow") BRepFill_ListOfOffsetWire::~BRepFill_ListOfOffsetWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ListOfOffsetWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const TopoDS_Shape K, const TColStd_SequenceOfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal::~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape(const BRepFill_DataMapOfNodeDataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfNodeDataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		const Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape::~BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_ComputeCLine;
class BRepFill_ComputeCLine {
	public:
		%feature("autodoc", "1");
		BRepFill_ComputeCLine(const BRepFill_MultiLine &Line, const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		BRepFill_ComputeCLine(const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		void Perform(const BRepFill_MultiLine &Line);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint FirstC, const AppParCurves_Constraint LastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc","Error(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Error(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultiCurves() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value(const Standard_Integer Index=1) const;
		%feature("autodoc","Parameters(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepFill_ComputeCLine::~BRepFill_ComputeCLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_ComputeCLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapOfShapeSequenceOfPnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfPnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfPnt & Assign(const BRepFill_DataMapOfShapeSequenceOfPnt &Other);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfPnt & operator=(const BRepFill_DataMapOfShapeSequenceOfPnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TColgp_SequenceOfPnt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepFill_DataMapOfShapeSequenceOfPnt::~BRepFill_DataMapOfShapeSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapOfShapeSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder;
class BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const BRepFill_EdgeFaceAndOrder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder::~BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape(const BRepFill_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Value() const;

};
%feature("shadow") BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape::~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};
