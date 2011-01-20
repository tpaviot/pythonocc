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

%module RWHeaderSection
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWHeaderSection_renames.i


%include RWHeaderSection_required_python_modules.i


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
		Handle_RWHeaderSection_ReadWriteModule & operator=(const Handle_RWHeaderSection_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_ReadWriteModule & operator=(const RWHeaderSection_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_RWHeaderSection_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWHeaderSection_ReadWriteModule {
	RWHeaderSection_ReadWriteModule* GetObject() {
	return (RWHeaderSection_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_RWHeaderSection_ReadWriteModule::~Handle_RWHeaderSection_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_RWHeaderSection_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
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
		Handle_RWHeaderSection_GeneralModule & operator=(const Handle_RWHeaderSection_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_RWHeaderSection_GeneralModule & operator=(const RWHeaderSection_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_RWHeaderSection_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_RWHeaderSection_GeneralModule {
	RWHeaderSection_GeneralModule* GetObject() {
	return (RWHeaderSection_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_RWHeaderSection_GeneralModule::~Handle_RWHeaderSection_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_RWHeaderSection_GeneralModule {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWHeaderSection_RWFileSchema::~RWHeaderSection_RWFileSchema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection_RWFileSchema {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWHeaderSection_RWFileDescription::~RWHeaderSection_RWFileDescription %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection_RWFileDescription {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWHeaderSection_RWFileName::~RWHeaderSection_RWFileName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection_RWFileName {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWHeaderSection_ReadWriteModule::~RWHeaderSection_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWHeaderSection;
class RWHeaderSection {
	public:
		%feature("autodoc", "1");
		RWHeaderSection();
		%feature("autodoc", "1");
		static		void Init();

};
%feature("shadow") RWHeaderSection::~RWHeaderSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWHeaderSection_GeneralModule::~RWHeaderSection_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWHeaderSection_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};
