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
%module StepAP214

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


%include StepAP214_dependencies.i


%include StepAP214_headers.i




%nodefaultctor Handle_StepAP214_Class;
class Handle_StepAP214_Class : public Handle_StepBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_Class();
		%feature("autodoc", "1");
		Handle_StepAP214_Class(const Handle_StepAP214_Class &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_Class(const StepAP214_Class *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_Class const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_Class {
	StepAP214_Class* GetObject() {
	return (StepAP214_Class*)$self->Access();
	}
};
%extend Handle_StepAP214_Class {
	~Handle_StepAP214_Class() {
	printf("Call custom destructor for instance of Handle_StepAP214_Class\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfDateItem;
class Handle_StepAP214_HArray1OfDateItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateItem(const Handle_StepAP214_HArray1OfDateItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateItem(const StepAP214_HArray1OfDateItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfDateItem {
	StepAP214_HArray1OfDateItem* GetObject() {
	return (StepAP214_HArray1OfDateItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfDateItem {
	~Handle_StepAP214_HArray1OfDateItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfDateItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfPresentedItemSelect;
class Handle_StepAP214_HArray1OfPresentedItemSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPresentedItemSelect();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPresentedItemSelect(const Handle_StepAP214_HArray1OfPresentedItemSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPresentedItemSelect(const StepAP214_HArray1OfPresentedItemSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPresentedItemSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfPresentedItemSelect {
	StepAP214_HArray1OfPresentedItemSelect* GetObject() {
	return (StepAP214_HArray1OfPresentedItemSelect*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfPresentedItemSelect {
	~Handle_StepAP214_HArray1OfPresentedItemSelect() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfPresentedItemSelect\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignDatedItem;
class Handle_StepAP214_HArray1OfAutoDesignDatedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem(const Handle_StepAP214_HArray1OfAutoDesignDatedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem(const StepAP214_HArray1OfAutoDesignDatedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignDatedItem {
	StepAP214_HArray1OfAutoDesignDatedItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignDatedItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignDatedItem {
	~Handle_StepAP214_HArray1OfAutoDesignDatedItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignDatedItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment;
class Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment : public Handle_StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment(const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment(const StepAP214_AutoDesignNominalDateAndTimeAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment {
	StepAP214_AutoDesignNominalDateAndTimeAssignment* GetObject() {
	return (StepAP214_AutoDesignNominalDateAndTimeAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment {
	~Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignApprovalAssignment;
class Handle_StepAP214_AutoDesignApprovalAssignment : public Handle_StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignApprovalAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignApprovalAssignment(const Handle_StepAP214_AutoDesignApprovalAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignApprovalAssignment(const StepAP214_AutoDesignApprovalAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignApprovalAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignApprovalAssignment {
	StepAP214_AutoDesignApprovalAssignment* GetObject() {
	return (StepAP214_AutoDesignApprovalAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignApprovalAssignment {
	~Handle_StepAP214_AutoDesignApprovalAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignApprovalAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_ExternallyDefinedClass;
class Handle_StepAP214_ExternallyDefinedClass : public Handle_StepAP214_Class {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedClass();
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedClass(const Handle_StepAP214_ExternallyDefinedClass &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedClass(const StepAP214_ExternallyDefinedClass *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedClass const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_ExternallyDefinedClass {
	StepAP214_ExternallyDefinedClass* GetObject() {
	return (StepAP214_ExternallyDefinedClass*)$self->Access();
	}
};
%extend Handle_StepAP214_ExternallyDefinedClass {
	~Handle_StepAP214_ExternallyDefinedClass() {
	printf("Call custom destructor for instance of Handle_StepAP214_ExternallyDefinedClass\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignActualDateAssignment;
class Handle_StepAP214_AutoDesignActualDateAssignment : public Handle_StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAssignment(const Handle_StepAP214_AutoDesignActualDateAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAssignment(const StepAP214_AutoDesignActualDateAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignActualDateAssignment {
	StepAP214_AutoDesignActualDateAssignment* GetObject() {
	return (StepAP214_AutoDesignActualDateAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignActualDateAssignment {
	~Handle_StepAP214_AutoDesignActualDateAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignActualDateAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignPresentedItem;
class Handle_StepAP214_AutoDesignPresentedItem : public Handle_StepVisual_PresentedItem {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPresentedItem();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPresentedItem(const Handle_StepAP214_AutoDesignPresentedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPresentedItem(const StepAP214_AutoDesignPresentedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPresentedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignPresentedItem {
	StepAP214_AutoDesignPresentedItem* GetObject() {
	return (StepAP214_AutoDesignPresentedItem*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignPresentedItem {
	~Handle_StepAP214_AutoDesignPresentedItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignPresentedItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfApprovalItem;
class Handle_StepAP214_HArray1OfApprovalItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfApprovalItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfApprovalItem(const Handle_StepAP214_HArray1OfApprovalItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfApprovalItem(const StepAP214_HArray1OfApprovalItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfApprovalItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfApprovalItem {
	StepAP214_HArray1OfApprovalItem* GetObject() {
	return (StepAP214_HArray1OfApprovalItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfApprovalItem {
	~Handle_StepAP214_HArray1OfApprovalItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfApprovalItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfSecurityClassificationItem;
class Handle_StepAP214_HArray1OfSecurityClassificationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfSecurityClassificationItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfSecurityClassificationItem(const Handle_StepAP214_HArray1OfSecurityClassificationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfSecurityClassificationItem(const StepAP214_HArray1OfSecurityClassificationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfSecurityClassificationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfSecurityClassificationItem {
	StepAP214_HArray1OfSecurityClassificationItem* GetObject() {
	return (StepAP214_HArray1OfSecurityClassificationItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfSecurityClassificationItem {
	~Handle_StepAP214_HArray1OfSecurityClassificationItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfSecurityClassificationItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedPersonAndOrganizationAssignment;
class Handle_StepAP214_AppliedPersonAndOrganizationAssignment : public Handle_StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment(const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment(const StepAP214_AppliedPersonAndOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedPersonAndOrganizationAssignment {
	StepAP214_AppliedPersonAndOrganizationAssignment* GetObject() {
	return (StepAP214_AppliedPersonAndOrganizationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedPersonAndOrganizationAssignment {
	~Handle_StepAP214_AppliedPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedPersonAndOrganizationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignNominalDateAssignment;
class Handle_StepAP214_AutoDesignNominalDateAssignment : public Handle_StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAssignment(const Handle_StepAP214_AutoDesignNominalDateAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAssignment(const StepAP214_AutoDesignNominalDateAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignNominalDateAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignNominalDateAssignment {
	StepAP214_AutoDesignNominalDateAssignment* GetObject() {
	return (StepAP214_AutoDesignNominalDateAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignNominalDateAssignment {
	~Handle_StepAP214_AutoDesignNominalDateAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignNominalDateAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfDateAndTimeItem;
class Handle_StepAP214_HArray1OfDateAndTimeItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateAndTimeItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateAndTimeItem(const Handle_StepAP214_HArray1OfDateAndTimeItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateAndTimeItem(const StepAP214_HArray1OfDateAndTimeItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateAndTimeItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfDateAndTimeItem {
	StepAP214_HArray1OfDateAndTimeItem* GetObject() {
	return (StepAP214_HArray1OfDateAndTimeItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfDateAndTimeItem {
	~Handle_StepAP214_HArray1OfDateAndTimeItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfDateAndTimeItem\n");
	}
};

%nodefaultctor Handle_StepAP214_RepItemGroup;
class Handle_StepAP214_RepItemGroup : public Handle_StepBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_RepItemGroup();
		%feature("autodoc", "1");
		Handle_StepAP214_RepItemGroup(const Handle_StepAP214_RepItemGroup &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_RepItemGroup(const StepAP214_RepItemGroup *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_RepItemGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_RepItemGroup {
	StepAP214_RepItemGroup* GetObject() {
	return (StepAP214_RepItemGroup*)$self->Access();
	}
};
%extend Handle_StepAP214_RepItemGroup {
	~Handle_StepAP214_RepItemGroup() {
	printf("Call custom destructor for instance of Handle_StepAP214_RepItemGroup\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfDocumentReferenceItem;
class Handle_StepAP214_HArray1OfDocumentReferenceItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDocumentReferenceItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDocumentReferenceItem(const Handle_StepAP214_HArray1OfDocumentReferenceItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDocumentReferenceItem(const StepAP214_HArray1OfDocumentReferenceItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDocumentReferenceItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfDocumentReferenceItem {
	StepAP214_HArray1OfDocumentReferenceItem* GetObject() {
	return (StepAP214_HArray1OfDocumentReferenceItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfDocumentReferenceItem {
	~Handle_StepAP214_HArray1OfDocumentReferenceItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfDocumentReferenceItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedDocumentReference;
class Handle_StepAP214_AppliedDocumentReference : public Handle_StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDocumentReference();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDocumentReference(const Handle_StepAP214_AppliedDocumentReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDocumentReference(const StepAP214_AppliedDocumentReference *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDocumentReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedDocumentReference {
	StepAP214_AppliedDocumentReference* GetObject() {
	return (StepAP214_AppliedDocumentReference*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedDocumentReference {
	~Handle_StepAP214_AppliedDocumentReference() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedDocumentReference\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfGroupItem;
class Handle_StepAP214_HArray1OfGroupItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfGroupItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfGroupItem(const Handle_StepAP214_HArray1OfGroupItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfGroupItem(const StepAP214_HArray1OfGroupItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfGroupItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfGroupItem {
	StepAP214_HArray1OfGroupItem* GetObject() {
	return (StepAP214_HArray1OfGroupItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfGroupItem {
	~Handle_StepAP214_HArray1OfGroupItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfGroupItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignReferencingItem;
class Handle_StepAP214_HArray1OfAutoDesignReferencingItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignReferencingItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignReferencingItem(const Handle_StepAP214_HArray1OfAutoDesignReferencingItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignReferencingItem(const StepAP214_HArray1OfAutoDesignReferencingItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignReferencingItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignReferencingItem {
	StepAP214_HArray1OfAutoDesignReferencingItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignReferencingItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignReferencingItem {
	~Handle_StepAP214_HArray1OfAutoDesignReferencingItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignReferencingItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfOrganizationItem;
class Handle_StepAP214_HArray1OfOrganizationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfOrganizationItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfOrganizationItem(const Handle_StepAP214_HArray1OfOrganizationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfOrganizationItem(const StepAP214_HArray1OfOrganizationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfOrganizationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfOrganizationItem {
	StepAP214_HArray1OfOrganizationItem* GetObject() {
	return (StepAP214_HArray1OfOrganizationItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfOrganizationItem {
	~Handle_StepAP214_HArray1OfOrganizationItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfOrganizationItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignActualDateAndTimeAssignment;
class Handle_StepAP214_AutoDesignActualDateAndTimeAssignment : public Handle_StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAndTimeAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAndTimeAssignment(const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAndTimeAssignment(const StepAP214_AutoDesignActualDateAndTimeAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignActualDateAndTimeAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignActualDateAndTimeAssignment {
	StepAP214_AutoDesignActualDateAndTimeAssignment* GetObject() {
	return (StepAP214_AutoDesignActualDateAndTimeAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignActualDateAndTimeAssignment {
	~Handle_StepAP214_AutoDesignActualDateAndTimeAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignActualDateAndTimeAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_Protocol;
class Handle_StepAP214_Protocol : public Handle_StepData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_Protocol();
		%feature("autodoc", "1");
		Handle_StepAP214_Protocol(const Handle_StepAP214_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_Protocol(const StepAP214_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_Protocol {
	StepAP214_Protocol* GetObject() {
	return (StepAP214_Protocol*)$self->Access();
	}
};
%extend Handle_StepAP214_Protocol {
	~Handle_StepAP214_Protocol() {
	printf("Call custom destructor for instance of Handle_StepAP214_Protocol\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedExternalIdentificationAssignment;
class Handle_StepAP214_AppliedExternalIdentificationAssignment : public Handle_StepBasic_ExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedExternalIdentificationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedExternalIdentificationAssignment(const Handle_StepAP214_AppliedExternalIdentificationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedExternalIdentificationAssignment(const StepAP214_AppliedExternalIdentificationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedExternalIdentificationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedExternalIdentificationAssignment {
	StepAP214_AppliedExternalIdentificationAssignment* GetObject() {
	return (StepAP214_AppliedExternalIdentificationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedExternalIdentificationAssignment {
	~Handle_StepAP214_AppliedExternalIdentificationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedExternalIdentificationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignOrganizationAssignment;
class Handle_StepAP214_AutoDesignOrganizationAssignment : public Handle_StepBasic_OrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignOrganizationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignOrganizationAssignment(const Handle_StepAP214_AutoDesignOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignOrganizationAssignment(const StepAP214_AutoDesignOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignOrganizationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignOrganizationAssignment {
	StepAP214_AutoDesignOrganizationAssignment* GetObject() {
	return (StepAP214_AutoDesignOrganizationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignOrganizationAssignment {
	~Handle_StepAP214_AutoDesignOrganizationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignOrganizationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect;
class Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect(const Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect(const StepAP214_HArray1OfAutoDesignPresentedItemSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect {
	StepAP214_HArray1OfAutoDesignPresentedItemSelect* GetObject() {
	return (StepAP214_HArray1OfAutoDesignPresentedItemSelect*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect {
	~Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem;
class Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem(const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem(const StepAP214_HArray1OfAutoDesignGeneralOrgItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem {
	StepAP214_HArray1OfAutoDesignGeneralOrgItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignGeneralOrgItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem {
	~Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedGroupAssignment;
class Handle_StepAP214_AppliedGroupAssignment : public Handle_StepBasic_GroupAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedGroupAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedGroupAssignment(const Handle_StepAP214_AppliedGroupAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedGroupAssignment(const StepAP214_AppliedGroupAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedGroupAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedGroupAssignment {
	StepAP214_AppliedGroupAssignment* GetObject() {
	return (StepAP214_AppliedGroupAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedGroupAssignment {
	~Handle_StepAP214_AppliedGroupAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedGroupAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment;
class Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment : public Handle_StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment(const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment(const StepAP214_AutoDesignPersonAndOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment {
	StepAP214_AutoDesignPersonAndOrganizationAssignment* GetObject() {
	return (StepAP214_AutoDesignPersonAndOrganizationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment {
	~Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_ExternallyDefinedGeneralProperty;
class Handle_StepAP214_ExternallyDefinedGeneralProperty : public Handle_StepBasic_GeneralProperty {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedGeneralProperty();
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedGeneralProperty(const Handle_StepAP214_ExternallyDefinedGeneralProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedGeneralProperty(const StepAP214_ExternallyDefinedGeneralProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedGeneralProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_ExternallyDefinedGeneralProperty {
	StepAP214_ExternallyDefinedGeneralProperty* GetObject() {
	return (StepAP214_ExternallyDefinedGeneralProperty*)$self->Access();
	}
};
%extend Handle_StepAP214_ExternallyDefinedGeneralProperty {
	~Handle_StepAP214_ExternallyDefinedGeneralProperty() {
	printf("Call custom destructor for instance of Handle_StepAP214_ExternallyDefinedGeneralProperty\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedDateAssignment;
class Handle_StepAP214_AppliedDateAssignment : public Handle_StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAssignment(const Handle_StepAP214_AppliedDateAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAssignment(const StepAP214_AppliedDateAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedDateAssignment {
	StepAP214_AppliedDateAssignment* GetObject() {
	return (StepAP214_AppliedDateAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedDateAssignment {
	~Handle_StepAP214_AppliedDateAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedDateAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignSecurityClassificationAssignment;
class Handle_StepAP214_AutoDesignSecurityClassificationAssignment : public Handle_StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignSecurityClassificationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignSecurityClassificationAssignment(const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignSecurityClassificationAssignment(const StepAP214_AutoDesignSecurityClassificationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignSecurityClassificationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignSecurityClassificationAssignment {
	StepAP214_AutoDesignSecurityClassificationAssignment* GetObject() {
	return (StepAP214_AutoDesignSecurityClassificationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignSecurityClassificationAssignment {
	~Handle_StepAP214_AutoDesignSecurityClassificationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignSecurityClassificationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignDateAndPersonAssignment;
class Handle_StepAP214_AutoDesignDateAndPersonAssignment : public Handle_StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment(const Handle_StepAP214_AutoDesignDateAndPersonAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment(const StepAP214_AutoDesignDateAndPersonAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignDateAndPersonAssignment {
	StepAP214_AutoDesignDateAndPersonAssignment* GetObject() {
	return (StepAP214_AutoDesignDateAndPersonAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignDateAndPersonAssignment {
	~Handle_StepAP214_AutoDesignDateAndPersonAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignDateAndPersonAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignDocumentReference;
class Handle_StepAP214_AutoDesignDocumentReference : public Handle_StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference(const Handle_StepAP214_AutoDesignDocumentReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference(const StepAP214_AutoDesignDocumentReference *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignDocumentReference {
	StepAP214_AutoDesignDocumentReference* GetObject() {
	return (StepAP214_AutoDesignDocumentReference*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignDocumentReference {
	~Handle_StepAP214_AutoDesignDocumentReference() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignDocumentReference\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignGroupedItem;
class Handle_StepAP214_HArray1OfAutoDesignGroupedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGroupedItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGroupedItem(const Handle_StepAP214_HArray1OfAutoDesignGroupedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGroupedItem(const StepAP214_HArray1OfAutoDesignGroupedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGroupedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignGroupedItem {
	StepAP214_HArray1OfAutoDesignGroupedItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignGroupedItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignGroupedItem {
	~Handle_StepAP214_HArray1OfAutoDesignGroupedItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignGroupedItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem;
class Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem(const Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem(const StepAP214_HArray1OfAutoDesignDateAndPersonItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem {
	StepAP214_HArray1OfAutoDesignDateAndPersonItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignDateAndPersonItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem {
	~Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AutoDesignGroupAssignment;
class Handle_StepAP214_AutoDesignGroupAssignment : public Handle_StepBasic_GroupAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignGroupAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignGroupAssignment(const Handle_StepAP214_AutoDesignGroupAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignGroupAssignment(const StepAP214_AutoDesignGroupAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignGroupAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AutoDesignGroupAssignment {
	StepAP214_AutoDesignGroupAssignment* GetObject() {
	return (StepAP214_AutoDesignGroupAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AutoDesignGroupAssignment {
	~Handle_StepAP214_AutoDesignGroupAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AutoDesignGroupAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfExternalIdentificationItem;
class Handle_StepAP214_HArray1OfExternalIdentificationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfExternalIdentificationItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfExternalIdentificationItem(const Handle_StepAP214_HArray1OfExternalIdentificationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfExternalIdentificationItem(const StepAP214_HArray1OfExternalIdentificationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfExternalIdentificationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfExternalIdentificationItem {
	StepAP214_HArray1OfExternalIdentificationItem* GetObject() {
	return (StepAP214_HArray1OfExternalIdentificationItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfExternalIdentificationItem {
	~Handle_StepAP214_HArray1OfExternalIdentificationItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfExternalIdentificationItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedPresentedItem;
class Handle_StepAP214_AppliedPresentedItem : public Handle_StepVisual_PresentedItem {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPresentedItem();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPresentedItem(const Handle_StepAP214_AppliedPresentedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPresentedItem(const StepAP214_AppliedPresentedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPresentedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedPresentedItem {
	StepAP214_AppliedPresentedItem* GetObject() {
	return (StepAP214_AppliedPresentedItem*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedPresentedItem {
	~Handle_StepAP214_AppliedPresentedItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedPresentedItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedApprovalAssignment;
class Handle_StepAP214_AppliedApprovalAssignment : public Handle_StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedApprovalAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedApprovalAssignment(const Handle_StepAP214_AppliedApprovalAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedApprovalAssignment(const StepAP214_AppliedApprovalAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedApprovalAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedApprovalAssignment {
	StepAP214_AppliedApprovalAssignment* GetObject() {
	return (StepAP214_AppliedApprovalAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedApprovalAssignment {
	~Handle_StepAP214_AppliedApprovalAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedApprovalAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedOrganizationAssignment;
class Handle_StepAP214_AppliedOrganizationAssignment : public Handle_StepBasic_OrganizationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment(const Handle_StepAP214_AppliedOrganizationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment(const StepAP214_AppliedOrganizationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedOrganizationAssignment {
	StepAP214_AppliedOrganizationAssignment* GetObject() {
	return (StepAP214_AppliedOrganizationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedOrganizationAssignment {
	~Handle_StepAP214_AppliedOrganizationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedOrganizationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem;
class Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem(const Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem(const StepAP214_HArray1OfAutoDesignDateAndTimeItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem {
	StepAP214_HArray1OfAutoDesignDateAndTimeItem* GetObject() {
	return (StepAP214_HArray1OfAutoDesignDateAndTimeItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem {
	~Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem\n");
	}
};

%nodefaultctor Handle_StepAP214_HArray1OfPersonAndOrganizationItem;
class Handle_StepAP214_HArray1OfPersonAndOrganizationItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPersonAndOrganizationItem();
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPersonAndOrganizationItem(const Handle_StepAP214_HArray1OfPersonAndOrganizationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPersonAndOrganizationItem(const StepAP214_HArray1OfPersonAndOrganizationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPersonAndOrganizationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_HArray1OfPersonAndOrganizationItem {
	StepAP214_HArray1OfPersonAndOrganizationItem* GetObject() {
	return (StepAP214_HArray1OfPersonAndOrganizationItem*)$self->Access();
	}
};
%extend Handle_StepAP214_HArray1OfPersonAndOrganizationItem {
	~Handle_StepAP214_HArray1OfPersonAndOrganizationItem() {
	printf("Call custom destructor for instance of Handle_StepAP214_HArray1OfPersonAndOrganizationItem\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedSecurityClassificationAssignment;
class Handle_StepAP214_AppliedSecurityClassificationAssignment : public Handle_StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedSecurityClassificationAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedSecurityClassificationAssignment(const Handle_StepAP214_AppliedSecurityClassificationAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedSecurityClassificationAssignment(const StepAP214_AppliedSecurityClassificationAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedSecurityClassificationAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedSecurityClassificationAssignment {
	StepAP214_AppliedSecurityClassificationAssignment* GetObject() {
	return (StepAP214_AppliedSecurityClassificationAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedSecurityClassificationAssignment {
	~Handle_StepAP214_AppliedSecurityClassificationAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedSecurityClassificationAssignment\n");
	}
};

%nodefaultctor Handle_StepAP214_AppliedDateAndTimeAssignment;
class Handle_StepAP214_AppliedDateAndTimeAssignment : public Handle_StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAndTimeAssignment();
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAndTimeAssignment(const Handle_StepAP214_AppliedDateAndTimeAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAndTimeAssignment(const StepAP214_AppliedDateAndTimeAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedDateAndTimeAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepAP214_AppliedDateAndTimeAssignment {
	StepAP214_AppliedDateAndTimeAssignment* GetObject() {
	return (StepAP214_AppliedDateAndTimeAssignment*)$self->Access();
	}
};
%extend Handle_StepAP214_AppliedDateAndTimeAssignment {
	~Handle_StepAP214_AppliedDateAndTimeAssignment() {
	printf("Call custom destructor for instance of Handle_StepAP214_AppliedDateAndTimeAssignment\n");
	}
};

%nodefaultctor StepAP214_Class;
class StepAP214_Class : public StepBasic_Group {
	public:
		%feature("autodoc", "1");
		StepAP214_Class();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_Class {
	Handle_StepAP214_Class GetHandle() {
	return *(Handle_StepAP214_Class*) &$self;
	}
};
%extend StepAP214_Class {
	~StepAP214_Class() {
	printf("Call custom destructor for instance of StepAP214_Class\n");
	}
};

%nodefaultctor StepAP214_ExternallyDefinedClass;
class StepAP214_ExternallyDefinedClass : public StepAP214_Class {
	public:
		%feature("autodoc", "1");
		StepAP214_ExternallyDefinedClass();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGroup_Name, const Standard_Boolean hasGroup_Description, const Handle_TCollection_HAsciiString &aGroup_Description, const StepBasic_SourceItem &aExternallyDefinedItem_ItemId, const Handle_StepBasic_ExternalSource &aExternallyDefinedItem_Source);
		%feature("autodoc", "1");
		Handle_StepBasic_ExternallyDefinedItem ExternallyDefinedItem() const;
		%feature("autodoc", "1");
		void SetExternallyDefinedItem(const Handle_StepBasic_ExternallyDefinedItem &ExternallyDefinedItem);

};
%extend StepAP214_ExternallyDefinedClass {
	Handle_StepAP214_ExternallyDefinedClass GetHandle() {
	return *(Handle_StepAP214_ExternallyDefinedClass*) &$self;
	}
};
%extend StepAP214_ExternallyDefinedClass {
	~StepAP214_ExternallyDefinedClass() {
	printf("Call custom destructor for instance of StepAP214_ExternallyDefinedClass\n");
	}
};

%nodefaultctor StepAP214_GroupItem;
class StepAP214_GroupItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_GroupItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepGeom_GeometricRepresentationItem GeometricRepresentationItem() const;

};
%extend StepAP214_GroupItem {
	~StepAP214_GroupItem() {
	printf("Call custom destructor for instance of StepAP214_GroupItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfExternalIdentificationItem;
class StepAP214_HArray1OfExternalIdentificationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfExternalIdentificationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfExternalIdentificationItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_ExternalIdentificationItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_ExternalIdentificationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_ExternalIdentificationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_ExternalIdentificationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_ExternalIdentificationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfExternalIdentificationItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfExternalIdentificationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfExternalIdentificationItem {
	Handle_StepAP214_HArray1OfExternalIdentificationItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfExternalIdentificationItem*) &$self;
	}
};
%extend StepAP214_HArray1OfExternalIdentificationItem {
	~StepAP214_HArray1OfExternalIdentificationItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfExternalIdentificationItem\n");
	}
};

%nodefaultctor StepAP214_ExternallyDefinedGeneralProperty;
class StepAP214_ExternallyDefinedGeneralProperty : public StepBasic_GeneralProperty {
	public:
		%feature("autodoc", "1");
		StepAP214_ExternallyDefinedGeneralProperty();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGeneralProperty_Id, const Handle_TCollection_HAsciiString &aGeneralProperty_Name, const Standard_Boolean hasGeneralProperty_Description, const Handle_TCollection_HAsciiString &aGeneralProperty_Description, const StepBasic_SourceItem &aExternallyDefinedItem_ItemId, const Handle_StepBasic_ExternalSource &aExternallyDefinedItem_Source);
		%feature("autodoc", "1");
		Handle_StepBasic_ExternallyDefinedItem ExternallyDefinedItem() const;
		%feature("autodoc", "1");
		void SetExternallyDefinedItem(const Handle_StepBasic_ExternallyDefinedItem &ExternallyDefinedItem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_ExternallyDefinedGeneralProperty {
	Handle_StepAP214_ExternallyDefinedGeneralProperty GetHandle() {
	return *(Handle_StepAP214_ExternallyDefinedGeneralProperty*) &$self;
	}
};
%extend StepAP214_ExternallyDefinedGeneralProperty {
	~StepAP214_ExternallyDefinedGeneralProperty() {
	printf("Call custom destructor for instance of StepAP214_ExternallyDefinedGeneralProperty\n");
	}
};

%nodefaultctor StepAP214_Array1OfPresentedItemSelect;
class StepAP214_Array1OfPresentedItemSelect {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfPresentedItemSelect(const StepAP214_PresentedItemSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_PresentedItemSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfPresentedItemSelect & Assign(const StepAP214_Array1OfPresentedItemSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_PresentedItemSelect &Value);
		%feature("autodoc", "1");
		const StepAP214_PresentedItemSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_PresentedItemSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_PresentedItemSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_PresentedItemSelect & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfPresentedItemSelect {
	~StepAP214_Array1OfPresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_Array1OfPresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214_AutoDesignGeneralOrgItem;
class StepAP214_AutoDesignGeneralOrgItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_Product Product() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionWithAssociatedDocuments ProductDefinitionWithAssociatedDocuments() const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation ExternallyDefinedRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference AutoDesignDocumentReference() const;

};
%extend StepAP214_AutoDesignGeneralOrgItem {
	~StepAP214_AutoDesignGeneralOrgItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignGeneralOrgItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfDateAndTimeItem;
class StepAP214_HArray1OfDateAndTimeItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_DateAndTimeItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_DateAndTimeItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DateAndTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DateAndTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DateAndTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfDateAndTimeItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfDateAndTimeItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfDateAndTimeItem {
	Handle_StepAP214_HArray1OfDateAndTimeItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfDateAndTimeItem*) &$self;
	}
};
%extend StepAP214_HArray1OfDateAndTimeItem {
	~StepAP214_HArray1OfDateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfDateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfDateItem;
class StepAP214_Array1OfDateItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfDateItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfDateItem(const StepAP214_DateItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_DateItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfDateItem & Assign(const StepAP214_Array1OfDateItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DateItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DateItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_DateItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DateItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_DateItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfDateItem {
	~StepAP214_Array1OfDateItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfDateItem\n");
	}
};

%nodefaultctor StepAP214_AppliedPresentedItem;
class StepAP214_AppliedPresentedItem : public StepVisual_PresentedItem {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedPresentedItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepAP214_HArray1OfPresentedItemSelect &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfPresentedItemSelect &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPresentedItemSelect Items() const;
		%feature("autodoc", "1");
		StepAP214_PresentedItemSelect ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedPresentedItem {
	Handle_StepAP214_AppliedPresentedItem GetHandle() {
	return *(Handle_StepAP214_AppliedPresentedItem*) &$self;
	}
};
%extend StepAP214_AppliedPresentedItem {
	~StepAP214_AppliedPresentedItem() {
	printf("Call custom destructor for instance of StepAP214_AppliedPresentedItem\n");
	}
};

%nodefaultctor StepAP214_AppliedApprovalAssignment;
class StepAP214_AppliedApprovalAssignment : public StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedApprovalAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Approval &aAssignedApproval);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Approval &aAssignedApproval, const Handle_StepAP214_HArray1OfApprovalItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfApprovalItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfApprovalItem Items() const;
		%feature("autodoc", "1");
		StepAP214_ApprovalItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedApprovalAssignment {
	Handle_StepAP214_AppliedApprovalAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedApprovalAssignment*) &$self;
	}
};
%extend StepAP214_AppliedApprovalAssignment {
	~StepAP214_AppliedApprovalAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedApprovalAssignment\n");
	}
};

%nodefaultctor StepAP214_AppliedOrganizationAssignment;
class StepAP214_AppliedOrganizationAssignment : public StepBasic_OrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedOrganizationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Organization &aAssignedOrganization, const Handle_StepBasic_OrganizationRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Organization &aAssignedOrganization, const Handle_StepBasic_OrganizationRole &aRole, const Handle_StepAP214_HArray1OfOrganizationItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfOrganizationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfOrganizationItem Items() const;
		%feature("autodoc", "1");
		StepAP214_OrganizationItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedOrganizationAssignment {
	Handle_StepAP214_AppliedOrganizationAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedOrganizationAssignment*) &$self;
	}
};
%extend StepAP214_AppliedOrganizationAssignment {
	~StepAP214_AppliedOrganizationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedOrganizationAssignment\n");
	}
};

%nodefaultctor StepAP214_AutoDesignDateAndPersonItem;
class StepAP214_AutoDesignDateAndPersonItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignOrganizationAssignment AutoDesignOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Product Product() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDocumentReference AutoDesignDocumentReference() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation ExternallyDefinedRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionWithAssociatedDocuments ProductDefinitionWithAssociatedDocuments() const;

};
%extend StepAP214_AutoDesignDateAndPersonItem {
	~StepAP214_AutoDesignDateAndPersonItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignDateAndPersonItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignNominalDateAndTimeAssignment;
class StepAP214_AutoDesignNominalDateAndTimeAssignment : public StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignNominalDateAndTimeAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignNominalDateAndTimeAssignment {
	Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignNominalDateAndTimeAssignment {
	~StepAP214_AutoDesignNominalDateAndTimeAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignNominalDateAndTimeAssignment\n");
	}
};

%nodefaultctor StepAP214_HArray1OfGroupItem;
class StepAP214_HArray1OfGroupItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfGroupItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfGroupItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_GroupItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_GroupItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_GroupItem &Value);
		%feature("autodoc", "1");
		const StepAP214_GroupItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_GroupItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfGroupItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfGroupItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfGroupItem {
	Handle_StepAP214_HArray1OfGroupItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfGroupItem*) &$self;
	}
};
%extend StepAP214_HArray1OfGroupItem {
	~StepAP214_HArray1OfGroupItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfGroupItem\n");
	}
};

%nodefaultctor StepAP214_AppliedDocumentReference;
class StepAP214_AppliedDocumentReference : public StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedDocumentReference();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Document &aAssignedDocument, const Handle_TCollection_HAsciiString &aSource, const Handle_StepAP214_HArray1OfDocumentReferenceItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDocumentReferenceItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfDocumentReferenceItem &aItems);
		%feature("autodoc", "1");
		StepAP214_DocumentReferenceItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedDocumentReference {
	Handle_StepAP214_AppliedDocumentReference GetHandle() {
	return *(Handle_StepAP214_AppliedDocumentReference*) &$self;
	}
};
%extend StepAP214_AppliedDocumentReference {
	~StepAP214_AppliedDocumentReference() {
	printf("Call custom destructor for instance of StepAP214_AppliedDocumentReference\n");
	}
};

%nodefaultctor StepAP214_HArray1OfApprovalItem;
class StepAP214_HArray1OfApprovalItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfApprovalItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfApprovalItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_ApprovalItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_ApprovalItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_ApprovalItem &Value);
		%feature("autodoc", "1");
		const StepAP214_ApprovalItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_ApprovalItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfApprovalItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfApprovalItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfApprovalItem {
	Handle_StepAP214_HArray1OfApprovalItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfApprovalItem*) &$self;
	}
};
%extend StepAP214_HArray1OfApprovalItem {
	~StepAP214_HArray1OfApprovalItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfApprovalItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignGroupAssignment;
class StepAP214_AutoDesignGroupAssignment : public StepBasic_GroupAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupAssignment();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Group &aAssignedGroup);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Group &aAssignedGroup, const Handle_StepAP214_HArray1OfAutoDesignGroupedItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignGroupedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGroupedItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupedItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignGroupAssignment {
	Handle_StepAP214_AutoDesignGroupAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignGroupAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignGroupAssignment {
	~StepAP214_AutoDesignGroupAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignGroupAssignment\n");
	}
};

%nodefaultctor StepAP214_HArray1OfPresentedItemSelect;
class StepAP214_HArray1OfPresentedItemSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_PresentedItemSelect &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_PresentedItemSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_PresentedItemSelect &Value);
		%feature("autodoc", "1");
		const StepAP214_PresentedItemSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_PresentedItemSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfPresentedItemSelect & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfPresentedItemSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfPresentedItemSelect {
	Handle_StepAP214_HArray1OfPresentedItemSelect GetHandle() {
	return *(Handle_StepAP214_HArray1OfPresentedItemSelect*) &$self;
	}
};
%extend StepAP214_HArray1OfPresentedItemSelect {
	~StepAP214_HArray1OfPresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfPresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214_AppliedExternalIdentificationAssignment;
class StepAP214_AppliedExternalIdentificationAssignment : public StepBasic_ExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedExternalIdentificationAssignment();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aIdentificationAssignment_AssignedId, const Handle_StepBasic_IdentificationRole &aIdentificationAssignment_Role, const Handle_StepBasic_ExternalSource &aExternalIdentificationAssignment_Source, const Handle_StepAP214_HArray1OfExternalIdentificationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfExternalIdentificationItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfExternalIdentificationItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedExternalIdentificationAssignment {
	Handle_StepAP214_AppliedExternalIdentificationAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedExternalIdentificationAssignment*) &$self;
	}
};
%extend StepAP214_AppliedExternalIdentificationAssignment {
	~StepAP214_AppliedExternalIdentificationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedExternalIdentificationAssignment\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignDatedItem;
class StepAP214_Array1OfAutoDesignDatedItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDatedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDatedItem(const StepAP214_AutoDesignDatedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDatedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDatedItem & Assign(const StepAP214_Array1OfAutoDesignDatedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDatedItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDatedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDatedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignDatedItem {
	~StepAP214_Array1OfAutoDesignDatedItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignDatedItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignPersonAndOrganizationAssignment;
class StepAP214_AutoDesignPersonAndOrganizationAssignment : public StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignPersonAndOrganizationAssignment {
	Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignPersonAndOrganizationAssignment {
	~StepAP214_AutoDesignPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignPersonAndOrganizationAssignment\n");
	}
};

%nodefaultctor StepAP214_AutoDesignDateAndPersonAssignment;
class StepAP214_AutoDesignDateAndPersonAssignment : public StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignDateAndPersonAssignment {
	Handle_StepAP214_AutoDesignDateAndPersonAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignDateAndPersonAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignDateAndPersonAssignment {
	~StepAP214_AutoDesignDateAndPersonAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignDateAndPersonAssignment\n");
	}
};

%nodefaultctor StepAP214_AutoDesignGroupedItem;
class StepAP214_AutoDesignGroupedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation AdvancedBrepShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation CsgShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation FacetedBrepShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation GeometricallyBoundedSurfaceShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation GeometricallyBoundedWireframeShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation ManifoldSurfaceShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem RepresentationItem() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation ShapeRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepVisual_TemplateInstance TemplateInstance() const;

};
%extend StepAP214_AutoDesignGroupedItem {
	~StepAP214_AutoDesignGroupedItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignGroupedItem\n");
	}
};

%nodefaultctor StepAP214_AppliedDateAssignment;
class StepAP214_AppliedDateAssignment : public StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedDateAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole, const Handle_StepAP214_HArray1OfDateItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfDateItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateItem Items() const;
		%feature("autodoc", "1");
		StepAP214_DateItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedDateAssignment {
	Handle_StepAP214_AppliedDateAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedDateAssignment*) &$self;
	}
};
%extend StepAP214_AppliedDateAssignment {
	~StepAP214_AppliedDateAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedDateAssignment\n");
	}
};

%nodefaultctor StepAP214_ApprovalItem;
class StepAP214_ApprovalItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_ApprovalItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepRepr_AssemblyComponentUsageSubstitute AssemblyComponentUsageSubstitute() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_DocumentFile DocumentFile() const;
		%feature("autodoc", "1");
		virtual		Handle_StepRepr_MaterialDesignation MaterialDesignation() const;
		%feature("autodoc", "1");
		virtual		Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation MechanicalDesignGeometricPresentationRepresentation() const;
		%feature("autodoc", "1");
		virtual		Handle_StepVisual_PresentationArea PresentationArea() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_Product Product() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		virtual		Handle_StepRepr_PropertyDefinition PropertyDefinition() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_ShapeRepresentation ShapeRepresentation() const;
		%feature("autodoc", "1");
		virtual		Handle_StepBasic_SecurityClassification SecurityClassification() const;

};
%extend StepAP214_ApprovalItem {
	~StepAP214_ApprovalItem() {
	printf("Call custom destructor for instance of StepAP214_ApprovalItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfDocumentReferenceItem;
class StepAP214_HArray1OfDocumentReferenceItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfDocumentReferenceItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfDocumentReferenceItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_DocumentReferenceItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_DocumentReferenceItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DocumentReferenceItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DocumentReferenceItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DocumentReferenceItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfDocumentReferenceItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfDocumentReferenceItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfDocumentReferenceItem {
	Handle_StepAP214_HArray1OfDocumentReferenceItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfDocumentReferenceItem*) &$self;
	}
};
%extend StepAP214_HArray1OfDocumentReferenceItem {
	~StepAP214_HArray1OfDocumentReferenceItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfDocumentReferenceItem\n");
	}
};

%nodefaultctor StepAP214_PresentedItemSelect;
class StepAP214_PresentedItemSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_PresentedItemSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;

};
%extend StepAP214_PresentedItemSelect {
	~StepAP214_PresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_PresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214_DateItem;
class StepAP214_DateItem : public StepAP214_ApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_DateItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment AppliedPersonAndOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment AppliedOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Effectivity Effectivity() const;

};
%extend StepAP214_DateItem {
	~StepAP214_DateItem() {
	printf("Call custom destructor for instance of StepAP214_DateItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignReferencingItem;
class StepAP214_HArray1OfAutoDesignReferencingItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignReferencingItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignReferencingItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignReferencingItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignReferencingItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignReferencingItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignReferencingItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignReferencingItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignReferencingItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignReferencingItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignReferencingItem {
	Handle_StepAP214_HArray1OfAutoDesignReferencingItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignReferencingItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignReferencingItem {
	~StepAP214_HArray1OfAutoDesignReferencingItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignReferencingItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignDateAndTimeItem;
class StepAP214_HArray1OfAutoDesignDateAndTimeItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignDateAndTimeItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDateAndTimeItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDateAndTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDateAndTimeItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndTimeItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignDateAndTimeItem {
	Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignDateAndTimeItem {
	~StepAP214_HArray1OfAutoDesignDateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignDateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignPresentedItemSelect;
class StepAP214_Array1OfAutoDesignPresentedItemSelect {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignPresentedItemSelect(const StepAP214_AutoDesignPresentedItemSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignPresentedItemSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignPresentedItemSelect & Assign(const StepAP214_Array1OfAutoDesignPresentedItemSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignPresentedItemSelect &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignPresentedItemSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignPresentedItemSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItemSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItemSelect & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignPresentedItemSelect {
	~StepAP214_Array1OfAutoDesignPresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignPresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214;
class StepAP214 {
	public:
		%feature("autodoc", "1");
		StepAP214();
		%feature("autodoc", "1");
		Handle_StepAP214_Protocol Protocol();

};
%extend StepAP214 {
	~StepAP214() {
	printf("Call custom destructor for instance of StepAP214\n");
	}
};

%nodefaultctor StepAP214_Array1OfDateAndTimeItem;
class StepAP214_Array1OfDateAndTimeItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfDateAndTimeItem(const StepAP214_DateAndTimeItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_DateAndTimeItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfDateAndTimeItem & Assign(const StepAP214_Array1OfDateAndTimeItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DateAndTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DateAndTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_DateAndTimeItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DateAndTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_DateAndTimeItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfDateAndTimeItem {
	~StepAP214_Array1OfDateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfDateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignDocumentReference;
class StepAP214_AutoDesignDocumentReference : public StepBasic_DocumentReference {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignDocumentReference();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Document &aAssignedDocument, const Handle_TCollection_HAsciiString &aSource, const Handle_StepAP214_HArray1OfAutoDesignReferencingItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignReferencingItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignReferencingItem &aItems);
		%feature("autodoc", "1");
		StepAP214_AutoDesignReferencingItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignDocumentReference {
	Handle_StepAP214_AutoDesignDocumentReference GetHandle() {
	return *(Handle_StepAP214_AutoDesignDocumentReference*) &$self;
	}
};
%extend StepAP214_AutoDesignDocumentReference {
	~StepAP214_AutoDesignDocumentReference() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignDocumentReference\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignDateAndPersonItem;
class StepAP214_Array1OfAutoDesignDateAndPersonItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndPersonItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndPersonItem(const StepAP214_AutoDesignDateAndPersonItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDateAndPersonItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDateAndPersonItem & Assign(const StepAP214_Array1OfAutoDesignDateAndPersonItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDateAndPersonItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndPersonItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndPersonItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignDateAndPersonItem {
	~StepAP214_Array1OfAutoDesignDateAndPersonItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignDateAndPersonItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignSecurityClassificationAssignment;
class StepAP214_AutoDesignSecurityClassificationAssignment : public StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignSecurityClassificationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_SecurityClassification &aAssignedSecurityClassification);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_SecurityClassification &aAssignedSecurityClassification, const Handle_StepBasic_HArray1OfApproval &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepBasic_HArray1OfApproval &aItems);
		%feature("autodoc", "1");
		Handle_StepBasic_HArray1OfApproval Items() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Approval ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignSecurityClassificationAssignment {
	Handle_StepAP214_AutoDesignSecurityClassificationAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignSecurityClassificationAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignSecurityClassificationAssignment {
	~StepAP214_AutoDesignSecurityClassificationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignSecurityClassificationAssignment\n");
	}
};

%nodefaultctor StepAP214_Array1OfOrganizationItem;
class StepAP214_Array1OfOrganizationItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfOrganizationItem(const StepAP214_OrganizationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_OrganizationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfOrganizationItem & Assign(const StepAP214_Array1OfOrganizationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_OrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_OrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_OrganizationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_OrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_OrganizationItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfOrganizationItem {
	~StepAP214_Array1OfOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfApprovalItem;
class StepAP214_Array1OfApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfApprovalItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfApprovalItem(const StepAP214_ApprovalItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_ApprovalItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfApprovalItem & Assign(const StepAP214_Array1OfApprovalItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_ApprovalItem &Value);
		%feature("autodoc", "1");
		const StepAP214_ApprovalItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_ApprovalItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_ApprovalItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_ApprovalItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfApprovalItem {
	~StepAP214_Array1OfApprovalItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfApprovalItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignOrganizationItem;
class StepAP214_AutoDesignOrganizationItem : public StepAP214_AutoDesignGeneralOrgItem {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignOrganizationItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_Document Document() const;
		%feature("autodoc", "1");
		Handle_StepBasic_PhysicallyModeledProductDefinition PhysicallyModeledProductDefinition() const;

};
%extend StepAP214_AutoDesignOrganizationItem {
	~StepAP214_AutoDesignOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_AppliedDateAndTimeAssignment;
class StepAP214_AppliedDateAndTimeAssignment : public StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedDateAndTimeAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole, const Handle_StepAP214_HArray1OfDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfDateAndTimeItem Items() const;
		%feature("autodoc", "1");
		StepAP214_DateAndTimeItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedDateAndTimeAssignment {
	Handle_StepAP214_AppliedDateAndTimeAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedDateAndTimeAssignment*) &$self;
	}
};
%extend StepAP214_AppliedDateAndTimeAssignment {
	~StepAP214_AppliedDateAndTimeAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedDateAndTimeAssignment\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignGroupedItem;
class StepAP214_Array1OfAutoDesignGroupedItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGroupedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGroupedItem(const StepAP214_AutoDesignGroupedItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignGroupedItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignGroupedItem & Assign(const StepAP214_Array1OfAutoDesignGroupedItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignGroupedItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGroupedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGroupedItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupedItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignGroupedItem {
	~StepAP214_Array1OfAutoDesignGroupedItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignGroupedItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignPresentedItemSelect;
class StepAP214_HArray1OfAutoDesignPresentedItemSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignPresentedItemSelect(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignPresentedItemSelect &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignPresentedItemSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignPresentedItemSelect &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignPresentedItemSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItemSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignPresentedItemSelect & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignPresentedItemSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignPresentedItemSelect {
	Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignPresentedItemSelect {
	~StepAP214_HArray1OfAutoDesignPresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignPresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214_DocumentReferenceItem;
class StepAP214_DocumentReferenceItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_DocumentReferenceItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_Approval Approval() const;
		%feature("autodoc", "1");
		Handle_StepRepr_DescriptiveRepresentationItem DescriptiveRepresentationItem() const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation MaterialDesignation() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition PropertyDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship() const;

};
%extend StepAP214_DocumentReferenceItem {
	~StepAP214_DocumentReferenceItem() {
	printf("Call custom destructor for instance of StepAP214_DocumentReferenceItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfPersonAndOrganizationItem;
class StepAP214_HArray1OfPersonAndOrganizationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfPersonAndOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfPersonAndOrganizationItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_PersonAndOrganizationItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_PersonAndOrganizationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_PersonAndOrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_PersonAndOrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_PersonAndOrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfPersonAndOrganizationItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfPersonAndOrganizationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfPersonAndOrganizationItem {
	Handle_StepAP214_HArray1OfPersonAndOrganizationItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfPersonAndOrganizationItem*) &$self;
	}
};
%extend StepAP214_HArray1OfPersonAndOrganizationItem {
	~StepAP214_HArray1OfPersonAndOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfPersonAndOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignPresentedItemSelect;
class StepAP214_AutoDesignPresentedItemSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItemSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship RepresentationRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;
		%feature("autodoc", "1");
		Handle_StepBasic_DocumentRelationship DocumentRelationship() const;

};
%extend StepAP214_AutoDesignPresentedItemSelect {
	~StepAP214_AutoDesignPresentedItemSelect() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignPresentedItemSelect\n");
	}
};

%nodefaultctor StepAP214_AutoDesignReferencingItem;
class StepAP214_AutoDesignReferencingItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignReferencingItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_Approval Approval() const;
		%feature("autodoc", "1");
		Handle_StepBasic_DocumentRelationship DocumentRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ExternallyDefinedRepresentation ExternallyDefinedRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_MappedItem MappedItem() const;
		%feature("autodoc", "1");
		Handle_StepRepr_MaterialDesignation MaterialDesignation() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea PresentationArea() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView PresentationView() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductCategory ProductCategory() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_PropertyDefinition PropertyDefinition() const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationRelationship RepresentationRelationship() const;
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect ShapeAspect() const;

};
%extend StepAP214_AutoDesignReferencingItem {
	~StepAP214_AutoDesignReferencingItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignReferencingItem\n");
	}
};

%nodefaultctor StepAP214_AppliedSecurityClassificationAssignment;
class StepAP214_AppliedSecurityClassificationAssignment : public StepBasic_SecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedSecurityClassificationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_SecurityClassification &aAssignedSecurityClassification);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_SecurityClassification &aAssignedSecurityClassification, const Handle_StepAP214_HArray1OfSecurityClassificationItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfSecurityClassificationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfSecurityClassificationItem Items() const;
		%feature("autodoc", "1");
		const StepAP214_SecurityClassificationItem & ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedSecurityClassificationAssignment {
	Handle_StepAP214_AppliedSecurityClassificationAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedSecurityClassificationAssignment*) &$self;
	}
};
%extend StepAP214_AppliedSecurityClassificationAssignment {
	~StepAP214_AppliedSecurityClassificationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedSecurityClassificationAssignment\n");
	}
};

%nodefaultctor StepAP214_Array1OfGroupItem;
class StepAP214_Array1OfGroupItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfGroupItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfGroupItem(const StepAP214_GroupItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_GroupItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfGroupItem & Assign(const StepAP214_Array1OfGroupItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_GroupItem &Value);
		%feature("autodoc", "1");
		const StepAP214_GroupItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_GroupItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_GroupItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_GroupItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfGroupItem {
	~StepAP214_Array1OfGroupItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfGroupItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignApprovalAssignment;
class StepAP214_AutoDesignApprovalAssignment : public StepBasic_ApprovalAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignApprovalAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Approval &aAssignedApproval);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Approval &aAssignedApproval, const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignApprovalAssignment {
	Handle_StepAP214_AutoDesignApprovalAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignApprovalAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignApprovalAssignment {
	~StepAP214_AutoDesignApprovalAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignApprovalAssignment\n");
	}
};

%nodefaultctor StepAP214_DateAndTimeItem;
class StepAP214_DateAndTimeItem : public StepAP214_ApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_DateAndTimeItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedPersonAndOrganizationAssignment AppliedPersonAndOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment AppliedOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Effectivity Effectivity() const;

};
%extend StepAP214_DateAndTimeItem {
	~StepAP214_DateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_DateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignOrganizationAssignment;
class StepAP214_AutoDesignOrganizationAssignment : public StepBasic_OrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignOrganizationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Organization &aAssignedOrganization, const Handle_StepBasic_OrganizationRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Organization &aAssignedOrganization, const Handle_StepBasic_OrganizationRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignOrganizationAssignment {
	Handle_StepAP214_AutoDesignOrganizationAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignOrganizationAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignOrganizationAssignment {
	~StepAP214_AutoDesignOrganizationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignOrganizationAssignment\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignReferencingItem;
class StepAP214_Array1OfAutoDesignReferencingItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignReferencingItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignReferencingItem(const StepAP214_AutoDesignReferencingItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignReferencingItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignReferencingItem & Assign(const StepAP214_Array1OfAutoDesignReferencingItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignReferencingItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignReferencingItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignReferencingItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignReferencingItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignReferencingItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignReferencingItem {
	~StepAP214_Array1OfAutoDesignReferencingItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignReferencingItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfExternalIdentificationItem;
class StepAP214_Array1OfExternalIdentificationItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfExternalIdentificationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfExternalIdentificationItem(const StepAP214_ExternalIdentificationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_ExternalIdentificationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfExternalIdentificationItem & Assign(const StepAP214_Array1OfExternalIdentificationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_ExternalIdentificationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_ExternalIdentificationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_ExternalIdentificationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_ExternalIdentificationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_ExternalIdentificationItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfExternalIdentificationItem {
	~StepAP214_Array1OfExternalIdentificationItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfExternalIdentificationItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignGeneralOrgItem;
class StepAP214_HArray1OfAutoDesignGeneralOrgItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignGeneralOrgItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignGeneralOrgItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignGeneralOrgItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignGeneralOrgItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignGeneralOrgItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGeneralOrgItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignGeneralOrgItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGeneralOrgItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignGeneralOrgItem {
	Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignGeneralOrgItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignGeneralOrgItem {
	~StepAP214_HArray1OfAutoDesignGeneralOrgItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignGeneralOrgItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfOrganizationItem;
class StepAP214_HArray1OfOrganizationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfOrganizationItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_OrganizationItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_OrganizationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_OrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_OrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_OrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfOrganizationItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfOrganizationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfOrganizationItem {
	Handle_StepAP214_HArray1OfOrganizationItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfOrganizationItem*) &$self;
	}
};
%extend StepAP214_HArray1OfOrganizationItem {
	~StepAP214_HArray1OfOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignGroupedItem;
class StepAP214_HArray1OfAutoDesignGroupedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignGroupedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignGroupedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignGroupedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignGroupedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignGroupedItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGroupedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGroupedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignGroupedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGroupedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignGroupedItem {
	Handle_StepAP214_HArray1OfAutoDesignGroupedItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignGroupedItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignGroupedItem {
	~StepAP214_HArray1OfAutoDesignGroupedItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignGroupedItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignActualDateAndTimeAssignment;
class StepAP214_AutoDesignActualDateAndTimeAssignment : public StepBasic_DateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignActualDateAndTimeAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_DateAndTime &aAssignedDateAndTime, const Handle_StepBasic_DateTimeRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDateAndTimeItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignActualDateAndTimeAssignment {
	Handle_StepAP214_AutoDesignActualDateAndTimeAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignActualDateAndTimeAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignActualDateAndTimeAssignment {
	~StepAP214_AutoDesignActualDateAndTimeAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignActualDateAndTimeAssignment\n");
	}
};

%nodefaultctor StepAP214_AppliedGroupAssignment;
class StepAP214_AppliedGroupAssignment : public StepBasic_GroupAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedGroupAssignment();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_Group &aGroupAssignment_AssignedGroup, const Handle_StepAP214_HArray1OfGroupItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfGroupItem Items() const;
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfGroupItem &Items);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedGroupAssignment {
	Handle_StepAP214_AppliedGroupAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedGroupAssignment*) &$self;
	}
};
%extend StepAP214_AppliedGroupAssignment {
	~StepAP214_AppliedGroupAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedGroupAssignment\n");
	}
};

%nodefaultctor StepAP214_RepItemGroup;
class StepAP214_RepItemGroup : public StepBasic_Group {
	public:
		%feature("autodoc", "1");
		StepAP214_RepItemGroup();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGroup_Name, const Standard_Boolean hasGroup_Description, const Handle_TCollection_HAsciiString &aGroup_Description, const Handle_TCollection_HAsciiString &aRepresentationItem_Name);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem RepresentationItem() const;
		%feature("autodoc", "1");
		void SetRepresentationItem(const Handle_StepRepr_RepresentationItem &RepresentationItem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_RepItemGroup {
	Handle_StepAP214_RepItemGroup GetHandle() {
	return *(Handle_StepAP214_RepItemGroup*) &$self;
	}
};
%extend StepAP214_RepItemGroup {
	~StepAP214_RepItemGroup() {
	printf("Call custom destructor for instance of StepAP214_RepItemGroup\n");
	}
};

%nodefaultctor StepAP214_AutoDesignActualDateAssignment;
class StepAP214_AutoDesignActualDateAssignment : public StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignActualDateAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignDatedItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignDatedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignActualDateAssignment {
	Handle_StepAP214_AutoDesignActualDateAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignActualDateAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignActualDateAssignment {
	~StepAP214_AutoDesignActualDateAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignActualDateAssignment\n");
	}
};

%nodefaultctor StepAP214_AutoDesignDateAndTimeItem;
class StepAP214_AutoDesignDateAndTimeItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment AutoDesignDateAndPersonAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionEffectivity ProductDefinitionEffectivity() const;

};
%extend StepAP214_AutoDesignDateAndTimeItem {
	~StepAP214_AutoDesignDateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignDateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfDocumentReferenceItem;
class StepAP214_Array1OfDocumentReferenceItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfDocumentReferenceItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfDocumentReferenceItem(const StepAP214_DocumentReferenceItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_DocumentReferenceItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfDocumentReferenceItem & Assign(const StepAP214_Array1OfDocumentReferenceItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DocumentReferenceItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DocumentReferenceItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_DocumentReferenceItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DocumentReferenceItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_DocumentReferenceItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfDocumentReferenceItem {
	~StepAP214_Array1OfDocumentReferenceItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfDocumentReferenceItem\n");
	}
};

%nodefaultctor StepAP214_PersonAndOrganizationItem;
class StepAP214_PersonAndOrganizationItem : public StepAP214_ApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_PersonAndOrganizationItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment AppliedOrganizationAssignment() const;

};
%extend StepAP214_PersonAndOrganizationItem {
	~StepAP214_PersonAndOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_PersonAndOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_OrganizationItem;
class StepAP214_OrganizationItem : public StepAP214_ApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_OrganizationItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepAP214_AppliedOrganizationAssignment AppliedOrganizationAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_Approval Approval() const;

};
%extend StepAP214_OrganizationItem {
	~StepAP214_OrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_OrganizationItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignPresentedItem;
class StepAP214_AutoDesignPresentedItem : public StepVisual_PresentedItem {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignPresentedItemSelect Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignPresentedItemSelect ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignPresentedItem {
	Handle_StepAP214_AutoDesignPresentedItem GetHandle() {
	return *(Handle_StepAP214_AutoDesignPresentedItem*) &$self;
	}
};
%extend StepAP214_AutoDesignPresentedItem {
	~StepAP214_AutoDesignPresentedItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignPresentedItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignDatedItem;
class StepAP214_AutoDesignDatedItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization() const;
		%feature("autodoc", "1");
		Handle_StepAP214_AutoDesignDateAndPersonAssignment AutoDesignDateAndPersonAssignment() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinitionEffectivity ProductDefinitionEffectivity() const;

};
%extend StepAP214_AutoDesignDatedItem {
	~StepAP214_AutoDesignDatedItem() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignDatedItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignGeneralOrgItem;
class StepAP214_Array1OfAutoDesignGeneralOrgItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGeneralOrgItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignGeneralOrgItem(const StepAP214_AutoDesignGeneralOrgItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignGeneralOrgItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignGeneralOrgItem & Assign(const StepAP214_Array1OfAutoDesignGeneralOrgItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignGeneralOrgItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGeneralOrgItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignGeneralOrgItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignGeneralOrgItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignGeneralOrgItem {
	~StepAP214_Array1OfAutoDesignGeneralOrgItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignGeneralOrgItem\n");
	}
};

%nodefaultctor StepAP214_ExternalIdentificationItem;
class StepAP214_ExternalIdentificationItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepAP214_ExternalIdentificationItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepBasic_DocumentFile DocumentFile() const;
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedClass ExternallyDefinedClass() const;
		%feature("autodoc", "1");
		Handle_StepAP214_ExternallyDefinedGeneralProperty ExternallyDefinedGeneralProperty() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition ProductDefinition() const;

};
%extend StepAP214_ExternalIdentificationItem {
	~StepAP214_ExternalIdentificationItem() {
	printf("Call custom destructor for instance of StepAP214_ExternalIdentificationItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfSecurityClassificationItem;
class StepAP214_HArray1OfSecurityClassificationItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfSecurityClassificationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfSecurityClassificationItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_SecurityClassificationItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_SecurityClassificationItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_SecurityClassificationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_SecurityClassificationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_SecurityClassificationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfSecurityClassificationItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfSecurityClassificationItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfSecurityClassificationItem {
	Handle_StepAP214_HArray1OfSecurityClassificationItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfSecurityClassificationItem*) &$self;
	}
};
%extend StepAP214_HArray1OfSecurityClassificationItem {
	~StepAP214_HArray1OfSecurityClassificationItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfSecurityClassificationItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfPersonAndOrganizationItem;
class StepAP214_Array1OfPersonAndOrganizationItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfPersonAndOrganizationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfPersonAndOrganizationItem(const StepAP214_PersonAndOrganizationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_PersonAndOrganizationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfPersonAndOrganizationItem & Assign(const StepAP214_Array1OfPersonAndOrganizationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_PersonAndOrganizationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_PersonAndOrganizationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_PersonAndOrganizationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_PersonAndOrganizationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_PersonAndOrganizationItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfPersonAndOrganizationItem {
	~StepAP214_Array1OfPersonAndOrganizationItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfPersonAndOrganizationItem\n");
	}
};

%nodefaultctor StepAP214_SecurityClassificationItem;
class StepAP214_SecurityClassificationItem : public StepAP214_ApprovalItem {
	public:
		%feature("autodoc", "1");
		StepAP214_SecurityClassificationItem();

};
%extend StepAP214_SecurityClassificationItem {
	~StepAP214_SecurityClassificationItem() {
	printf("Call custom destructor for instance of StepAP214_SecurityClassificationItem\n");
	}
};

%nodefaultctor StepAP214_HArray1OfDateItem;
class StepAP214_HArray1OfDateItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfDateItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfDateItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_DateItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_DateItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_DateItem &Value);
		%feature("autodoc", "1");
		const StepAP214_DateItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_DateItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfDateItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfDateItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfDateItem {
	Handle_StepAP214_HArray1OfDateItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfDateItem*) &$self;
	}
};
%extend StepAP214_HArray1OfDateItem {
	~StepAP214_HArray1OfDateItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfDateItem\n");
	}
};

%nodefaultctor StepAP214_AppliedPersonAndOrganizationAssignment;
class StepAP214_AppliedPersonAndOrganizationAssignment : public StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AppliedPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_PersonAndOrganization &aAssignedPersonAndOrganization, const Handle_StepBasic_PersonAndOrganizationRole &aRole, const Handle_StepAP214_HArray1OfPersonAndOrganizationItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfPersonAndOrganizationItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfPersonAndOrganizationItem Items() const;
		%feature("autodoc", "1");
		StepAP214_PersonAndOrganizationItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AppliedPersonAndOrganizationAssignment {
	Handle_StepAP214_AppliedPersonAndOrganizationAssignment GetHandle() {
	return *(Handle_StepAP214_AppliedPersonAndOrganizationAssignment*) &$self;
	}
};
%extend StepAP214_AppliedPersonAndOrganizationAssignment {
	~StepAP214_AppliedPersonAndOrganizationAssignment() {
	printf("Call custom destructor for instance of StepAP214_AppliedPersonAndOrganizationAssignment\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignDateAndPersonItem;
class StepAP214_HArray1OfAutoDesignDateAndPersonItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDateAndPersonItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDateAndPersonItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignDateAndPersonItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDateAndPersonItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDateAndPersonItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndPersonItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndPersonItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDateAndPersonItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndPersonItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignDateAndPersonItem {
	Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignDateAndPersonItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignDateAndPersonItem {
	~StepAP214_HArray1OfAutoDesignDateAndPersonItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignDateAndPersonItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfSecurityClassificationItem;
class StepAP214_Array1OfSecurityClassificationItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfSecurityClassificationItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfSecurityClassificationItem(const StepAP214_SecurityClassificationItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_SecurityClassificationItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfSecurityClassificationItem & Assign(const StepAP214_Array1OfSecurityClassificationItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_SecurityClassificationItem &Value);
		%feature("autodoc", "1");
		const StepAP214_SecurityClassificationItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_SecurityClassificationItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_SecurityClassificationItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_SecurityClassificationItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfSecurityClassificationItem {
	~StepAP214_Array1OfSecurityClassificationItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfSecurityClassificationItem\n");
	}
};

%nodefaultctor StepAP214_Array1OfAutoDesignDateAndTimeItem;
class StepAP214_Array1OfAutoDesignDateAndTimeItem {
	public:
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndTimeItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDateAndTimeItem(const StepAP214_AutoDesignDateAndTimeItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDateAndTimeItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDateAndTimeItem & Assign(const StepAP214_Array1OfAutoDesignDateAndTimeItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDateAndTimeItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndTimeItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDateAndTimeItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepAP214_AutoDesignDateAndTimeItem & operator()(const Standard_Integer Index);

};
%extend StepAP214_Array1OfAutoDesignDateAndTimeItem {
	~StepAP214_Array1OfAutoDesignDateAndTimeItem() {
	printf("Call custom destructor for instance of StepAP214_Array1OfAutoDesignDateAndTimeItem\n");
	}
};

%nodefaultctor StepAP214_AutoDesignNominalDateAssignment;
class StepAP214_AutoDesignNominalDateAssignment : public StepBasic_DateAssignment {
	public:
		%feature("autodoc", "1");
		StepAP214_AutoDesignNominalDateAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepBasic_Date &aAssignedDate, const Handle_StepBasic_DateRole &aRole, const Handle_StepAP214_HArray1OfAutoDesignDatedItem &aItems);
		%feature("autodoc", "1");
		void SetItems(const Handle_StepAP214_HArray1OfAutoDesignDatedItem &aItems);
		%feature("autodoc", "1");
		Handle_StepAP214_HArray1OfAutoDesignDatedItem Items() const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem ItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_AutoDesignNominalDateAssignment {
	Handle_StepAP214_AutoDesignNominalDateAssignment GetHandle() {
	return *(Handle_StepAP214_AutoDesignNominalDateAssignment*) &$self;
	}
};
%extend StepAP214_AutoDesignNominalDateAssignment {
	~StepAP214_AutoDesignNominalDateAssignment() {
	printf("Call custom destructor for instance of StepAP214_AutoDesignNominalDateAssignment\n");
	}
};

%nodefaultctor StepAP214_HArray1OfAutoDesignDatedItem;
class StepAP214_HArray1OfAutoDesignDatedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDatedItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepAP214_HArray1OfAutoDesignDatedItem(const Standard_Integer Low, const Standard_Integer Up, const StepAP214_AutoDesignDatedItem &V);
		%feature("autodoc", "1");
		void Init(const StepAP214_AutoDesignDatedItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepAP214_AutoDesignDatedItem &Value);
		%feature("autodoc", "1");
		const StepAP214_AutoDesignDatedItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepAP214_AutoDesignDatedItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepAP214_Array1OfAutoDesignDatedItem & Array1() const;
		%feature("autodoc", "1");
		StepAP214_Array1OfAutoDesignDatedItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepAP214_HArray1OfAutoDesignDatedItem {
	Handle_StepAP214_HArray1OfAutoDesignDatedItem GetHandle() {
	return *(Handle_StepAP214_HArray1OfAutoDesignDatedItem*) &$self;
	}
};
%extend StepAP214_HArray1OfAutoDesignDatedItem {
	~StepAP214_HArray1OfAutoDesignDatedItem() {
	printf("Call custom destructor for instance of StepAP214_HArray1OfAutoDesignDatedItem\n");
	}
};