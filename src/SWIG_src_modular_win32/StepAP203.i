/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module StepAP203

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include StepAP203_dependencies.i


%include StepAP203_headers.i




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
		Handle_StepAP203_Change const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_Change {
	StepAP203_Change* GetObject() {
	return (StepAP203_Change*)$self->Access();
	}
};
%extend Handle_StepAP203_Change {
	~Handle_StepAP203_Change() {
	printf("Call custom destructor for instance of Handle_StepAP203_Change\n");
	}
};

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
		Handle_StepAP203_HArray1OfWorkItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfWorkItem {
	StepAP203_HArray1OfWorkItem* GetObject() {
	return (StepAP203_HArray1OfWorkItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfWorkItem {
	~Handle_StepAP203_HArray1OfWorkItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfWorkItem\n");
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
		Handle_StepAP203_CcDesignPersonAndOrganizationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
	StepAP203_CcDesignPersonAndOrganizationAssignment* GetObject() {
	return (StepAP203_CcDesignPersonAndOrganizationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
	~Handle_StepAP203_CcDesignPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignPersonAndOrganizationAssignment\n");
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
		Handle_StepAP203_StartRequest const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_StartRequest {
	StepAP203_StartRequest* GetObject() {
	return (StepAP203_StartRequest*)$self->Access();
	}
};
%extend Handle_StepAP203_StartRequest {
	~Handle_StepAP203_StartRequest() {
	printf("Call custom destructor for instance of Handle_StepAP203_StartRequest\n");
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
		Handle_StepAP203_CcDesignSpecificationReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignSpecificationReference {
	StepAP203_CcDesignSpecificationReference* GetObject() {
	return (StepAP203_CcDesignSpecificationReference*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignSpecificationReference {
	~Handle_StepAP203_CcDesignSpecificationReference() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignSpecificationReference\n");
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
		Handle_StepAP203_HArray1OfPersonOrganizationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfPersonOrganizationItem {
	StepAP203_HArray1OfPersonOrganizationItem* GetObject() {
	return (StepAP203_HArray1OfPersonOrganizationItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfPersonOrganizationItem {
	~Handle_StepAP203_HArray1OfPersonOrganizationItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfPersonOrganizationItem\n");
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
		Handle_StepAP203_ChangeRequest const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_ChangeRequest {
	StepAP203_ChangeRequest* GetObject() {
	return (StepAP203_ChangeRequest*)$self->Access();
	}
};
%extend Handle_StepAP203_ChangeRequest {
	~Handle_StepAP203_ChangeRequest() {
	printf("Call custom destructor for instance of Handle_StepAP203_ChangeRequest\n");
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
		Handle_StepAP203_CcDesignDateAndTimeAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
	StepAP203_CcDesignDateAndTimeAssignment* GetObject() {
	return (StepAP203_CcDesignDateAndTimeAssignment*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
	~Handle_StepAP203_CcDesignDateAndTimeAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignDateAndTimeAssignment\n");
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
		Handle_StepAP203_CcDesignApproval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignApproval {
	StepAP203_CcDesignApproval* GetObject() {
	return (StepAP203_CcDesignApproval*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignApproval {
	~Handle_StepAP203_CcDesignApproval() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignApproval\n");
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
		Handle_StepAP203_HArray1OfChangeRequestItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfChangeRequestItem {
	StepAP203_HArray1OfChangeRequestItem* GetObject() {
	return (StepAP203_HArray1OfChangeRequestItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfChangeRequestItem {
	~Handle_StepAP203_HArray1OfChangeRequestItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfChangeRequestItem\n");
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
		Handle_StepAP203_StartWork const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_StartWork {
	StepAP203_StartWork* GetObject() {
	return (StepAP203_StartWork*)$self->Access();
	}
};
%extend Handle_StepAP203_StartWork {
	~Handle_StepAP203_StartWork() {
	printf("Call custom destructor for instance of Handle_StepAP203_StartWork\n");
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
		Handle_StepAP203_HArray1OfStartRequestItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfStartRequestItem {
	StepAP203_HArray1OfStartRequestItem* GetObject() {
	return (StepAP203_HArray1OfStartRequestItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfStartRequestItem {
	~Handle_StepAP203_HArray1OfStartRequestItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfStartRequestItem\n");
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
		Handle_StepAP203_CcDesignSecurityClassification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignSecurityClassification {
	StepAP203_CcDesignSecurityClassification* GetObject() {
	return (StepAP203_CcDesignSecurityClassification*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignSecurityClassification {
	~Handle_StepAP203_CcDesignSecurityClassification() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignSecurityClassification\n");
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
		Handle_StepAP203_HArray1OfApprovedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfApprovedItem {
	StepAP203_HArray1OfApprovedItem* GetObject() {
	return (StepAP203_HArray1OfApprovedItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfApprovedItem {
	~Handle_StepAP203_HArray1OfApprovedItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfApprovedItem\n");
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
		Handle_StepAP203_HArray1OfSpecifiedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfSpecifiedItem {
	StepAP203_HArray1OfSpecifiedItem* GetObject() {
	return (StepAP203_HArray1OfSpecifiedItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfSpecifiedItem {
	~Handle_StepAP203_HArray1OfSpecifiedItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfSpecifiedItem\n");
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
		Handle_StepAP203_CcDesignContract const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignContract {
	StepAP203_CcDesignContract* GetObject() {
	return (StepAP203_CcDesignContract*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignContract {
	~Handle_StepAP203_CcDesignContract() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignContract\n");
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
		Handle_StepAP203_HArray1OfDateTimeItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfDateTimeItem {
	StepAP203_HArray1OfDateTimeItem* GetObject() {
	return (StepAP203_HArray1OfDateTimeItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfDateTimeItem {
	~Handle_StepAP203_HArray1OfDateTimeItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfDateTimeItem\n");
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
		Handle_StepAP203_CcDesignCertification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_CcDesignCertification {
	StepAP203_CcDesignCertification* GetObject() {
	return (StepAP203_CcDesignCertification*)$self->Access();
	}
};
%extend Handle_StepAP203_CcDesignCertification {
	~Handle_StepAP203_CcDesignCertification() {
	printf("Call custom destructor for instance of Handle_StepAP203_CcDesignCertification\n");
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
		Handle_StepAP203_HArray1OfContractedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfContractedItem {
	StepAP203_HArray1OfContractedItem* GetObject() {
	return (StepAP203_HArray1OfContractedItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfContractedItem {
	~Handle_StepAP203_HArray1OfContractedItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfContractedItem\n");
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
		Handle_StepAP203_HArray1OfClassifiedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfClassifiedItem {
	StepAP203_HArray1OfClassifiedItem* GetObject() {
	return (StepAP203_HArray1OfClassifiedItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfClassifiedItem {
	~Handle_StepAP203_HArray1OfClassifiedItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfClassifiedItem\n");
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
		Handle_StepAP203_HArray1OfCertifiedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP203_HArray1OfCertifiedItem {
	StepAP203_HArray1OfCertifiedItem* GetObject() {
	return (StepAP203_HArray1OfCertifiedItem*)$self->Access();
	}
};
%extend Handle_StepAP203_HArray1OfCertifiedItem {
	~Handle_StepAP203_HArray1OfCertifiedItem() {
	printf("Call custom destructor for instance of Handle_StepAP203_HArray1OfCertifiedItem\n");
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
	~StepAP203_HArray1OfSpecifiedItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfSpecifiedItem\n");
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
		~StepAP203_Array1OfClassifiedItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfClassifiedItem & Assign(const StepAP203_Array1OfClassifiedItem &Other);
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
	~StepAP203_HArray1OfChangeRequestItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfChangeRequestItem\n");
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
	~StepAP203_ChangeRequest() {
	printf("Call custom destructor for instance of StepAP203_ChangeRequest\n");
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
	~StepAP203_CcDesignSecurityClassification() {
	printf("Call custom destructor for instance of StepAP203_CcDesignSecurityClassification\n");
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
	~StepAP203_CcDesignDateAndTimeAssignment() {
	printf("Call custom destructor for instance of StepAP203_CcDesignDateAndTimeAssignment\n");
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
		~StepAP203_Array1OfWorkItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfWorkItem & Assign(const StepAP203_Array1OfWorkItem &Other);
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
	~StepAP203_CcDesignContract() {
	printf("Call custom destructor for instance of StepAP203_CcDesignContract\n");
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
	~StepAP203_HArray1OfCertifiedItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfCertifiedItem\n");
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
%extend StepAP203_SpecifiedItem {
	~StepAP203_SpecifiedItem() {
	printf("Call custom destructor for instance of StepAP203_SpecifiedItem\n");
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
		~StepAP203_Array1OfContractedItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfContractedItem & Assign(const StepAP203_Array1OfContractedItem &Other);
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
		~StepAP203_Array1OfPersonOrganizationItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfPersonOrganizationItem & Assign(const StepAP203_Array1OfPersonOrganizationItem &Other);
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
	~StepAP203_HArray1OfClassifiedItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfClassifiedItem\n");
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
		~StepAP203_Array1OfChangeRequestItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfChangeRequestItem & Assign(const StepAP203_Array1OfChangeRequestItem &Other);
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
	~StepAP203_HArray1OfWorkItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfWorkItem\n");
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
%extend StepAP203_StartRequestItem {
	~StepAP203_StartRequestItem() {
	printf("Call custom destructor for instance of StepAP203_StartRequestItem\n");
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
%extend StepAP203_PersonOrganizationItem {
	~StepAP203_PersonOrganizationItem() {
	printf("Call custom destructor for instance of StepAP203_PersonOrganizationItem\n");
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
%extend StepAP203_WorkItem {
	~StepAP203_WorkItem() {
	printf("Call custom destructor for instance of StepAP203_WorkItem\n");
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
%extend StepAP203_CertifiedItem {
	~StepAP203_CertifiedItem() {
	printf("Call custom destructor for instance of StepAP203_CertifiedItem\n");
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
	~StepAP203_HArray1OfContractedItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfContractedItem\n");
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
	~StepAP203_HArray1OfApprovedItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfApprovedItem\n");
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
	~StepAP203_StartWork() {
	printf("Call custom destructor for instance of StepAP203_StartWork\n");
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
	~StepAP203_HArray1OfPersonOrganizationItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfPersonOrganizationItem\n");
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
	~StepAP203_CcDesignPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of StepAP203_CcDesignPersonAndOrganizationAssignment\n");
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
%extend StepAP203_ChangeRequestItem {
	~StepAP203_ChangeRequestItem() {
	printf("Call custom destructor for instance of StepAP203_ChangeRequestItem\n");
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
%extend StepAP203_DateTimeItem {
	~StepAP203_DateTimeItem() {
	printf("Call custom destructor for instance of StepAP203_DateTimeItem\n");
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
		~StepAP203_Array1OfStartRequestItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfStartRequestItem & Assign(const StepAP203_Array1OfStartRequestItem &Other);
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
	~StepAP203_HArray1OfDateTimeItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfDateTimeItem\n");
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
	~StepAP203_HArray1OfStartRequestItem() {
	printf("Call custom destructor for instance of StepAP203_HArray1OfStartRequestItem\n");
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
	~StepAP203_StartRequest() {
	printf("Call custom destructor for instance of StepAP203_StartRequest\n");
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
	~StepAP203_Change() {
	printf("Call custom destructor for instance of StepAP203_Change\n");
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
		~StepAP203_Array1OfApprovedItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfApprovedItem & Assign(const StepAP203_Array1OfApprovedItem &Other);
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
%extend StepAP203_ApprovedItem {
	~StepAP203_ApprovedItem() {
	printf("Call custom destructor for instance of StepAP203_ApprovedItem\n");
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
	~StepAP203_CcDesignCertification() {
	printf("Call custom destructor for instance of StepAP203_CcDesignCertification\n");
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
	~StepAP203_CcDesignApproval() {
	printf("Call custom destructor for instance of StepAP203_CcDesignApproval\n");
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
%extend StepAP203_ContractedItem {
	~StepAP203_ContractedItem() {
	printf("Call custom destructor for instance of StepAP203_ContractedItem\n");
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
	~StepAP203_CcDesignSpecificationReference() {
	printf("Call custom destructor for instance of StepAP203_CcDesignSpecificationReference\n");
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
%extend StepAP203_ClassifiedItem {
	~StepAP203_ClassifiedItem() {
	printf("Call custom destructor for instance of StepAP203_ClassifiedItem\n");
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
		~StepAP203_Array1OfDateTimeItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfDateTimeItem & Assign(const StepAP203_Array1OfDateTimeItem &Other);
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
		~StepAP203_Array1OfCertifiedItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfCertifiedItem & Assign(const StepAP203_Array1OfCertifiedItem &Other);
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
		~StepAP203_Array1OfSpecifiedItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP203_Array1OfSpecifiedItem & Assign(const StepAP203_Array1OfSpecifiedItem &Other);
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