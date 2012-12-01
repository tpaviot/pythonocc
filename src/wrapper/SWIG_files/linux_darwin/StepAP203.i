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

%module StepAP203
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepAP203_renames.i


%include StepAP203_required_python_modules.i


%include StepAP203_dependencies.i


%include StepAP203_headers.i




%nodefaultctor Handle_StepAP203_HArray1OfWorkItem;
class Handle_StepAP203_HArray1OfWorkItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem(const Handle_StepAP203_HArray1OfWorkItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem(const StepAP203_HArray1OfWorkItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem & operator=(const Handle_StepAP203_HArray1OfWorkItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem & operator=(const StepAP203_HArray1OfWorkItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfWorkItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfWorkItem {
	StepAP203_HArray1OfWorkItem* GetObject() {
	return (StepAP203_HArray1OfWorkItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfWorkItem::~Handle_StepAP203_HArray1OfWorkItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfWorkItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignPersonAndOrganizationAssignment;
class Handle_StepAP203_CcDesignPersonAndOrganizationAssignment : public Handle_StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment(const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment(const StepAP203_CcDesignPersonAndOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment & operator=(const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment & operator=(const StepAP203_CcDesignPersonAndOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
	StepAP203_CcDesignPersonAndOrganizationAssignment* GetObject() {
	return (StepAP203_CcDesignPersonAndOrganizationAssignment*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignPersonAndOrganizationAssignment::~Handle_StepAP203_CcDesignPersonAndOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_StartRequest;
class Handle_StepAP203_StartRequest : public Handle_StepBasic_ActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest();
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest(const Handle_StepAP203_StartRequest &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest(const StepAP203_StartRequest *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest & operator=(const Handle_StepAP203_StartRequest &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest & operator=(const StepAP203_StartRequest *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_StartRequest DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_StartRequest {
	StepAP203_StartRequest* GetObject() {
	return (StepAP203_StartRequest*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_StartRequest::~Handle_StepAP203_StartRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_StartRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfClassifiedItem;
class Handle_StepAP203_HArray1OfClassifiedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem(const Handle_StepAP203_HArray1OfClassifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem(const StepAP203_HArray1OfClassifiedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem & operator=(const Handle_StepAP203_HArray1OfClassifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem & operator=(const StepAP203_HArray1OfClassifiedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfClassifiedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfClassifiedItem {
	StepAP203_HArray1OfClassifiedItem* GetObject() {
	return (StepAP203_HArray1OfClassifiedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfClassifiedItem::~Handle_StepAP203_HArray1OfClassifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfClassifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignSpecificationReference;
class Handle_StepAP203_CcDesignSpecificationReference : public Handle_StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSpecificationReference();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSpecificationReference(const Handle_StepAP203_CcDesignSpecificationReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSpecificationReference(const StepAP203_CcDesignSpecificationReference *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSpecificationReference & operator=(const Handle_StepAP203_CcDesignSpecificationReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSpecificationReference & operator=(const StepAP203_CcDesignSpecificationReference *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignSpecificationReference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignSpecificationReference {
	StepAP203_CcDesignSpecificationReference* GetObject() {
	return (StepAP203_CcDesignSpecificationReference*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignSpecificationReference::~Handle_StepAP203_CcDesignSpecificationReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignSpecificationReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfPersonOrganizationItem;
class Handle_StepAP203_HArray1OfPersonOrganizationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem(const Handle_StepAP203_HArray1OfPersonOrganizationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem(const StepAP203_HArray1OfPersonOrganizationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem & operator=(const Handle_StepAP203_HArray1OfPersonOrganizationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem & operator=(const StepAP203_HArray1OfPersonOrganizationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfPersonOrganizationItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfPersonOrganizationItem {
	StepAP203_HArray1OfPersonOrganizationItem* GetObject() {
	return (StepAP203_HArray1OfPersonOrganizationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfPersonOrganizationItem::~Handle_StepAP203_HArray1OfPersonOrganizationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfPersonOrganizationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_ChangeRequest;
class Handle_StepAP203_ChangeRequest : public Handle_StepBasic_ActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest();
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest(const Handle_StepAP203_ChangeRequest &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest(const StepAP203_ChangeRequest *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest & operator=(const Handle_StepAP203_ChangeRequest &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest & operator=(const StepAP203_ChangeRequest *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_ChangeRequest DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_ChangeRequest {
	StepAP203_ChangeRequest* GetObject() {
	return (StepAP203_ChangeRequest*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_ChangeRequest::~Handle_StepAP203_ChangeRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_ChangeRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignDateAndTimeAssignment;
class Handle_StepAP203_CcDesignDateAndTimeAssignment : public Handle_StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignDateAndTimeAssignment();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignDateAndTimeAssignment(const Handle_StepAP203_CcDesignDateAndTimeAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignDateAndTimeAssignment(const StepAP203_CcDesignDateAndTimeAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignDateAndTimeAssignment & operator=(const Handle_StepAP203_CcDesignDateAndTimeAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignDateAndTimeAssignment & operator=(const StepAP203_CcDesignDateAndTimeAssignment *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignDateAndTimeAssignment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
	StepAP203_CcDesignDateAndTimeAssignment* GetObject() {
	return (StepAP203_CcDesignDateAndTimeAssignment*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignDateAndTimeAssignment::~Handle_StepAP203_CcDesignDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_Change;
class Handle_StepAP203_Change : public Handle_StepBasic_ActionAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_Change();
		%feature("autodoc", "1");
		Handle_StepAP203_Change(const Handle_StepAP203_Change &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_Change(const StepAP203_Change *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_Change & operator=(const Handle_StepAP203_Change &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_Change & operator=(const StepAP203_Change *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_Change DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_Change {
	StepAP203_Change* GetObject() {
	return (StepAP203_Change*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_Change::~Handle_StepAP203_Change %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_Change {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfChangeRequestItem;
class Handle_StepAP203_HArray1OfChangeRequestItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem(const Handle_StepAP203_HArray1OfChangeRequestItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem(const StepAP203_HArray1OfChangeRequestItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem & operator=(const Handle_StepAP203_HArray1OfChangeRequestItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem & operator=(const StepAP203_HArray1OfChangeRequestItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfChangeRequestItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfChangeRequestItem {
	StepAP203_HArray1OfChangeRequestItem* GetObject() {
	return (StepAP203_HArray1OfChangeRequestItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfChangeRequestItem::~Handle_StepAP203_HArray1OfChangeRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfChangeRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_StartWork;
class Handle_StepAP203_StartWork : public Handle_StepBasic_ActionAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork();
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork(const Handle_StepAP203_StartWork &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork(const StepAP203_StartWork *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork & operator=(const Handle_StepAP203_StartWork &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork & operator=(const StepAP203_StartWork *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_StartWork DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_StartWork {
	StepAP203_StartWork* GetObject() {
	return (StepAP203_StartWork*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_StartWork::~Handle_StepAP203_StartWork %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_StartWork {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfStartRequestItem;
class Handle_StepAP203_HArray1OfStartRequestItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem(const Handle_StepAP203_HArray1OfStartRequestItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem(const StepAP203_HArray1OfStartRequestItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem & operator=(const Handle_StepAP203_HArray1OfStartRequestItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem & operator=(const StepAP203_HArray1OfStartRequestItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfStartRequestItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfStartRequestItem {
	StepAP203_HArray1OfStartRequestItem* GetObject() {
	return (StepAP203_HArray1OfStartRequestItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfStartRequestItem::~Handle_StepAP203_HArray1OfStartRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfStartRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignSecurityClassification;
class Handle_StepAP203_CcDesignSecurityClassification : public Handle_StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSecurityClassification();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSecurityClassification(const Handle_StepAP203_CcDesignSecurityClassification &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSecurityClassification(const StepAP203_CcDesignSecurityClassification *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSecurityClassification & operator=(const Handle_StepAP203_CcDesignSecurityClassification &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignSecurityClassification & operator=(const StepAP203_CcDesignSecurityClassification *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignSecurityClassification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignSecurityClassification {
	StepAP203_CcDesignSecurityClassification* GetObject() {
	return (StepAP203_CcDesignSecurityClassification*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignSecurityClassification::~Handle_StepAP203_CcDesignSecurityClassification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignSecurityClassification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfApprovedItem;
class Handle_StepAP203_HArray1OfApprovedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem(const Handle_StepAP203_HArray1OfApprovedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem(const StepAP203_HArray1OfApprovedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem & operator=(const Handle_StepAP203_HArray1OfApprovedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem & operator=(const StepAP203_HArray1OfApprovedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfApprovedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfApprovedItem {
	StepAP203_HArray1OfApprovedItem* GetObject() {
	return (StepAP203_HArray1OfApprovedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfApprovedItem::~Handle_StepAP203_HArray1OfApprovedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfApprovedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignApproval;
class Handle_StepAP203_CcDesignApproval : public Handle_StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignApproval();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignApproval(const Handle_StepAP203_CcDesignApproval &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignApproval(const StepAP203_CcDesignApproval *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignApproval & operator=(const Handle_StepAP203_CcDesignApproval &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignApproval & operator=(const StepAP203_CcDesignApproval *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignApproval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignApproval {
	StepAP203_CcDesignApproval* GetObject() {
	return (StepAP203_CcDesignApproval*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignApproval::~Handle_StepAP203_CcDesignApproval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignApproval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfSpecifiedItem;
class Handle_StepAP203_HArray1OfSpecifiedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem(const Handle_StepAP203_HArray1OfSpecifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem(const StepAP203_HArray1OfSpecifiedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem & operator=(const Handle_StepAP203_HArray1OfSpecifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem & operator=(const StepAP203_HArray1OfSpecifiedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfSpecifiedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfSpecifiedItem {
	StepAP203_HArray1OfSpecifiedItem* GetObject() {
	return (StepAP203_HArray1OfSpecifiedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfSpecifiedItem::~Handle_StepAP203_HArray1OfSpecifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfSpecifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfCertifiedItem;
class Handle_StepAP203_HArray1OfCertifiedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem(const Handle_StepAP203_HArray1OfCertifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem(const StepAP203_HArray1OfCertifiedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem & operator=(const Handle_StepAP203_HArray1OfCertifiedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem & operator=(const StepAP203_HArray1OfCertifiedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfCertifiedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfCertifiedItem {
	StepAP203_HArray1OfCertifiedItem* GetObject() {
	return (StepAP203_HArray1OfCertifiedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfCertifiedItem::~Handle_StepAP203_HArray1OfCertifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfCertifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignContract;
class Handle_StepAP203_CcDesignContract : public Handle_StepBasic_ContractAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignContract();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignContract(const Handle_StepAP203_CcDesignContract &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignContract(const StepAP203_CcDesignContract *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignContract & operator=(const Handle_StepAP203_CcDesignContract &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignContract & operator=(const StepAP203_CcDesignContract *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignContract DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignContract {
	StepAP203_CcDesignContract* GetObject() {
	return (StepAP203_CcDesignContract*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignContract::~Handle_StepAP203_CcDesignContract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignContract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfDateTimeItem;
class Handle_StepAP203_HArray1OfDateTimeItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem(const Handle_StepAP203_HArray1OfDateTimeItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem(const StepAP203_HArray1OfDateTimeItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem & operator=(const Handle_StepAP203_HArray1OfDateTimeItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem & operator=(const StepAP203_HArray1OfDateTimeItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfDateTimeItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfDateTimeItem {
	StepAP203_HArray1OfDateTimeItem* GetObject() {
	return (StepAP203_HArray1OfDateTimeItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfDateTimeItem::~Handle_StepAP203_HArray1OfDateTimeItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfDateTimeItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_CcDesignCertification;
class Handle_StepAP203_CcDesignCertification : public Handle_StepBasic_CertificationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignCertification();
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignCertification(const Handle_StepAP203_CcDesignCertification &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignCertification(const StepAP203_CcDesignCertification *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignCertification & operator=(const Handle_StepAP203_CcDesignCertification &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_CcDesignCertification & operator=(const StepAP203_CcDesignCertification *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_CcDesignCertification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignCertification {
	StepAP203_CcDesignCertification* GetObject() {
	return (StepAP203_CcDesignCertification*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_CcDesignCertification::~Handle_StepAP203_CcDesignCertification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_CcDesignCertification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepAP203_HArray1OfContractedItem;
class Handle_StepAP203_HArray1OfContractedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem();
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem(const Handle_StepAP203_HArray1OfContractedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem(const StepAP203_HArray1OfContractedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem & operator=(const Handle_StepAP203_HArray1OfContractedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem & operator=(const StepAP203_HArray1OfContractedItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepAP203_HArray1OfContractedItem DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfContractedItem {
	StepAP203_HArray1OfContractedItem* GetObject() {
	return (StepAP203_HArray1OfContractedItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepAP203_HArray1OfContractedItem::~Handle_StepAP203_HArray1OfContractedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepAP203_HArray1OfContractedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfSpecifiedItem;
class StepAP203_HArray1OfSpecifiedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfSpecifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfSpecifiedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_SpecifiedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_SpecifiedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_SpecifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_SpecifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_SpecifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfSpecifiedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfSpecifiedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfSpecifiedItem {
	Handle_StepAP203_HArray1OfSpecifiedItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfSpecifiedItem*) &$self;
	}
};
%extend StepAP203_HArray1OfSpecifiedItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfSpecifiedItem::~StepAP203_HArray1OfSpecifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfSpecifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfCertifiedItem;
class StepAP203_Array1OfCertifiedItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfCertifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfCertifiedItem(const StepAP203_CertifiedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_CertifiedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfCertifiedItem & Assign(const StepAP203_Array1OfCertifiedItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfCertifiedItem & operator=(const StepAP203_Array1OfCertifiedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_CertifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_CertifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_CertifiedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_CertifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_CertifiedItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfCertifiedItem::~StepAP203_Array1OfCertifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfCertifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_ChangeRequestItem;
class StepAP203_ChangeRequestItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_ChangeRequestItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;

};
%feature("shadow") StepAP203_ChangeRequestItem::~StepAP203_ChangeRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_ChangeRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_ClassifiedItem;
class StepAP203_ClassifiedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_ClassifiedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_AssemblyComponentUsage AssemblyComponentUsage() const;

};
%feature("shadow") StepAP203_ClassifiedItem::~StepAP203_ClassifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_ClassifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfClassifiedItem;
class StepAP203_Array1OfClassifiedItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfClassifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfClassifiedItem(const StepAP203_ClassifiedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_ClassifiedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfClassifiedItem & Assign(const StepAP203_Array1OfClassifiedItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfClassifiedItem & operator=(const StepAP203_Array1OfClassifiedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ClassifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ClassifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_ClassifiedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ClassifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_ClassifiedItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfClassifiedItem::~StepAP203_Array1OfClassifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfClassifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_ContractedItem;
class StepAP203_ContractedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_ContractedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;

};
%feature("shadow") StepAP203_ContractedItem::~StepAP203_ContractedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_ContractedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfWorkItem;
class StepAP203_Array1OfWorkItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfWorkItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfWorkItem(const StepAP203_WorkItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_WorkItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfWorkItem & Assign(const StepAP203_Array1OfWorkItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfWorkItem & operator=(const StepAP203_Array1OfWorkItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_WorkItem &Value);
		%feature("autodoc", "1");
		const StepAP203_WorkItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_WorkItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_WorkItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_WorkItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfWorkItem::~StepAP203_Array1OfWorkItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfWorkItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfChangeRequestItem;
class StepAP203_HArray1OfChangeRequestItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfChangeRequestItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfChangeRequestItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_ChangeRequestItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_ChangeRequestItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ChangeRequestItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ChangeRequestItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ChangeRequestItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfChangeRequestItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfChangeRequestItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfChangeRequestItem {
	Handle_StepAP203_HArray1OfChangeRequestItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfChangeRequestItem*) &$self;
	}
};
%extend StepAP203_HArray1OfChangeRequestItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfChangeRequestItem::~StepAP203_HArray1OfChangeRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfChangeRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_ChangeRequest;
class StepAP203_ChangeRequest : public StepBasic_ActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_ChangeRequest();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_VersionedActionRequest &aActionRequestAssignment_AssignedActionRequest, const Handle_StepAP203_HArray1OfChangeRequestItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfChangeRequestItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfChangeRequestItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_ChangeRequest {
	Handle_StepAP203_ChangeRequest GetHandle() {
	return *(Handle_StepAP203_ChangeRequest*) &$self;
	}
};
%extend StepAP203_ChangeRequest {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_ChangeRequest::~StepAP203_ChangeRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_ChangeRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignDateAndTimeAssignment;
class StepAP203_CcDesignDateAndTimeAssignment : public StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignDateAndTimeAssignment();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_DateAndTime &aDateAndTimeAssignment_AssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aDateAndTimeAssignment_Role, const Handle_StepAP203_HArray1OfDateTimeItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfDateTimeItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfDateTimeItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignDateAndTimeAssignment {
	Handle_StepAP203_CcDesignDateAndTimeAssignment GetHandle() {
	return *(Handle_StepAP203_CcDesignDateAndTimeAssignment*) &$self;
	}
};
%extend StepAP203_CcDesignDateAndTimeAssignment {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignDateAndTimeAssignment::~StepAP203_CcDesignDateAndTimeAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignDateAndTimeAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CertifiedItem;
class StepAP203_CertifiedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_CertifiedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_SuppliedPartRelationship SuppliedPartRelationship() const;

};
%feature("shadow") StepAP203_CertifiedItem::~StepAP203_CertifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CertifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfContractedItem;
class StepAP203_HArray1OfContractedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfContractedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfContractedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_ContractedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_ContractedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ContractedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ContractedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ContractedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfContractedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfContractedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfContractedItem {
	Handle_StepAP203_HArray1OfContractedItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfContractedItem*) &$self;
	}
};
%extend StepAP203_HArray1OfContractedItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfContractedItem::~StepAP203_HArray1OfContractedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfContractedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfCertifiedItem;
class StepAP203_HArray1OfCertifiedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfCertifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfCertifiedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_CertifiedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_CertifiedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_CertifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_CertifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_CertifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfCertifiedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfCertifiedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfCertifiedItem {
	Handle_StepAP203_HArray1OfCertifiedItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfCertifiedItem*) &$self;
	}
};
%extend StepAP203_HArray1OfCertifiedItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfCertifiedItem::~StepAP203_HArray1OfCertifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfCertifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_SpecifiedItem;
class StepAP203_SpecifiedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_SpecifiedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;

};
%feature("shadow") StepAP203_SpecifiedItem::~StepAP203_SpecifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_SpecifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignSecurityClassification;
class StepAP203_CcDesignSecurityClassification : public StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignSecurityClassification();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_SecurityClassification &aSecurityClassificationAssignment_AssignedSecurityClassification, const Handle_StepAP203_HArray1OfClassifiedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfClassifiedItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfClassifiedItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignSecurityClassification {
	Handle_StepAP203_CcDesignSecurityClassification GetHandle() {
	return *(Handle_StepAP203_CcDesignSecurityClassification*) &$self;
	}
};
%extend StepAP203_CcDesignSecurityClassification {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignSecurityClassification::~StepAP203_CcDesignSecurityClassification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignSecurityClassification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfContractedItem;
class StepAP203_Array1OfContractedItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfContractedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfContractedItem(const StepAP203_ContractedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_ContractedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfContractedItem & Assign(const StepAP203_Array1OfContractedItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfContractedItem & operator=(const StepAP203_Array1OfContractedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ContractedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ContractedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_ContractedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ContractedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_ContractedItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfContractedItem::~StepAP203_Array1OfContractedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfContractedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_StartWork;
class StepAP203_StartWork : public StepBasic_ActionAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_StartWork();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Action &aActionAssignment_AssignedAction, const Handle_StepAP203_HArray1OfWorkItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfWorkItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_StartWork {
	Handle_StepAP203_StartWork GetHandle() {
	return *(Handle_StepAP203_StartWork*) &$self;
	}
};
%extend StepAP203_StartWork {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_StartWork::~StepAP203_StartWork %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_StartWork {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfClassifiedItem;
class StepAP203_HArray1OfClassifiedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfClassifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfClassifiedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_ClassifiedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_ClassifiedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ClassifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ClassifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ClassifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfClassifiedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfClassifiedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfClassifiedItem {
	Handle_StepAP203_HArray1OfClassifiedItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfClassifiedItem*) &$self;
	}
};
%extend StepAP203_HArray1OfClassifiedItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfClassifiedItem::~StepAP203_HArray1OfClassifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfClassifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfChangeRequestItem;
class StepAP203_Array1OfChangeRequestItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfChangeRequestItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfChangeRequestItem(const StepAP203_ChangeRequestItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_ChangeRequestItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfChangeRequestItem & Assign(const StepAP203_Array1OfChangeRequestItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfChangeRequestItem & operator=(const StepAP203_Array1OfChangeRequestItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ChangeRequestItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ChangeRequestItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_ChangeRequestItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ChangeRequestItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_ChangeRequestItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfChangeRequestItem::~StepAP203_Array1OfChangeRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfChangeRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfApprovedItem;
class StepAP203_HArray1OfApprovedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfApprovedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfApprovedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_ApprovedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_ApprovedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ApprovedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ApprovedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ApprovedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfApprovedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfApprovedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfApprovedItem {
	Handle_StepAP203_HArray1OfApprovedItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfApprovedItem*) &$self;
	}
};
%extend StepAP203_HArray1OfApprovedItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfApprovedItem::~StepAP203_HArray1OfApprovedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfApprovedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfWorkItem;
class StepAP203_HArray1OfWorkItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfWorkItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfWorkItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_WorkItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_WorkItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_WorkItem &Value);
		%feature("autodoc", "1");
		const StepAP203_WorkItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_WorkItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfWorkItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfWorkItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfWorkItem {
	Handle_StepAP203_HArray1OfWorkItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfWorkItem*) &$self;
	}
};
%extend StepAP203_HArray1OfWorkItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfWorkItem::~StepAP203_HArray1OfWorkItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfWorkItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignCertification;
class StepAP203_CcDesignCertification : public StepBasic_CertificationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignCertification();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Certification &aCertificationAssignment_AssignedCertification, const Handle_StepAP203_HArray1OfCertifiedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfCertifiedItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfCertifiedItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignCertification {
	Handle_StepAP203_CcDesignCertification GetHandle() {
	return *(Handle_StepAP203_CcDesignCertification*) &$self;
	}
};
%extend StepAP203_CcDesignCertification {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignCertification::~StepAP203_CcDesignCertification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignCertification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_StartRequestItem;
class StepAP203_StartRequestItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_StartRequestItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;

};
%feature("shadow") StepAP203_StartRequestItem::~StepAP203_StartRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_StartRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_PersonOrganizationItem;
class StepAP203_PersonOrganizationItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_PersonOrganizationItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepAP203_Change Change() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork StartWork() const;
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest ChangeRequest() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest StartRequest() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem ConfigurationItem() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Product Product() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Contract Contract() const;
		%feature("autodoc", "1");
		Handle_StepBasic_SecurityClassification SecurityClassification() const;

};
%feature("shadow") StepAP203_PersonOrganizationItem::~StepAP203_PersonOrganizationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_PersonOrganizationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_WorkItem;
class StepAP203_WorkItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_WorkItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;

};
%feature("shadow") StepAP203_WorkItem::~StepAP203_WorkItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_WorkItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfPersonOrganizationItem;
class StepAP203_HArray1OfPersonOrganizationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfPersonOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfPersonOrganizationItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_PersonOrganizationItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_PersonOrganizationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_PersonOrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP203_PersonOrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_PersonOrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfPersonOrganizationItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfPersonOrganizationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfPersonOrganizationItem {
	Handle_StepAP203_HArray1OfPersonOrganizationItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfPersonOrganizationItem*) &$self;
	}
};
%extend StepAP203_HArray1OfPersonOrganizationItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfPersonOrganizationItem::~StepAP203_HArray1OfPersonOrganizationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfPersonOrganizationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignPersonAndOrganizationAssignment;
class StepAP203_CcDesignPersonAndOrganizationAssignment : public StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_PersonAndOrganization &aPersonAndOrganizationAssignment_AssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aPersonAndOrganizationAssignment_Role, const Handle_StepAP203_HArray1OfPersonOrganizationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfPersonOrganizationItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfPersonOrganizationItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignPersonAndOrganizationAssignment {
	Handle_StepAP203_CcDesignPersonAndOrganizationAssignment GetHandle() {
	return *(Handle_StepAP203_CcDesignPersonAndOrganizationAssignment*) &$self;
	}
};
%extend StepAP203_CcDesignPersonAndOrganizationAssignment {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignPersonAndOrganizationAssignment::~StepAP203_CcDesignPersonAndOrganizationAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignPersonAndOrganizationAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfStartRequestItem;
class StepAP203_Array1OfStartRequestItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfStartRequestItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfStartRequestItem(const StepAP203_StartRequestItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_StartRequestItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfStartRequestItem & Assign(const StepAP203_Array1OfStartRequestItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfStartRequestItem & operator=(const StepAP203_Array1OfStartRequestItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_StartRequestItem &Value);
		%feature("autodoc", "1");
		const StepAP203_StartRequestItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_StartRequestItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_StartRequestItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_StartRequestItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfStartRequestItem::~StepAP203_Array1OfStartRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfStartRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfPersonOrganizationItem;
class StepAP203_Array1OfPersonOrganizationItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfPersonOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfPersonOrganizationItem(const StepAP203_PersonOrganizationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_PersonOrganizationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfPersonOrganizationItem & Assign(const StepAP203_Array1OfPersonOrganizationItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfPersonOrganizationItem & operator=(const StepAP203_Array1OfPersonOrganizationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_PersonOrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP203_PersonOrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_PersonOrganizationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_PersonOrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_PersonOrganizationItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfPersonOrganizationItem::~StepAP203_Array1OfPersonOrganizationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfPersonOrganizationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Change;
class StepAP203_Change : public StepBasic_ActionAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_Change();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Action &aActionAssignment_AssignedAction, const Handle_StepAP203_HArray1OfWorkItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfWorkItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfWorkItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_Change {
	Handle_StepAP203_Change GetHandle() {
	return *(Handle_StepAP203_Change*) &$self;
	}
};
%extend StepAP203_Change {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_Change::~StepAP203_Change %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Change {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfStartRequestItem;
class StepAP203_HArray1OfStartRequestItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfStartRequestItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfStartRequestItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_StartRequestItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_StartRequestItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_StartRequestItem &Value);
		%feature("autodoc", "1");
		const StepAP203_StartRequestItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_StartRequestItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfStartRequestItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfStartRequestItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfStartRequestItem {
	Handle_StepAP203_HArray1OfStartRequestItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfStartRequestItem*) &$self;
	}
};
%extend StepAP203_HArray1OfStartRequestItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfStartRequestItem::~StepAP203_HArray1OfStartRequestItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfStartRequestItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_StartRequest;
class StepAP203_StartRequest : public StepBasic_ActionRequestAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_StartRequest();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_VersionedActionRequest &aActionRequestAssignment_AssignedActionRequest, const Handle_StepAP203_HArray1OfStartRequestItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfStartRequestItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfStartRequestItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_StartRequest {
	Handle_StepAP203_StartRequest GetHandle() {
	return *(Handle_StepAP203_StartRequest*) &$self;
	}
};
%extend StepAP203_StartRequest {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_StartRequest::~StepAP203_StartRequest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_StartRequest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_ApprovedItem;
class StepAP203_ApprovedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_ApprovedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationEffectivity ConfigurationEffectivity() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ConfigurationItem ConfigurationItem() const;
		%feature("autodoc", "1");
		Handle_StepBasic_SecurityClassification SecurityClassification() const;
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest ChangeRequest() const;
		%feature("autodoc", "1");
		Handle_StepAP203_Change Change() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest StartRequest() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork StartWork() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Certification Certification() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Contract Contract() const;

};
%feature("shadow") StepAP203_ApprovedItem::~StepAP203_ApprovedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_ApprovedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfSpecifiedItem;
class StepAP203_Array1OfSpecifiedItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfSpecifiedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfSpecifiedItem(const StepAP203_SpecifiedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_SpecifiedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfSpecifiedItem & Assign(const StepAP203_Array1OfSpecifiedItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfSpecifiedItem & operator=(const StepAP203_Array1OfSpecifiedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_SpecifiedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_SpecifiedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_SpecifiedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_SpecifiedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_SpecifiedItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfSpecifiedItem::~StepAP203_Array1OfSpecifiedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfSpecifiedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignApproval;
class StepAP203_CcDesignApproval : public StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignApproval();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Approval &aApprovalAssignment_AssignedApproval, const Handle_StepAP203_HArray1OfApprovedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfApprovedItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfApprovedItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignApproval {
	Handle_StepAP203_CcDesignApproval GetHandle() {
	return *(Handle_StepAP203_CcDesignApproval*) &$self;
	}
};
%extend StepAP203_CcDesignApproval {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignApproval::~StepAP203_CcDesignApproval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignApproval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfDateTimeItem;
class StepAP203_Array1OfDateTimeItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfDateTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfDateTimeItem(const StepAP203_DateTimeItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_DateTimeItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfDateTimeItem & Assign(const StepAP203_Array1OfDateTimeItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfDateTimeItem & operator=(const StepAP203_Array1OfDateTimeItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_DateTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP203_DateTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_DateTimeItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_DateTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_DateTimeItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfDateTimeItem::~StepAP203_Array1OfDateTimeItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfDateTimeItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_Array1OfApprovedItem;
class StepAP203_Array1OfApprovedItem {
	public:
		%feature("autodoc", "1");
		StepAP203_Array1OfApprovedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_Array1OfApprovedItem(const StepAP203_ApprovedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP203_ApprovedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfApprovedItem & Assign(const StepAP203_Array1OfApprovedItem &Other);
		%feature("autodoc", "1");
		const StepAP203_Array1OfApprovedItem & operator=(const StepAP203_Array1OfApprovedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_ApprovedItem &Value);
		%feature("autodoc", "1");
		const StepAP203_ApprovedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP203_ApprovedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_ApprovedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP203_ApprovedItem & operator()(const Standard_Integer Index);

};
%feature("shadow") StepAP203_Array1OfApprovedItem::~StepAP203_Array1OfApprovedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_Array1OfApprovedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignSpecificationReference;
class StepAP203_CcDesignSpecificationReference : public StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignSpecificationReference();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Document &aDocumentReference_AssignedDocument, const Handle_TCollection_HAsciiString &aDocumentReference_Source, const Handle_StepAP203_HArray1OfSpecifiedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfSpecifiedItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfSpecifiedItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignSpecificationReference {
	Handle_StepAP203_CcDesignSpecificationReference GetHandle() {
	return *(Handle_StepAP203_CcDesignSpecificationReference*) &$self;
	}
};
%extend StepAP203_CcDesignSpecificationReference {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignSpecificationReference::~StepAP203_CcDesignSpecificationReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignSpecificationReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_CcDesignContract;
class StepAP203_CcDesignContract : public StepBasic_ContractAssignment {
	public:
		%feature("autodoc", "1");
		StepAP203_CcDesignContract();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Contract &aContractAssignment_AssignedContract, const Handle_StepAP203_HArray1OfContractedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP203_HArray1OfContractedItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP203_HArray1OfContractedItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_CcDesignContract {
	Handle_StepAP203_CcDesignContract GetHandle() {
	return *(Handle_StepAP203_CcDesignContract*) &$self;
	}
};
%extend StepAP203_CcDesignContract {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_CcDesignContract::~StepAP203_CcDesignContract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_CcDesignContract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_HArray1OfDateTimeItem;
class StepAP203_HArray1OfDateTimeItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP203_HArray1OfDateTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP203_HArray1OfDateTimeItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP203_DateTimeItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP203_DateTimeItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP203_DateTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP203_DateTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP203_DateTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP203_Array1OfDateTimeItem & Array1() const;
		%feature("autodoc", "1");
		StepAP203_Array1OfDateTimeItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP203_HArray1OfDateTimeItem {
	Handle_StepAP203_HArray1OfDateTimeItem GetHandle() {
	return *(Handle_StepAP203_HArray1OfDateTimeItem*) &$self;
	}
};
%extend StepAP203_HArray1OfDateTimeItem {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepAP203_HArray1OfDateTimeItem::~StepAP203_HArray1OfDateTimeItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_HArray1OfDateTimeItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepAP203_DateTimeItem;
class StepAP203_DateTimeItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP203_DateTimeItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepAP203_ChangeRequest ChangeRequest() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartRequest StartRequest() const;
		%feature("autodoc", "1");
		Handle_StepAP203_Change Change() const;
		%feature("autodoc", "1");
		Handle_StepAP203_StartWork StartWork() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Contract Contract() const;
		%feature("autodoc", "1");
		Handle_StepBasic_SecurityClassification SecurityClassification() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Certification Certification() const;

};
%feature("shadow") StepAP203_DateTimeItem::~StepAP203_DateTimeItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepAP203_DateTimeItem {
	void _kill_pointed() {
		delete $self;
	}
};
