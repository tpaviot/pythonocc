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
%module RWStepRepr
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include RWStepRepr_dependencies.i


%include RWStepRepr_headers.i




%nodefaultctor RWStepRepr_RWShapeAspectRelationship;
class RWStepRepr_RWShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectRelationship();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ShapeAspectRelationship *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ShapeAspectRelationship *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ShapeAspectRelationship *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWShapeAspectRelationship::~RWStepRepr_RWShapeAspectRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWShapeAspectRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWQuantifiedAssemblyComponentUsage;
class RWStepRepr_RWQuantifiedAssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWQuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_QuantifiedAssemblyComponentUsage *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_QuantifiedAssemblyComponentUsage *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_QuantifiedAssemblyComponentUsage *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWQuantifiedAssemblyComponentUsage::~RWStepRepr_RWQuantifiedAssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWQuantifiedAssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWDefinitionalRepresentation;
class RWStepRepr_RWDefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDefinitionalRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_DefinitionalRepresentation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_DefinitionalRepresentation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_DefinitionalRepresentation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWDefinitionalRepresentation::~RWStepRepr_RWDefinitionalRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWDefinitionalRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWCompoundRepresentationItem;
class RWStepRepr_RWCompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWCompoundRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_CompoundRepresentationItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_CompoundRepresentationItem *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_CompoundRepresentationItem *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWCompoundRepresentationItem::~RWStepRepr_RWCompoundRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWCompoundRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWDerivedShapeAspect;
class RWStepRepr_RWDerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDerivedShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_DerivedShapeAspect *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_DerivedShapeAspect *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_DerivedShapeAspect *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWDerivedShapeAspect::~RWStepRepr_RWDerivedShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWDerivedShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWCompositeShapeAspect;
class RWStepRepr_RWCompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWCompositeShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_CompositeShapeAspect *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_CompositeShapeAspect *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_CompositeShapeAspect *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWCompositeShapeAspect::~RWStepRepr_RWCompositeShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWCompositeShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWExtension;
class RWStepRepr_RWExtension {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWExtension();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_Extension *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_Extension *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_Extension *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWExtension::~RWStepRepr_RWExtension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWExtension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWShapeAspectDerivingRelationship;
class RWStepRepr_RWShapeAspectDerivingRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ShapeAspectDerivingRelationship *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ShapeAspectDerivingRelationship *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ShapeAspectDerivingRelationship *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWShapeAspectDerivingRelationship::~RWStepRepr_RWShapeAspectDerivingRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWShapeAspectDerivingRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentationRelationship;
class RWStepRepr_RWRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationRelationship();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_RepresentationRelationship *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_RepresentationRelationship *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_RepresentationRelationship *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWRepresentationRelationship::~RWStepRepr_RWRepresentationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWAssemblyComponentUsageSubstitute;
class RWStepRepr_RWAssemblyComponentUsageSubstitute {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWAssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_AssemblyComponentUsageSubstitute *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_AssemblyComponentUsageSubstitute *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_AssemblyComponentUsageSubstitute *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWAssemblyComponentUsageSubstitute::~RWStepRepr_RWAssemblyComponentUsageSubstitute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWAssemblyComponentUsageSubstitute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWConfigurationItem;
class RWStepRepr_RWConfigurationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ConfigurationItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ConfigurationItem *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ConfigurationItem *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWConfigurationItem::~RWStepRepr_RWConfigurationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWConfigurationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWFunctionallyDefinedTransformation;
class RWStepRepr_RWFunctionallyDefinedTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWFunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_FunctionallyDefinedTransformation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_FunctionallyDefinedTransformation *ent) const;

};
%feature("shadow") RWStepRepr_RWFunctionallyDefinedTransformation::~RWStepRepr_RWFunctionallyDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWFunctionallyDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation;
class RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_StructuralResponsePropertyDefinitionRepresentation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_StructuralResponsePropertyDefinitionRepresentation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_StructuralResponsePropertyDefinitionRepresentation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation::~RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWConfigurationEffectivity;
class RWStepRepr_RWConfigurationEffectivity {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ConfigurationEffectivity *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ConfigurationEffectivity *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ConfigurationEffectivity *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWConfigurationEffectivity::~RWStepRepr_RWConfigurationEffectivity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWConfigurationEffectivity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMakeFromUsageOption;
class RWStepRepr_RWMakeFromUsageOption {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMakeFromUsageOption();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MakeFromUsageOption *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MakeFromUsageOption *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MakeFromUsageOption *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMakeFromUsageOption::~RWStepRepr_RWMakeFromUsageOption %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMakeFromUsageOption {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMappedItem;
class RWStepRepr_RWMappedItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMappedItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MappedItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MappedItem *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MappedItem *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMappedItem::~RWStepRepr_RWMappedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMappedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentationContext;
class RWStepRepr_RWRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_RepresentationContext *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_RepresentationContext *ent) const;

};
%feature("shadow") RWStepRepr_RWRepresentationContext::~RWStepRepr_RWRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWReprItemAndLengthMeasureWithUnit;
class RWStepRepr_RWReprItemAndLengthMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ReprItemAndLengthMeasureWithUnit *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ReprItemAndLengthMeasureWithUnit *ent) const;

};
%feature("shadow") RWStepRepr_RWReprItemAndLengthMeasureWithUnit::~RWStepRepr_RWReprItemAndLengthMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWReprItemAndLengthMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMaterialPropertyRepresentation;
class RWStepRepr_RWMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MaterialPropertyRepresentation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MaterialPropertyRepresentation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MaterialPropertyRepresentation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMaterialPropertyRepresentation::~RWStepRepr_RWMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWStructuralResponseProperty;
class RWStepRepr_RWStructuralResponseProperty {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWStructuralResponseProperty();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_StructuralResponseProperty *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_StructuralResponseProperty *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_StructuralResponseProperty *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWStructuralResponseProperty::~RWStepRepr_RWStructuralResponseProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWStructuralResponseProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWParametricRepresentationContext;
class RWStepRepr_RWParametricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWParametricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ParametricRepresentationContext *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ParametricRepresentationContext *ent) const;

};
%feature("shadow") RWStepRepr_RWParametricRepresentationContext::~RWStepRepr_RWParametricRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWParametricRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMaterialDesignation;
class RWStepRepr_RWMaterialDesignation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialDesignation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MaterialDesignation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MaterialDesignation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MaterialDesignation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMaterialDesignation::~RWStepRepr_RWMaterialDesignation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMaterialDesignation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWProductDefinitionShape;
class RWStepRepr_RWProductDefinitionShape {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWProductDefinitionShape();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ProductDefinitionShape *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ProductDefinitionShape *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ProductDefinitionShape *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWProductDefinitionShape::~RWStepRepr_RWProductDefinitionShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWProductDefinitionShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWDataEnvironment;
class RWStepRepr_RWDataEnvironment {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDataEnvironment();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_DataEnvironment *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_DataEnvironment *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_DataEnvironment *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWDataEnvironment::~RWStepRepr_RWDataEnvironment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWDataEnvironment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWPropertyDefinition;
class RWStepRepr_RWPropertyDefinition {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinition();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_PropertyDefinition *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_PropertyDefinition *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_PropertyDefinition *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWPropertyDefinition::~RWStepRepr_RWPropertyDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWPropertyDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWConfigurationDesign;
class RWStepRepr_RWConfigurationDesign {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationDesign();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ConfigurationDesign *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ConfigurationDesign *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ConfigurationDesign *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWConfigurationDesign::~RWStepRepr_RWConfigurationDesign %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWConfigurationDesign {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentationMap;
class RWStepRepr_RWRepresentationMap {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationMap();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_RepresentationMap *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_RepresentationMap *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_RepresentationMap *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWRepresentationMap::~RWStepRepr_RWRepresentationMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentationMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMaterialProperty;
class RWStepRepr_RWMaterialProperty {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialProperty();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MaterialProperty *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MaterialProperty *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MaterialProperty *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMaterialProperty::~RWStepRepr_RWMaterialProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMaterialProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWDescriptiveRepresentationItem;
class RWStepRepr_RWDescriptiveRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDescriptiveRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_DescriptiveRepresentationItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_DescriptiveRepresentationItem *ent) const;

};
%feature("shadow") RWStepRepr_RWDescriptiveRepresentationItem::~RWStepRepr_RWDescriptiveRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWDescriptiveRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWShapeAspectTransition;
class RWStepRepr_RWShapeAspectTransition {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectTransition();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ShapeAspectTransition *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ShapeAspectTransition *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ShapeAspectTransition *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWShapeAspectTransition::~RWStepRepr_RWShapeAspectTransition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWShapeAspectTransition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWSpecifiedHigherUsageOccurrence;
class RWStepRepr_RWSpecifiedHigherUsageOccurrence {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWSpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_SpecifiedHigherUsageOccurrence *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_SpecifiedHigherUsageOccurrence *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_SpecifiedHigherUsageOccurrence *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWSpecifiedHigherUsageOccurrence::~RWStepRepr_RWSpecifiedHigherUsageOccurrence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWSpecifiedHigherUsageOccurrence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWGlobalUncertaintyAssignedContext;
class RWStepRepr_RWGlobalUncertaintyAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWGlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_GlobalUncertaintyAssignedContext *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_GlobalUncertaintyAssignedContext *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_GlobalUncertaintyAssignedContext *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWGlobalUncertaintyAssignedContext::~RWStepRepr_RWGlobalUncertaintyAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWGlobalUncertaintyAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWShapeAspect;
class RWStepRepr_RWShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ShapeAspect *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ShapeAspect *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ShapeAspect *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWShapeAspect::~RWStepRepr_RWShapeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWShapeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWGlobalUnitAssignedContext;
class RWStepRepr_RWGlobalUnitAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_GlobalUnitAssignedContext *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_GlobalUnitAssignedContext *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_GlobalUnitAssignedContext *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWGlobalUnitAssignedContext::~RWStepRepr_RWGlobalUnitAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWGlobalUnitAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWPropertyDefinitionRelationship;
class RWStepRepr_RWPropertyDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinitionRelationship();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_PropertyDefinitionRelationship *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_PropertyDefinitionRelationship *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_PropertyDefinitionRelationship *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWPropertyDefinitionRelationship::~RWStepRepr_RWPropertyDefinitionRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWPropertyDefinitionRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWPropertyDefinitionRepresentation;
class RWStepRepr_RWPropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_PropertyDefinitionRepresentation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_PropertyDefinitionRepresentation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_PropertyDefinitionRepresentation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWPropertyDefinitionRepresentation::~RWStepRepr_RWPropertyDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWPropertyDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentation;
class RWStepRepr_RWRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_Representation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_Representation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_Representation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWRepresentation::~RWStepRepr_RWRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWShapeRepresentationRelationshipWithTransformation;
class RWStepRepr_RWShapeRepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ShapeRepresentationRelationshipWithTransformation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ShapeRepresentationRelationshipWithTransformation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ShapeRepresentationRelationshipWithTransformation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWShapeRepresentationRelationshipWithTransformation::~RWStepRepr_RWShapeRepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWShapeRepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentationItem;
class RWStepRepr_RWRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_RepresentationItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_RepresentationItem *ent) const;

};
%feature("shadow") RWStepRepr_RWRepresentationItem::~RWStepRepr_RWRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWRepresentationRelationshipWithTransformation;
class RWStepRepr_RWRepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_RepresentationRelationshipWithTransformation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_RepresentationRelationshipWithTransformation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_RepresentationRelationshipWithTransformation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWRepresentationRelationshipWithTransformation::~RWStepRepr_RWRepresentationRelationshipWithTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWRepresentationRelationshipWithTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWItemDefinedTransformation;
class RWStepRepr_RWItemDefinedTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWItemDefinedTransformation();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ItemDefinedTransformation *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ItemDefinedTransformation *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ItemDefinedTransformation *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWItemDefinedTransformation::~RWStepRepr_RWItemDefinedTransformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWItemDefinedTransformation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWMeasureRepresentationItem;
class RWStepRepr_RWMeasureRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMeasureRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_MeasureRepresentationItem *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_MeasureRepresentationItem *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_MeasureRepresentationItem *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWMeasureRepresentationItem::~RWStepRepr_RWMeasureRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWMeasureRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWProductConcept;
class RWStepRepr_RWProductConcept {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWProductConcept();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_ProductConcept *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_ProductConcept *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_ProductConcept *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWProductConcept::~RWStepRepr_RWProductConcept %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWProductConcept {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepRepr_RWAssemblyComponentUsage;
class RWStepRepr_RWAssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWAssemblyComponentUsage();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepRepr_AssemblyComponentUsage *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepRepr_AssemblyComponentUsage *ent) const;
		%feature("autodoc", "1");
		void Share(const StepRepr_AssemblyComponentUsage *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepRepr_RWAssemblyComponentUsage::~RWStepRepr_RWAssemblyComponentUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepRepr_RWAssemblyComponentUsage {
	void _kill_pointed() {
		delete $self;
	}
};
