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
%module StepSelect

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


%include StepSelect_dependencies.i


%include StepSelect_headers.i




%nodefaultctor Handle_StepSelect_WorkLibrary;
class Handle_StepSelect_WorkLibrary : public Handle_IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary();
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary(const Handle_StepSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary(const StepSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_WorkLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_WorkLibrary {
	StepSelect_WorkLibrary* GetObject() {
	return (StepSelect_WorkLibrary*)$self->Access();
	}
};
%extend Handle_StepSelect_WorkLibrary {
	~Handle_StepSelect_WorkLibrary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_WorkLibrary\n");}
	}
};

%nodefaultctor Handle_StepSelect_FileModifier;
class Handle_StepSelect_FileModifier : public Handle_IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier();
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier(const Handle_StepSelect_FileModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier(const StepSelect_FileModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FileModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_FileModifier {
	StepSelect_FileModifier* GetObject() {
	return (StepSelect_FileModifier*)$self->Access();
	}
};
%extend Handle_StepSelect_FileModifier {
	~Handle_StepSelect_FileModifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_FileModifier\n");}
	}
};

%nodefaultctor Handle_StepSelect_Activator;
class Handle_StepSelect_Activator : public Handle_IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_Activator();
		%feature("autodoc", "1");
		Handle_StepSelect_Activator(const Handle_StepSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator(const StepSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_Activator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_Activator {
	StepSelect_Activator* GetObject() {
	return (StepSelect_Activator*)$self->Access();
	}
};
%extend Handle_StepSelect_Activator {
	~Handle_StepSelect_Activator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_Activator\n");}
	}
};

%nodefaultctor Handle_StepSelect_ModelModifier;
class Handle_StepSelect_ModelModifier : public Handle_IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier();
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier(const Handle_StepSelect_ModelModifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier(const StepSelect_ModelModifier *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_ModelModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_ModelModifier {
	StepSelect_ModelModifier* GetObject() {
	return (StepSelect_ModelModifier*)$self->Access();
	}
};
%extend Handle_StepSelect_ModelModifier {
	~Handle_StepSelect_ModelModifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_ModelModifier\n");}
	}
};

%nodefaultctor Handle_StepSelect_FloatFormat;
class Handle_StepSelect_FloatFormat : public Handle_StepSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat();
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat(const Handle_StepSelect_FloatFormat &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat(const StepSelect_FloatFormat *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_FloatFormat const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_FloatFormat {
	StepSelect_FloatFormat* GetObject() {
	return (StepSelect_FloatFormat*)$self->Access();
	}
};
%extend Handle_StepSelect_FloatFormat {
	~Handle_StepSelect_FloatFormat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_FloatFormat\n");}
	}
};

%nodefaultctor Handle_StepSelect_StepType;
class Handle_StepSelect_StepType : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_StepSelect_StepType();
		%feature("autodoc", "1");
		Handle_StepSelect_StepType(const Handle_StepSelect_StepType &aHandle);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType(const StepSelect_StepType *anItem);
		%feature("autodoc", "1");
		Handle_StepSelect_StepType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepSelect_StepType {
	StepSelect_StepType* GetObject() {
	return (StepSelect_StepType*)$self->Access();
	}
};
%extend Handle_StepSelect_StepType {
	~Handle_StepSelect_StepType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepSelect_StepType\n");}
	}
};

%nodefaultctor StepSelect_FileModifier;
class StepSelect_FileModifier : public IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, StepData_StepWriter & writer) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_FileModifier {
	Handle_StepSelect_FileModifier GetHandle() {
	return *(Handle_StepSelect_FileModifier*) &$self;
	}
};
%extend StepSelect_FileModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_FileModifier {
	~StepSelect_FileModifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_FileModifier\n");}
	}
};

%nodefaultctor StepSelect_WorkLibrary;
class StepSelect_WorkLibrary : public IFSelect_WorkLibrary {
	public:
		%feature("autodoc", "1");
		StepSelect_WorkLibrary(const Standard_Boolean copymode=1);
		%feature("autodoc", "1");
		void SetDumpLabel(const Standard_Integer mode);
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadFile(const char * name, Handle_Interface_InterfaceModel & model, const Handle_Interface_Protocol &protocol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteFile(IFSelect_ContextWrite & ctx) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CopyModel(const Handle_Interface_InterfaceModel &original, const Handle_Interface_InterfaceModel &newmodel, const Interface_EntityIterator &list, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void DumpEntity(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &protocol, const Handle_Standard_Transient &entity, const Handle_Message_Messenger &S, const Standard_Integer level) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_WorkLibrary {
	Handle_StepSelect_WorkLibrary GetHandle() {
	return *(Handle_StepSelect_WorkLibrary*) &$self;
	}
};
%extend StepSelect_WorkLibrary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_WorkLibrary {
	~StepSelect_WorkLibrary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_WorkLibrary\n");}
	}
};

%nodefaultctor StepSelect_StepType;
class StepSelect_StepType : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		StepSelect_StepType();
		%feature("autodoc", "1");
		void SetProtocol(const Handle_Interface_Protocol &proto);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_StepType {
	Handle_StepSelect_StepType GetHandle() {
	return *(Handle_StepSelect_StepType*) &$self;
	}
};
%extend StepSelect_StepType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_StepType {
	~StepSelect_StepType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_StepType\n");}
	}
};

%nodefaultctor StepSelect_FloatFormat;
class StepSelect_FloatFormat : public StepSelect_FileModifier {
	public:
		%feature("autodoc", "1");
		StepSelect_FloatFormat();
		%feature("autodoc", "1");
		void SetDefault(const Standard_Integer digits=0);
		%feature("autodoc", "1");
		void SetZeroSuppress(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetFormat(const char * format="%E");
		%feature("autodoc", "1");
		void SetFormatForRange(const char * format="%f", const Standard_Real Rmin=1.00000000000000005551115123125782702118158340454e-1, const Standard_Real Rmax=1.0e+3);
		%feature("autodoc", "1");
		void Format(Standard_Boolean & zerosup, TCollection_AsciiString & mainform, Standard_Boolean & hasrange, TCollection_AsciiString & forminrange, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextWrite & ctx, StepData_StepWriter & writer) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_FloatFormat {
	Handle_StepSelect_FloatFormat GetHandle() {
	return *(Handle_StepSelect_FloatFormat*) &$self;
	}
};
%extend StepSelect_FloatFormat {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_FloatFormat {
	~StepSelect_FloatFormat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_FloatFormat\n");}
	}
};

%nodefaultctor StepSelect_ModelModifier;
class StepSelect_ModelModifier : public IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void PerformProtocol(IFSelect_ContextModif & ctx, const Handle_StepData_StepModel &target, const Handle_StepData_Protocol &proto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void Performing(IFSelect_ContextModif & ctx, const Handle_StepData_StepModel &target, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_ModelModifier {
	Handle_StepSelect_ModelModifier GetHandle() {
	return *(Handle_StepSelect_ModelModifier*) &$self;
	}
};
%extend StepSelect_ModelModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_ModelModifier {
	~StepSelect_ModelModifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_ModelModifier\n");}
	}
};

%nodefaultctor StepSelect_Activator;
class StepSelect_Activator : public IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		StepSelect_Activator();
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		virtual		char * Help(const Standard_Integer number) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepSelect_Activator {
	Handle_StepSelect_Activator GetHandle() {
	return *(Handle_StepSelect_Activator*) &$self;
	}
};
%extend StepSelect_Activator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepSelect_Activator {
	~StepSelect_Activator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepSelect_Activator\n");}
	}
};