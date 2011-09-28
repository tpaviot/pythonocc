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

%module StepRepr
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepRepr_renames.i


%include StepRepr_required_python_modules.i


%include StepRepr_dependencies.i


%include StepRepr_headers.i




%nodefaultctor Handle_StepRepr_RepresentationContext;
class Handle_StepRepr_RepresentationContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext(const Handle_StepRepr_RepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext(const StepRepr_RepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext & operator=(const Handle_StepRepr_RepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext & operator=(const StepRepr_RepresentationContext *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_RepresentationContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationContext {
	StepRepr_RepresentationContext* GetObject() {
	return (StepRepr_RepresentationContext*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_RepresentationContext::~Handle_StepRepr_RepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_RepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_GlobalUncertaintyAssignedContext;
class Handle_StepRepr_GlobalUncertaintyAssignedContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext(const Handle_StepRepr_GlobalUncertaintyAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext(const StepRepr_GlobalUncertaintyAssignedContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext & operator=(const Handle_StepRepr_GlobalUncertaintyAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUncertaintyAssignedContext & operator=(const StepRepr_GlobalUncertaintyAssignedContext *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_GlobalUncertaintyAssignedContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_GlobalUncertaintyAssignedContext {
	StepRepr_GlobalUncertaintyAssignedContext* GetObject() {
	return (StepRepr_GlobalUncertaintyAssignedContext*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_GlobalUncertaintyAssignedContext::~Handle_StepRepr_GlobalUncertaintyAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_GlobalUncertaintyAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ParametricRepresentationContext;
class Handle_StepRepr_ParametricRepresentationContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext();
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext(const Handle_StepRepr_ParametricRepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext(const StepRepr_ParametricRepresentationContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext & operator=(const Handle_StepRepr_ParametricRepresentationContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ParametricRepresentationContext & operator=(const StepRepr_ParametricRepresentationContext *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ParametricRepresentationContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ParametricRepresentationContext {
	StepRepr_ParametricRepresentationContext* GetObject() {
	return (StepRepr_ParametricRepresentationContext*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ParametricRepresentationContext::~Handle_StepRepr_ParametricRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ParametricRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeAspectRelationship;
class Handle_StepRepr_ShapeAspectRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship(const Handle_StepRepr_ShapeAspectRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship(const StepRepr_ShapeAspectRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship & operator=(const Handle_StepRepr_ShapeAspectRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship & operator=(const StepRepr_ShapeAspectRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeAspectRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectRelationship {
	StepRepr_ShapeAspectRelationship* GetObject() {
	return (StepRepr_ShapeAspectRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeAspectRelationship::~Handle_StepRepr_ShapeAspectRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeAspectRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_HArray1OfMaterialPropertyRepresentation;
class Handle_StepRepr_HArray1OfMaterialPropertyRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation(const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation(const StepRepr_HArray1OfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation & operator=(const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation & operator=(const StepRepr_HArray1OfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfMaterialPropertyRepresentation {
	StepRepr_HArray1OfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_HArray1OfMaterialPropertyRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_HArray1OfMaterialPropertyRepresentation::~Handle_StepRepr_HArray1OfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_HArray1OfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ProductDefinitionUsage;
class Handle_StepRepr_ProductDefinitionUsage : public Handle_StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage(const Handle_StepRepr_ProductDefinitionUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage(const StepRepr_ProductDefinitionUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage & operator=(const Handle_StepRepr_ProductDefinitionUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionUsage & operator=(const StepRepr_ProductDefinitionUsage *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ProductDefinitionUsage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductDefinitionUsage {
	StepRepr_ProductDefinitionUsage* GetObject() {
	return (StepRepr_ProductDefinitionUsage*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ProductDefinitionUsage::~Handle_StepRepr_ProductDefinitionUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ProductDefinitionUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MakeFromUsageOption;
class Handle_StepRepr_MakeFromUsageOption : public Handle_StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption();
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption(const Handle_StepRepr_MakeFromUsageOption &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption(const StepRepr_MakeFromUsageOption *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption & operator=(const Handle_StepRepr_MakeFromUsageOption &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MakeFromUsageOption & operator=(const StepRepr_MakeFromUsageOption *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MakeFromUsageOption DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MakeFromUsageOption {
	StepRepr_MakeFromUsageOption* GetObject() {
	return (StepRepr_MakeFromUsageOption*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MakeFromUsageOption::~Handle_StepRepr_MakeFromUsageOption %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MakeFromUsageOption {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_RepresentationRelationship;
class Handle_StepRepr_RepresentationRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship(const Handle_StepRepr_RepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship(const StepRepr_RepresentationRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship & operator=(const Handle_StepRepr_RepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship & operator=(const StepRepr_RepresentationRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_RepresentationRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationRelationship {
	StepRepr_RepresentationRelationship* GetObject() {
	return (StepRepr_RepresentationRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_RepresentationRelationship::~Handle_StepRepr_RepresentationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_RepresentationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationship;
class Handle_StepRepr_ShapeRepresentationRelationship : public Handle_StepRepr_RepresentationRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship(const Handle_StepRepr_ShapeRepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship(const StepRepr_ShapeRepresentationRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship & operator=(const Handle_StepRepr_ShapeRepresentationRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship & operator=(const StepRepr_ShapeRepresentationRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeRepresentationRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeRepresentationRelationship {
	StepRepr_ShapeRepresentationRelationship* GetObject() {
	return (StepRepr_ShapeRepresentationRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeRepresentationRelationship::~Handle_StepRepr_ShapeRepresentationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeRepresentationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_RepresentationRelationshipWithTransformation;
class Handle_StepRepr_RepresentationRelationshipWithTransformation : public Handle_StepRepr_ShapeRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation(const Handle_StepRepr_RepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation(const StepRepr_RepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation & operator=(const Handle_StepRepr_RepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationshipWithTransformation & operator=(const StepRepr_RepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_RepresentationRelationshipWithTransformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationRelationshipWithTransformation {
	StepRepr_RepresentationRelationshipWithTransformation* GetObject() {
	return (StepRepr_RepresentationRelationshipWithTransformation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_RepresentationRelationshipWithTransformation::~Handle_StepRepr_RepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_RepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_Representation;
class Handle_StepRepr_Representation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_Representation();
		%feature("autodoc", "1");
		Handle_StepRepr_Representation(const Handle_StepRepr_Representation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation(const StepRepr_Representation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation & operator=(const Handle_StepRepr_Representation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation & operator=(const StepRepr_Representation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_Representation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_Representation {
	StepRepr_Representation* GetObject() {
	return (StepRepr_Representation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_Representation::~Handle_StepRepr_Representation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_Representation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ProductConcept;
class Handle_StepRepr_ProductConcept : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept(const Handle_StepRepr_ProductConcept &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept(const StepRepr_ProductConcept *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept & operator=(const Handle_StepRepr_ProductConcept &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept & operator=(const StepRepr_ProductConcept *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ProductConcept DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductConcept {
	StepRepr_ProductConcept* GetObject() {
	return (StepRepr_ProductConcept*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ProductConcept::~Handle_StepRepr_ProductConcept %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ProductConcept {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_PropertyDefinitionRelationship;
class Handle_StepRepr_PropertyDefinitionRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship(const Handle_StepRepr_PropertyDefinitionRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship(const StepRepr_PropertyDefinitionRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship & operator=(const Handle_StepRepr_PropertyDefinitionRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship & operator=(const StepRepr_PropertyDefinitionRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_PropertyDefinitionRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinitionRelationship {
	StepRepr_PropertyDefinitionRelationship* GetObject() {
	return (StepRepr_PropertyDefinitionRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_PropertyDefinitionRelationship::~Handle_StepRepr_PropertyDefinitionRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_PropertyDefinitionRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation;
class Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation(const StepRepr_HSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation & operator=(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation & operator=(const StepRepr_HSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation {
	StepRepr_HSequenceOfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_HSequenceOfMaterialPropertyRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation::~Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_AssemblyComponentUsage;
class Handle_StepRepr_AssemblyComponentUsage : public Handle_StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage(const Handle_StepRepr_AssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage(const StepRepr_AssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage & operator=(const Handle_StepRepr_AssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage & operator=(const StepRepr_AssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_AssemblyComponentUsage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_AssemblyComponentUsage {
	StepRepr_AssemblyComponentUsage* GetObject() {
	return (StepRepr_AssemblyComponentUsage*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_AssemblyComponentUsage::~Handle_StepRepr_AssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_AssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation;
class Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation & operator=(const Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation & operator=(const StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation* GetObject() {
	return (StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation::~Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_PropertyDefinition;
class Handle_StepRepr_PropertyDefinition : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition(const Handle_StepRepr_PropertyDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition(const StepRepr_PropertyDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition & operator=(const Handle_StepRepr_PropertyDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition & operator=(const StepRepr_PropertyDefinition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_PropertyDefinition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinition {
	StepRepr_PropertyDefinition* GetObject() {
	return (StepRepr_PropertyDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_PropertyDefinition::~Handle_StepRepr_PropertyDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_PropertyDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeAspect;
class Handle_StepRepr_ShapeAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect(const Handle_StepRepr_ShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect(const StepRepr_ShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect & operator=(const Handle_StepRepr_ShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect & operator=(const StepRepr_ShapeAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspect {
	StepRepr_ShapeAspect* GetObject() {
	return (StepRepr_ShapeAspect*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeAspect::~Handle_StepRepr_ShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_CompositeShapeAspect;
class Handle_StepRepr_CompositeShapeAspect : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect(const Handle_StepRepr_CompositeShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect(const StepRepr_CompositeShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect & operator=(const Handle_StepRepr_CompositeShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompositeShapeAspect & operator=(const StepRepr_CompositeShapeAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_CompositeShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_CompositeShapeAspect {
	StepRepr_CompositeShapeAspect* GetObject() {
	return (StepRepr_CompositeShapeAspect*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_CompositeShapeAspect::~Handle_StepRepr_CompositeShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_CompositeShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_RepresentationItem;
class Handle_StepRepr_RepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem(const Handle_StepRepr_RepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem(const StepRepr_RepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator=(const Handle_StepRepr_RepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator=(const StepRepr_RepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_RepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationItem {
	StepRepr_RepresentationItem* GetObject() {
	return (StepRepr_RepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_RepresentationItem::~Handle_StepRepr_RepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_RepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_CompoundRepresentationItem;
class Handle_StepRepr_CompoundRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem(const Handle_StepRepr_CompoundRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem(const StepRepr_CompoundRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem & operator=(const Handle_StepRepr_CompoundRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_CompoundRepresentationItem & operator=(const StepRepr_CompoundRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_CompoundRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_CompoundRepresentationItem {
	StepRepr_CompoundRepresentationItem* GetObject() {
	return (StepRepr_CompoundRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_CompoundRepresentationItem::~Handle_StepRepr_CompoundRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_CompoundRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_HSequenceOfRepresentationItem;
class Handle_StepRepr_HSequenceOfRepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem(const Handle_StepRepr_HSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem(const StepRepr_HSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem & operator=(const Handle_StepRepr_HSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem & operator=(const StepRepr_HSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_HSequenceOfRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HSequenceOfRepresentationItem {
	StepRepr_HSequenceOfRepresentationItem* GetObject() {
	return (StepRepr_HSequenceOfRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_HSequenceOfRepresentationItem::~Handle_StepRepr_HSequenceOfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_HSequenceOfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_FunctionallyDefinedTransformation;
class Handle_StepRepr_FunctionallyDefinedTransformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation(const Handle_StepRepr_FunctionallyDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation(const StepRepr_FunctionallyDefinedTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation & operator=(const Handle_StepRepr_FunctionallyDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation & operator=(const StepRepr_FunctionallyDefinedTransformation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_FunctionallyDefinedTransformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_FunctionallyDefinedTransformation {
	StepRepr_FunctionallyDefinedTransformation* GetObject() {
	return (StepRepr_FunctionallyDefinedTransformation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_FunctionallyDefinedTransformation::~Handle_StepRepr_FunctionallyDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_FunctionallyDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MaterialProperty;
class Handle_StepRepr_MaterialProperty : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty(const Handle_StepRepr_MaterialProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty(const StepRepr_MaterialProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty & operator=(const Handle_StepRepr_MaterialProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialProperty & operator=(const StepRepr_MaterialProperty *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MaterialProperty DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialProperty {
	StepRepr_MaterialProperty* GetObject() {
	return (StepRepr_MaterialProperty*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MaterialProperty::~Handle_StepRepr_MaterialProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MaterialProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_AssemblyComponentUsageSubstitute;
class Handle_StepRepr_AssemblyComponentUsageSubstitute : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute(const Handle_StepRepr_AssemblyComponentUsageSubstitute &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute(const StepRepr_AssemblyComponentUsageSubstitute *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute & operator=(const Handle_StepRepr_AssemblyComponentUsageSubstitute &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsageSubstitute & operator=(const StepRepr_AssemblyComponentUsageSubstitute *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_AssemblyComponentUsageSubstitute DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_AssemblyComponentUsageSubstitute {
	StepRepr_AssemblyComponentUsageSubstitute* GetObject() {
	return (StepRepr_AssemblyComponentUsageSubstitute*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_AssemblyComponentUsageSubstitute::~Handle_StepRepr_AssemblyComponentUsageSubstitute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_AssemblyComponentUsageSubstitute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MappedItem;
class Handle_StepRepr_MappedItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem(const Handle_StepRepr_MappedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem(const StepRepr_MappedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem & operator=(const Handle_StepRepr_MappedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem & operator=(const StepRepr_MappedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MappedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MappedItem {
	StepRepr_MappedItem* GetObject() {
	return (StepRepr_MappedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MappedItem::~Handle_StepRepr_MappedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MappedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_QuantifiedAssemblyComponentUsage;
class Handle_StepRepr_QuantifiedAssemblyComponentUsage : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage(const Handle_StepRepr_QuantifiedAssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage(const StepRepr_QuantifiedAssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage & operator=(const Handle_StepRepr_QuantifiedAssemblyComponentUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_QuantifiedAssemblyComponentUsage & operator=(const StepRepr_QuantifiedAssemblyComponentUsage *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_QuantifiedAssemblyComponentUsage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_QuantifiedAssemblyComponentUsage {
	StepRepr_QuantifiedAssemblyComponentUsage* GetObject() {
	return (StepRepr_QuantifiedAssemblyComponentUsage*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_QuantifiedAssemblyComponentUsage::~Handle_StepRepr_QuantifiedAssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_QuantifiedAssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_RepresentationMap;
class Handle_StepRepr_RepresentationMap : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap();
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap(const Handle_StepRepr_RepresentationMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap(const StepRepr_RepresentationMap *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap & operator=(const Handle_StepRepr_RepresentationMap &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap & operator=(const StepRepr_RepresentationMap *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_RepresentationMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_RepresentationMap {
	StepRepr_RepresentationMap* GetObject() {
	return (StepRepr_RepresentationMap*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_RepresentationMap::~Handle_StepRepr_RepresentationMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_RepresentationMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MaterialDesignation;
class Handle_StepRepr_MaterialDesignation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation(const Handle_StepRepr_MaterialDesignation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation(const StepRepr_MaterialDesignation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation & operator=(const Handle_StepRepr_MaterialDesignation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation & operator=(const StepRepr_MaterialDesignation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MaterialDesignation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialDesignation {
	StepRepr_MaterialDesignation* GetObject() {
	return (StepRepr_MaterialDesignation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MaterialDesignation::~Handle_StepRepr_MaterialDesignation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MaterialDesignation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeAspectTransition;
class Handle_StepRepr_ShapeAspectTransition : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition(const Handle_StepRepr_ShapeAspectTransition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition(const StepRepr_ShapeAspectTransition *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition & operator=(const Handle_StepRepr_ShapeAspectTransition &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectTransition & operator=(const StepRepr_ShapeAspectTransition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeAspectTransition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectTransition {
	StepRepr_ShapeAspectTransition* GetObject() {
	return (StepRepr_ShapeAspectTransition*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeAspectTransition::~Handle_StepRepr_ShapeAspectTransition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeAspectTransition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ItemDefinedTransformation;
class Handle_StepRepr_ItemDefinedTransformation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation(const Handle_StepRepr_ItemDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation(const StepRepr_ItemDefinedTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation & operator=(const Handle_StepRepr_ItemDefinedTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation & operator=(const StepRepr_ItemDefinedTransformation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ItemDefinedTransformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ItemDefinedTransformation {
	StepRepr_ItemDefinedTransformation* GetObject() {
	return (StepRepr_ItemDefinedTransformation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ItemDefinedTransformation::~Handle_StepRepr_ItemDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ItemDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_NextAssemblyUsageOccurrence;
class Handle_StepRepr_NextAssemblyUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence(const Handle_StepRepr_NextAssemblyUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence(const StepRepr_NextAssemblyUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence & operator=(const Handle_StepRepr_NextAssemblyUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence & operator=(const StepRepr_NextAssemblyUsageOccurrence *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_NextAssemblyUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_NextAssemblyUsageOccurrence {
	StepRepr_NextAssemblyUsageOccurrence* GetObject() {
	return (StepRepr_NextAssemblyUsageOccurrence*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_NextAssemblyUsageOccurrence::~Handle_StepRepr_NextAssemblyUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_NextAssemblyUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_DataEnvironment;
class Handle_StepRepr_DataEnvironment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment();
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment(const Handle_StepRepr_DataEnvironment &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment(const StepRepr_DataEnvironment *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment & operator=(const Handle_StepRepr_DataEnvironment &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment & operator=(const StepRepr_DataEnvironment *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_DataEnvironment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DataEnvironment {
	StepRepr_DataEnvironment* GetObject() {
	return (StepRepr_DataEnvironment*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_DataEnvironment::~Handle_StepRepr_DataEnvironment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_DataEnvironment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_DerivedShapeAspect;
class Handle_StepRepr_DerivedShapeAspect : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect();
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect(const Handle_StepRepr_DerivedShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect(const StepRepr_DerivedShapeAspect *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect & operator=(const Handle_StepRepr_DerivedShapeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DerivedShapeAspect & operator=(const StepRepr_DerivedShapeAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_DerivedShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DerivedShapeAspect {
	StepRepr_DerivedShapeAspect* GetObject() {
	return (StepRepr_DerivedShapeAspect*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_DerivedShapeAspect::~Handle_StepRepr_DerivedShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_DerivedShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_Extension;
class Handle_StepRepr_Extension : public Handle_StepRepr_DerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_Extension();
		%feature("autodoc", "1");
		Handle_StepRepr_Extension(const Handle_StepRepr_Extension &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Extension(const StepRepr_Extension *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_Extension & operator=(const Handle_StepRepr_Extension &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_Extension & operator=(const StepRepr_Extension *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_Extension DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_Extension {
	StepRepr_Extension* GetObject() {
	return (StepRepr_Extension*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_Extension::~Handle_StepRepr_Extension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_Extension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ReprItemAndLengthMeasureWithUnit;
class Handle_StepRepr_ReprItemAndLengthMeasureWithUnit : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const StepRepr_ReprItemAndLengthMeasureWithUnit *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit & operator=(const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit & operator=(const StepRepr_ReprItemAndLengthMeasureWithUnit *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ReprItemAndLengthMeasureWithUnit DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit {
	StepRepr_ReprItemAndLengthMeasureWithUnit* GetObject() {
	return (StepRepr_ReprItemAndLengthMeasureWithUnit*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ReprItemAndLengthMeasureWithUnit::~Handle_StepRepr_ReprItemAndLengthMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_PropertyDefinitionRepresentation;
class Handle_StepRepr_PropertyDefinitionRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation(const Handle_StepRepr_PropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation(const StepRepr_PropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & operator=(const Handle_StepRepr_PropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & operator=(const StepRepr_PropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_PropertyDefinitionRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PropertyDefinitionRepresentation {
	StepRepr_PropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_PropertyDefinitionRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_PropertyDefinitionRepresentation::~Handle_StepRepr_PropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_PropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MaterialPropertyRepresentation;
class Handle_StepRepr_MaterialPropertyRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation(const StepRepr_MaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator=(const Handle_StepRepr_MaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator=(const StepRepr_MaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MaterialPropertyRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MaterialPropertyRepresentation {
	StepRepr_MaterialPropertyRepresentation* GetObject() {
	return (StepRepr_MaterialPropertyRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MaterialPropertyRepresentation::~Handle_StepRepr_MaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ProductDefinitionShape;
class Handle_StepRepr_ProductDefinitionShape : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape();
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape(const Handle_StepRepr_ProductDefinitionShape &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape(const StepRepr_ProductDefinitionShape *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape & operator=(const Handle_StepRepr_ProductDefinitionShape &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape & operator=(const StepRepr_ProductDefinitionShape *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ProductDefinitionShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ProductDefinitionShape {
	StepRepr_ProductDefinitionShape* GetObject() {
	return (StepRepr_ProductDefinitionShape*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ProductDefinitionShape::~Handle_StepRepr_ProductDefinitionShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ProductDefinitionShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_HArray1OfRepresentationItem;
class Handle_StepRepr_HArray1OfRepresentationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem(const Handle_StepRepr_HArray1OfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem(const StepRepr_HArray1OfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem & operator=(const Handle_StepRepr_HArray1OfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem & operator=(const StepRepr_HArray1OfRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_HArray1OfRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfRepresentationItem {
	StepRepr_HArray1OfRepresentationItem* GetObject() {
	return (StepRepr_HArray1OfRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_HArray1OfRepresentationItem::~Handle_StepRepr_HArray1OfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_HArray1OfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const StepRepr_StructuralResponsePropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation & operator=(const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation & operator=(const StepRepr_StructuralResponsePropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	StepRepr_StructuralResponsePropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_StructuralResponsePropertyDefinitionRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation::~Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_DescriptiveRepresentationItem;
class Handle_StepRepr_DescriptiveRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem(const Handle_StepRepr_DescriptiveRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem(const StepRepr_DescriptiveRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem & operator=(const Handle_StepRepr_DescriptiveRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem & operator=(const StepRepr_DescriptiveRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_DescriptiveRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DescriptiveRepresentationItem {
	StepRepr_DescriptiveRepresentationItem* GetObject() {
	return (StepRepr_DescriptiveRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_DescriptiveRepresentationItem::~Handle_StepRepr_DescriptiveRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_DescriptiveRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem;
class Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const StepRepr_SequenceNodeOfSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem & operator=(const Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem & operator=(const StepRepr_SequenceNodeOfSequenceOfRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	StepRepr_SequenceNodeOfSequenceOfRepresentationItem* GetObject() {
	return (StepRepr_SequenceNodeOfSequenceOfRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem::~Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_StructuralResponseProperty;
class Handle_StepRepr_StructuralResponseProperty : public Handle_StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty();
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty(const Handle_StepRepr_StructuralResponseProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty(const StepRepr_StructuralResponseProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty & operator=(const Handle_StepRepr_StructuralResponseProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_StructuralResponseProperty & operator=(const StepRepr_StructuralResponseProperty *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_StructuralResponseProperty DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_StructuralResponseProperty {
	StepRepr_StructuralResponseProperty* GetObject() {
	return (StepRepr_StructuralResponseProperty*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_StructuralResponseProperty::~Handle_StepRepr_StructuralResponseProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_StructuralResponseProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_SpecifiedHigherUsageOccurrence;
class Handle_StepRepr_SpecifiedHigherUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence(const Handle_StepRepr_SpecifiedHigherUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence(const StepRepr_SpecifiedHigherUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence & operator=(const Handle_StepRepr_SpecifiedHigherUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SpecifiedHigherUsageOccurrence & operator=(const StepRepr_SpecifiedHigherUsageOccurrence *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_SpecifiedHigherUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SpecifiedHigherUsageOccurrence {
	StepRepr_SpecifiedHigherUsageOccurrence* GetObject() {
	return (StepRepr_SpecifiedHigherUsageOccurrence*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_SpecifiedHigherUsageOccurrence::~Handle_StepRepr_SpecifiedHigherUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_SpecifiedHigherUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_GlobalUnitAssignedContext;
class Handle_StepRepr_GlobalUnitAssignedContext : public Handle_StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext();
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext(const Handle_StepRepr_GlobalUnitAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext(const StepRepr_GlobalUnitAssignedContext *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext & operator=(const Handle_StepRepr_GlobalUnitAssignedContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_GlobalUnitAssignedContext & operator=(const StepRepr_GlobalUnitAssignedContext *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_GlobalUnitAssignedContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_GlobalUnitAssignedContext {
	StepRepr_GlobalUnitAssignedContext* GetObject() {
	return (StepRepr_GlobalUnitAssignedContext*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_GlobalUnitAssignedContext::~Handle_StepRepr_GlobalUnitAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_GlobalUnitAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ValueRange;
class Handle_StepRepr_ValueRange : public Handle_StepRepr_CompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange();
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange(const Handle_StepRepr_ValueRange &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange(const StepRepr_ValueRange *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange & operator=(const Handle_StepRepr_ValueRange &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ValueRange & operator=(const StepRepr_ValueRange *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ValueRange DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ValueRange {
	StepRepr_ValueRange* GetObject() {
	return (StepRepr_ValueRange*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ValueRange::~Handle_StepRepr_ValueRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ValueRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeAspectDerivingRelationship;
class Handle_StepRepr_ShapeAspectDerivingRelationship : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship(const Handle_StepRepr_ShapeAspectDerivingRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship(const StepRepr_ShapeAspectDerivingRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship & operator=(const Handle_StepRepr_ShapeAspectDerivingRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectDerivingRelationship & operator=(const StepRepr_ShapeAspectDerivingRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeAspectDerivingRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeAspectDerivingRelationship {
	StepRepr_ShapeAspectDerivingRelationship* GetObject() {
	return (StepRepr_ShapeAspectDerivingRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeAspectDerivingRelationship::~Handle_StepRepr_ShapeAspectDerivingRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeAspectDerivingRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_DefinitionalRepresentation;
class Handle_StepRepr_DefinitionalRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation(const Handle_StepRepr_DefinitionalRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation(const StepRepr_DefinitionalRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation & operator=(const Handle_StepRepr_DefinitionalRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_DefinitionalRepresentation & operator=(const StepRepr_DefinitionalRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_DefinitionalRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_DefinitionalRepresentation {
	StepRepr_DefinitionalRepresentation* GetObject() {
	return (StepRepr_DefinitionalRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_DefinitionalRepresentation::~Handle_StepRepr_DefinitionalRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_DefinitionalRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation;
class Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation(const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation(const StepRepr_HArray1OfPropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation & operator=(const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation & operator=(const StepRepr_HArray1OfPropertyDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation {
	StepRepr_HArray1OfPropertyDefinitionRepresentation* GetObject() {
	return (StepRepr_HArray1OfPropertyDefinitionRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation::~Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ConfigurationItem;
class Handle_StepRepr_ConfigurationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem(const Handle_StepRepr_ConfigurationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem(const StepRepr_ConfigurationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem & operator=(const Handle_StepRepr_ConfigurationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem & operator=(const StepRepr_ConfigurationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ConfigurationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationItem {
	StepRepr_ConfigurationItem* GetObject() {
	return (StepRepr_ConfigurationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ConfigurationItem::~Handle_StepRepr_ConfigurationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ConfigurationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ExternallyDefinedRepresentation;
class Handle_StepRepr_ExternallyDefinedRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation();
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation(const Handle_StepRepr_ExternallyDefinedRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation(const StepRepr_ExternallyDefinedRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation & operator=(const Handle_StepRepr_ExternallyDefinedRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation & operator=(const StepRepr_ExternallyDefinedRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ExternallyDefinedRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ExternallyDefinedRepresentation {
	StepRepr_ExternallyDefinedRepresentation* GetObject() {
	return (StepRepr_ExternallyDefinedRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ExternallyDefinedRepresentation::~Handle_StepRepr_ExternallyDefinedRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ExternallyDefinedRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ConfigurationEffectivity;
class Handle_StepRepr_ConfigurationEffectivity : public Handle_StepBasic_ProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity(const Handle_StepRepr_ConfigurationEffectivity &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity(const StepRepr_ConfigurationEffectivity *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity & operator=(const Handle_StepRepr_ConfigurationEffectivity &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity & operator=(const StepRepr_ConfigurationEffectivity *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ConfigurationEffectivity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationEffectivity {
	StepRepr_ConfigurationEffectivity* GetObject() {
	return (StepRepr_ConfigurationEffectivity*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ConfigurationEffectivity::~Handle_StepRepr_ConfigurationEffectivity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ConfigurationEffectivity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_MeasureRepresentationItem;
class Handle_StepRepr_MeasureRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem(const Handle_StepRepr_MeasureRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem(const StepRepr_MeasureRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem & operator=(const Handle_StepRepr_MeasureRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem & operator=(const StepRepr_MeasureRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_MeasureRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_MeasureRepresentationItem {
	StepRepr_MeasureRepresentationItem* GetObject() {
	return (StepRepr_MeasureRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_MeasureRepresentationItem::~Handle_StepRepr_MeasureRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_MeasureRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ConfigurationDesign;
class Handle_StepRepr_ConfigurationDesign : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign();
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign(const Handle_StepRepr_ConfigurationDesign &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign(const StepRepr_ConfigurationDesign *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign & operator=(const Handle_StepRepr_ConfigurationDesign &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign & operator=(const StepRepr_ConfigurationDesign *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ConfigurationDesign DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ConfigurationDesign {
	StepRepr_ConfigurationDesign* GetObject() {
	return (StepRepr_ConfigurationDesign*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ConfigurationDesign::~Handle_StepRepr_ConfigurationDesign %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ConfigurationDesign {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_PromissoryUsageOccurrence;
class Handle_StepRepr_PromissoryUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence();
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence(const Handle_StepRepr_PromissoryUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence(const StepRepr_PromissoryUsageOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence & operator=(const Handle_StepRepr_PromissoryUsageOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_PromissoryUsageOccurrence & operator=(const StepRepr_PromissoryUsageOccurrence *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_PromissoryUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_PromissoryUsageOccurrence {
	StepRepr_PromissoryUsageOccurrence* GetObject() {
	return (StepRepr_PromissoryUsageOccurrence*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_PromissoryUsageOccurrence::~Handle_StepRepr_PromissoryUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_PromissoryUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_SuppliedPartRelationship;
class Handle_StepRepr_SuppliedPartRelationship : public Handle_StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship();
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship(const Handle_StepRepr_SuppliedPartRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship(const StepRepr_SuppliedPartRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship & operator=(const Handle_StepRepr_SuppliedPartRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship & operator=(const StepRepr_SuppliedPartRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_SuppliedPartRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_SuppliedPartRelationship {
	StepRepr_SuppliedPartRelationship* GetObject() {
	return (StepRepr_SuppliedPartRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_SuppliedPartRelationship::~Handle_StepRepr_SuppliedPartRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_SuppliedPartRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation;
class Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation : public Handle_StepRepr_RepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const StepRepr_ShapeRepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation & operator=(const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &aHandle);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation & operator=(const StepRepr_ShapeRepresentationRelationshipWithTransformation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation {
	StepRepr_ShapeRepresentationRelationshipWithTransformation* GetObject() {
	return (StepRepr_ShapeRepresentationRelationshipWithTransformation*)$self->Access();
	}
};
%feature("shadow") Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation::~Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Array1OfPropertyDefinitionRepresentation;
class StepRepr_Array1OfPropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation(const Handle_StepRepr_PropertyDefinitionRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfPropertyDefinitionRepresentation & Assign(const StepRepr_Array1OfPropertyDefinitionRepresentation &Other);
		%feature("autodoc", "1");
		const StepRepr_Array1OfPropertyDefinitionRepresentation & operator=(const StepRepr_Array1OfPropertyDefinitionRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_PropertyDefinitionRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & operator()(const Standard_Integer Index);

};
%feature("shadow") StepRepr_Array1OfPropertyDefinitionRepresentation::~StepRepr_Array1OfPropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Array1OfPropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_CharacterizedDefinition;
class StepRepr_CharacterizedDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_CharacterizedObject CharacterizedObject() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_DocumentFile DocumentFile() const;

};
%feature("shadow") StepRepr_CharacterizedDefinition::~StepRepr_CharacterizedDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_CharacterizedDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeAspectRelationship;
class StepRepr_ShapeAspectRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ShapeAspect &aRelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aRelatedShapeAspect);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect RelatingShapeAspect() const;
		%feature("autodoc", "1");
		void SetRelatingShapeAspect(const Handle_StepRepr_ShapeAspect &RelatingShapeAspect);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect RelatedShapeAspect() const;
		%feature("autodoc", "1");
		void SetRelatedShapeAspect(const Handle_StepRepr_ShapeAspect &RelatedShapeAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ShapeAspectRelationship {
	Handle_StepRepr_ShapeAspectRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeAspectRelationship*) &$self;
	}
};
%extend StepRepr_ShapeAspectRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeAspectRelationship::~StepRepr_ShapeAspectRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeAspectRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeAspectTransition;
class StepRepr_ShapeAspectTransition : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectTransition();

};
%extend StepRepr_ShapeAspectTransition {
	Handle_StepRepr_ShapeAspectTransition GetHandle() {
	return *(Handle_StepRepr_ShapeAspectTransition*) &$self;
	}
};
%extend StepRepr_ShapeAspectTransition {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeAspectTransition::~StepRepr_ShapeAspectTransition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeAspectTransition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ConfigurationDesign;
class StepRepr_ConfigurationDesign : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesign();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ConfigurationItem &aConfiguration, const StepRepr_ConfigurationDesignItem &aDesign);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem Configuration() const;
		%feature("autodoc", "1");
		void SetConfiguration(const Handle_StepRepr_ConfigurationItem &Configuration);
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesignItem Design() const;
		%feature("autodoc", "1");
		void SetDesign(const StepRepr_ConfigurationDesignItem &Design);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ConfigurationDesign {
	Handle_StepRepr_ConfigurationDesign GetHandle() {
	return *(Handle_StepRepr_ConfigurationDesign*) &$self;
	}
};
%extend StepRepr_ConfigurationDesign {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ConfigurationDesign::~StepRepr_ConfigurationDesign %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ConfigurationDesign {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentationRelationship;
class StepRepr_RepresentationRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationRelationship();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_Representation &aRep1, const Handle_StepRepr_Representation &aRep2);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetRep1(const Handle_StepRepr_Representation &aRep1);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Rep1() const;
		%feature("autodoc", "1");
		void SetRep2(const Handle_StepRepr_Representation &aRep2);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Rep2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_RepresentationRelationship {
	Handle_StepRepr_RepresentationRelationship GetHandle() {
	return *(Handle_StepRepr_RepresentationRelationship*) &$self;
	}
};
%extend StepRepr_RepresentationRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_RepresentationRelationship::~StepRepr_RepresentationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeRepresentationRelationship;
class StepRepr_ShapeRepresentationRelationship : public StepRepr_RepresentationRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeRepresentationRelationship();

};
%extend StepRepr_ShapeRepresentationRelationship {
	Handle_StepRepr_ShapeRepresentationRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeRepresentationRelationship*) &$self;
	}
};
%extend StepRepr_ShapeRepresentationRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeRepresentationRelationship::~StepRepr_ShapeRepresentationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeRepresentationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentationRelationshipWithTransformation;
class StepRepr_RepresentationRelationshipWithTransformation : public StepRepr_ShapeRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_Representation &aRep1, const Handle_StepRepr_Representation &aRep2, const StepRepr_Transformation &aTransf);
		%feature("autodoc", "1");
		StepRepr_Transformation TransformationOperator() const;
		%feature("autodoc", "1");
		void SetTransformationOperator(const StepRepr_Transformation &aTrans);

};
%extend StepRepr_RepresentationRelationshipWithTransformation {
	Handle_StepRepr_RepresentationRelationshipWithTransformation GetHandle() {
	return *(Handle_StepRepr_RepresentationRelationshipWithTransformation*) &$self;
	}
};
%extend StepRepr_RepresentationRelationshipWithTransformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_RepresentationRelationshipWithTransformation::~StepRepr_RepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_HSequenceOfRepresentationItem;
class StepRepr_HSequenceOfRepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HSequenceOfRepresentationItem();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfRepresentationItem &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepRepr_RepresentationItem &anItem);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfRepresentationItem & Sequence() const;
		%feature("autodoc", "1");
		StepRepr_SequenceOfRepresentationItem & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfRepresentationItem ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_HSequenceOfRepresentationItem {
	Handle_StepRepr_HSequenceOfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_HSequenceOfRepresentationItem*) &$self;
	}
};
%extend StepRepr_HSequenceOfRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_HSequenceOfRepresentationItem::~StepRepr_HSequenceOfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_HSequenceOfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Representation;
class StepRepr_Representation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_Representation();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_HArray1OfRepresentationItem &aItems, const Handle_StepRepr_RepresentationContext &aContextOfItems);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepRepr_HArray1OfRepresentationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem Items() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		void SetContextOfItems(const Handle_StepRepr_RepresentationContext &aContextOfItems);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationContext ContextOfItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_Representation {
	Handle_StepRepr_Representation GetHandle() {
	return *(Handle_StepRepr_Representation*) &$self;
	}
};
%extend StepRepr_Representation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_Representation::~StepRepr_Representation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Representation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_PropertyDefinitionRelationship;
class StepRepr_PropertyDefinitionRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinitionRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_PropertyDefinition &aRelatingPropertyDefinition, const Handle_StepRepr_PropertyDefinition &aRelatedPropertyDefinition);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition RelatingPropertyDefinition() const;
		%feature("autodoc", "1");
		void SetRelatingPropertyDefinition(const Handle_StepRepr_PropertyDefinition &RelatingPropertyDefinition);
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition RelatedPropertyDefinition() const;
		%feature("autodoc", "1");
		void SetRelatedPropertyDefinition(const Handle_StepRepr_PropertyDefinition &RelatedPropertyDefinition);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_PropertyDefinitionRelationship {
	Handle_StepRepr_PropertyDefinitionRelationship GetHandle() {
	return *(Handle_StepRepr_PropertyDefinitionRelationship*) &$self;
	}
};
%extend StepRepr_PropertyDefinitionRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_PropertyDefinitionRelationship::~StepRepr_PropertyDefinitionRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_PropertyDefinitionRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_HArray1OfMaterialPropertyRepresentation;
class StepRepr_HArray1OfMaterialPropertyRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfMaterialPropertyRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_HArray1OfMaterialPropertyRepresentation {
	Handle_StepRepr_HArray1OfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_HArray1OfMaterialPropertyRepresentation*) &$self;
	}
};
%extend StepRepr_HArray1OfMaterialPropertyRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_HArray1OfMaterialPropertyRepresentation::~StepRepr_HArray1OfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_HArray1OfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ProductConcept;
class StepRepr_ProductConcept : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductConcept();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aId, const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_ProductConceptContext &aMarketContext);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Id() const;
		%feature("autodoc", "1");
		void SetId(const Handle_TCollection_HAsciiString &Id);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductConceptContext MarketContext() const;
		%feature("autodoc", "1");
		void SetMarketContext(const Handle_StepBasic_ProductConceptContext &MarketContext);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ProductConcept {
	Handle_StepRepr_ProductConcept GetHandle() {
	return *(Handle_StepRepr_ProductConcept*) &$self;
	}
};
%extend StepRepr_ProductConcept {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ProductConcept::~StepRepr_ProductConcept %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ProductConcept {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentedDefinition;
class StepRepr_RepresentedDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentedDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_GeneralProperty GeneralProperty() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition PropertyDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRelationship PropertyDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;

};
%feature("shadow") StepRepr_RepresentedDefinition::~StepRepr_RepresentedDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentedDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SuppliedPartRelationship;
class StepRepr_SuppliedPartRelationship : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_SuppliedPartRelationship();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_SuppliedPartRelationship {
	Handle_StepRepr_SuppliedPartRelationship GetHandle() {
	return *(Handle_StepRepr_SuppliedPartRelationship*) &$self;
	}
};
%extend StepRepr_SuppliedPartRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_SuppliedPartRelationship::~StepRepr_SuppliedPartRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SuppliedPartRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeAspect;
class StepRepr_ShapeAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspect();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ProductDefinitionShape &aOfShape, const StepData_Logical aProductDefinitional);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetOfShape(const Handle_StepRepr_ProductDefinitionShape &aOfShape);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape OfShape() const;
		%feature("autodoc", "1");
		void SetProductDefinitional(const StepData_Logical aProductDefinitional);
		%feature("autodoc", "1");
		StepData_Logical ProductDefinitional() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ShapeAspect {
	Handle_StepRepr_ShapeAspect GetHandle() {
	return *(Handle_StepRepr_ShapeAspect*) &$self;
	}
};
%extend StepRepr_ShapeAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeAspect::~StepRepr_ShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_DerivedShapeAspect;
class StepRepr_DerivedShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_DerivedShapeAspect();

};
%extend StepRepr_DerivedShapeAspect {
	Handle_StepRepr_DerivedShapeAspect GetHandle() {
	return *(Handle_StepRepr_DerivedShapeAspect*) &$self;
	}
};
%extend StepRepr_DerivedShapeAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_DerivedShapeAspect::~StepRepr_DerivedShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_DerivedShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Extension;
class StepRepr_Extension : public StepRepr_DerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_Extension();

};
%extend StepRepr_Extension {
	Handle_StepRepr_Extension GetHandle() {
	return *(Handle_StepRepr_Extension*) &$self;
	}
};
%extend StepRepr_Extension {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_Extension::~StepRepr_Extension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Extension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SequenceNodeOfSequenceOfRepresentationItem;
class StepRepr_SequenceNodeOfSequenceOfRepresentationItem : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceNodeOfSequenceOfRepresentationItem(const Handle_StepRepr_RepresentationItem &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_SequenceNodeOfSequenceOfRepresentationItem*) &$self;
	}
};
%extend StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_SequenceNodeOfSequenceOfRepresentationItem::~StepRepr_SequenceNodeOfSequenceOfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SequenceNodeOfSequenceOfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ProductDefinitionUsage;
class StepRepr_ProductDefinitionUsage : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductDefinitionUsage();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ProductDefinitionUsage {
	Handle_StepRepr_ProductDefinitionUsage GetHandle() {
	return *(Handle_StepRepr_ProductDefinitionUsage*) &$self;
	}
};
%extend StepRepr_ProductDefinitionUsage {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ProductDefinitionUsage::~StepRepr_ProductDefinitionUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ProductDefinitionUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentationContext;
class StepRepr_RepresentationContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		void SetContextIdentifier(const Handle_TCollection_HAsciiString &aContextIdentifier);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ContextIdentifier() const;
		%feature("autodoc", "1");
		void SetContextType(const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ContextType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_RepresentationContext {
	Handle_StepRepr_RepresentationContext GetHandle() {
	return *(Handle_StepRepr_RepresentationContext*) &$self;
	}
};
%extend StepRepr_RepresentationContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_RepresentationContext::~StepRepr_RepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ParametricRepresentationContext;
class StepRepr_ParametricRepresentationContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_ParametricRepresentationContext();

};
%extend StepRepr_ParametricRepresentationContext {
	Handle_StepRepr_ParametricRepresentationContext GetHandle() {
	return *(Handle_StepRepr_ParametricRepresentationContext*) &$self;
	}
};
%extend StepRepr_ParametricRepresentationContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ParametricRepresentationContext::~StepRepr_ParametricRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ParametricRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeRepresentationRelationshipWithTransformation;
class StepRepr_ShapeRepresentationRelationshipWithTransformation : public StepRepr_RepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation GetHandle() {
	return *(Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation*) &$self;
	}
};
%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeRepresentationRelationshipWithTransformation::~StepRepr_ShapeRepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_HArray1OfRepresentationItem;
class StepRepr_HArray1OfRepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfRepresentationItem & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_HArray1OfRepresentationItem {
	Handle_StepRepr_HArray1OfRepresentationItem GetHandle() {
	return *(Handle_StepRepr_HArray1OfRepresentationItem*) &$self;
	}
};
%extend StepRepr_HArray1OfRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_HArray1OfRepresentationItem::~StepRepr_HArray1OfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_HArray1OfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MaterialDesignation;
class StepRepr_MaterialDesignation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialDesignation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const StepRepr_CharacterizedDefinition &aOfDefinition);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetOfDefinition(const StepRepr_CharacterizedDefinition &aOfDefinition);
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition OfDefinition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_MaterialDesignation {
	Handle_StepRepr_MaterialDesignation GetHandle() {
	return *(Handle_StepRepr_MaterialDesignation*) &$self;
	}
};
%extend StepRepr_MaterialDesignation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MaterialDesignation::~StepRepr_MaterialDesignation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MaterialDesignation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_FunctionallyDefinedTransformation;
class StepRepr_FunctionallyDefinedTransformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_FunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_FunctionallyDefinedTransformation {
	Handle_StepRepr_FunctionallyDefinedTransformation GetHandle() {
	return *(Handle_StepRepr_FunctionallyDefinedTransformation*) &$self;
	}
};
%extend StepRepr_FunctionallyDefinedTransformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_FunctionallyDefinedTransformation::~StepRepr_FunctionallyDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_FunctionallyDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_CompositeShapeAspect;
class StepRepr_CompositeShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepRepr_CompositeShapeAspect();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_CompositeShapeAspect {
	Handle_StepRepr_CompositeShapeAspect GetHandle() {
	return *(Handle_StepRepr_CompositeShapeAspect*) &$self;
	}
};
%extend StepRepr_CompositeShapeAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_CompositeShapeAspect::~StepRepr_CompositeShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_CompositeShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_AssemblyComponentUsage;
class StepRepr_AssemblyComponentUsage : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_AssemblyComponentUsage();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasReferenceDesignator, const Handle_TCollection_HAsciiString &aReferenceDesignator);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceDesignator() const;
		%feature("autodoc", "1");
		void SetReferenceDesignator(const Handle_TCollection_HAsciiString &ReferenceDesignator);
		%feature("autodoc", "1");
		Standard_Boolean HasReferenceDesignator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_AssemblyComponentUsage {
	Handle_StepRepr_AssemblyComponentUsage GetHandle() {
	return *(Handle_StepRepr_AssemblyComponentUsage*) &$self;
	}
};
%extend StepRepr_AssemblyComponentUsage {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_AssemblyComponentUsage::~StepRepr_AssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_AssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_HArray1OfPropertyDefinitionRepresentation;
class StepRepr_HArray1OfPropertyDefinitionRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HArray1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_HArray1OfPropertyDefinitionRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_PropertyDefinitionRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_PropertyDefinitionRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_PropertyDefinitionRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinitionRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepRepr_Array1OfPropertyDefinitionRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepRepr_Array1OfPropertyDefinitionRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_HArray1OfPropertyDefinitionRepresentation {
	Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation*) &$self;
	}
};
%extend StepRepr_HArray1OfPropertyDefinitionRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_HArray1OfPropertyDefinitionRepresentation::~StepRepr_HArray1OfPropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_HArray1OfPropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ConfigurationEffectivity;
class StepRepr_ConfigurationEffectivity : public StepBasic_ProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationEffectivity();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aEffectivity_Id, const Handle_StepBasic_ProductDefinitionRelationship &aProductDefinitionEffectivity_Usage, const Handle_StepRepr_ConfigurationDesign &aConfiguration);
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationDesign Configuration() const;
		%feature("autodoc", "1");
		void SetConfiguration(const Handle_StepRepr_ConfigurationDesign &Configuration);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ConfigurationEffectivity {
	Handle_StepRepr_ConfigurationEffectivity GetHandle() {
	return *(Handle_StepRepr_ConfigurationEffectivity*) &$self;
	}
};
%extend StepRepr_ConfigurationEffectivity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ConfigurationEffectivity::~StepRepr_ConfigurationEffectivity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ConfigurationEffectivity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_GlobalUncertaintyAssignedContext;
class StepRepr_GlobalUncertaintyAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_GlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &aUncertainty);
		%feature("autodoc", "1");
		void SetUncertainty(const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &aUncertainty);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit Uncertainty() const;
		%feature("autodoc", "1");
		Handle_StepBasic_UncertaintyMeasureWithUnit UncertaintyValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUncertainty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_GlobalUncertaintyAssignedContext {
	Handle_StepRepr_GlobalUncertaintyAssignedContext GetHandle() {
	return *(Handle_StepRepr_GlobalUncertaintyAssignedContext*) &$self;
	}
};
%extend StepRepr_GlobalUncertaintyAssignedContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_GlobalUncertaintyAssignedContext::~StepRepr_GlobalUncertaintyAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_GlobalUncertaintyAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_PropertyDefinitionRepresentation;
class StepRepr_PropertyDefinitionRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void Init(const StepRepr_RepresentedDefinition &aDefinition, const Handle_StepRepr_Representation &aUsedRepresentation);
		%feature("autodoc", "1");
		StepRepr_RepresentedDefinition Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const StepRepr_RepresentedDefinition &Definition);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation UsedRepresentation() const;
		%feature("autodoc", "1");
		void SetUsedRepresentation(const Handle_StepRepr_Representation &UsedRepresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_PropertyDefinitionRepresentation {
	Handle_StepRepr_PropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_PropertyDefinitionRepresentation*) &$self;
	}
};
%extend StepRepr_PropertyDefinitionRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_PropertyDefinitionRepresentation::~StepRepr_PropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_PropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MaterialPropertyRepresentation;
class StepRepr_MaterialPropertyRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void Init(const StepRepr_RepresentedDefinition &aPropertyDefinitionRepresentation_Definition, const Handle_StepRepr_Representation &aPropertyDefinitionRepresentation_UsedRepresentation, const Handle_StepRepr_DataEnvironment &aDependentEnvironment);
		%feature("autodoc", "1");
		Handle_StepRepr_DataEnvironment DependentEnvironment() const;
		%feature("autodoc", "1");
		void SetDependentEnvironment(const Handle_StepRepr_DataEnvironment &DependentEnvironment);

};
%extend StepRepr_MaterialPropertyRepresentation {
	Handle_StepRepr_MaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_MaterialPropertyRepresentation*) &$self;
	}
};
%extend StepRepr_MaterialPropertyRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MaterialPropertyRepresentation::~StepRepr_MaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SpecifiedHigherUsageOccurrence;
class StepRepr_SpecifiedHigherUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_SpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator, const Handle_TCollection_HAsciiString &aAssemblyComponentUsage_ReferenceDesignator, const Handle_StepRepr_AssemblyComponentUsage &aUpperUsage, const Handle_StepRepr_NextAssemblyUsageOccurrence &aNextUsage);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage UpperUsage() const;
		%feature("autodoc", "1");
		void SetUpperUsage(const Handle_StepRepr_AssemblyComponentUsage &UpperUsage);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence NextUsage() const;
		%feature("autodoc", "1");
		void SetNextUsage(const Handle_StepRepr_NextAssemblyUsageOccurrence &NextUsage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_SpecifiedHigherUsageOccurrence {
	Handle_StepRepr_SpecifiedHigherUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_SpecifiedHigherUsageOccurrence*) &$self;
	}
};
%extend StepRepr_SpecifiedHigherUsageOccurrence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_SpecifiedHigherUsageOccurrence::~StepRepr_SpecifiedHigherUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SpecifiedHigherUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentationItem;
class StepRepr_RepresentationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_RepresentationItem {
	Handle_StepRepr_RepresentationItem GetHandle() {
	return *(Handle_StepRepr_RepresentationItem*) &$self;
	}
};
%extend StepRepr_RepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_RepresentationItem::~StepRepr_RepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MappedItem;
class StepRepr_MappedItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_MappedItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_RepresentationMap &aMappingSource, const Handle_StepRepr_RepresentationItem &aMappingTarget);
		%feature("autodoc", "1");
		void SetMappingSource(const Handle_StepRepr_RepresentationMap &aMappingSource);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationMap MappingSource() const;
		%feature("autodoc", "1");
		void SetMappingTarget(const Handle_StepRepr_RepresentationItem &aMappingTarget);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem MappingTarget() const;

};
%extend StepRepr_MappedItem {
	Handle_StepRepr_MappedItem GetHandle() {
	return *(Handle_StepRepr_MappedItem*) &$self;
	}
};
%extend StepRepr_MappedItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MappedItem::~StepRepr_MappedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MappedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class StepRepr_StructuralResponsePropertyDefinitionRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_StructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation GetHandle() {
	return *(Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation*) &$self;
	}
};
%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_StructuralResponsePropertyDefinitionRepresentation::~StepRepr_StructuralResponsePropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ReprItemAndLengthMeasureWithUnit;
class StepRepr_ReprItemAndLengthMeasureWithUnit : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_ReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_MeasureWithUnit &aMWU, const Handle_StepRepr_RepresentationItem &aRI);
		%feature("autodoc", "1");
		void SetLengthMeasureWithUnit(const Handle_StepBasic_LengthMeasureWithUnit &aLMWU);
		%feature("autodoc", "1");
		Handle_StepBasic_LengthMeasureWithUnit GetLengthMeasureWithUnit() const;
		%feature("autodoc", "1");
		Handle_StepRepr_MeasureRepresentationItem GetMeasureRepresentationItem() const;
		%feature("autodoc", "1");
		void SetMeasureWithUnit(const Handle_StepBasic_MeasureWithUnit &aMWU);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit GetMeasureWithUnit() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem GetRepresentationItem() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	Handle_StepRepr_ReprItemAndLengthMeasureWithUnit GetHandle() {
	return *(Handle_StepRepr_ReprItemAndLengthMeasureWithUnit*) &$self;
	}
};
%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ReprItemAndLengthMeasureWithUnit::~StepRepr_ReprItemAndLengthMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SequenceOfMaterialPropertyRepresentation;
class StepRepr_SequenceOfMaterialPropertyRepresentation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepRepr_SequenceOfMaterialPropertyRepresentation & Assign(const StepRepr_SequenceOfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfMaterialPropertyRepresentation & operator=(const StepRepr_SequenceOfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void Append(StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void Prepend(StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & First() const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepRepr_SequenceOfMaterialPropertyRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &I);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepRepr_SequenceOfMaterialPropertyRepresentation::~StepRepr_SequenceOfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SequenceOfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeAspectDerivingRelationship;
class StepRepr_ShapeAspectDerivingRelationship : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ShapeAspectDerivingRelationship {
	Handle_StepRepr_ShapeAspectDerivingRelationship GetHandle() {
	return *(Handle_StepRepr_ShapeAspectDerivingRelationship*) &$self;
	}
};
%extend StepRepr_ShapeAspectDerivingRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ShapeAspectDerivingRelationship::~StepRepr_ShapeAspectDerivingRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeAspectDerivingRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Transformation;
class StepRepr_Transformation : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_Transformation();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_ItemDefinedTransformation ItemDefinedTransformation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_FunctionallyDefinedTransformation FunctionallyDefinedTransformation() const;

};
%feature("shadow") StepRepr_Transformation::~StepRepr_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_RepresentationMap;
class StepRepr_RepresentationMap : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_RepresentationMap();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepRepr_RepresentationItem &aMappingOrigin, const Handle_StepRepr_Representation &aMappedRepresentation);
		%feature("autodoc", "1");
		void SetMappingOrigin(const Handle_StepRepr_RepresentationItem &aMappingOrigin);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem MappingOrigin() const;
		%feature("autodoc", "1");
		void SetMappedRepresentation(const Handle_StepRepr_Representation &aMappedRepresentation);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation MappedRepresentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_RepresentationMap {
	Handle_StepRepr_RepresentationMap GetHandle() {
	return *(Handle_StepRepr_RepresentationMap*) &$self;
	}
};
%extend StepRepr_RepresentationMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_RepresentationMap::~StepRepr_RepresentationMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_RepresentationMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Array1OfMaterialPropertyRepresentation;
class StepRepr_Array1OfMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfMaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_MaterialPropertyRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfMaterialPropertyRepresentation & Assign(const StepRepr_Array1OfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		const StepRepr_Array1OfMaterialPropertyRepresentation & operator=(const StepRepr_Array1OfMaterialPropertyRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_MaterialPropertyRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & operator()(const Standard_Integer Index);

};
%feature("shadow") StepRepr_Array1OfMaterialPropertyRepresentation::~StepRepr_Array1OfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Array1OfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_PropertyDefinition;
class StepRepr_PropertyDefinition : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_PropertyDefinition();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const StepRepr_CharacterizedDefinition &aDefinition);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		StepRepr_CharacterizedDefinition Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const StepRepr_CharacterizedDefinition &Definition);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_PropertyDefinition {
	Handle_StepRepr_PropertyDefinition GetHandle() {
	return *(Handle_StepRepr_PropertyDefinition*) &$self;
	}
};
%extend StepRepr_PropertyDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_PropertyDefinition::~StepRepr_PropertyDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_PropertyDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ProductDefinitionShape;
class StepRepr_ProductDefinitionShape : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_ProductDefinitionShape();

};
%extend StepRepr_ProductDefinitionShape {
	Handle_StepRepr_ProductDefinitionShape GetHandle() {
	return *(Handle_StepRepr_ProductDefinitionShape*) &$self;
	}
};
%extend StepRepr_ProductDefinitionShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ProductDefinitionShape::~StepRepr_ProductDefinitionShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ProductDefinitionShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_CompoundRepresentationItem;
class StepRepr_CompoundRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_CompoundRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepRepr_HArray1OfRepresentationItem &item_element);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfRepresentationItem ItemElement() const;
		%feature("autodoc", "1");
		Standard_Integer NbItemElement() const;
		%feature("autodoc", "1");
		void SetItemElement(const Handle_StepRepr_HArray1OfRepresentationItem &item_element);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem ItemElementValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetItemElementValue(const Standard_Integer num, const Handle_StepRepr_RepresentationItem &anelement);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_CompoundRepresentationItem {
	Handle_StepRepr_CompoundRepresentationItem GetHandle() {
	return *(Handle_StepRepr_CompoundRepresentationItem*) &$self;
	}
};
%extend StepRepr_CompoundRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_CompoundRepresentationItem::~StepRepr_CompoundRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_CompoundRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_NextAssemblyUsageOccurrence;
class StepRepr_NextAssemblyUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_NextAssemblyUsageOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_NextAssemblyUsageOccurrence {
	Handle_StepRepr_NextAssemblyUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_NextAssemblyUsageOccurrence*) &$self;
	}
};
%extend StepRepr_NextAssemblyUsageOccurrence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_NextAssemblyUsageOccurrence::~StepRepr_NextAssemblyUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_NextAssemblyUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_GlobalUnitAssignedContext;
class StepRepr_GlobalUnitAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("autodoc", "1");
		StepRepr_GlobalUnitAssignedContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aContextIdentifier, const Handle_TCollection_HAsciiString &aContextType, const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		void SetUnits(const Handle_StepBasic_HArray1OfNamedUnit &aUnits);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfNamedUnit Units() const;
		%feature("autodoc", "1");
		Handle_StepBasic_NamedUnit UnitsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbUnits() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_GlobalUnitAssignedContext {
	Handle_StepRepr_GlobalUnitAssignedContext GetHandle() {
	return *(Handle_StepRepr_GlobalUnitAssignedContext*) &$self;
	}
};
%extend StepRepr_GlobalUnitAssignedContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_GlobalUnitAssignedContext::~StepRepr_GlobalUnitAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_GlobalUnitAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation;
class StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation*) &$self;
	}
};
%extend StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation::~StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SequenceNodeOfSequenceOfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ValueRange;
class StepRepr_ValueRange : public StepRepr_CompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_ValueRange();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ValueRange {
	Handle_StepRepr_ValueRange GetHandle() {
	return *(Handle_StepRepr_ValueRange*) &$self;
	}
};
%extend StepRepr_ValueRange {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ValueRange::~StepRepr_ValueRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ValueRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_SequenceOfRepresentationItem;
class StepRepr_SequenceOfRepresentationItem : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepRepr_SequenceOfRepresentationItem();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepRepr_SequenceOfRepresentationItem & Assign(const StepRepr_SequenceOfRepresentationItem &Other);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfRepresentationItem & operator=(const StepRepr_SequenceOfRepresentationItem &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void Append(StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void Prepend(StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & First() const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepRepr_SequenceOfRepresentationItem & S);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &I);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepRepr_SequenceOfRepresentationItem::~StepRepr_SequenceOfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_SequenceOfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ExternallyDefinedRepresentation;
class StepRepr_ExternallyDefinedRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepRepr_ExternallyDefinedRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ExternallyDefinedRepresentation {
	Handle_StepRepr_ExternallyDefinedRepresentation GetHandle() {
	return *(Handle_StepRepr_ExternallyDefinedRepresentation*) &$self;
	}
};
%extend StepRepr_ExternallyDefinedRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ExternallyDefinedRepresentation::~StepRepr_ExternallyDefinedRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ExternallyDefinedRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_DefinitionalRepresentation;
class StepRepr_DefinitionalRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepRepr_DefinitionalRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_DefinitionalRepresentation {
	Handle_StepRepr_DefinitionalRepresentation GetHandle() {
	return *(Handle_StepRepr_DefinitionalRepresentation*) &$self;
	}
};
%extend StepRepr_DefinitionalRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_DefinitionalRepresentation::~StepRepr_DefinitionalRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_DefinitionalRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_AssemblyComponentUsageSubstitute;
class StepRepr_AssemblyComponentUsageSubstitute : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_AssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDef, const Handle_StepRepr_AssemblyComponentUsage &aBase, const Handle_StepRepr_AssemblyComponentUsage &aSubs);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const Handle_TCollection_HAsciiString &aDef);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage Base() const;
		%feature("autodoc", "1");
		void SetBase(const Handle_StepRepr_AssemblyComponentUsage &aBase);
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage Substitute() const;
		%feature("autodoc", "1");
		void SetSubstitute(const Handle_StepRepr_AssemblyComponentUsage &aSubstitute);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_AssemblyComponentUsageSubstitute {
	Handle_StepRepr_AssemblyComponentUsageSubstitute GetHandle() {
	return *(Handle_StepRepr_AssemblyComponentUsageSubstitute*) &$self;
	}
};
%extend StepRepr_AssemblyComponentUsageSubstitute {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_AssemblyComponentUsageSubstitute::~StepRepr_AssemblyComponentUsageSubstitute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_AssemblyComponentUsageSubstitute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_QuantifiedAssemblyComponentUsage;
class StepRepr_QuantifiedAssemblyComponentUsage : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_QuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator, const Handle_TCollection_HAsciiString &aAssemblyComponentUsage_ReferenceDesignator, const Handle_StepBasic_MeasureWithUnit &aQuantity);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Quantity() const;
		%feature("autodoc", "1");
		void SetQuantity(const Handle_StepBasic_MeasureWithUnit &Quantity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_QuantifiedAssemblyComponentUsage {
	Handle_StepRepr_QuantifiedAssemblyComponentUsage GetHandle() {
	return *(Handle_StepRepr_QuantifiedAssemblyComponentUsage*) &$self;
	}
};
%extend StepRepr_QuantifiedAssemblyComponentUsage {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_QuantifiedAssemblyComponentUsage::~StepRepr_QuantifiedAssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_QuantifiedAssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ShapeDefinition;
class StepRepr_ShapeDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_ShapeDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;

};
%feature("shadow") StepRepr_ShapeDefinition::~StepRepr_ShapeDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ShapeDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_DescriptiveRepresentationItem;
class StepRepr_DescriptiveRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_DescriptiveRepresentationItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_DescriptiveRepresentationItem {
	Handle_StepRepr_DescriptiveRepresentationItem GetHandle() {
	return *(Handle_StepRepr_DescriptiveRepresentationItem*) &$self;
	}
};
%extend StepRepr_DescriptiveRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_DescriptiveRepresentationItem::~StepRepr_DescriptiveRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_DescriptiveRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_HSequenceOfMaterialPropertyRepresentation;
class StepRepr_HSequenceOfMaterialPropertyRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_HSequenceOfMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepRepr_MaterialPropertyRepresentation &anItem);
		%feature("autodoc", "1");
		const Handle_StepRepr_MaterialPropertyRepresentation & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialPropertyRepresentation & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepRepr_SequenceOfMaterialPropertyRepresentation & Sequence() const;
		%feature("autodoc", "1");
		StepRepr_SequenceOfMaterialPropertyRepresentation & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_HSequenceOfMaterialPropertyRepresentation {
	Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepRepr_HSequenceOfMaterialPropertyRepresentation*) &$self;
	}
};
%extend StepRepr_HSequenceOfMaterialPropertyRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_HSequenceOfMaterialPropertyRepresentation::~StepRepr_HSequenceOfMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_HSequenceOfMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_DataEnvironment;
class StepRepr_DataEnvironment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_DataEnvironment();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &aElements);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation Elements() const;
		%feature("autodoc", "1");
		void SetElements(const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &Elements);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_DataEnvironment {
	Handle_StepRepr_DataEnvironment GetHandle() {
	return *(Handle_StepRepr_DataEnvironment*) &$self;
	}
};
%extend StepRepr_DataEnvironment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_DataEnvironment::~StepRepr_DataEnvironment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_DataEnvironment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_Array1OfRepresentationItem;
class StepRepr_Array1OfRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepRepr_Array1OfRepresentationItem(const Handle_StepRepr_RepresentationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_RepresentationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepRepr_Array1OfRepresentationItem & Assign(const StepRepr_Array1OfRepresentationItem &Other);
		%feature("autodoc", "1");
		const StepRepr_Array1OfRepresentationItem & operator=(const StepRepr_Array1OfRepresentationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepRepr_RepresentationItem &Value);
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepRepr_Array1OfRepresentationItem::~StepRepr_Array1OfRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_Array1OfRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ConfigurationDesignItem;
class StepRepr_ConfigurationDesignItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationDesignItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;

};
%feature("shadow") StepRepr_ConfigurationDesignItem::~StepRepr_ConfigurationDesignItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ConfigurationDesignItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MeasureRepresentationItem;
class StepRepr_MeasureRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepRepr_MeasureRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepBasic_MeasureValueMember &aValueComponent, const StepBasic_Unit &aUnitComponent);
		%feature("autodoc", "1");
		void SetMeasure(const Handle_StepBasic_MeasureWithUnit &Measure);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Measure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_MeasureRepresentationItem {
	Handle_StepRepr_MeasureRepresentationItem GetHandle() {
	return *(Handle_StepRepr_MeasureRepresentationItem*) &$self;
	}
};
%extend StepRepr_MeasureRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MeasureRepresentationItem::~StepRepr_MeasureRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MeasureRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MaterialProperty;
class StepRepr_MaterialProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_MaterialProperty();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_MaterialProperty {
	Handle_StepRepr_MaterialProperty GetHandle() {
	return *(Handle_StepRepr_MaterialProperty*) &$self;
	}
};
%extend StepRepr_MaterialProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MaterialProperty::~StepRepr_MaterialProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MaterialProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ItemDefinedTransformation;
class StepRepr_ItemDefinedTransformation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ItemDefinedTransformation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_RepresentationItem &aTransformItem1, const Handle_StepRepr_RepresentationItem &aTransformItem2);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetTransformItem1(const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem TransformItem1() const;
		%feature("autodoc", "1");
		void SetTransformItem2(const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem TransformItem2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ItemDefinedTransformation {
	Handle_StepRepr_ItemDefinedTransformation GetHandle() {
	return *(Handle_StepRepr_ItemDefinedTransformation*) &$self;
	}
};
%extend StepRepr_ItemDefinedTransformation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ItemDefinedTransformation::~StepRepr_ItemDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ItemDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_PromissoryUsageOccurrence;
class StepRepr_PromissoryUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_PromissoryUsageOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_PromissoryUsageOccurrence {
	Handle_StepRepr_PromissoryUsageOccurrence GetHandle() {
	return *(Handle_StepRepr_PromissoryUsageOccurrence*) &$self;
	}
};
%extend StepRepr_PromissoryUsageOccurrence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_PromissoryUsageOccurrence::~StepRepr_PromissoryUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_PromissoryUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_StructuralResponseProperty;
class StepRepr_StructuralResponseProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("autodoc", "1");
		StepRepr_StructuralResponseProperty();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_StructuralResponseProperty {
	Handle_StepRepr_StructuralResponseProperty GetHandle() {
	return *(Handle_StepRepr_StructuralResponseProperty*) &$self;
	}
};
%extend StepRepr_StructuralResponseProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_StructuralResponseProperty::~StepRepr_StructuralResponseProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_StructuralResponseProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_MakeFromUsageOption;
class StepRepr_MakeFromUsageOption : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("autodoc", "1");
		StepRepr_MakeFromUsageOption();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Id, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Name, const Standard_Boolean hasProductDefinitionRelationship_Description, const Handle_TCollection_HAsciiString &aProductDefinitionRelationship_Description, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatingProductDefinition, const Handle_StepBasic_ProductDefinition &aProductDefinitionRelationship_RelatedProductDefinition, const Standard_Integer aRanking, const Handle_TCollection_HAsciiString &aRankingRationale, const Handle_StepBasic_MeasureWithUnit &aQuantity);
		%feature("autodoc", "1");
		Standard_Integer Ranking() const;
		%feature("autodoc", "1");
		void SetRanking(const Standard_Integer Ranking);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString RankingRationale() const;
		%feature("autodoc", "1");
		void SetRankingRationale(const Handle_TCollection_HAsciiString &RankingRationale);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Quantity() const;
		%feature("autodoc", "1");
		void SetQuantity(const Handle_StepBasic_MeasureWithUnit &Quantity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_MakeFromUsageOption {
	Handle_StepRepr_MakeFromUsageOption GetHandle() {
	return *(Handle_StepRepr_MakeFromUsageOption*) &$self;
	}
};
%extend StepRepr_MakeFromUsageOption {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_MakeFromUsageOption::~StepRepr_MakeFromUsageOption %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_MakeFromUsageOption {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepRepr_ConfigurationItem;
class StepRepr_ConfigurationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepRepr_ConfigurationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aId, const Handle_TCollection_HAsciiString &aName, const Standard_Boolean hasDescription, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_ProductConcept &aItemConcept, const Standard_Boolean hasPurpose, const Handle_TCollection_HAsciiString &aPurpose);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Id() const;
		%feature("autodoc", "1");
		void SetId(const Handle_TCollection_HAsciiString &Id);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Boolean HasDescription() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductConcept ItemConcept() const;
		%feature("autodoc", "1");
		void SetItemConcept(const Handle_StepRepr_ProductConcept &ItemConcept);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Purpose() const;
		%feature("autodoc", "1");
		void SetPurpose(const Handle_TCollection_HAsciiString &Purpose);
		%feature("autodoc", "1");
		Standard_Boolean HasPurpose() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepRepr_ConfigurationItem {
	Handle_StepRepr_ConfigurationItem GetHandle() {
	return *(Handle_StepRepr_ConfigurationItem*) &$self;
	}
};
%extend StepRepr_ConfigurationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepRepr_ConfigurationItem::~StepRepr_ConfigurationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepRepr_ConfigurationItem {
	void _kill_pointed() {
		delete $self;
	}
};
