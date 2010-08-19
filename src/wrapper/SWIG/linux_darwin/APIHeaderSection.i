/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module APIHeaderSection
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include APIHeaderSection_renames.i


%include APIHeaderSection_required_python_modules.i


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
		Handle_APIHeaderSection_EditHeader & operator=(const Handle_APIHeaderSection_EditHeader &aHandle);
		%feature("autodoc", "1");
		Handle_APIHeaderSection_EditHeader & operator=(const APIHeaderSection_EditHeader *anItem);
		%feature("autodoc", "1");
		static		Handle_APIHeaderSection_EditHeader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_APIHeaderSection_EditHeader {
	APIHeaderSection_EditHeader* GetObject() {
	return (APIHeaderSection_EditHeader*)$self->Access();
	}
};
%feature("shadow") Handle_APIHeaderSection_EditHeader::~Handle_APIHeaderSection_EditHeader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_APIHeaderSection_EditHeader {
	void _kill_pointed() {
		delete $self;
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") APIHeaderSection_EditHeader::~APIHeaderSection_EditHeader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend APIHeaderSection_EditHeader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor APIHeaderSection_MakeHeader;
class APIHeaderSection_MakeHeader {
	public:
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
%feature("shadow") APIHeaderSection_MakeHeader::~APIHeaderSection_MakeHeader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend APIHeaderSection_MakeHeader {
	void _kill_pointed() {
		delete $self;
	}
};
