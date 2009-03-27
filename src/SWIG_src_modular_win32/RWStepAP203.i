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
%module RWStepAP203

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


%include RWStepAP203_dependencies.i


%include RWStepAP203_headers.i




%nodefaultctor RWStepAP203_RWChangeRequest;
class RWStepAP203_RWChangeRequest {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWChangeRequest();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_ChangeRequest &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_ChangeRequest &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_ChangeRequest &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWChangeRequest {
	~RWStepAP203_RWChangeRequest() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWChangeRequest\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignSecurityClassification;
class RWStepAP203_RWCcDesignSecurityClassification {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignSecurityClassification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignSecurityClassification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignSecurityClassification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignSecurityClassification &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignSecurityClassification {
	~RWStepAP203_RWCcDesignSecurityClassification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignSecurityClassification\n");}
	}
};

%nodefaultctor RWStepAP203_RWStartRequest;
class RWStepAP203_RWStartRequest {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWStartRequest();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_StartRequest &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_StartRequest &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_StartRequest &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWStartRequest {
	~RWStepAP203_RWStartRequest() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWStartRequest\n");}
	}
};

%nodefaultctor RWStepAP203_RWStartWork;
class RWStepAP203_RWStartWork {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWStartWork();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_StartWork &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_StartWork &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_StartWork &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWStartWork {
	~RWStepAP203_RWStartWork() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWStartWork\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignDateAndTimeAssignment;
class RWStepAP203_RWCcDesignDateAndTimeAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignDateAndTimeAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignDateAndTimeAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignDateAndTimeAssignment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignDateAndTimeAssignment {
	~RWStepAP203_RWCcDesignDateAndTimeAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignDateAndTimeAssignment\n");}
	}
};

%nodefaultctor RWStepAP203_RWChange;
class RWStepAP203_RWChange {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWChange();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_Change &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_Change &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_Change &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWChange {
	~RWStepAP203_RWChange() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWChange\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignCertification;
class RWStepAP203_RWCcDesignCertification {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignCertification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignCertification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignCertification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignCertification &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignCertification {
	~RWStepAP203_RWCcDesignCertification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignCertification\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignPersonAndOrganizationAssignment;
class RWStepAP203_RWCcDesignPersonAndOrganizationAssignment {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignPersonAndOrganizationAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignPersonAndOrganizationAssignment {
	~RWStepAP203_RWCcDesignPersonAndOrganizationAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignPersonAndOrganizationAssignment\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignApproval;
class RWStepAP203_RWCcDesignApproval {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignApproval();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignApproval &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignApproval &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignApproval &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignApproval {
	~RWStepAP203_RWCcDesignApproval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignApproval\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignSpecificationReference;
class RWStepAP203_RWCcDesignSpecificationReference {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignSpecificationReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignSpecificationReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignSpecificationReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignSpecificationReference &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignSpecificationReference {
	~RWStepAP203_RWCcDesignSpecificationReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignSpecificationReference\n");}
	}
};

%nodefaultctor RWStepAP203_RWCcDesignContract;
class RWStepAP203_RWCcDesignContract {
	public:
		%feature("autodoc", "1");
		RWStepAP203_RWCcDesignContract();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepAP203_CcDesignContract &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepAP203_CcDesignContract &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepAP203_CcDesignContract &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepAP203_RWCcDesignContract {
	~RWStepAP203_RWCcDesignContract() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepAP203_RWCcDesignContract\n");}
	}
};