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
%module APIHeaderSection

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


%include APIHeaderSection_dependencies.i


%include APIHeaderSection_headers.i




%nodefaultctor Handle_APIHeaderSection_EditHeader;
class Handle_APIHeaderSection_EditHeader : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_APIHeaderSection_EditHeader();
		%feature("autodoc", "1");
		Handle_APIHeaderSection_EditHeader(const Handle_APIHeaderSection_EditHeader &aHandle);
		%feature("autodoc", "1");
		Handle_APIHeaderSection_EditHeader(const APIHeaderSection_EditHeader *anItem);
		%feature("autodoc", "1");
		Handle_APIHeaderSection_EditHeader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_APIHeaderSection_EditHeader {
	APIHeaderSection_EditHeader* GetObject() {
	return (APIHeaderSection_EditHeader*)$self->Access();
	}
};
%extend Handle_APIHeaderSection_EditHeader {
	~Handle_APIHeaderSection_EditHeader() {
	printf("Call custom destructor for instance of Handle_APIHeaderSection_EditHeader\n");
	}
};

%nodefaultctor APIHeaderSection_EditHeader;
class APIHeaderSection_EditHeader : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		APIHeaderSection_EditHeader();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend APIHeaderSection_EditHeader {
	Handle_APIHeaderSection_EditHeader GetHandle() {
	return *(Handle_APIHeaderSection_EditHeader*) &$self;
	}
};
%extend APIHeaderSection_EditHeader {
	~APIHeaderSection_EditHeader() {
	printf("Call custom destructor for instance of APIHeaderSection_EditHeader\n");
	}
};

%nodefaultctor APIHeaderSection_MakeHeader;
class APIHeaderSection_MakeHeader {
	public:
		%feature("autodoc", "1");
		~APIHeaderSection_MakeHeader();
		%feature("autodoc", "1");
		APIHeaderSection_MakeHeader(const Standard_Integer shapetype=0);
		%feature("autodoc", "1");
		APIHeaderSection_MakeHeader(const Handle_StepData_StepModel &model);
		%feature("autodoc", "1");
		void Init(const char * nameval);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Apply(const Handle_StepData_StepModel &model) const;
		%feature("autodoc", "1");
		Handle_StepData_StepModel NewModel(const Handle_Interface_Protocol &protocol) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFn() const;
		%feature("autodoc", "1");
		Handle_HeaderSection_FileName FnValue() const;
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
		void SetAuthorValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &aAuthor);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString Author() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AuthorValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbAuthor() const;
		%feature("autodoc", "1");
		void SetOrganization(const Handle_Interface_HArray1OfHAsciiString &aOrganization);
		%feature("autodoc", "1");
		void SetOrganizationValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &aOrganization);
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
		Standard_Boolean HasFs() const;
		%feature("autodoc", "1");
		Handle_HeaderSection_FileSchema FsValue() const;
		%feature("autodoc", "1");
		void SetSchemaIdentifiers(const Handle_Interface_HArray1OfHAsciiString &aSchemaIdentifiers);
		%feature("autodoc", "1");
		void SetSchemaIdentifiersValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &aSchemaIdentifier);
		%feature("autodoc", "1");
		Handle_Interface_HArray1OfHAsciiString SchemaIdentifiers() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString SchemaIdentifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbSchemaIdentifiers() const;
		%feature("autodoc", "1");
		void AddSchemaIdentifier(const Handle_TCollection_HAsciiString &aSchemaIdentifier);
		%feature("autodoc", "1");
		Standard_Boolean HasFd() const;
		%feature("autodoc", "1");
		Handle_HeaderSection_FileDescription FdValue() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_Interface_HArray1OfHAsciiString &aDescription);
		%feature("autodoc", "1");
		void SetDescriptionValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &aDescription);
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

};