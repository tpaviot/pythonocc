/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module StepData
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include StepData_dependencies.i


%include StepData_headers.i


enum StepData_Logical {
	StepData_LFalse,
	StepData_LTrue,
	StepData_LUnknown,
	};



%nodefaultctor Handle_StepData_EDescr;
class Handle_StepData_EDescr : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_EDescr();
		%feature("autodoc", "1");
		Handle_StepData_EDescr(const Handle_StepData_EDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_EDescr(const StepData_EDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_EDescr & operator=(const Handle_StepData_EDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_EDescr & operator=(const StepData_EDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_EDescr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_EDescr {
	StepData_EDescr* GetObject() {
	return (StepData_EDescr*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_EDescr::~Handle_StepData_EDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_EDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_GeneralModule;
class Handle_StepData_GeneralModule : public Handle_Interface_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule();
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule(const Handle_StepData_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule(const StepData_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule & operator=(const Handle_StepData_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule & operator=(const StepData_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_StepData_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_GeneralModule {
	StepData_GeneralModule* GetObject() {
	return (StepData_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_GeneralModule::~Handle_StepData_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_DefaultGeneral;
class Handle_StepData_DefaultGeneral : public Handle_StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral();
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral(const Handle_StepData_DefaultGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral(const StepData_DefaultGeneral *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral & operator=(const Handle_StepData_DefaultGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral & operator=(const StepData_DefaultGeneral *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DefaultGeneral const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_DefaultGeneral {
	StepData_DefaultGeneral* GetObject() {
	return (StepData_DefaultGeneral*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_DefaultGeneral::~Handle_StepData_DefaultGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_DefaultGeneral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_Described;
class Handle_StepData_Described : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_Described();
		%feature("autodoc", "1");
		Handle_StepData_Described(const Handle_StepData_Described &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Described(const StepData_Described *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Described & operator=(const Handle_StepData_Described &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Described & operator=(const StepData_Described *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Described const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_Described {
	StepData_Described* GetObject() {
	return (StepData_Described*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_Described::~Handle_StepData_Described %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_Described {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_Plex;
class Handle_StepData_Plex : public Handle_StepData_Described {
	public:
		%feature("autodoc", "1");
		Handle_StepData_Plex();
		%feature("autodoc", "1");
		Handle_StepData_Plex(const Handle_StepData_Plex &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Plex(const StepData_Plex *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Plex & operator=(const Handle_StepData_Plex &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Plex & operator=(const StepData_Plex *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Plex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_Plex {
	StepData_Plex* GetObject() {
	return (StepData_Plex*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_Plex::~Handle_StepData_Plex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_Plex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_SelectMember;
class Handle_StepData_SelectMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_SelectMember();
		%feature("autodoc", "1");
		Handle_StepData_SelectMember(const Handle_StepData_SelectMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectMember(const StepData_SelectMember *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectMember & operator=(const Handle_StepData_SelectMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectMember & operator=(const StepData_SelectMember *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_SelectMember {
	StepData_SelectMember* GetObject() {
	return (StepData_SelectMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_SelectMember::~Handle_StepData_SelectMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_SelectMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_SelectNamed;
class Handle_StepData_SelectNamed : public Handle_StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed();
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed(const Handle_StepData_SelectNamed &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed(const StepData_SelectNamed *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed & operator=(const Handle_StepData_SelectNamed &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed & operator=(const StepData_SelectNamed *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectNamed const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_SelectNamed {
	StepData_SelectNamed* GetObject() {
	return (StepData_SelectNamed*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_SelectNamed::~Handle_StepData_SelectNamed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_SelectNamed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_ReadWriteModule;
class Handle_StepData_ReadWriteModule : public Handle_Interface_ReaderModule {
	public:
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule(const Handle_StepData_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule(const StepData_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule & operator=(const Handle_StepData_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule & operator=(const StepData_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_ReadWriteModule {
	StepData_ReadWriteModule* GetObject() {
	return (StepData_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_ReadWriteModule::~Handle_StepData_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_DescrReadWrite;
class Handle_StepData_DescrReadWrite : public Handle_StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite();
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite(const Handle_StepData_DescrReadWrite &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite(const StepData_DescrReadWrite *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite & operator=(const Handle_StepData_DescrReadWrite &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite & operator=(const StepData_DescrReadWrite *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrReadWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_DescrReadWrite {
	StepData_DescrReadWrite* GetObject() {
	return (StepData_DescrReadWrite*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_DescrReadWrite::~Handle_StepData_DescrReadWrite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_DescrReadWrite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_PDescr;
class Handle_StepData_PDescr : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_PDescr();
		%feature("autodoc", "1");
		Handle_StepData_PDescr(const Handle_StepData_PDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_PDescr(const StepData_PDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_PDescr & operator=(const Handle_StepData_PDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_PDescr & operator=(const StepData_PDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_PDescr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_PDescr {
	StepData_PDescr* GetObject() {
	return (StepData_PDescr*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_PDescr::~Handle_StepData_PDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_PDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_SelectReal;
class Handle_StepData_SelectReal : public Handle_StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		Handle_StepData_SelectReal();
		%feature("autodoc", "1");
		Handle_StepData_SelectReal(const Handle_StepData_SelectReal &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectReal(const StepData_SelectReal *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectReal & operator=(const Handle_StepData_SelectReal &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectReal & operator=(const StepData_SelectReal *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_SelectReal {
	StepData_SelectReal* GetObject() {
	return (StepData_SelectReal*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_SelectReal::~Handle_StepData_SelectReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_SelectReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_ESDescr;
class Handle_StepData_ESDescr : public Handle_StepData_EDescr {
	public:
		%feature("autodoc", "1");
		Handle_StepData_ESDescr();
		%feature("autodoc", "1");
		Handle_StepData_ESDescr(const Handle_StepData_ESDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ESDescr(const StepData_ESDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ESDescr & operator=(const Handle_StepData_ESDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ESDescr & operator=(const StepData_ESDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ESDescr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_ESDescr {
	StepData_ESDescr* GetObject() {
	return (StepData_ESDescr*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_ESDescr::~Handle_StepData_ESDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_ESDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_ECDescr;
class Handle_StepData_ECDescr : public Handle_StepData_EDescr {
	public:
		%feature("autodoc", "1");
		Handle_StepData_ECDescr();
		%feature("autodoc", "1");
		Handle_StepData_ECDescr(const Handle_StepData_ECDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ECDescr(const StepData_ECDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ECDescr & operator=(const Handle_StepData_ECDescr &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_ECDescr & operator=(const StepData_ECDescr *anItem);
		%feature("autodoc", "1");
		Handle_StepData_ECDescr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_ECDescr {
	StepData_ECDescr* GetObject() {
	return (StepData_ECDescr*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_ECDescr::~Handle_StepData_ECDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_ECDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_DescrGeneral;
class Handle_StepData_DescrGeneral : public Handle_StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral();
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral(const Handle_StepData_DescrGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral(const StepData_DescrGeneral *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral & operator=(const Handle_StepData_DescrGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral & operator=(const StepData_DescrGeneral *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrGeneral const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_DescrGeneral {
	StepData_DescrGeneral* GetObject() {
	return (StepData_DescrGeneral*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_DescrGeneral::~Handle_StepData_DescrGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_DescrGeneral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_SelectInt;
class Handle_StepData_SelectInt : public Handle_StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		Handle_StepData_SelectInt();
		%feature("autodoc", "1");
		Handle_StepData_SelectInt(const Handle_StepData_SelectInt &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectInt(const StepData_SelectInt *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectInt & operator=(const Handle_StepData_SelectInt &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectInt & operator=(const StepData_SelectInt *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectInt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_SelectInt {
	StepData_SelectInt* GetObject() {
	return (StepData_SelectInt*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_SelectInt::~Handle_StepData_SelectInt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_SelectInt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_UndefinedEntity;
class Handle_StepData_UndefinedEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity();
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity(const Handle_StepData_UndefinedEntity &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity(const StepData_UndefinedEntity *anItem);
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity & operator=(const Handle_StepData_UndefinedEntity &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity & operator=(const StepData_UndefinedEntity *anItem);
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_UndefinedEntity {
	StepData_UndefinedEntity* GetObject() {
	return (StepData_UndefinedEntity*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_UndefinedEntity::~Handle_StepData_UndefinedEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_UndefinedEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_FreeFormEntity;
class Handle_StepData_FreeFormEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity();
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity(const Handle_StepData_FreeFormEntity &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity(const StepData_FreeFormEntity *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity & operator=(const Handle_StepData_FreeFormEntity &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity & operator=(const StepData_FreeFormEntity *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_FreeFormEntity {
	StepData_FreeFormEntity* GetObject() {
	return (StepData_FreeFormEntity*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_FreeFormEntity::~Handle_StepData_FreeFormEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_FreeFormEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_StepModel;
class Handle_StepData_StepModel : public Handle_Interface_InterfaceModel {
	public:
		%feature("autodoc", "1");
		Handle_StepData_StepModel();
		%feature("autodoc", "1");
		Handle_StepData_StepModel(const Handle_StepData_StepModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_StepModel(const StepData_StepModel *anItem);
		%feature("autodoc", "1");
		Handle_StepData_StepModel & operator=(const Handle_StepData_StepModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_StepModel & operator=(const StepData_StepModel *anItem);
		%feature("autodoc", "1");
		Handle_StepData_StepModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_StepModel {
	StepData_StepModel* GetObject() {
	return (StepData_StepModel*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_StepModel::~Handle_StepData_StepModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_StepModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_StepReaderData;
class Handle_StepData_StepReaderData : public Handle_Interface_FileReaderData {
	public:
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData();
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData(const Handle_StepData_StepReaderData &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData(const StepData_StepReaderData *anItem);
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData & operator=(const Handle_StepData_StepReaderData &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData & operator=(const StepData_StepReaderData *anItem);
		%feature("autodoc", "1");
		Handle_StepData_StepReaderData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_StepReaderData {
	StepData_StepReaderData* GetObject() {
	return (StepData_StepReaderData*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_StepReaderData::~Handle_StepData_StepReaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_StepReaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_Protocol;
class Handle_StepData_Protocol : public Handle_Interface_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_StepData_Protocol();
		%feature("autodoc", "1");
		Handle_StepData_Protocol(const Handle_StepData_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Protocol(const StepData_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Protocol & operator=(const Handle_StepData_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Protocol & operator=(const StepData_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_Protocol {
	StepData_Protocol* GetObject() {
	return (StepData_Protocol*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_Protocol::~Handle_StepData_Protocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_Protocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_FileProtocol;
class Handle_StepData_FileProtocol : public Handle_StepData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol();
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol(const Handle_StepData_FileProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol(const StepData_FileProtocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol & operator=(const Handle_StepData_FileProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol & operator=(const StepData_FileProtocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FileProtocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_FileProtocol {
	StepData_FileProtocol* GetObject() {
	return (StepData_FileProtocol*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_FileProtocol::~Handle_StepData_FileProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_FileProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_DescrProtocol;
class Handle_StepData_DescrProtocol : public Handle_StepData_FileProtocol {
	public:
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol();
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol(const Handle_StepData_DescrProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol(const StepData_DescrProtocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol & operator=(const Handle_StepData_DescrProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol & operator=(const StepData_DescrProtocol *anItem);
		%feature("autodoc", "1");
		Handle_StepData_DescrProtocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_DescrProtocol {
	StepData_DescrProtocol* GetObject() {
	return (StepData_DescrProtocol*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_DescrProtocol::~Handle_StepData_DescrProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_DescrProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_SelectArrReal;
class Handle_StepData_SelectArrReal : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal();
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal(const Handle_StepData_SelectArrReal &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal(const StepData_SelectArrReal *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal & operator=(const Handle_StepData_SelectArrReal &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal & operator=(const StepData_SelectArrReal *anItem);
		%feature("autodoc", "1");
		Handle_StepData_SelectArrReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_SelectArrReal {
	StepData_SelectArrReal* GetObject() {
	return (StepData_SelectArrReal*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_SelectArrReal::~Handle_StepData_SelectArrReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_SelectArrReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_GlobalNodeOfWriterLib;
class Handle_StepData_GlobalNodeOfWriterLib : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib();
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib(const Handle_StepData_GlobalNodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib(const StepData_GlobalNodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib & operator=(const Handle_StepData_GlobalNodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib & operator=(const StepData_GlobalNodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_StepData_GlobalNodeOfWriterLib const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_GlobalNodeOfWriterLib {
	StepData_GlobalNodeOfWriterLib* GetObject() {
	return (StepData_GlobalNodeOfWriterLib*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_GlobalNodeOfWriterLib::~Handle_StepData_GlobalNodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_GlobalNodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_HArray1OfField;
class Handle_StepData_HArray1OfField : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField();
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField(const Handle_StepData_HArray1OfField &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField(const StepData_HArray1OfField *anItem);
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField & operator=(const Handle_StepData_HArray1OfField &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField & operator=(const StepData_HArray1OfField *anItem);
		%feature("autodoc", "1");
		Handle_StepData_HArray1OfField const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_HArray1OfField {
	StepData_HArray1OfField* GetObject() {
	return (StepData_HArray1OfField*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_HArray1OfField::~Handle_StepData_HArray1OfField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_HArray1OfField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_NodeOfWriterLib;
class Handle_StepData_NodeOfWriterLib : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib();
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib(const Handle_StepData_NodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib(const StepData_NodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib & operator=(const Handle_StepData_NodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib & operator=(const StepData_NodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_StepData_NodeOfWriterLib const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_NodeOfWriterLib {
	StepData_NodeOfWriterLib* GetObject() {
	return (StepData_NodeOfWriterLib*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_NodeOfWriterLib::~Handle_StepData_NodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_NodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_Simple;
class Handle_StepData_Simple : public Handle_StepData_Described {
	public:
		%feature("autodoc", "1");
		Handle_StepData_Simple();
		%feature("autodoc", "1");
		Handle_StepData_Simple(const Handle_StepData_Simple &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Simple(const StepData_Simple *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Simple & operator=(const Handle_StepData_Simple &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_Simple & operator=(const StepData_Simple *anItem);
		%feature("autodoc", "1");
		Handle_StepData_Simple const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_Simple {
	StepData_Simple* GetObject() {
	return (StepData_Simple*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_Simple::~Handle_StepData_Simple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_Simple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepData_FileRecognizer;
class Handle_StepData_FileRecognizer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer();
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer(const Handle_StepData_FileRecognizer &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer(const StepData_FileRecognizer *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer & operator=(const Handle_StepData_FileRecognizer &aHandle);
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer & operator=(const StepData_FileRecognizer *anItem);
		%feature("autodoc", "1");
		Handle_StepData_FileRecognizer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepData_FileRecognizer {
	StepData_FileRecognizer* GetObject() {
	return (StepData_FileRecognizer*)$self->Access();
	}
};
%feature("shadow") Handle_StepData_FileRecognizer::~Handle_StepData_FileRecognizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepData_FileRecognizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_NodeOfWriterLib;
class StepData_NodeOfWriterLib : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepData_NodeOfWriterLib();
		%feature("autodoc", "1");
		void AddNode(const Handle_StepData_GlobalNodeOfWriterLib &anode);
		%feature("autodoc", "1");
		const Handle_StepData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_StepData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_StepData_NodeOfWriterLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_NodeOfWriterLib {
	Handle_StepData_NodeOfWriterLib GetHandle() {
	return *(Handle_StepData_NodeOfWriterLib*) &$self;
	}
};
%extend StepData_NodeOfWriterLib {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_NodeOfWriterLib::~StepData_NodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_NodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FreeFormEntity;
class StepData_FreeFormEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetStepType(const char * typenam);
		%feature("autodoc", "1");
		char * StepType() const;
		%feature("autodoc", "1");
		void SetNext(const Handle_StepData_FreeFormEntity &next, const Standard_Boolean last=1);
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity Next() const;
		%feature("autodoc", "1");
		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		Handle_StepData_FreeFormEntity Typed(const char * typenam) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString TypeList() const;
		%feature("autodoc", "1");
		Standard_Boolean Reorder(Handle_StepData_FreeFormEntity & ent);
		%feature("autodoc", "1");
		void SetNbFields(const Standard_Integer nb);
		%feature("autodoc", "1");
		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		const StepData_Field & Field(const Standard_Integer num) const;
		%feature("autodoc", "1");
		StepData_Field & CField(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_FreeFormEntity {
	Handle_StepData_FreeFormEntity GetHandle() {
	return *(Handle_StepData_FreeFormEntity*) &$self;
	}
};
%extend StepData_FreeFormEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_FreeFormEntity::~StepData_FreeFormEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FreeFormEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_StepDumper;
class StepData_StepDumper {
	public:
		%feature("autodoc", "1");
		StepData_StepDumper(const Handle_StepData_StepModel &amodel, const Handle_StepData_Protocol &protocol, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		StepData_StepWriter & StepWriter();
		%feature("autodoc", "1");
		Standard_Boolean Dump(const Handle_Message_Messenger &S, const Handle_Standard_Transient &ent, const Standard_Integer level);
		%feature("autodoc", "1");
		Standard_Boolean Dump(const Handle_Message_Messenger &S, const Standard_Integer num, const Standard_Integer level);

};
%feature("shadow") StepData_StepDumper::~StepData_StepDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_StepDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectMember;
class StepData_SelectMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepData_SelectMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Kind() const;
		%feature("autodoc", "1");
		virtual		void SetKind(const Standard_Integer kind);
		%feature("autodoc", "1");
		Interface_ParamType ParamType() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Int() const;
		%feature("autodoc", "1");
		virtual		void SetInt(const Standard_Integer val);
		%feature("autodoc", "1");
		Standard_Integer Integer() const;
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer val);
		%feature("autodoc", "1");
		Standard_Boolean Boolean() const;
		%feature("autodoc", "1");
		void SetBoolean(const Standard_Boolean val);
		%feature("autodoc", "1");
		StepData_Logical Logical() const;
		%feature("autodoc", "1");
		void SetLogical(const StepData_Logical val);
		%feature("autodoc", "1");
		virtual		Standard_Real Real() const;
		%feature("autodoc", "1");
		virtual		void SetReal(const Standard_Real val);
		%feature("autodoc", "1");
		virtual		char * String() const;
		%feature("autodoc", "1");
		virtual		void SetString(const char * val);
		%feature("autodoc", "1");
		Standard_Integer Enum() const;
		%feature("autodoc", "1");
		virtual		char * EnumText() const;
		%feature("autodoc", "1");
		void SetEnum(const Standard_Integer val, const char * text="");
		%feature("autodoc", "1");
		virtual		void SetEnumText(const Standard_Integer val, const char * text);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_SelectMember {
	Handle_StepData_SelectMember GetHandle() {
	return *(Handle_StepData_SelectMember*) &$self;
	}
};
%extend StepData_SelectMember {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_SelectMember::~StepData_SelectMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectInt;
class StepData_SelectInt : public StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		StepData_SelectInt();

};
%extend StepData_SelectInt {
	Handle_StepData_SelectInt GetHandle() {
	return *(Handle_StepData_SelectInt*) &$self;
	}
};
%extend StepData_SelectInt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_SelectInt::~StepData_SelectInt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectInt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FileProtocol;
class StepData_FileProtocol : public StepData_Protocol {
	public:
		%feature("autodoc", "1");
		StepData_FileProtocol();
		%feature("autodoc", "1");
		void Add(const Handle_StepData_Protocol &protocol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbResources() const;
		%feature("autodoc", "1");
		virtual		Handle_Interface_Protocol Resource(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer TypeNumber(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GlobalCheck(const Interface_Graph &G, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		char * SchemaName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_FileProtocol {
	Handle_StepData_FileProtocol GetHandle() {
	return *(Handle_StepData_FileProtocol*) &$self;
	}
};
%extend StepData_FileProtocol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_FileProtocol::~StepData_FileProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FileProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_DescrProtocol;
class StepData_DescrProtocol : public StepData_FileProtocol {
	public:
		%feature("autodoc", "1");
		StepData_DescrProtocol();
		%feature("autodoc", "1");
		void SetSchemaName(const char * name);
		%feature("autodoc", "1");
		void LibRecord() const;

};
%extend StepData_DescrProtocol {
	Handle_StepData_DescrProtocol GetHandle() {
	return *(Handle_StepData_DescrProtocol*) &$self;
	}
};
%extend StepData_DescrProtocol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_DescrProtocol::~StepData_DescrProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_DescrProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_StepModel;
class StepData_StepModel : public Interface_InterfaceModel {
	public:
		%feature("autodoc", "1");
		StepData_StepModel();
		%feature("autodoc", "1");
		virtual		void Reservate(const Standard_Integer nbent);
		%feature("autodoc", "1");
		Handle_Standard_Transient Entity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		void GetFromAnother(const Handle_Interface_InterfaceModel &other);
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewEmptyModel() const;
		%feature("autodoc", "1");
		Interface_EntityIterator Header() const;
		%feature("autodoc", "1");
		Standard_Boolean HasHeaderEntity(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient HeaderEntity(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		virtual		void ClearHeader();
		%feature("autodoc", "1");
		void AddHeaderEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		virtual		void VerifyCheck(Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void DumpHeader(const Handle_Message_Messenger &S, const Standard_Integer level=0) const;
		%feature("autodoc", "1");
		virtual		void ClearLabels();
		%feature("autodoc", "1");
		void SetIdentLabel(const Handle_Standard_Transient &ent, const Standard_Integer ident);
		%feature("autodoc", "1");
		Standard_Integer IdentLabel(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void PrintLabel(const Handle_Standard_Transient &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringLabel(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_StepModel {
	Handle_StepData_StepModel GetHandle() {
	return *(Handle_StepData_StepModel*) &$self;
	}
};
%extend StepData_StepModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_StepModel::~StepData_StepModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_StepModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FileRecognizer;
class StepData_FileRecognizer : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Evaluate(const TCollection_AsciiString &akey, Handle_Standard_Transient & res);
		%feature("autodoc", "1");
		Handle_Standard_Transient Result() const;
		%feature("autodoc", "1");
		void Add(const Handle_StepData_FileRecognizer &reco);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_FileRecognizer {
	Handle_StepData_FileRecognizer GetHandle() {
	return *(Handle_StepData_FileRecognizer*) &$self;
	}
};
%extend StepData_FileRecognizer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_FileRecognizer::~StepData_FileRecognizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FileRecognizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_Field;
class StepData_Field {
	public:
		%feature("autodoc", "1");
		StepData_Field();
		%feature("autodoc", "1");
		StepData_Field(const StepData_Field &other, const Standard_Boolean copy=0);
		%feature("autodoc", "1");
		void CopyFrom(const StepData_Field &other);
		%feature("autodoc", "1");
		void Clear(const Standard_Integer kind=0);
		%feature("autodoc", "1");
		void SetDerived();
		%feature("autodoc", "1");
		void SetInt(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer val=0);
		%feature("autodoc", "1");
		void SetBoolean(const Standard_Boolean val=0);
		%feature("autodoc", "1");
		void SetLogical(const StepData_Logical val=StepData_LFalse);
		%feature("autodoc", "1");
		void SetReal(const Standard_Real val=0.0);
		%feature("autodoc", "1");
		void SetString(const char * val="");
		%feature("autodoc", "1");
		void SetEnum(const Standard_Integer val=-0x000000001, const char * text="");
		%feature("autodoc", "1");
		void SetSelectMember(const Handle_StepData_SelectMember &val);
		%feature("autodoc", "1");
		void SetEntity(const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		void SetEntity();
		%feature("autodoc", "1");
		void SetList(const Standard_Integer size, const Standard_Integer first=1);
		%feature("autodoc", "1");
		void SetList2(const Standard_Integer siz1, const Standard_Integer siz2, const Standard_Integer f1=1, const Standard_Integer f2=1);
		%feature("autodoc", "1");
		void Set(const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		void ClearItem(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetInt(const Standard_Integer num, const Standard_Integer val, const Standard_Integer kind);
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer num, const Standard_Integer val);
		%feature("autodoc", "1");
		void SetBoolean(const Standard_Integer num, const Standard_Boolean val);
		%feature("autodoc", "1");
		void SetLogical(const Standard_Integer num, const StepData_Logical val);
		%feature("autodoc", "1");
		void SetEnum(const Standard_Integer num, const Standard_Integer val, const char * text="");
		%feature("autodoc", "1");
		void SetReal(const Standard_Integer num, const Standard_Real val);
		%feature("autodoc", "1");
		void SetString(const Standard_Integer num, const char * val);
		%feature("autodoc", "1");
		void SetEntity(const Standard_Integer num, const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		Standard_Boolean IsSet(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Standard_Integer ItemKind(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Standard_Integer Kind(const Standard_Boolean type=1) const;
		%feature("autodoc", "1");
		Standard_Integer Arity() const;
		%feature("autodoc", "1");
		Standard_Integer Length(const Standard_Integer index=1) const;
		%feature("autodoc", "1");
		Standard_Integer Lower(const Standard_Integer index=1) const;
		%feature("autodoc", "1");
		Standard_Integer Int() const;
		%feature("autodoc", "1");
		Standard_Integer Integer(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Standard_Boolean Boolean(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		StepData_Logical Logical(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Standard_Real Real(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		char * String(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Standard_Integer Enum(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		char * EnumText(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Entity(const Standard_Integer n1=1, const Standard_Integer n2=1) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Transient() const;

};
%feature("shadow") StepData_Field::~StepData_Field %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_Field {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_EnumTool;
class StepData_EnumTool {
	public:
		%feature("autodoc", "1");
		StepData_EnumTool(const char * e0="", const char * e1="", const char * e2="", const char * e3="", const char * e4="", const char * e5="", const char * e6="", const char * e7="", const char * e8="", const char * e9="", const char * e10="", const char * e11="", const char * e12="", const char * e13="", const char * e14="", const char * e15="", const char * e16="", const char * e17="", const char * e18="", const char * e19="", const char * e20="", const char * e21="", const char * e22="", const char * e23="", const char * e24="", const char * e25="", const char * e26="", const char * e27="", const char * e28="", const char * e29="", const char * e30="", const char * e31="", const char * e32="", const char * e33="", const char * e34="", const char * e35="", const char * e36="", const char * e37="", const char * e38="", const char * e39="");
		%feature("autodoc", "1");
		void AddDefinition(const char * term);
		%feature("autodoc", "1");
		Standard_Boolean IsSet() const;
		%feature("autodoc", "1");
		Standard_Integer MaxValue() const;
		%feature("autodoc", "1");
		void Optional(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Integer NullValue() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Text(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer Value(const char * txt) const;
		%feature("autodoc", "1");
		Standard_Integer Value(const TCollection_AsciiString &txt) const;

};
%feature("shadow") StepData_EnumTool::~StepData_EnumTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_EnumTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_PDescr;
class StepData_PDescr : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepData_PDescr();
		%feature("autodoc", "1");
		void SetName(const char * name);
		%feature("autodoc", "1");
		char * Name() const;
		%feature("autodoc", "1");
		void SetSelect();
		%feature("autodoc", "1");
		void AddMember(const Handle_StepData_PDescr &member);
		%feature("autodoc", "1");
		void SetMemberName(const char * memname);
		%feature("autodoc", "1");
		void SetInteger();
		%feature("autodoc", "1");
		void SetReal();
		%feature("autodoc", "1");
		void SetString();
		%feature("autodoc", "1");
		void SetBoolean();
		%feature("autodoc", "1");
		void SetLogical();
		%feature("autodoc", "1");
		void SetEnum();
		%feature("autodoc", "1");
		void AddEnumDef(const char * enumdef);
		%feature("autodoc", "1");
		void SetType(const Handle_Standard_Type &atype);
		%feature("autodoc", "1");
		void SetDescr(const char * dscnam);
		%feature("autodoc", "1");
		void AddArity(const Standard_Integer arity=1);
		%feature("autodoc", "1");
		void SetArity(const Standard_Integer arity=1);
		%feature("autodoc", "1");
		void SetFrom(const Handle_StepData_PDescr &other);
		%feature("autodoc", "1");
		void SetOptional(const Standard_Boolean opt=1);
		%feature("autodoc", "1");
		void SetDerived(const Standard_Boolean der=1);
		%feature("autodoc", "1");
		void SetField(const char * name, const Standard_Integer rank);
		%feature("autodoc", "1");
		Standard_Boolean IsSelect() const;
		%feature("autodoc", "1");
		Handle_StepData_PDescr Member(const char * name) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInteger() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReal() const;
		%feature("autodoc", "1");
		Standard_Boolean IsString() const;
		%feature("autodoc", "1");
		Standard_Boolean IsBoolean() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLogical() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnum() const;
		%feature("autodoc", "1");
		Standard_Integer EnumMax() const;
		%feature("autodoc", "1");
		Standard_Integer EnumValue(const char * name) const;
		%feature("autodoc", "1");
		char * EnumText(const Standard_Integer val) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEntity() const;
		%feature("autodoc", "1");
		Standard_Boolean IsType(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		Handle_Standard_Type Type() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDescr(const Handle_StepData_EDescr &descr) const;
		%feature("autodoc", "1");
		char * DescrName() const;
		%feature("autodoc", "1");
		Standard_Integer Arity() const;
		%feature("autodoc", "1");
		Handle_StepData_PDescr Simple() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOptional() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDerived() const;
		%feature("autodoc", "1");
		Standard_Boolean IsField() const;
		%feature("autodoc", "1");
		char * FieldName() const;
		%feature("autodoc", "1");
		Standard_Integer FieldRank() const;
		%feature("autodoc", "1");
		virtual		void Check(const StepData_Field &afild, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_PDescr {
	Handle_StepData_PDescr GetHandle() {
	return *(Handle_StepData_PDescr*) &$self;
	}
};
%extend StepData_PDescr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_PDescr::~StepData_PDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_PDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_ReadWriteModule;
class StepData_ReadWriteModule : public Interface_ReaderModule {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Interface_FileReaderData &data, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TCollection_AsciiString &atype) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseStep(const TColStd_SequenceOfAsciiString &types) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		const TCollection_AsciiString & StepType(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ShortType(const Standard_Integer CN) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ComplexType(const Standard_Integer CN, TColStd_SequenceOfAsciiString & types) const;
		%feature("autodoc", "1");
		virtual		void Read(const Standard_Integer CN, const Handle_Interface_FileReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void ReadStep(const Standard_Integer CN, const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void WriteStep(const Standard_Integer CN, StepData_StepWriter & SW, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_ReadWriteModule {
	Handle_StepData_ReadWriteModule GetHandle() {
	return *(Handle_StepData_ReadWriteModule*) &$self;
	}
};
%extend StepData_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_ReadWriteModule::~StepData_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_DescrReadWrite;
class StepData_DescrReadWrite : public StepData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		StepData_DescrReadWrite(const Handle_StepData_Protocol &proto);

};
%extend StepData_DescrReadWrite {
	Handle_StepData_DescrReadWrite GetHandle() {
	return *(Handle_StepData_DescrReadWrite*) &$self;
	}
};
%extend StepData_DescrReadWrite {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_DescrReadWrite::~StepData_DescrReadWrite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_DescrReadWrite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_GlobalNodeOfWriterLib;
class StepData_GlobalNodeOfWriterLib : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		StepData_GlobalNodeOfWriterLib();
		%feature("autodoc", "1");
		void Add(const Handle_StepData_ReadWriteModule &amodule, const Handle_StepData_Protocol &aprotocol);
		%feature("autodoc", "1");
		const Handle_StepData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_StepData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_StepData_GlobalNodeOfWriterLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_GlobalNodeOfWriterLib {
	Handle_StepData_GlobalNodeOfWriterLib GetHandle() {
	return *(Handle_StepData_GlobalNodeOfWriterLib*) &$self;
	}
};
%extend StepData_GlobalNodeOfWriterLib {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_GlobalNodeOfWriterLib::~StepData_GlobalNodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_GlobalNodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_GeneralModule;
class StepData_GeneralModule : public Interface_GeneralModule {
	public:
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer casenum, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer casenum, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer casenum, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_GeneralModule {
	Handle_StepData_GeneralModule GetHandle() {
	return *(Handle_StepData_GeneralModule*) &$self;
	}
};
%extend StepData_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_GeneralModule::~StepData_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_DescrGeneral;
class StepData_DescrGeneral : public StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		StepData_DescrGeneral(const Handle_StepData_Protocol &proto);
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer CN, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & ent) const;

};
%extend StepData_DescrGeneral {
	Handle_StepData_DescrGeneral GetHandle() {
	return *(Handle_StepData_DescrGeneral*) &$self;
	}
};
%extend StepData_DescrGeneral {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_DescrGeneral::~StepData_DescrGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_DescrGeneral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_StepReaderData;
class StepData_StepReaderData : public Interface_FileReaderData {
	public:
		%feature("autodoc", "1");
		StepData_StepReaderData(const Standard_Integer nbheader, const Standard_Integer nbtotal, const Standard_Integer nbpar);
		%feature("autodoc", "1");
		void SetRecord(const Standard_Integer num, const char * ident, const char * type, const Standard_Integer nbpar);
		%feature("autodoc", "1");
		void AddStepParam(const Standard_Integer num, const char * aval, const Interface_ParamType atype, const Standard_Integer nument=0);
		%feature("autodoc", "1");
		const TCollection_AsciiString & RecordType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		char * CType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer RecordIdent(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer SubListNumber(const Standard_Integer num, const Standard_Integer nump, const Standard_Boolean aslast) const;
		%feature("autodoc", "1");
		Standard_Boolean IsComplex(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void ComplexType(const Standard_Integer num, TColStd_SequenceOfAsciiString & types) const;
		%feature("autodoc", "1");
		Standard_Integer NextForComplex(const Standard_Integer num) const;
		%feature("autodoc","NamedForComplex(Standard_CString name, Standard_Integer num0) -> Standard_Integer");
		Standard_Boolean NamedForComplex(const char * name, const Standard_Integer num0, Standard_Integer &OutValue, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckNbParams(const Standard_Integer num, const Standard_Integer nbreq, Handle_Interface_Check & ach, const char * mess="") const;
		%feature("autodoc","ReadSubList(Standard_Integer num, Standard_Integer nump, Standard_CString mess, Standard_Boolean optional=0, Standard_Integer lenmin=0, Standard_Integer lenmax=0) -> Standard_Integer");
		Standard_Boolean ReadSubList(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Integer &OutValue, const Standard_Boolean optional=0, const Standard_Integer lenmin=0, const Standard_Integer lenmax=0) const;
		%feature("autodoc", "1");
		Standard_Integer ReadSub(const Standard_Integer numsub, const char * mess, Handle_Interface_Check & ach, const Handle_StepData_PDescr &descr, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadMember(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Handle_StepData_SelectMember & val) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadField(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, const Handle_StepData_PDescr &descr, StepData_Field & fild) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadList(const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepData_ESDescr &descr, StepData_FieldList & list) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadAny(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, const Handle_StepData_PDescr &descr, Handle_Standard_Transient & val) const;
		%feature("autodoc","ReadXY(Standard_Integer num, Standard_Integer nump, Standard_CString mess) -> [Standard_RealStandard_Real]");
		Standard_Boolean ReadXY(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ReadXYZ(Standard_Integer num, Standard_Integer nump, Standard_CString mess) -> [Standard_RealStandard_RealStandard_Real]");
		Standard_Boolean ReadXYZ(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ReadReal(Standard_Integer num, Standard_Integer nump, Standard_CString mess) -> Standard_Real");
		Standard_Boolean ReadReal(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, const Handle_Standard_Type &atype, Handle_Standard_Transient & ent) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, StepData_SelectType & sel) const;
		%feature("autodoc","ReadInteger(Standard_Integer num, Standard_Integer nump, Standard_CString mess) -> Standard_Integer");
		Standard_Boolean ReadInteger(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadBoolean(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Standard_Boolean & flag) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadLogical(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, StepData_Logical & flag) const;
		%feature("autodoc", "1");
		Standard_Boolean ReadString(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, Handle_TCollection_HAsciiString & val) const;
		%feature("autodoc", "1");
		void FailEnumValue(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach) const;
		%feature("autodoc","ReadEnum(Standard_Integer num, Standard_Integer nump, Standard_CString mess, const enumtool) -> Standard_Integer");
		Standard_Boolean ReadEnum(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, const StepData_EnumTool &enumtool, Standard_Integer &OutValue) const;
		%feature("autodoc","ReadTypedParam(Standard_Integer num, Standard_Integer nump, Standard_Boolean mustbetyped, Standard_CString mess) -> [Standard_IntegerStandard_Integer]");
		Standard_Boolean ReadTypedParam(const Standard_Integer num, const Standard_Integer nump, const Standard_Boolean mustbetyped, const char * mess, Handle_Interface_Check & ach, Standard_Integer &OutValue, Standard_Integer &OutValue, TCollection_AsciiString & typ) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckDerived(const Standard_Integer num, const Standard_Integer nump, const char * mess, Handle_Interface_Check & ach, const Standard_Boolean errstat=0) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer FindNextRecord(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetEntityNumbers(const Standard_Boolean withmap=1);
		%feature("autodoc", "1");
		Standard_Integer FindNextHeaderRecord(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void PrepareHeader();
		%feature("autodoc", "1");
		Handle_Interface_Check const GlobalCheck() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_StepReaderData {
	Handle_StepData_StepReaderData GetHandle() {
	return *(Handle_StepData_StepReaderData*) &$self;
	}
};
%extend StepData_StepReaderData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_StepReaderData::~StepData_StepReaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_StepReaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FieldList;
class StepData_FieldList {
	public:
		%feature("autodoc", "1");
		StepData_FieldList();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		virtual		const StepData_Field & Field(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		StepData_Field & CField(const Standard_Integer num);
		%feature("autodoc", "1");
		void FillShared(Interface_EntityIterator & iter) const;

};
%feature("shadow") StepData_FieldList::~StepData_FieldList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FieldList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FieldList1;
class StepData_FieldList1 : public StepData_FieldList {
	public:
		%feature("autodoc", "1");
		StepData_FieldList1();
		%feature("autodoc", "1");
		virtual		void Destroy();

};
%feature("shadow") StepData_FieldList1::~StepData_FieldList1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FieldList1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FieldListD;
class StepData_FieldListD : public StepData_FieldList {
	public:
		%feature("autodoc", "1");
		StepData_FieldListD(const Standard_Integer nb);
		%feature("autodoc", "1");
		void SetNb(const Standard_Integer nb);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		virtual		const StepData_Field & Field(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		StepData_Field & CField(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		void Destroy();

};
%feature("shadow") StepData_FieldListD::~StepData_FieldListD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FieldListD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_FieldListN;
class StepData_FieldListN : public StepData_FieldList {
	public:
		%feature("autodoc", "1");
		StepData_FieldListN(const Standard_Integer nb);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		virtual		const StepData_Field & Field(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		StepData_Field & CField(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		void Destroy();

};
%feature("shadow") StepData_FieldListN::~StepData_FieldListN %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_FieldListN {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectNamed;
class StepData_SelectNamed : public StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		StepData_SelectNamed();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		const StepData_Field & Field() const;
		%feature("autodoc", "1");
		StepData_Field & CField();
		%feature("autodoc", "1");
		virtual		Standard_Integer Kind() const;
		%feature("autodoc", "1");
		virtual		void SetKind(const Standard_Integer kind);
		%feature("autodoc", "1");
		virtual		Standard_Integer Int() const;
		%feature("autodoc", "1");
		virtual		void SetInt(const Standard_Integer val);
		%feature("autodoc", "1");
		virtual		Standard_Real Real() const;
		%feature("autodoc", "1");
		virtual		void SetReal(const Standard_Real val);
		%feature("autodoc", "1");
		virtual		char * String() const;
		%feature("autodoc", "1");
		virtual		void SetString(const char * val);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_SelectNamed {
	Handle_StepData_SelectNamed GetHandle() {
	return *(Handle_StepData_SelectNamed*) &$self;
	}
};
%extend StepData_SelectNamed {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_SelectNamed::~StepData_SelectNamed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectNamed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData;
class StepData {
	public:
		%feature("autodoc", "1");
		StepData();
		%feature("autodoc", "1");
		Handle_StepData_Protocol HeaderProtocol();
		%feature("autodoc", "1");
		void AddHeaderProtocol(const Handle_StepData_Protocol &headerproto);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_StepData_Protocol Protocol();

};
%feature("shadow") StepData::~StepData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_EDescr;
class StepData_EDescr : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_Described NewEntity() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_EDescr {
	Handle_StepData_EDescr GetHandle() {
	return *(Handle_StepData_EDescr*) &$self;
	}
};
%extend StepData_EDescr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_EDescr::~StepData_EDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_EDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_ESDescr;
class StepData_ESDescr : public StepData_EDescr {
	public:
		%feature("autodoc", "1");
		StepData_ESDescr(const char * name);
		%feature("autodoc", "1");
		void SetNbFields(const Standard_Integer nb);
		%feature("autodoc", "1");
		void SetField(const Standard_Integer num, const char * name, const Handle_StepData_PDescr &descr);
		%feature("autodoc", "1");
		void SetBase(const Handle_StepData_ESDescr &base);
		%feature("autodoc", "1");
		void SetSuper(const Handle_StepData_ESDescr &super);
		%feature("autodoc", "1");
		char * TypeName() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & StepType() const;
		%feature("autodoc", "1");
		Handle_StepData_ESDescr Base() const;
		%feature("autodoc", "1");
		Handle_StepData_ESDescr Super() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSub(const Handle_StepData_ESDescr &other) const;
		%feature("autodoc", "1");
		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		Standard_Integer Rank(const char * name) const;
		%feature("autodoc", "1");
		char * Name(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_StepData_PDescr Field(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_StepData_PDescr NamedField(const char * name) const;

};
%extend StepData_ESDescr {
	Handle_StepData_ESDescr GetHandle() {
	return *(Handle_StepData_ESDescr*) &$self;
	}
};
%extend StepData_ESDescr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_ESDescr::~StepData_ESDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_ESDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_Array1OfField;
class StepData_Array1OfField {
	public:
		%feature("autodoc", "1");
		StepData_Array1OfField(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepData_Array1OfField(const StepData_Field &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepData_Field &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepData_Array1OfField & Assign(const StepData_Array1OfField &Other);
		%feature("autodoc", "1");
		const StepData_Array1OfField & operator=(const StepData_Array1OfField &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepData_Field &Value);
		%feature("autodoc", "1");
		const StepData_Field & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepData_Field & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepData_Field & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepData_Field & operator()(const Standard_Integer Index);

};
%feature("shadow") StepData_Array1OfField::~StepData_Array1OfField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_Array1OfField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectArrReal;
class StepData_SelectArrReal : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepData_SelectArrReal();
		%feature("autodoc", "1");
		virtual		Standard_Integer Kind() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal ArrReal() const;
		%feature("autodoc", "1");
		void SetArrReal(const Handle_TColStd_HArray1OfReal &arr);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_SelectArrReal {
	Handle_StepData_SelectArrReal GetHandle() {
	return *(Handle_StepData_SelectArrReal*) &$self;
	}
};
%extend StepData_SelectArrReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_SelectArrReal::~StepData_SelectArrReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectArrReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_HeaderTool;
class StepData_HeaderTool {
	public:
		%feature("autodoc", "1");
		StepData_HeaderTool(const Handle_StepData_StepReaderData &data);
		%feature("autodoc", "1");
		StepData_HeaderTool(const TColStd_SequenceOfAsciiString &names);
		%feature("autodoc", "1");
		Standard_Integer NbSchemaNames() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & SchemaName(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_StepData_Protocol NamedProtocol(const TCollection_AsciiString &name) const;
		%feature("autodoc", "1");
		void Build(const Handle_StepData_FileProtocol &protocol);
		%feature("autodoc", "1");
		Handle_StepData_Protocol Protocol();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbIgnoreds() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Ignored(const Standard_Integer num) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") StepData_HeaderTool::~StepData_HeaderTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_HeaderTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_Described;
class StepData_Described : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepData_EDescr Description() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_Simple As(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasField(const char * name) const;
		%feature("autodoc", "1");
		virtual		const StepData_Field & Field(const char * name) const;
		%feature("autodoc", "1");
		virtual		StepData_Field & CField(const char * name);
		%feature("autodoc", "1");
		virtual		void Check(Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void Shared(Interface_EntityIterator & list) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_Described {
	Handle_StepData_Described GetHandle() {
	return *(Handle_StepData_Described*) &$self;
	}
};
%extend StepData_Described {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_Described::~StepData_Described %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_Described {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_Simple;
class StepData_Simple : public StepData_Described {
	public:
		%feature("autodoc", "1");
		StepData_Simple(const Handle_StepData_ESDescr &descr);
		%feature("autodoc", "1");
		Handle_StepData_ESDescr ESDescr() const;
		%feature("autodoc", "1");
		char * StepType() const;
		%feature("autodoc", "1");
		Standard_Integer NbFields() const;
		%feature("autodoc", "1");
		const StepData_Field & FieldNum(const Standard_Integer num) const;
		%feature("autodoc", "1");
		StepData_Field & CFieldNum(const Standard_Integer num);
		%feature("autodoc", "1");
		const StepData_FieldListN & Fields() const;
		%feature("autodoc", "1");
		StepData_FieldListN & CFields();

};
%extend StepData_Simple {
	Handle_StepData_Simple GetHandle() {
	return *(Handle_StepData_Simple*) &$self;
	}
};
%extend StepData_Simple {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_Simple::~StepData_Simple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_Simple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_HArray1OfField;
class StepData_HArray1OfField : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepData_HArray1OfField(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepData_HArray1OfField(const Standard_Integer Low, const Standard_Integer Up, const StepData_Field &V);
		%feature("autodoc", "1");
		void Init(const StepData_Field &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepData_Field &Value);
		%feature("autodoc", "1");
		const StepData_Field & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepData_Field & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepData_Array1OfField & Array1() const;
		%feature("autodoc", "1");
		StepData_Array1OfField & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_HArray1OfField {
	Handle_StepData_HArray1OfField GetHandle() {
	return *(Handle_StepData_HArray1OfField*) &$self;
	}
};
%extend StepData_HArray1OfField {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_HArray1OfField::~StepData_HArray1OfField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_HArray1OfField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_WriterLib;
class StepData_WriterLib {
	public:
		%feature("autodoc", "1");
		void SetGlobal(const Handle_StepData_ReadWriteModule &amodule, const Handle_StepData_Protocol &aprotocol);
		%feature("autodoc", "1");
		StepData_WriterLib(const Handle_StepData_Protocol &aprotocol);
		%feature("autodoc", "1");
		StepData_WriterLib();
		%feature("autodoc", "1");
		void AddProtocol(const Handle_Standard_Transient &aprotocol);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetComplete();
		%feature("autodoc","Select(const obj) -> Standard_Integer");
		Standard_Boolean Select(const Handle_Standard_Transient &obj, Handle_StepData_ReadWriteModule & module, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_StepData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_StepData_Protocol & Protocol() const;

};
%feature("shadow") StepData_WriterLib::~StepData_WriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_WriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_StepWriter;
class StepData_StepWriter {
	public:
		%feature("autodoc", "1");
		StepData_StepWriter(const Handle_StepData_StepModel &amodel);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetLabelMode() {
				return (Standard_Integer) $self->LabelMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetLabelMode(Standard_Integer value ) {
				$self->LabelMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetTypeMode() {
				return (Standard_Integer) $self->TypeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetTypeMode(Standard_Integer value ) {
				$self->TypeMode()=value;
				}
		};
		%feature("autodoc", "1");
		Interface_FloatWriter & FloatWriter();
		%feature("autodoc", "1");
		void SetScope(const Standard_Integer numscope, const Standard_Integer numin);
		%feature("autodoc", "1");
		Standard_Boolean IsInScope(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SendModel(const Handle_StepData_Protocol &protocol, const Standard_Boolean headeronly=0);
		%feature("autodoc", "1");
		void SendHeader();
		%feature("autodoc", "1");
		void SendData();
		%feature("autodoc", "1");
		void SendEntity(const Standard_Integer nument, const StepData_WriterLib &lib);
		%feature("autodoc", "1");
		void EndSec();
		%feature("autodoc", "1");
		void EndFile();
		%feature("autodoc", "1");
		void NewLine(const Standard_Boolean evenempty);
		%feature("autodoc", "1");
		void JoinLast(const Standard_Boolean newline);
		%feature("autodoc", "1");
		void Indent(const Standard_Boolean onent);
		%feature("autodoc", "1");
		void SendIdent(const Standard_Integer ident);
		%feature("autodoc", "1");
		void SendScope();
		%feature("autodoc", "1");
		void SendEndscope();
		%feature("autodoc", "1");
		void Comment(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SendComment(const Handle_TCollection_HAsciiString &text);
		%feature("autodoc", "1");
		void SendComment(const char * text);
		%feature("autodoc", "1");
		void StartEntity(const TCollection_AsciiString &atype);
		%feature("autodoc", "1");
		void StartComplex();
		%feature("autodoc", "1");
		void EndComplex();
		%feature("autodoc", "1");
		void SendField(const StepData_Field &fild, const Handle_StepData_PDescr &descr);
		%feature("autodoc", "1");
		void SendSelect(const Handle_StepData_SelectMember &sm, const Handle_StepData_PDescr &descr);
		%feature("autodoc", "1");
		void SendList(const StepData_FieldList &list, const Handle_StepData_ESDescr &descr);
		%feature("autodoc", "1");
		void OpenSub();
		%feature("autodoc", "1");
		void OpenTypedSub(const char * subtype);
		%feature("autodoc", "1");
		void CloseSub();
		%feature("autodoc", "1");
		void AddParam();
		%feature("autodoc", "1");
		void Send(const Standard_Integer val);
		%feature("autodoc", "1");
		void Send(const Standard_Real val);
		%feature("autodoc", "1");
		void Send(const TCollection_AsciiString &val);
		%feature("autodoc", "1");
		void Send(const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		void SendBoolean(const Standard_Boolean val);
		%feature("autodoc", "1");
		void SendLogical(const StepData_Logical val);
		%feature("autodoc", "1");
		void SendString(const TCollection_AsciiString &val);
		%feature("autodoc", "1");
		void SendString(const char * val);
		%feature("autodoc", "1");
		void SendEnum(const TCollection_AsciiString &val);
		%feature("autodoc", "1");
		void SendEnum(const char * val);
		%feature("autodoc", "1");
		void SendArrReal(const Handle_TColStd_HArray1OfReal &anArr);
		%feature("autodoc", "1");
		void SendUndef();
		%feature("autodoc", "1");
		void SendDerived();
		%feature("autodoc", "1");
		void EndEntity();
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Line(const Standard_Integer num) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") StepData_StepWriter::~StepData_StepWriter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_StepWriter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_Plex;
class StepData_Plex : public StepData_Described {
	public:
		%feature("autodoc", "1");
		StepData_Plex(const Handle_StepData_ECDescr &descr);
		%feature("autodoc", "1");
		void Add(const Handle_StepData_Simple &member);
		%feature("autodoc", "1");
		Handle_StepData_ECDescr ECDescr() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_Simple As(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasField(const char * name) const;
		%feature("autodoc", "1");
		virtual		const StepData_Field & Field(const char * name) const;
		%feature("autodoc", "1");
		virtual		StepData_Field & CField(const char * name);
		%feature("autodoc", "1");
		Standard_Integer NbMembers() const;
		%feature("autodoc", "1");
		Handle_StepData_Simple Member(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString TypeList() const;
		%feature("autodoc", "1");
		virtual		void Check(Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		void Shared(Interface_EntityIterator & list) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_Plex {
	Handle_StepData_Plex GetHandle() {
	return *(Handle_StepData_Plex*) &$self;
	}
};
%extend StepData_Plex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_Plex::~StepData_Plex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_Plex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_ECDescr;
class StepData_ECDescr : public StepData_EDescr {
	public:
		%feature("autodoc", "1");
		StepData_ECDescr();
		%feature("autodoc", "1");
		void Add(const Handle_StepData_ESDescr &member);
		%feature("autodoc", "1");
		Standard_Integer NbMembers() const;
		%feature("autodoc", "1");
		Handle_StepData_ESDescr Member(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString TypeList() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * steptype) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_Described NewEntity() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_ECDescr {
	Handle_StepData_ECDescr GetHandle() {
	return *(Handle_StepData_ECDescr*) &$self;
	}
};
%extend StepData_ECDescr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_ECDescr::~StepData_ECDescr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_ECDescr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectReal;
class StepData_SelectReal : public StepData_SelectMember {
	public:
		%feature("autodoc", "1");
		StepData_SelectReal();
		%feature("autodoc", "1");
		virtual		Standard_Integer Kind() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Real() const;
		%feature("autodoc", "1");
		virtual		void SetReal(const Standard_Real val);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_SelectReal {
	Handle_StepData_SelectReal GetHandle() {
	return *(Handle_StepData_SelectReal*) &$self;
	}
};
%extend StepData_SelectReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_SelectReal::~StepData_SelectReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_SelectType;
class StepData_SelectType {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean Matches(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNull() const;
		%feature("autodoc", "1");
		Handle_Standard_Type Type() const;
		%feature("autodoc", "1");
		Standard_Integer CaseNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_PDescr Description() const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		Standard_Integer CaseMember() const;
		%feature("autodoc", "1");
		Handle_StepData_SelectMember Member() const;
		%feature("autodoc", "1");
		char * SelectName() const;
		%feature("autodoc", "1");
		Standard_Integer Int() const;
		%feature("autodoc", "1");
		void SetInt(const Standard_Integer val);
		%feature("autodoc", "1");
		Standard_Integer Integer() const;
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer val, const char * name="");
		%feature("autodoc", "1");
		Standard_Boolean Boolean() const;
		%feature("autodoc", "1");
		void SetBoolean(const Standard_Boolean val, const char * name="");
		%feature("autodoc", "1");
		StepData_Logical Logical() const;
		%feature("autodoc", "1");
		void SetLogical(const StepData_Logical val, const char * name="");
		%feature("autodoc", "1");
		Standard_Real Real() const;
		%feature("autodoc", "1");
		void SetReal(const Standard_Real val, const char * name="");
		%feature("autodoc", "1");
		virtual		void Destroy();

};
%feature("shadow") StepData_SelectType::~StepData_SelectType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_SelectType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_UndefinedEntity;
class StepData_UndefinedEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepData_UndefinedEntity();
		%feature("autodoc", "1");
		StepData_UndefinedEntity(const Standard_Boolean issub);
		%feature("autodoc", "1");
		Handle_Interface_UndefinedContent UndefinedContent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSub() const;
		%feature("autodoc", "1");
		Standard_Boolean IsComplex() const;
		%feature("autodoc", "1");
		Handle_StepData_UndefinedEntity Next() const;
		%feature("autodoc", "1");
		char * StepType() const;
		%feature("autodoc", "1");
		void ReadRecord(const Handle_StepData_StepReaderData &SR, const Standard_Integer num, Handle_Interface_Check & ach);
		%feature("autodoc", "1");
		void WriteParams(StepData_StepWriter & SW) const;
		%feature("autodoc", "1");
		void GetFromAnother(const Handle_StepData_UndefinedEntity &other, Interface_CopyTool & TC);
		%feature("autodoc", "1");
		void FillShared(Interface_EntityIterator & list) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_UndefinedEntity {
	Handle_StepData_UndefinedEntity GetHandle() {
	return *(Handle_StepData_UndefinedEntity*) &$self;
	}
};
%extend StepData_UndefinedEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_UndefinedEntity::~StepData_UndefinedEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_UndefinedEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_StepReaderTool;
class StepData_StepReaderTool : public Interface_FileReaderTool {
	public:
		%feature("autodoc", "1");
		StepData_StepReaderTool(const Handle_StepData_StepReaderData &reader, const Handle_StepData_Protocol &protocol);
		%feature("autodoc", "1");
		void Prepare(const Standard_Boolean optimize=1);
		%feature("autodoc", "1");
		void Prepare(const Handle_StepData_FileRecognizer &reco, const Standard_Boolean optimize=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Standard_Integer num, Handle_Interface_Check & ach, Handle_Standard_Transient & ent);
		%feature("autodoc", "1");
		void PrepareHeader(const Handle_StepData_FileRecognizer &reco);
		%feature("autodoc", "1");
		virtual		void BeginRead(const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AnalyseRecord(const Standard_Integer num, const Handle_Standard_Transient &anent, Handle_Interface_Check & acheck);
		%feature("autodoc", "1");
		virtual		void EndRead(const Handle_Interface_InterfaceModel &amodel);

};
%feature("shadow") StepData_StepReaderTool::~StepData_StepReaderTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_StepReaderTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepData_DefaultGeneral;
class StepData_DefaultGeneral : public StepData_GeneralModule {
	public:
		%feature("autodoc", "1");
		StepData_DefaultGeneral();
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer casenum, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer casenum, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer casenum, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepData_DefaultGeneral {
	Handle_StepData_DefaultGeneral GetHandle() {
	return *(Handle_StepData_DefaultGeneral*) &$self;
	}
};
%extend StepData_DefaultGeneral {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepData_DefaultGeneral::~StepData_DefaultGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepData_DefaultGeneral {
	void _kill_pointed() {
		delete $self;
	}
};
