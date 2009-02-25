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
%module HeaderSection

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


%include HeaderSection_dependencies.i


%include HeaderSection_headers.i




%nodefaultctor Handle_HeaderSection_HeaderRecognizer;
class Handle_HeaderSection_HeaderRecognizer : public Handle_StepData_FileRecognizer {
	public:
		%feature("autodoc", "1");
		~Handle_HeaderSection_HeaderRecognizer();
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

%nodefaultctor Handle_HeaderSection_FileName;
class Handle_HeaderSection_FileName : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_HeaderSection_FileName();
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

%nodefaultctor Handle_HeaderSection_Protocol;
class Handle_HeaderSection_Protocol : public Handle_StepData_Protocol {
	public:
		%feature("autodoc", "1");
		~Handle_HeaderSection_Protocol();
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

%nodefaultctor Handle_HeaderSection_FileDescription;
class Handle_HeaderSection_FileDescription : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_HeaderSection_FileDescription();
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

%nodefaultctor Handle_HeaderSection_FileSchema;
class Handle_HeaderSection_FileSchema : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_HeaderSection_FileSchema();
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
		%feature("autodoc", "1");
		virtual		~HeaderSection_FileDescription();

};
%extend HeaderSection_FileDescription {
	Handle_HeaderSection_FileDescription GetHandle() {
	return *(Handle_HeaderSection_FileDescription*) &$self;
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
		%feature("autodoc", "1");
		virtual		~HeaderSection_FileSchema();

};
%extend HeaderSection_FileSchema {
	Handle_HeaderSection_FileSchema GetHandle() {
	return *(Handle_HeaderSection_FileSchema*) &$self;
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
		%feature("autodoc", "1");
		virtual		~HeaderSection_FileName();

};
%extend HeaderSection_FileName {
	Handle_HeaderSection_FileName GetHandle() {
	return *(Handle_HeaderSection_FileName*) &$self;
	}
};

%nodefaultctor HeaderSection;
class HeaderSection {
	public:
		%feature("autodoc", "1");
		~HeaderSection();
		%feature("autodoc", "1");
		HeaderSection();
		%feature("autodoc", "1");
		Handle_HeaderSection_Protocol Protocol();

};

%nodefaultctor HeaderSection_HeaderRecognizer;
class HeaderSection_HeaderRecognizer : public StepData_FileRecognizer {
	public:
		%feature("autodoc", "1");
		HeaderSection_HeaderRecognizer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~HeaderSection_HeaderRecognizer();

};
%extend HeaderSection_HeaderRecognizer {
	Handle_HeaderSection_HeaderRecognizer GetHandle() {
	return *(Handle_HeaderSection_HeaderRecognizer*) &$self;
	}
};