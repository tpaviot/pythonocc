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

%module RWStepAP214
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepAP214_renames.i


%include RWStepAP214_required_python_modules.i


%include RWStepAP214_dependencies.i


%include RWStepAP214_headers.i




%nodefaultctor Handle_RWStepAP214_ReadWriteModule;
class Handle_RWStepAP214_ReadWriteModule : public Handle_StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule(const Handle_RWStepAP214_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule(const RWStepAP214_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule & operator=(const Handle_RWStepAP214_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule & operator=(const RWStepAP214_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_RWStepAP214_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_ReadWriteModule {
	RWStepAP214_ReadWriteModule* GetObject() {
	return (RWStepAP214_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_RWStepAP214_ReadWriteModule::~Handle_RWStepAP214_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_RWStepAP214_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_RWStepAP214_GeneralModule;
class Handle_RWStepAP214_GeneralModule : public Handle_StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule(const Handle_RWStepAP214_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule(const RWStepAP214_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule & operator=(const Handle_RWStepAP214_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule & operator=(const RWStepAP214_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_RWStepAP214_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_GeneralModule {
	RWStepAP214_GeneralModule* GetObject() {
	return (RWStepAP214_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_RWStepAP214_GeneralModule::~Handle_RWStepAP214_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_RWStepAP214_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment;
class RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment::~RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedDateAssignment;
class RWStepAP214_RWAppliedDateAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDateAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedDateAssignment::~RWStepAP214_RWAppliedDateAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedDateAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignDateAndPersonAssignment;
class RWStepAP214_RWAutoDesignDateAndPersonAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignDateAndPersonAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignDateAndPersonAssignment::~RWStepAP214_RWAutoDesignDateAndPersonAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignDateAndPersonAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedExternalIdentificationAssignment;
class RWStepAP214_RWAppliedExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedExternalIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedExternalIdentificationAssignment::~RWStepAP214_RWAppliedExternalIdentificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedExternalIdentificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedPersonAndOrganizationAssignment;
class RWStepAP214_RWAppliedPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedPersonAndOrganizationAssignment::~RWStepAP214_RWAppliedPersonAndOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedPersonAndOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignOrganizationAssignment;
class RWStepAP214_RWAutoDesignOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignOrganizationAssignment::~RWStepAP214_RWAutoDesignOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedDateAndTimeAssignment;
class RWStepAP214_RWAppliedDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedDateAndTimeAssignment::~RWStepAP214_RWAppliedDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedGroupAssignment;
class RWStepAP214_RWAppliedGroupAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedGroupAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedGroupAssignment::~RWStepAP214_RWAppliedGroupAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedGroupAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedSecurityClassificationAssignment;
class RWStepAP214_RWAppliedSecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedSecurityClassificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedSecurityClassificationAssignment::~RWStepAP214_RWAppliedSecurityClassificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedSecurityClassificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWClass;
class RWStepAP214_RWClass {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWClass();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_Class &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_Class &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_Class &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWClass::~RWStepAP214_RWClass %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWClass {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignApprovalAssignment;
class RWStepAP214_RWAutoDesignApprovalAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignApprovalAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignApprovalAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignApprovalAssignment::~RWStepAP214_RWAutoDesignApprovalAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignApprovalAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_GeneralModule;
class RWStepAP214_GeneralModule : public StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		RWStepAP214_GeneralModule();
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer CN, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Name(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend RWStepAP214_GeneralModule {
	Handle_RWStepAP214_GeneralModule GetHandle() {
	return *(Handle_RWStepAP214_GeneralModule*) &$self;
	}
};
%extend RWStepAP214_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") RWStepAP214_GeneralModule::~RWStepAP214_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment;
class RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment::~RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignNominalDateAssignment;
class RWStepAP214_RWAutoDesignNominalDateAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignNominalDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignNominalDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignNominalDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignNominalDateAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignNominalDateAssignment::~RWStepAP214_RWAutoDesignNominalDateAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignNominalDateAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedPresentedItem;
class RWStepAP214_RWAppliedPresentedItem {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedPresentedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedPresentedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedPresentedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedPresentedItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedPresentedItem::~RWStepAP214_RWAppliedPresentedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedPresentedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignGroupAssignment;
class RWStepAP214_RWAutoDesignGroupAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignGroupAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignGroupAssignment::~RWStepAP214_RWAutoDesignGroupAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignGroupAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedApprovalAssignment;
class RWStepAP214_RWAppliedApprovalAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedApprovalAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedApprovalAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedApprovalAssignment::~RWStepAP214_RWAppliedApprovalAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedApprovalAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignPresentedItem;
class RWStepAP214_RWAutoDesignPresentedItem {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignPresentedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignPresentedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignPresentedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignPresentedItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignPresentedItem::~RWStepAP214_RWAutoDesignPresentedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignPresentedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214;
class RWStepAP214 {
	public:
		%feature("autodoc", "1");
		RWStepAP214();
		%feature("autodoc", "1");
		static		void Init();

};
%feature("shadow") RWStepAP214::~RWStepAP214 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWRepItemGroup;
class RWStepAP214_RWRepItemGroup {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWRepItemGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_RepItemGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_RepItemGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_RepItemGroup &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWRepItemGroup::~RWStepAP214_RWRepItemGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWRepItemGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignActualDateAssignment;
class RWStepAP214_RWAutoDesignActualDateAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignActualDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignActualDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignActualDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignActualDateAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignActualDateAssignment::~RWStepAP214_RWAutoDesignActualDateAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignActualDateAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignActualDateAndTimeAssignment;
class RWStepAP214_RWAutoDesignActualDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignActualDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignActualDateAndTimeAssignment::~RWStepAP214_RWAutoDesignActualDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignActualDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedDocumentReference;
class RWStepAP214_RWAppliedDocumentReference {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDocumentReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDocumentReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDocumentReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDocumentReference &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedDocumentReference::~RWStepAP214_RWAppliedDocumentReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedDocumentReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignDocumentReference;
class RWStepAP214_RWAutoDesignDocumentReference {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignDocumentReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignDocumentReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignDocumentReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignDocumentReference &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignDocumentReference::~RWStepAP214_RWAutoDesignDocumentReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignDocumentReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWExternallyDefinedGeneralProperty;
class RWStepAP214_RWExternallyDefinedGeneralProperty {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWExternallyDefinedGeneralProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWExternallyDefinedGeneralProperty::~RWStepAP214_RWExternallyDefinedGeneralProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWExternallyDefinedGeneralProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAutoDesignSecurityClassificationAssignment;
class RWStepAP214_RWAutoDesignSecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignSecurityClassificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAutoDesignSecurityClassificationAssignment::~RWStepAP214_RWAutoDesignSecurityClassificationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAutoDesignSecurityClassificationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWAppliedOrganizationAssignment;
class RWStepAP214_RWAppliedOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWAppliedOrganizationAssignment::~RWStepAP214_RWAppliedOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWAppliedOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_RWExternallyDefinedClass;
class RWStepAP214_RWExternallyDefinedClass {
	public:
		%feature("autodoc", "1");
		RWStepAP214_RWExternallyDefinedClass();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_ExternallyDefinedClass &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_ExternallyDefinedClass &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_ExternallyDefinedClass &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP214_RWExternallyDefinedClass::~RWStepAP214_RWExternallyDefinedClass %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_RWExternallyDefinedClass {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP214_ReadWriteModule;
class RWStepAP214_ReadWriteModule : public StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		RWStepAP214_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TCollection_AsciiString &atype) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TColStd_SequenceOfAsciiString &types) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		const TCollection_AsciiString & StepType(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ComplexType(const Standard_Integer CN, TColStd_SequenceOfAsciiString & types) const;
		%feature("autodoc", "1");
		virtual		void ReadStep(const Standard_Integer CN, const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void WriteStep(const Standard_Integer CN, StepData_StepWriter & SW, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend RWStepAP214_ReadWriteModule {
	Handle_RWStepAP214_ReadWriteModule GetHandle() {
	return *(Handle_RWStepAP214_ReadWriteModule*) &$self;
	}
};
%extend RWStepAP214_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") RWStepAP214_ReadWriteModule::~RWStepAP214_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP214_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};
