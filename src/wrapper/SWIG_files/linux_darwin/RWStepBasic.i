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

%module RWStepBasic
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepBasic_renames.i


%include RWStepBasic_required_python_modules.i


%include RWStepBasic_dependencies.i


%include RWStepBasic_headers.i




%nodefaultctor RWStepBasic_RWConversionBasedUnitAndLengthUnit;
class RWStepBasic_RWConversionBasedUnitAndLengthUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndLengthUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndLengthUnit::~RWStepBasic_RWConversionBasedUnitAndLengthUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndLengthUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSecurityClassificationLevel;
class RWStepBasic_RWSecurityClassificationLevel {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSecurityClassificationLevel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SecurityClassificationLevel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SecurityClassificationLevel &ent) const;

};
%feature("shadow") RWStepBasic_RWSecurityClassificationLevel::~RWStepBasic_RWSecurityClassificationLevel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSecurityClassificationLevel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWThermodynamicTemperatureUnit;
class RWStepBasic_RWThermodynamicTemperatureUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ThermodynamicTemperatureUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWThermodynamicTemperatureUnit::~RWStepBasic_RWThermodynamicTemperatureUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWThermodynamicTemperatureUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCertificationType;
class RWStepBasic_RWCertificationType {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCertificationType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CertificationType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CertificationType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CertificationType &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWCertificationType::~RWStepBasic_RWCertificationType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCertificationType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDerivedUnitElement;
class RWStepBasic_RWDerivedUnitElement {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDerivedUnitElement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DerivedUnitElement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DerivedUnitElement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DerivedUnitElement &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDerivedUnitElement::~RWStepBasic_RWDerivedUnitElement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDerivedUnitElement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWActionAssignment;
class RWStepBasic_RWActionAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWActionAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWActionAssignment::~RWStepBasic_RWActionAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWActionAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionFormation;
class RWStepBasic_RWProductDefinitionFormation {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionFormation::~RWStepBasic_RWProductDefinitionFormation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionFormation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnit;
class RWStepBasic_RWSiUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnit &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean DecodePrefix(StepBasic_SiPrefix & aPrefix, const char * text) const;
		%feature("autodoc", "1");
		Standard_Boolean DecodeName(StepBasic_SiUnitName & aName, const char * text) const;
		%feature("autodoc", "1");
		TCollection_AsciiString EncodePrefix(const StepBasic_SiPrefix aPrefix) const;
		%feature("autodoc", "1");
		TCollection_AsciiString EncodeName(const StepBasic_SiUnitName aName) const;

};
%feature("shadow") RWStepBasic_RWSiUnit::~RWStepBasic_RWSiUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionContext;
class RWStepBasic_RWProductDefinitionContext {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionContext::~RWStepBasic_RWProductDefinitionContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCertification;
class RWStepBasic_RWCertification {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCertification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Certification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Certification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Certification &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWCertification::~RWStepBasic_RWCertification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCertification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentType;
class RWStepBasic_RWDocumentType {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentType &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentType::~RWStepBasic_RWDocumentType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCalendarDate;
class RWStepBasic_RWCalendarDate {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCalendarDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CalendarDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CalendarDate &ent) const;

};
%feature("shadow") RWStepBasic_RWCalendarDate::~RWStepBasic_RWCalendarDate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCalendarDate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductCategoryRelationship;
class RWStepBasic_RWProductCategoryRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductCategoryRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductCategoryRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductCategoryRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductCategoryRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductCategoryRelationship::~RWStepBasic_RWProductCategoryRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductCategoryRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWNameAssignment;
class RWStepBasic_RWNameAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWNameAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_NameAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_NameAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_NameAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWNameAssignment::~RWStepBasic_RWNameAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWNameAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWGroup;
class RWStepBasic_RWGroup {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Group &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Group &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Group &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWGroup::~RWStepBasic_RWGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinition;
class RWStepBasic_RWProductDefinition {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinition &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinition::~RWStepBasic_RWProductDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWEffectivity;
class RWStepBasic_RWEffectivity {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Effectivity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Effectivity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Effectivity &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWEffectivity::~RWStepBasic_RWEffectivity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWEffectivity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductConceptContext;
class RWStepBasic_RWProductConceptContext {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductConceptContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductConceptContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductConceptContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductConceptContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductConceptContext::~RWStepBasic_RWProductConceptContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductConceptContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDateRole;
class RWStepBasic_RWDateRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDateRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateRole &ent) const;

};
%feature("shadow") RWStepBasic_RWDateRole::~RWStepBasic_RWDateRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDateRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentRepresentationType;
class RWStepBasic_RWDocumentRepresentationType {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentRepresentationType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentRepresentationType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentRepresentationType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentRepresentationType &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentRepresentationType::~RWStepBasic_RWDocumentRepresentationType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentRepresentationType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionEffectivity;
class RWStepBasic_RWProductDefinitionEffectivity {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionEffectivity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionEffectivity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionEffectivity &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionEffectivity::~RWStepBasic_RWProductDefinitionEffectivity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionEffectivity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDimensionalExponents;
class RWStepBasic_RWDimensionalExponents {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDimensionalExponents();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DimensionalExponents &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DimensionalExponents &ent) const;

};
%feature("shadow") RWStepBasic_RWDimensionalExponents::~RWStepBasic_RWDimensionalExponents %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDimensionalExponents {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPersonAndOrganizationRole;
class RWStepBasic_RWPersonAndOrganizationRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPersonAndOrganizationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonAndOrganizationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonAndOrganizationRole &ent) const;

};
%feature("shadow") RWStepBasic_RWPersonAndOrganizationRole::~RWStepBasic_RWPersonAndOrganizationRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPersonAndOrganizationRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentProductAssociation;
class RWStepBasic_RWDocumentProductAssociation {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentProductAssociation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentProductAssociation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentProductAssociation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentProductAssociation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentProductAssociation::~RWStepBasic_RWDocumentProductAssociation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentProductAssociation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit;
class RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit::~RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndPlaneAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource;
class RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource::~RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionFormationWithSpecifiedSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSolidAngleMeasureWithUnit;
class RWStepBasic_RWSolidAngleMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSolidAngleMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SolidAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SolidAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SolidAngleMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWSolidAngleMeasureWithUnit::~RWStepBasic_RWSolidAngleMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSolidAngleMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionRelationship;
class RWStepBasic_RWProductDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionRelationship::~RWStepBasic_RWProductDefinitionRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit;
class RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit::~RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndVolumeUnit;
class RWStepBasic_RWConversionBasedUnitAndVolumeUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndVolumeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndVolumeUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndVolumeUnit::~RWStepBasic_RWConversionBasedUnitAndVolumeUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndVolumeUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPersonAndOrganization;
class RWStepBasic_RWPersonAndOrganization {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPersonAndOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonAndOrganization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonAndOrganization &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PersonAndOrganization &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWPersonAndOrganization::~RWStepBasic_RWPersonAndOrganization %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPersonAndOrganization {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWOrganizationRole;
class RWStepBasic_RWOrganizationRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWOrganizationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrganizationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrganizationRole &ent) const;

};
%feature("shadow") RWStepBasic_RWOrganizationRole::~RWStepBasic_RWOrganizationRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWOrganizationRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWEffectivityAssignment;
class RWStepBasic_RWEffectivityAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWEffectivityAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_EffectivityAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_EffectivityAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_EffectivityAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWEffectivityAssignment::~RWStepBasic_RWEffectivityAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWEffectivityAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWActionMethod;
class RWStepBasic_RWActionMethod {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWActionMethod();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionMethod &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionMethod &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionMethod &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWActionMethod::~RWStepBasic_RWActionMethod %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWActionMethod {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWLocalTime;
class RWStepBasic_RWLocalTime {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWLocalTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LocalTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LocalTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LocalTime &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWLocalTime::~RWStepBasic_RWLocalTime %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWLocalTime {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWActionRequestAssignment;
class RWStepBasic_RWActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWActionRequestAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionRequestAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionRequestAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionRequestAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWActionRequestAssignment::~RWStepBasic_RWActionRequestAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWActionRequestAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPlaneAngleMeasureWithUnit;
class RWStepBasic_RWPlaneAngleMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPlaneAngleMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PlaneAngleMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWPlaneAngleMeasureWithUnit::~RWStepBasic_RWPlaneAngleMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPlaneAngleMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApprovalRole;
class RWStepBasic_RWApprovalRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalRole &ent) const;

};
%feature("shadow") RWStepBasic_RWApprovalRole::~RWStepBasic_RWApprovalRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApprovalRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApprovalStatus;
class RWStepBasic_RWApprovalStatus {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalStatus();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalStatus &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalStatus &ent) const;

};
%feature("shadow") RWStepBasic_RWApprovalStatus::~RWStepBasic_RWApprovalStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApprovalStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWMassMeasureWithUnit;
class RWStepBasic_RWMassMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWMassMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MassMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MassMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MassMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWMassMeasureWithUnit::~RWStepBasic_RWMassMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWMassMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnit;
class RWStepBasic_RWConversionBasedUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnit::~RWStepBasic_RWConversionBasedUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWObjectRole;
class RWStepBasic_RWObjectRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWObjectRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ObjectRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ObjectRole &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ObjectRole &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWObjectRole::~RWStepBasic_RWObjectRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWObjectRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionFormationRelationship;
class RWStepBasic_RWProductDefinitionFormationRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionFormationRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionFormationRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionFormationRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionFormationRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionFormationRelationship::~RWStepBasic_RWProductDefinitionFormationRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionFormationRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWWeekOfYearAndDayDate;
class RWStepBasic_RWWeekOfYearAndDayDate {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWWeekOfYearAndDayDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_WeekOfYearAndDayDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_WeekOfYearAndDayDate &ent) const;

};
%feature("shadow") RWStepBasic_RWWeekOfYearAndDayDate::~RWStepBasic_RWWeekOfYearAndDayDate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWWeekOfYearAndDayDate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentRelationship;
class RWStepBasic_RWDocumentRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentRelationship::~RWStepBasic_RWDocumentRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWVersionedActionRequest;
class RWStepBasic_RWVersionedActionRequest {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWVersionedActionRequest();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_VersionedActionRequest &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_VersionedActionRequest &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_VersionedActionRequest &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWVersionedActionRequest::~RWStepBasic_RWVersionedActionRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWVersionedActionRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWExternalSource;
class RWStepBasic_RWExternalSource {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWExternalSource();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternalSource &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternalSource &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternalSource &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWExternalSource::~RWStepBasic_RWExternalSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWExternalSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit;
class RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit::~RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndThermodynamicTemperatureUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentFile;
class RWStepBasic_RWDocumentFile {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentFile();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentFile &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentFile &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentFile &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentFile::~RWStepBasic_RWDocumentFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApprovalDateTime;
class RWStepBasic_RWApprovalDateTime {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalDateTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalDateTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalDateTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalDateTime &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApprovalDateTime::~RWStepBasic_RWApprovalDateTime %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApprovalDateTime {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDateTimeRole;
class RWStepBasic_RWDateTimeRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDateTimeRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateTimeRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateTimeRole &ent) const;

};
%feature("shadow") RWStepBasic_RWDateTimeRole::~RWStepBasic_RWDateTimeRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDateTimeRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDerivedUnit;
class RWStepBasic_RWDerivedUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDerivedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DerivedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DerivedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DerivedUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDerivedUnit::~RWStepBasic_RWDerivedUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDerivedUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApplicationContext;
class RWStepBasic_RWApplicationContext {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationContext &ent) const;

};
%feature("shadow") RWStepBasic_RWApplicationContext::~RWStepBasic_RWApplicationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApplicationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWIdentificationAssignment;
class RWStepBasic_RWIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_IdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_IdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_IdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWIdentificationAssignment::~RWStepBasic_RWIdentificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWIdentificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndRatioUnit;
class RWStepBasic_RWSiUnitAndRatioUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndRatioUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndRatioUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndRatioUnit::~RWStepBasic_RWSiUnitAndRatioUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndRatioUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWAction;
class RWStepBasic_RWAction {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWAction();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Action &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Action &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Action &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWAction::~RWStepBasic_RWAction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWAction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndSolidAngleUnit;
class RWStepBasic_RWSiUnitAndSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndSolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndSolidAngleUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndSolidAngleUnit::~RWStepBasic_RWSiUnitAndSolidAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndSolidAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndMassUnit;
class RWStepBasic_RWConversionBasedUnitAndMassUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndMassUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndMassUnit::~RWStepBasic_RWConversionBasedUnitAndMassUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndMassUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWAddress;
class RWStepBasic_RWAddress {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Address &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Address &ent) const;

};
%feature("shadow") RWStepBasic_RWAddress::~RWStepBasic_RWAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndPlaneAngleUnit;
class RWStepBasic_RWSiUnitAndPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndPlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndPlaneAngleUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndPlaneAngleUnit::~RWStepBasic_RWSiUnitAndPlaneAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndPlaneAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWExternalIdentificationAssignment;
class RWStepBasic_RWExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWExternalIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternalIdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWExternalIdentificationAssignment::~RWStepBasic_RWExternalIdentificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWExternalIdentificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWLengthMeasureWithUnit;
class RWStepBasic_RWLengthMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LengthMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LengthMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LengthMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWLengthMeasureWithUnit::~RWStepBasic_RWLengthMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWLengthMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWNamedUnit;
class RWStepBasic_RWNamedUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWNamedUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_NamedUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_NamedUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_NamedUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWNamedUnit::~RWStepBasic_RWNamedUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWNamedUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductDefinitionWithAssociatedDocuments;
class RWStepBasic_RWProductDefinitionWithAssociatedDocuments {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductDefinitionWithAssociatedDocuments();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductDefinitionWithAssociatedDocuments &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductDefinitionWithAssociatedDocuments::~RWStepBasic_RWProductDefinitionWithAssociatedDocuments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductDefinitionWithAssociatedDocuments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWExternallyDefinedItem;
class RWStepBasic_RWExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWExternallyDefinedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ExternallyDefinedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ExternallyDefinedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ExternallyDefinedItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWExternallyDefinedItem::~RWStepBasic_RWExternallyDefinedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWExternallyDefinedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApprovalPersonOrganization;
class RWStepBasic_RWApprovalPersonOrganization {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalPersonOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalPersonOrganization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalPersonOrganization &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalPersonOrganization &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApprovalPersonOrganization::~RWStepBasic_RWApprovalPersonOrganization %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApprovalPersonOrganization {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentProductEquivalence;
class RWStepBasic_RWDocumentProductEquivalence {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentProductEquivalence();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentProductEquivalence &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentProductEquivalence &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentProductEquivalence &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentProductEquivalence::~RWStepBasic_RWDocumentProductEquivalence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentProductEquivalence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCharacterizedObject;
class RWStepBasic_RWCharacterizedObject {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCharacterizedObject();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CharacterizedObject &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CharacterizedObject &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CharacterizedObject &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWCharacterizedObject::~RWStepBasic_RWCharacterizedObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCharacterizedObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndMassUnit;
class RWStepBasic_RWSiUnitAndMassUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndMassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndMassUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndMassUnit::~RWStepBasic_RWSiUnitAndMassUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndMassUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWGroupRelationship;
class RWStepBasic_RWGroupRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWGroupRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GroupRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GroupRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GroupRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWGroupRelationship::~RWStepBasic_RWGroupRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWGroupRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductContext;
class RWStepBasic_RWProductContext {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductContext::~RWStepBasic_RWProductContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWOrdinalDate;
class RWStepBasic_RWOrdinalDate {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWOrdinalDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrdinalDate &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrdinalDate &ent) const;

};
%feature("shadow") RWStepBasic_RWOrdinalDate::~RWStepBasic_RWOrdinalDate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWOrdinalDate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndTimeUnit;
class RWStepBasic_RWConversionBasedUnitAndTimeUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndTimeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndTimeUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndTimeUnit::~RWStepBasic_RWConversionBasedUnitAndTimeUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndTimeUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSolidAngleUnit;
class RWStepBasic_RWSolidAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSolidAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SolidAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SolidAngleUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWSolidAngleUnit::~RWStepBasic_RWSolidAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSolidAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCoordinatedUniversalTimeOffset;
class RWStepBasic_RWCoordinatedUniversalTimeOffset {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCoordinatedUniversalTimeOffset();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CoordinatedUniversalTimeOffset &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CoordinatedUniversalTimeOffset &ent) const;

};
%feature("shadow") RWStepBasic_RWCoordinatedUniversalTimeOffset::~RWStepBasic_RWCoordinatedUniversalTimeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCoordinatedUniversalTimeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProduct;
class RWStepBasic_RWProduct {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProduct();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Product &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Product &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Product &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProduct::~RWStepBasic_RWProduct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProduct {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWLengthUnit;
class RWStepBasic_RWLengthUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_LengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_LengthUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_LengthUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWLengthUnit::~RWStepBasic_RWLengthUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWLengthUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWRoleAssociation;
class RWStepBasic_RWRoleAssociation {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWRoleAssociation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_RoleAssociation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_RoleAssociation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_RoleAssociation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWRoleAssociation::~RWStepBasic_RWRoleAssociation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWRoleAssociation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWRatioMeasureWithUnit;
class RWStepBasic_RWRatioMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWRatioMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_RatioMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_RatioMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_RatioMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWRatioMeasureWithUnit::~RWStepBasic_RWRatioMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWRatioMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDateAndTime;
class RWStepBasic_RWDateAndTime {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDateAndTime();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DateAndTime &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DateAndTime &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DateAndTime &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDateAndTime::~RWStepBasic_RWDateAndTime %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDateAndTime {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndVolumeUnit;
class RWStepBasic_RWSiUnitAndVolumeUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndVolumeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndVolumeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndVolumeUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndVolumeUnit::~RWStepBasic_RWSiUnitAndVolumeUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndVolumeUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWOrganization;
class RWStepBasic_RWOrganization {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWOrganization();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Organization &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Organization &ent) const;

};
%feature("shadow") RWStepBasic_RWOrganization::~RWStepBasic_RWOrganization %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWOrganization {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSecurityClassification;
class RWStepBasic_RWSecurityClassification {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSecurityClassification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SecurityClassification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SecurityClassification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_SecurityClassification &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWSecurityClassification::~RWStepBasic_RWSecurityClassification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSecurityClassification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndLengthUnit;
class RWStepBasic_RWSiUnitAndLengthUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndLengthUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndLengthUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndLengthUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndLengthUnit::~RWStepBasic_RWSiUnitAndLengthUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndLengthUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWIdentificationRole;
class RWStepBasic_RWIdentificationRole {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWIdentificationRole();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_IdentificationRole &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_IdentificationRole &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_IdentificationRole &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWIdentificationRole::~RWStepBasic_RWIdentificationRole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWIdentificationRole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWUncertaintyMeasureWithUnit;
class RWStepBasic_RWUncertaintyMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWUncertaintyMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_UncertaintyMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_UncertaintyMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_UncertaintyMeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWUncertaintyMeasureWithUnit::~RWStepBasic_RWUncertaintyMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWUncertaintyMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWMechanicalContext;
class RWStepBasic_RWMechanicalContext {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWMechanicalContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MechanicalContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MechanicalContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MechanicalContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWMechanicalContext::~RWStepBasic_RWMechanicalContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWMechanicalContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWContractAssignment;
class RWStepBasic_RWContractAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWContractAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ContractAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ContractAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ContractAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWContractAssignment::~RWStepBasic_RWContractAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWContractAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWMeasureWithUnit;
class RWStepBasic_RWMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MeasureWithUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWMeasureWithUnit::~RWStepBasic_RWMeasureWithUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWMeasureWithUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocument;
class RWStepBasic_RWDocument {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocument();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Document &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Document &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Document &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocument::~RWStepBasic_RWDocument %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocument {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductType;
class RWStepBasic_RWProductType {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductType &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductType::~RWStepBasic_RWProductType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWOrganizationalAddress;
class RWStepBasic_RWOrganizationalAddress {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWOrganizationalAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_OrganizationalAddress &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_OrganizationalAddress &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_OrganizationalAddress &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWOrganizationalAddress::~RWStepBasic_RWOrganizationalAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWOrganizationalAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPerson;
class RWStepBasic_RWPerson {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPerson();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Person &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Person &ent) const;

};
%feature("shadow") RWStepBasic_RWPerson::~RWStepBasic_RWPerson %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPerson {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApplicationProtocolDefinition;
class RWStepBasic_RWApplicationProtocolDefinition {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationProtocolDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationProtocolDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationProtocolDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApplicationProtocolDefinition &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApplicationProtocolDefinition::~RWStepBasic_RWApplicationProtocolDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApplicationProtocolDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWContractType;
class RWStepBasic_RWContractType {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWContractType();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ContractType &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ContractType &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ContractType &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWContractType::~RWStepBasic_RWContractType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWContractType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDate;
class RWStepBasic_RWDate {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Date &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Date &ent) const;

};
%feature("shadow") RWStepBasic_RWDate::~RWStepBasic_RWDate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWCertificationAssignment;
class RWStepBasic_RWCertificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWCertificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_CertificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_CertificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_CertificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWCertificationAssignment::~RWStepBasic_RWCertificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWCertificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApprovalRelationship;
class RWStepBasic_RWApprovalRelationship {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApprovalRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApprovalRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApprovalRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApprovalRelationship &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApprovalRelationship::~RWStepBasic_RWApprovalRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApprovalRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApproval;
class RWStepBasic_RWApproval {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApproval();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Approval &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Approval &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Approval &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApproval::~RWStepBasic_RWApproval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApproval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPersonalAddress;
class RWStepBasic_RWPersonalAddress {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPersonalAddress();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PersonalAddress &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PersonalAddress &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PersonalAddress &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWPersonalAddress::~RWStepBasic_RWPersonalAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPersonalAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductRelatedProductCategory;
class RWStepBasic_RWProductRelatedProductCategory {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductRelatedProductCategory();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductRelatedProductCategory &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductRelatedProductCategory &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ProductRelatedProductCategory &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWProductRelatedProductCategory::~RWStepBasic_RWProductRelatedProductCategory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductRelatedProductCategory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWContract;
class RWStepBasic_RWContract {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWContract();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_Contract &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_Contract &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_Contract &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWContract::~RWStepBasic_RWContract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWContract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWEulerAngles;
class RWStepBasic_RWEulerAngles {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWEulerAngles();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_EulerAngles &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_EulerAngles &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_EulerAngles &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWEulerAngles::~RWStepBasic_RWEulerAngles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWEulerAngles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWPlaneAngleUnit;
class RWStepBasic_RWPlaneAngleUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWPlaneAngleUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_PlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_PlaneAngleUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_PlaneAngleUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWPlaneAngleUnit::~RWStepBasic_RWPlaneAngleUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWPlaneAngleUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndRatioUnit;
class RWStepBasic_RWConversionBasedUnitAndRatioUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndRatioUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndRatioUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndRatioUnit::~RWStepBasic_RWConversionBasedUnitAndRatioUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndRatioUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWMassUnit;
class RWStepBasic_RWMassUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWMassUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_MassUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_MassUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_MassUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWMassUnit::~RWStepBasic_RWMassUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWMassUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWGeneralProperty;
class RWStepBasic_RWGeneralProperty {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWGeneralProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GeneralProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GeneralProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GeneralProperty &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWGeneralProperty::~RWStepBasic_RWGeneralProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWGeneralProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWApplicationContextElement;
class RWStepBasic_RWApplicationContextElement {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWApplicationContextElement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ApplicationContextElement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ApplicationContextElement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ApplicationContextElement &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWApplicationContextElement::~RWStepBasic_RWApplicationContextElement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWApplicationContextElement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndTimeUnit;
class RWStepBasic_RWSiUnitAndTimeUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndTimeUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndTimeUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndTimeUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndTimeUnit::~RWStepBasic_RWSiUnitAndTimeUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndTimeUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWSiUnitAndAreaUnit;
class RWStepBasic_RWSiUnitAndAreaUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWSiUnitAndAreaUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_SiUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_SiUnitAndAreaUnit &ent) const;

};
%feature("shadow") RWStepBasic_RWSiUnitAndAreaUnit::~RWStepBasic_RWSiUnitAndAreaUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWSiUnitAndAreaUnit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWDocumentUsageConstraint;
class RWStepBasic_RWDocumentUsageConstraint {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWDocumentUsageConstraint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_DocumentUsageConstraint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_DocumentUsageConstraint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_DocumentUsageConstraint &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWDocumentUsageConstraint::~RWStepBasic_RWDocumentUsageConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWDocumentUsageConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWProductCategory;
class RWStepBasic_RWProductCategory {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWProductCategory();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ProductCategory &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ProductCategory &ent) const;

};
%feature("shadow") RWStepBasic_RWProductCategory::~RWStepBasic_RWProductCategory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWProductCategory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWGroupAssignment;
class RWStepBasic_RWGroupAssignment {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_GroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_GroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_GroupAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWGroupAssignment::~RWStepBasic_RWGroupAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWGroupAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWActionRequestSolution;
class RWStepBasic_RWActionRequestSolution {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWActionRequestSolution();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ActionRequestSolution &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ActionRequestSolution &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ActionRequestSolution &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWActionRequestSolution::~RWStepBasic_RWActionRequestSolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWActionRequestSolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepBasic_RWConversionBasedUnitAndAreaUnit;
class RWStepBasic_RWConversionBasedUnitAndAreaUnit {
	public:
		%feature("autodoc", "1");
		RWStepBasic_RWConversionBasedUnitAndAreaUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepBasic_ConversionBasedUnitAndAreaUnit &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepBasic_RWConversionBasedUnitAndAreaUnit::~RWStepBasic_RWConversionBasedUnitAndAreaUnit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepBasic_RWConversionBasedUnitAndAreaUnit {
	void _kill_pointed() {
		delete $self;
	}
};
