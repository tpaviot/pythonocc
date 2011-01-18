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
%module RWStepAP203
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include RWStepAP203_dependencies.i


%include RWStepAP203_headers.i




%nodefaultctor RWStepAP203_RWCcDesignSecurityClassification;
class RWStepAP203_RWCcDesignSecurityClassification {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignSecurityClassification();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignSecurityClassification *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignSecurityClassification *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignSecurityClassification *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignSecurityClassification::~RWStepAP203_RWCcDesignSecurityClassification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignSecurityClassification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWStartRequest;
class RWStepAP203_RWStartRequest {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWStartRequest();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_StartRequest *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_StartRequest *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_StartRequest *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWStartRequest::~RWStepAP203_RWStartRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWStartRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWStartWork;
class RWStepAP203_RWStartWork {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWStartWork();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_StartWork *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_StartWork *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_StartWork *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWStartWork::~RWStepAP203_RWStartWork %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWStartWork {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignPersonAndOrganizationAssignment;
class RWStepAP203_RWCcDesignPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignPersonAndOrganizationAssignment *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignPersonAndOrganizationAssignment *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignPersonAndOrganizationAssignment *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignPersonAndOrganizationAssignment::~RWStepAP203_RWCcDesignPersonAndOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignPersonAndOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignContract;
class RWStepAP203_RWCcDesignContract {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignContract();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignContract *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignContract *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignContract *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignContract::~RWStepAP203_RWCcDesignContract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignContract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWChangeRequest;
class RWStepAP203_RWChangeRequest {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWChangeRequest();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_ChangeRequest *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_ChangeRequest *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_ChangeRequest *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWChangeRequest::~RWStepAP203_RWChangeRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWChangeRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignSpecificationReference;
class RWStepAP203_RWCcDesignSpecificationReference {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignSpecificationReference();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignSpecificationReference *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignSpecificationReference *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignSpecificationReference *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignSpecificationReference::~RWStepAP203_RWCcDesignSpecificationReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignSpecificationReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignDateAndTimeAssignment;
class RWStepAP203_RWCcDesignDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignDateAndTimeAssignment *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignDateAndTimeAssignment *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignDateAndTimeAssignment *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignDateAndTimeAssignment::~RWStepAP203_RWCcDesignDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignCertification;
class RWStepAP203_RWCcDesignCertification {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignCertification();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignCertification *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignCertification *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignCertification *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignCertification::~RWStepAP203_RWCcDesignCertification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignCertification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWCcDesignApproval;
class RWStepAP203_RWCcDesignApproval {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignApproval();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_CcDesignApproval *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_CcDesignApproval *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_CcDesignApproval *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWCcDesignApproval::~RWStepAP203_RWCcDesignApproval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWCcDesignApproval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepAP203_RWChange;
class RWStepAP203_RWChange {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWChange();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepAP203_Change *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepAP203_Change *ent) const;
		%feature("autodoc", "1");
		void Share(const StepAP203_Change *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepAP203_RWChange::~RWStepAP203_RWChange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepAP203_RWChange {
	void _kill_pointed() {
		delete $self;
	}
};
