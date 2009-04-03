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
%module RWStepAP214

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


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
		Handle_RWStepAP214_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_ReadWriteModule {
	RWStepAP214_ReadWriteModule* GetObject() {
	return (RWStepAP214_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_RWStepAP214_ReadWriteModule {
	~Handle_RWStepAP214_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_RWStepAP214_ReadWriteModule\n");}
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
		Handle_RWStepAP214_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWStepAP214_GeneralModule {
	RWStepAP214_GeneralModule* GetObject() {
	return (RWStepAP214_GeneralModule*)$self->Access();
	}
};
%extend Handle_RWStepAP214_GeneralModule {
	~Handle_RWStepAP214_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_RWStepAP214_GeneralModule\n");}
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
%extend RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment {
	~RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignPersonAndOrganizationAssignment\n");}
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
%extend RWStepAP214_RWAppliedDateAssignment {
	~RWStepAP214_RWAppliedDateAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedDateAssignment\n");}
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
%extend RWStepAP214_ReadWriteModule {
	~RWStepAP214_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_ReadWriteModule\n");}
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
%extend RWStepAP214_RWAutoDesignSecurityClassificationAssignment {
	~RWStepAP214_RWAutoDesignSecurityClassificationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignSecurityClassificationAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignNominalDateAssignment {
	~RWStepAP214_RWAutoDesignNominalDateAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignNominalDateAssignment\n");}
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
%extend RWStepAP214_RWAppliedPersonAndOrganizationAssignment {
	~RWStepAP214_RWAppliedPersonAndOrganizationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedPersonAndOrganizationAssignment\n");}
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
%extend RWStepAP214_RWAppliedGroupAssignment {
	~RWStepAP214_RWAppliedGroupAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedGroupAssignment\n");}
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
%extend RWStepAP214_RWAppliedDateAndTimeAssignment {
	~RWStepAP214_RWAppliedDateAndTimeAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedDateAndTimeAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignOrganizationAssignment {
	~RWStepAP214_RWAutoDesignOrganizationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignOrganizationAssignment\n");}
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
%extend RWStepAP214_RWClass {
	~RWStepAP214_RWClass() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWClass\n");}
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
%extend RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment {
	~RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignNominalDateAndTimeAssignment\n");}
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
%extend RWStepAP214_GeneralModule {
	~RWStepAP214_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_GeneralModule\n");}
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
%extend RWStepAP214_RWAutoDesignGroupAssignment {
	~RWStepAP214_RWAutoDesignGroupAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignGroupAssignment\n");}
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
%extend RWStepAP214_RWAppliedApprovalAssignment {
	~RWStepAP214_RWAppliedApprovalAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedApprovalAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignPresentedItem {
	~RWStepAP214_RWAutoDesignPresentedItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignPresentedItem\n");}
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
%extend RWStepAP214_RWRepItemGroup {
	~RWStepAP214_RWRepItemGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWRepItemGroup\n");}
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
%extend RWStepAP214_RWAppliedDocumentReference {
	~RWStepAP214_RWAppliedDocumentReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedDocumentReference\n");}
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
%extend RWStepAP214_RWExternallyDefinedGeneralProperty {
	~RWStepAP214_RWExternallyDefinedGeneralProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWExternallyDefinedGeneralProperty\n");}
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
%extend RWStepAP214_RWAutoDesignApprovalAssignment {
	~RWStepAP214_RWAutoDesignApprovalAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignApprovalAssignment\n");}
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
%extend RWStepAP214_RWAppliedPresentedItem {
	~RWStepAP214_RWAppliedPresentedItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedPresentedItem\n");}
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
%extend RWStepAP214_RWAppliedExternalIdentificationAssignment {
	~RWStepAP214_RWAppliedExternalIdentificationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedExternalIdentificationAssignment\n");}
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
%extend RWStepAP214_RWAppliedOrganizationAssignment {
	~RWStepAP214_RWAppliedOrganizationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedOrganizationAssignment\n");}
	}
};

%nodefaultctor RWStepAP214;
class RWStepAP214 {
	public:
		%feature("autodoc", "1");
		RWStepAP214();
		%feature("autodoc", "1");
		void Init();

};
%extend RWStepAP214 {
	~RWStepAP214() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214\n");}
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
%extend RWStepAP214_RWExternallyDefinedClass {
	~RWStepAP214_RWExternallyDefinedClass() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWExternallyDefinedClass\n");}
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
%extend RWStepAP214_RWAutoDesignDocumentReference {
	~RWStepAP214_RWAutoDesignDocumentReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignDocumentReference\n");}
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
%extend RWStepAP214_RWAppliedSecurityClassificationAssignment {
	~RWStepAP214_RWAppliedSecurityClassificationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAppliedSecurityClassificationAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignDateAndPersonAssignment {
	~RWStepAP214_RWAutoDesignDateAndPersonAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignDateAndPersonAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignActualDateAssignment {
	~RWStepAP214_RWAutoDesignActualDateAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignActualDateAssignment\n");}
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
%extend RWStepAP214_RWAutoDesignActualDateAndTimeAssignment {
	~RWStepAP214_RWAutoDesignActualDateAndTimeAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepAP214_RWAutoDesignActualDateAndTimeAssignment\n");}
	}
};