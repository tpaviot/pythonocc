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
%module RWHeaderSection

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


%include RWHeaderSection_dependencies.i


%include RWHeaderSection_headers.i




%nodefaultctor Handle_RWHeaderSection_ReadWriteModule;
class Handle_RWHeaderSection_ReadWriteModule : public Handle_StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_RWHeaderSection_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_RWHeaderSection_ReadWriteModule(const Handle_RWHeaderSection_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_ReadWriteModule(const RWHeaderSection_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWHeaderSection_ReadWriteModule {
	RWHeaderSection_ReadWriteModule* GetObject() {
	return (RWHeaderSection_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_RWHeaderSection_ReadWriteModule {
	~Handle_RWHeaderSection_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_RWHeaderSection_ReadWriteModule\n");}
	}
};

%nodefaultctor Handle_RWHeaderSection_GeneralModule;
class Handle_RWHeaderSection_GeneralModule : public Handle_StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_RWHeaderSection_GeneralModule();
		%feature("autodoc", "1");
		Handle_RWHeaderSection_GeneralModule(const Handle_RWHeaderSection_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_GeneralModule(const RWHeaderSection_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWHeaderSection_GeneralModule {
	RWHeaderSection_GeneralModule* GetObject() {
	return (RWHeaderSection_GeneralModule*)$self->Access();
	}
};
%extend Handle_RWHeaderSection_GeneralModule {
	~Handle_RWHeaderSection_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_RWHeaderSection_GeneralModule\n");}
	}
};

%nodefaultctor RWHeaderSection_RWFileSchema;
class RWHeaderSection_RWFileSchema {
	public:
		%feature("autodoc", "1");
		RWHeaderSection_RWFileSchema();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_HeaderSection_FileSchema &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_HeaderSection_FileSchema &ent) const;

};
%extend RWHeaderSection_RWFileSchema {
	~RWHeaderSection_RWFileSchema() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection_RWFileSchema\n");}
	}
};

%nodefaultctor RWHeaderSection_RWFileDescription;
class RWHeaderSection_RWFileDescription {
	public:
		%feature("autodoc", "1");
		RWHeaderSection_RWFileDescription();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_HeaderSection_FileDescription &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_HeaderSection_FileDescription &ent) const;

};
%extend RWHeaderSection_RWFileDescription {
	~RWHeaderSection_RWFileDescription() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection_RWFileDescription\n");}
	}
};

%nodefaultctor RWHeaderSection_ReadWriteModule;
class RWHeaderSection_ReadWriteModule : public StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		RWHeaderSection_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TCollection_AsciiString &atype) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TColStd_SequenceOfAsciiString &types) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		const TCollection_AsciiString & StepType(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		void ReadStep(const Standard_Integer CN, const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void WriteStep(const Standard_Integer CN, StepData_StepWriter & SW, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend RWHeaderSection_ReadWriteModule {
	Handle_RWHeaderSection_ReadWriteModule GetHandle() {
	return *(Handle_RWHeaderSection_ReadWriteModule*) &$self;
	}
};
%extend RWHeaderSection_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend RWHeaderSection_ReadWriteModule {
	~RWHeaderSection_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection_ReadWriteModule\n");}
	}
};

%nodefaultctor RWHeaderSection_RWFileName;
class RWHeaderSection_RWFileName {
	public:
		%feature("autodoc", "1");
		RWHeaderSection_RWFileName();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_HeaderSection_FileName &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_HeaderSection_FileName &ent) const;

};
%extend RWHeaderSection_RWFileName {
	~RWHeaderSection_RWFileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection_RWFileName\n");}
	}
};

%nodefaultctor RWHeaderSection;
class RWHeaderSection {
	public:
		%feature("autodoc", "1");
		RWHeaderSection();
		%feature("autodoc", "1");
		void Init();

};
%extend RWHeaderSection {
	~RWHeaderSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection\n");}
	}
};

%nodefaultctor RWHeaderSection_GeneralModule;
class RWHeaderSection_GeneralModule : public StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		RWHeaderSection_GeneralModule();
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer CN, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend RWHeaderSection_GeneralModule {
	Handle_RWHeaderSection_GeneralModule GetHandle() {
	return *(Handle_RWHeaderSection_GeneralModule*) &$self;
	}
};
%extend RWHeaderSection_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend RWHeaderSection_GeneralModule {
	~RWHeaderSection_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWHeaderSection_GeneralModule\n");}
	}
};