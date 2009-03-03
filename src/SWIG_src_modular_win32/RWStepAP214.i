/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module RWStepAP214

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


%include RWStepAP214_dependencies.i


%include RWStepAP214_headers.i




%nodefaultctor Handle_RWStepAP214_ReadWriteModule;
class Handle_RWStepAP214_ReadWriteModule : public Handle_StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		~Handle_RWStepAP214_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule(const Handle_RWStepAP214_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule(const RWStepAP214_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_RWStepAP214_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_ReadWriteModule {
	RWStepAP214_ReadWriteModule* GetObject() {
	return (RWStepAP214_ReadWriteModule*)$self->Access();
	}
};

%nodefaultctor Handle_RWStepAP214_GeneralModule;
class Handle_RWStepAP214_GeneralModule : public Handle_StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		~Handle_RWStepAP214_GeneralModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule();
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule(const Handle_RWStepAP214_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule(const RWStepAP214_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_RWStepAP214_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_GeneralModule {
	RWStepAP214_GeneralModule* GetObject() {
	return (RWStepAP214_GeneralModule*)$self->Access();
	}
};

%nodefaultctor RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment;
class RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignPersonAndOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedDateAssignment;
class RWStepAP214_RWAppliedDateAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedDateAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDateAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignDateAndPersonAssignment;
class RWStepAP214_RWAutoDesignDateAndPersonAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignDateAndPersonAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignDateAndPersonAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignDateAndPersonAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedExternalIdentificationAssignment;
class RWStepAP214_RWAppliedExternalIdentificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedExternalIdentificationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedExternalIdentificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedExternalIdentificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedPersonAndOrganizationAssignment;
class RWStepAP214_RWAppliedPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedPersonAndOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignOrganizationAssignment;
class RWStepAP214_RWAutoDesignOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignOrganizationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedDateAndTimeAssignment;
class RWStepAP214_RWAppliedDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedDateAndTimeAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedGroupAssignment;
class RWStepAP214_RWAppliedGroupAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedGroupAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedGroupAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedSecurityClassificationAssignment;
class RWStepAP214_RWAppliedSecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedSecurityClassificationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedSecurityClassificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedSecurityClassificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWClass;
class RWStepAP214_RWClass {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWClass();
		%feature("autodoc", "1");
		RWStepAP214_RWClass();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_Class &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_Class &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_Class &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignApprovalAssignment;
class RWStepAP214_RWAutoDesignApprovalAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignApprovalAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignApprovalAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignApprovalAssignment &ent, Interface_EntityIterator & iter) const;

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
		%feature("autodoc", "1");
		virtual		~RWStepAP214_GeneralModule();

};
%extend RWStepAP214_GeneralModule {
	Handle_RWStepAP214_GeneralModule GetHandle() {
	return *(Handle_RWStepAP214_GeneralModule*) &$self;
	}
};

%nodefaultctor RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment;
class RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignNominalDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignNominalDateAssignment;
class RWStepAP214_RWAutoDesignNominalDateAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignNominalDateAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignNominalDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignNominalDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignNominalDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignNominalDateAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedPresentedItem;
class RWStepAP214_RWAppliedPresentedItem {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedPresentedItem();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedPresentedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedPresentedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedPresentedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedPresentedItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignGroupAssignment;
class RWStepAP214_RWAutoDesignGroupAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignGroupAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignGroupAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignGroupAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignGroupAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedApprovalAssignment;
class RWStepAP214_RWAppliedApprovalAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedApprovalAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedApprovalAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedApprovalAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedApprovalAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignPresentedItem;
class RWStepAP214_RWAutoDesignPresentedItem {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignPresentedItem();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignPresentedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignPresentedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignPresentedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignPresentedItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214;
class RWStepAP214 {
	public:
		%feature("autodoc", "1");
		~RWStepAP214();
		%feature("autodoc", "1");
		RWStepAP214();
		%feature("autodoc", "1");
		void Init();

};

%nodefaultctor RWStepAP214_RWRepItemGroup;
class RWStepAP214_RWRepItemGroup {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWRepItemGroup();
		%feature("autodoc", "1");
		RWStepAP214_RWRepItemGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_RepItemGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_RepItemGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_RepItemGroup &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignActualDateAssignment;
class RWStepAP214_RWAutoDesignActualDateAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignActualDateAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignActualDateAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignActualDateAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignActualDateAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignActualDateAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignActualDateAndTimeAssignment;
class RWStepAP214_RWAutoDesignActualDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignActualDateAndTimeAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignActualDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignActualDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedDocumentReference;
class RWStepAP214_RWAppliedDocumentReference {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedDocumentReference();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedDocumentReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedDocumentReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedDocumentReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedDocumentReference &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignDocumentReference;
class RWStepAP214_RWAutoDesignDocumentReference {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignDocumentReference();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignDocumentReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignDocumentReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignDocumentReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignDocumentReference &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWExternallyDefinedGeneralProperty;
class RWStepAP214_RWExternallyDefinedGeneralProperty {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWExternallyDefinedGeneralProperty();
		%feature("autodoc", "1");
		RWStepAP214_RWExternallyDefinedGeneralProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_ExternallyDefinedGeneralProperty &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAutoDesignSecurityClassificationAssignment;
class RWStepAP214_RWAutoDesignSecurityClassificationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAutoDesignSecurityClassificationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAutoDesignSecurityClassificationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AutoDesignSecurityClassificationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWAppliedOrganizationAssignment;
class RWStepAP214_RWAppliedOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWAppliedOrganizationAssignment();
		%feature("autodoc", "1");
		RWStepAP214_RWAppliedOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_AppliedOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_AppliedOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_AppliedOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepAP214_RWExternallyDefinedClass;
class RWStepAP214_RWExternallyDefinedClass {
	public:
		%feature("autodoc", "1");
		~RWStepAP214_RWExternallyDefinedClass();
		%feature("autodoc", "1");
		RWStepAP214_RWExternallyDefinedClass();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP214_ExternallyDefinedClass &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP214_ExternallyDefinedClass &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP214_ExternallyDefinedClass &ent, Interface_EntityIterator & iter) const;

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
		%feature("autodoc", "1");
		virtual		~RWStepAP214_ReadWriteModule();

};
%extend RWStepAP214_ReadWriteModule {
	Handle_RWStepAP214_ReadWriteModule GetHandle() {
	return *(Handle_RWStepAP214_ReadWriteModule*) &$self;
	}
};