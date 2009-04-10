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
%module HeaderSection

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include HeaderSection_dependencies.i


%include HeaderSection_headers.i




%nodefaultctor Handle_HeaderSection_HeaderRecognizer;
class Handle_HeaderSection_HeaderRecognizer : public Handle_StepData_FileRecognizer {
	public:
		%feature("autodoc", "1");
		Handle_HeaderSection_HeaderRecognizer();
		%feature("autodoc", "1");
		Handle_HeaderSection_HeaderRecognizer(const Handle_HeaderSection_HeaderRecognizer &aHandle);
		%feature("autodoc", "1");
		Handle_HeaderSection_HeaderRecognizer(const HeaderSection_HeaderRecognizer *anItem);
		%feature("autodoc", "1");
		Handle_HeaderSection_HeaderRecognizer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HeaderSection_HeaderRecognizer {
	HeaderSection_HeaderRecognizer* GetObject() {
	return (HeaderSection_HeaderRecognizer*)$self->Access();
	}
};
%extend Handle_HeaderSection_HeaderRecognizer {
	~Handle_HeaderSection_HeaderRecognizer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_HeaderSection_HeaderRecognizer\n");}
	}
};


%nodefaultctor Handle_HeaderSection_FileName;
class Handle_HeaderSection_FileName : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HeaderSection_FileName();
		%feature("autodoc", "1");
		Handle_HeaderSection_FileName(const Handle_HeaderSection_FileName &aHandle);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileName(const HeaderSection_FileName *anItem);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HeaderSection_FileName {
	HeaderSection_FileName* GetObject() {
	return (HeaderSection_FileName*)$self->Access();
	}
};
%extend Handle_HeaderSection_FileName {
	~Handle_HeaderSection_FileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_HeaderSection_FileName\n");}
	}
};


%nodefaultctor Handle_HeaderSection_Protocol;
class Handle_HeaderSection_Protocol : public Handle_StepData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol();
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol(const Handle_HeaderSection_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol(const HeaderSection_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HeaderSection_Protocol {
	HeaderSection_Protocol* GetObject() {
	return (HeaderSection_Protocol*)$self->Access();
	}
};
%extend Handle_HeaderSection_Protocol {
	~Handle_HeaderSection_Protocol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_HeaderSection_Protocol\n");}
	}
};


%nodefaultctor Handle_HeaderSection_FileDescription;
class Handle_HeaderSection_FileDescription : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HeaderSection_FileDescription();
		%feature("autodoc", "1");
		Handle_HeaderSection_FileDescription(const Handle_HeaderSection_FileDescription &aHandle);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileDescription(const HeaderSection_FileDescription *anItem);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileDescription const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HeaderSection_FileDescription {
	HeaderSection_FileDescription* GetObject() {
	return (HeaderSection_FileDescription*)$self->Access();
	}
};
%extend Handle_HeaderSection_FileDescription {
	~Handle_HeaderSection_FileDescription() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_HeaderSection_FileDescription\n");}
	}
};


%nodefaultctor Handle_HeaderSection_FileSchema;
class Handle_HeaderSection_FileSchema : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HeaderSection_FileSchema();
		%feature("autodoc", "1");
		Handle_HeaderSection_FileSchema(const Handle_HeaderSection_FileSchema &aHandle);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileSchema(const HeaderSection_FileSchema *anItem);
		%feature("autodoc", "1");
		Handle_HeaderSection_FileSchema const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HeaderSection_FileSchema {
	HeaderSection_FileSchema* GetObject() {
	return (HeaderSection_FileSchema*)$self->Access();
	}
};
%extend Handle_HeaderSection_FileSchema {
	~Handle_HeaderSection_FileSchema() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_HeaderSection_FileSchema\n");}
	}
};


%nodefaultctor HeaderSection_FileDescription;
class HeaderSection_FileDescription : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HeaderSection_FileDescription();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aDescription, const Handle_TCollection_HAsciiString &aImplementationLevel);
		%feature("autodoc", "1");
		void SetDescription(const Handle_Interface_HArray1OfHAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString Description() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DescriptionValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbDescription() const;
		%feature("autodoc", "1");
		void SetImplementationLevel(const Handle_TCollection_HAsciiString &aImplementationLevel);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ImplementationLevel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HeaderSection_FileDescription {
	Handle_HeaderSection_FileDescription GetHandle() {
	return *(Handle_HeaderSection_FileDescription*) &$self;
	}
};
%extend HeaderSection_FileDescription {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend HeaderSection_FileDescription {
	~HeaderSection_FileDescription() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of HeaderSection_FileDescription\n");}
	}
};


%nodefaultctor HeaderSection_FileSchema;
class HeaderSection_FileSchema : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HeaderSection_FileSchema();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aSchemaIdentifiers);
		%feature("autodoc", "1");
		void SetSchemaIdentifiers(const Handle_Interface_HArray1OfHAsciiString &aSchemaIdentifiers);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString SchemaIdentifiers() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString SchemaIdentifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbSchemaIdentifiers() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HeaderSection_FileSchema {
	Handle_HeaderSection_FileSchema GetHandle() {
	return *(Handle_HeaderSection_FileSchema*) &$self;
	}
};
%extend HeaderSection_FileSchema {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend HeaderSection_FileSchema {
	~HeaderSection_FileSchema() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of HeaderSection_FileSchema\n");}
	}
};


%nodefaultctor HeaderSection_FileName;
class HeaderSection_FileName : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HeaderSection_FileName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aTimeStamp, const Handle_Interface_HArray1OfHAsciiString &aAuthor, const Handle_Interface_HArray1OfHAsciiString &aOrganization, const Handle_TCollection_HAsciiString &aPreprocessorVersion, const Handle_TCollection_HAsciiString &aOriginatingSystem, const Handle_TCollection_HAsciiString &aAuthorisation);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetTimeStamp(const Handle_TCollection_HAsciiString &aTimeStamp);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TimeStamp() const;
		%feature("autodoc", "1");
		void SetAuthor(const Handle_Interface_HArray1OfHAsciiString &aAuthor);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString Author() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AuthorValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbAuthor() const;
		%feature("autodoc", "1");
		void SetOrganization(const Handle_Interface_HArray1OfHAsciiString &aOrganization);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString Organization() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString OrganizationValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbOrganization() const;
		%feature("autodoc", "1");
		void SetPreprocessorVersion(const Handle_TCollection_HAsciiString &aPreprocessorVersion);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString PreprocessorVersion() const;
		%feature("autodoc", "1");
		void SetOriginatingSystem(const Handle_TCollection_HAsciiString &aOriginatingSystem);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString OriginatingSystem() const;
		%feature("autodoc", "1");
		void SetAuthorisation(const Handle_TCollection_HAsciiString &aAuthorisation);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Authorisation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HeaderSection_FileName {
	Handle_HeaderSection_FileName GetHandle() {
	return *(Handle_HeaderSection_FileName*) &$self;
	}
};
%extend HeaderSection_FileName {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend HeaderSection_FileName {
	~HeaderSection_FileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of HeaderSection_FileName\n");}
	}
};


%nodefaultctor HeaderSection;
class HeaderSection {
	public:
		%feature("autodoc", "1");
		HeaderSection();
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol Protocol();

};
%extend HeaderSection {
	~HeaderSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of HeaderSection\n");}
	}
};


%nodefaultctor HeaderSection_HeaderRecognizer;
class HeaderSection_HeaderRecognizer : public StepData_FileRecognizer {
	public:
		%feature("autodoc", "1");
		HeaderSection_HeaderRecognizer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HeaderSection_HeaderRecognizer {
	Handle_HeaderSection_HeaderRecognizer GetHandle() {
	return *(Handle_HeaderSection_HeaderRecognizer*) &$self;
	}
};
%extend HeaderSection_HeaderRecognizer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend HeaderSection_HeaderRecognizer {
	~HeaderSection_HeaderRecognizer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of HeaderSection_HeaderRecognizer\n");}
	}
};
