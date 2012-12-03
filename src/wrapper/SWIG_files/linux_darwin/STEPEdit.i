/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
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

%module STEPEdit
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include STEPEdit_renames.i


%include STEPEdit_required_python_modules.i


%include STEPEdit_dependencies.i


%include STEPEdit_headers.i




%nodefaultctor Handle_STEPEdit_EditSDR;
class Handle_STEPEdit_EditSDR : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR();
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR(const Handle_STEPEdit_EditSDR &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR(const STEPEdit_EditSDR *anItem);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR & operator=(const Handle_STEPEdit_EditSDR &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditSDR & operator=(const STEPEdit_EditSDR *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPEdit_EditSDR DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPEdit_EditSDR {
	STEPEdit_EditSDR* GetObject() {
	return (STEPEdit_EditSDR*)$self->Access();
	}
};
%feature("shadow") Handle_STEPEdit_EditSDR::~Handle_STEPEdit_EditSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPEdit_EditSDR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPEdit_EditContext;
class Handle_STEPEdit_EditContext : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext();
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext(const Handle_STEPEdit_EditContext &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext(const STEPEdit_EditContext *anItem);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext & operator=(const Handle_STEPEdit_EditContext &aHandle);
		%feature("autodoc", "1");
		Handle_STEPEdit_EditContext & operator=(const STEPEdit_EditContext *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPEdit_EditContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPEdit_EditContext {
	STEPEdit_EditContext* GetObject() {
	return (STEPEdit_EditContext*)$self->Access();
	}
};
%feature("shadow") Handle_STEPEdit_EditContext::~Handle_STEPEdit_EditContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPEdit_EditContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPEdit;
class STEPEdit {
	public:
		%feature("autodoc", "1");
		STEPEdit();
		%feature("autodoc", "1");
		static		Handle_Interface_Protocol Protocol();
		%feature("autodoc", "1");
		static		Handle_StepData_StepModel NewModel();
		%feature("autodoc", "1");
		static		Handle_IFSelect_Signature SignType();
		%feature("autodoc", "1");
		static		Handle_IFSelect_SelectSignature NewSelectSDR();
		%feature("autodoc", "1");
		static		Handle_IFSelect_SelectSignature NewSelectPlacedItem();
		%feature("autodoc", "1");
		static		Handle_IFSelect_SelectSignature NewSelectShapeRepr();

};
%feature("shadow") STEPEdit::~STEPEdit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPEdit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPEdit_EditContext;
class STEPEdit_EditContext : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		STEPEdit_EditContext();
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
%extend STEPEdit_EditContext {
	Handle_STEPEdit_EditContext GetHandle() {
	return *(Handle_STEPEdit_EditContext*) &$self;
	}
};
%extend STEPEdit_EditContext {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") STEPEdit_EditContext::~STEPEdit_EditContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPEdit_EditContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPEdit_EditSDR;
class STEPEdit_EditSDR : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		STEPEdit_EditSDR();
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
%extend STEPEdit_EditSDR {
	Handle_STEPEdit_EditSDR GetHandle() {
	return *(Handle_STEPEdit_EditSDR*) &$self;
	}
};
%extend STEPEdit_EditSDR {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") STEPEdit_EditSDR::~STEPEdit_EditSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPEdit_EditSDR {
	void _kill_pointed() {
		delete $self;
	}
};
