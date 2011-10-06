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

%module IGESData
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IGESData_renames.i


%include IGESData_required_python_modules.i


%include IGESData_dependencies.i


%include IGESData_headers.i


enum IGESData_DefList {
	IGESData_DefNone,
	IGESData_DefOne,
	IGESData_DefSeveral,
	IGESData_ErrorOne,
	IGESData_ErrorSeveral,
	};

enum IGESData_Status {
	IGESData_EntityOK,
	IGESData_EntityError,
	IGESData_ReferenceError,
	IGESData_TypeError,
	};

enum IGESData_DefType {
	IGESData_DefVoid,
	IGESData_DefValue,
	IGESData_DefReference,
	IGESData_DefAny,
	IGESData_ErrorVal,
	IGESData_ErrorRef,
	};

enum IGESData_ReadStage {
	IGESData_ReadDir,
	IGESData_ReadOwn,
	IGESData_ReadAssocs,
	IGESData_ReadProps,
	IGESData_ReadEnd,
	};



%nodefaultctor Handle_IGESData_ReadWriteModule;
class Handle_IGESData_ReadWriteModule : public Handle_Interface_ReaderModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESData_ReadWriteModule(const Handle_IGESData_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ReadWriteModule(const IGESData_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_ReadWriteModule & operator=(const Handle_IGESData_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ReadWriteModule & operator=(const IGESData_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_ReadWriteModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_ReadWriteModule {
	IGESData_ReadWriteModule* GetObject() {
	return (IGESData_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_ReadWriteModule::~Handle_IGESData_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_GeneralModule;
class Handle_IGESData_GeneralModule : public Handle_Interface_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESData_GeneralModule(const Handle_IGESData_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GeneralModule(const IGESData_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_GeneralModule & operator=(const Handle_IGESData_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GeneralModule & operator=(const IGESData_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_GeneralModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_GeneralModule {
	IGESData_GeneralModule* GetObject() {
	return (IGESData_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_GeneralModule::~Handle_IGESData_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_ToolLocation;
class Handle_IGESData_ToolLocation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_ToolLocation();
		%feature("autodoc", "1");
		Handle_IGESData_ToolLocation(const Handle_IGESData_ToolLocation &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ToolLocation(const IGESData_ToolLocation *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_ToolLocation & operator=(const Handle_IGESData_ToolLocation &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ToolLocation & operator=(const IGESData_ToolLocation *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_ToolLocation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_ToolLocation {
	IGESData_ToolLocation* GetObject() {
	return (IGESData_ToolLocation*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_ToolLocation::~Handle_IGESData_ToolLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_ToolLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_IGESEntity;
class Handle_IGESData_IGESEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity();
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity(const Handle_IGESData_IGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity(const IGESData_IGESEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity & operator=(const Handle_IGESData_IGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity & operator=(const IGESData_IGESEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_IGESEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_IGESEntity {
	IGESData_IGESEntity* GetObject() {
	return (IGESData_IGESEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_IGESEntity::~Handle_IGESData_IGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_IGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_UndefinedEntity;
class Handle_IGESData_UndefinedEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_UndefinedEntity();
		%feature("autodoc", "1");
		Handle_IGESData_UndefinedEntity(const Handle_IGESData_UndefinedEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_UndefinedEntity(const IGESData_UndefinedEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_UndefinedEntity & operator=(const Handle_IGESData_UndefinedEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_UndefinedEntity & operator=(const IGESData_UndefinedEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_UndefinedEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_UndefinedEntity {
	IGESData_UndefinedEntity* GetObject() {
	return (IGESData_UndefinedEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_UndefinedEntity::~Handle_IGESData_UndefinedEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_UndefinedEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_FreeFormatEntity;
class Handle_IGESData_FreeFormatEntity : public Handle_IGESData_UndefinedEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_FreeFormatEntity();
		%feature("autodoc", "1");
		Handle_IGESData_FreeFormatEntity(const Handle_IGESData_FreeFormatEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FreeFormatEntity(const IGESData_FreeFormatEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_FreeFormatEntity & operator=(const Handle_IGESData_FreeFormatEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FreeFormatEntity & operator=(const IGESData_FreeFormatEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_FreeFormatEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_FreeFormatEntity {
	IGESData_FreeFormatEntity* GetObject() {
	return (IGESData_FreeFormatEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_FreeFormatEntity::~Handle_IGESData_FreeFormatEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_FreeFormatEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_Protocol;
class Handle_IGESData_Protocol : public Handle_Interface_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_Protocol();
		%feature("autodoc", "1");
		Handle_IGESData_Protocol(const Handle_IGESData_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_Protocol(const IGESData_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_Protocol & operator=(const Handle_IGESData_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_Protocol & operator=(const IGESData_Protocol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_Protocol DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_Protocol {
	IGESData_Protocol* GetObject() {
	return (IGESData_Protocol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_Protocol::~Handle_IGESData_Protocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_Protocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_NodeOfSpecificLib;
class Handle_IGESData_NodeOfSpecificLib : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfSpecificLib();
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfSpecificLib(const Handle_IGESData_NodeOfSpecificLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfSpecificLib(const IGESData_NodeOfSpecificLib *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfSpecificLib & operator=(const Handle_IGESData_NodeOfSpecificLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfSpecificLib & operator=(const IGESData_NodeOfSpecificLib *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_NodeOfSpecificLib DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_NodeOfSpecificLib {
	IGESData_NodeOfSpecificLib* GetObject() {
	return (IGESData_NodeOfSpecificLib*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_NodeOfSpecificLib::~Handle_IGESData_NodeOfSpecificLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_NodeOfSpecificLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_SpecificModule;
class Handle_IGESData_SpecificModule : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESData_SpecificModule(const Handle_IGESData_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_SpecificModule(const IGESData_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_SpecificModule & operator=(const Handle_IGESData_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_SpecificModule & operator=(const IGESData_SpecificModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_SpecificModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_SpecificModule {
	IGESData_SpecificModule* GetObject() {
	return (IGESData_SpecificModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_SpecificModule::~Handle_IGESData_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_DefaultSpecific;
class Handle_IGESData_DefaultSpecific : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_DefaultSpecific();
		%feature("autodoc", "1");
		Handle_IGESData_DefaultSpecific(const Handle_IGESData_DefaultSpecific &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultSpecific(const IGESData_DefaultSpecific *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultSpecific & operator=(const Handle_IGESData_DefaultSpecific &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultSpecific & operator=(const IGESData_DefaultSpecific *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_DefaultSpecific DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_DefaultSpecific {
	IGESData_DefaultSpecific* GetObject() {
	return (IGESData_DefaultSpecific*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_DefaultSpecific::~Handle_IGESData_DefaultSpecific %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_DefaultSpecific {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_LevelListEntity;
class Handle_IGESData_LevelListEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity();
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity(const Handle_IGESData_LevelListEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity(const IGESData_LevelListEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity & operator=(const Handle_IGESData_LevelListEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity & operator=(const IGESData_LevelListEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_LevelListEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_LevelListEntity {
	IGESData_LevelListEntity* GetObject() {
	return (IGESData_LevelListEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_LevelListEntity::~Handle_IGESData_LevelListEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_LevelListEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_NameEntity;
class Handle_IGESData_NameEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_NameEntity();
		%feature("autodoc", "1");
		Handle_IGESData_NameEntity(const Handle_IGESData_NameEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NameEntity(const IGESData_NameEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_NameEntity & operator=(const Handle_IGESData_NameEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NameEntity & operator=(const IGESData_NameEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_NameEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_NameEntity {
	IGESData_NameEntity* GetObject() {
	return (IGESData_NameEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_NameEntity::~Handle_IGESData_NameEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_NameEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_ColorEntity;
class Handle_IGESData_ColorEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity();
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity(const Handle_IGESData_ColorEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity(const IGESData_ColorEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity & operator=(const Handle_IGESData_ColorEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity & operator=(const IGESData_ColorEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_ColorEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_ColorEntity {
	IGESData_ColorEntity* GetObject() {
	return (IGESData_ColorEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_ColorEntity::~Handle_IGESData_ColorEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_ColorEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_LineFontEntity;
class Handle_IGESData_LineFontEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity();
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity(const Handle_IGESData_LineFontEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity(const IGESData_LineFontEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & operator=(const Handle_IGESData_LineFontEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & operator=(const IGESData_LineFontEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_LineFontEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_LineFontEntity {
	IGESData_LineFontEntity* GetObject() {
	return (IGESData_LineFontEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_LineFontEntity::~Handle_IGESData_LineFontEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_LineFontEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_TransfEntity;
class Handle_IGESData_TransfEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity();
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity(const Handle_IGESData_TransfEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity(const IGESData_TransfEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity & operator=(const Handle_IGESData_TransfEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity & operator=(const IGESData_TransfEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_TransfEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_TransfEntity {
	IGESData_TransfEntity* GetObject() {
	return (IGESData_TransfEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_TransfEntity::~Handle_IGESData_TransfEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_TransfEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_FileProtocol;
class Handle_IGESData_FileProtocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_FileProtocol();
		%feature("autodoc", "1");
		Handle_IGESData_FileProtocol(const Handle_IGESData_FileProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FileProtocol(const IGESData_FileProtocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_FileProtocol & operator=(const Handle_IGESData_FileProtocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FileProtocol & operator=(const IGESData_FileProtocol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_FileProtocol DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_FileProtocol {
	IGESData_FileProtocol* GetObject() {
	return (IGESData_FileProtocol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_FileProtocol::~Handle_IGESData_FileProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_FileProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_GlobalNodeOfWriterLib;
class Handle_IGESData_GlobalNodeOfWriterLib : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfWriterLib();
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfWriterLib(const Handle_IGESData_GlobalNodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfWriterLib(const IGESData_GlobalNodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfWriterLib & operator=(const Handle_IGESData_GlobalNodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfWriterLib & operator=(const IGESData_GlobalNodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_GlobalNodeOfWriterLib DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_GlobalNodeOfWriterLib {
	IGESData_GlobalNodeOfWriterLib* GetObject() {
	return (IGESData_GlobalNodeOfWriterLib*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_GlobalNodeOfWriterLib::~Handle_IGESData_GlobalNodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_GlobalNodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_HArray1OfIGESEntity;
class Handle_IGESData_HArray1OfIGESEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity();
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity(const Handle_IGESData_HArray1OfIGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity(const IGESData_HArray1OfIGESEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity & operator=(const Handle_IGESData_HArray1OfIGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity & operator=(const IGESData_HArray1OfIGESEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_HArray1OfIGESEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_HArray1OfIGESEntity {
	IGESData_HArray1OfIGESEntity* GetObject() {
	return (IGESData_HArray1OfIGESEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_HArray1OfIGESEntity::~Handle_IGESData_HArray1OfIGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_HArray1OfIGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_ViewKindEntity;
class Handle_IGESData_ViewKindEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity();
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity(const Handle_IGESData_ViewKindEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity(const IGESData_ViewKindEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity & operator=(const Handle_IGESData_ViewKindEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity & operator=(const IGESData_ViewKindEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_ViewKindEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_ViewKindEntity {
	IGESData_ViewKindEntity* GetObject() {
	return (IGESData_ViewKindEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_ViewKindEntity::~Handle_IGESData_ViewKindEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_ViewKindEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_GlobalNodeOfSpecificLib;
class Handle_IGESData_GlobalNodeOfSpecificLib : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfSpecificLib();
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfSpecificLib(const Handle_IGESData_GlobalNodeOfSpecificLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfSpecificLib(const IGESData_GlobalNodeOfSpecificLib *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfSpecificLib & operator=(const Handle_IGESData_GlobalNodeOfSpecificLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_GlobalNodeOfSpecificLib & operator=(const IGESData_GlobalNodeOfSpecificLib *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_GlobalNodeOfSpecificLib DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_GlobalNodeOfSpecificLib {
	IGESData_GlobalNodeOfSpecificLib* GetObject() {
	return (IGESData_GlobalNodeOfSpecificLib*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_GlobalNodeOfSpecificLib::~Handle_IGESData_GlobalNodeOfSpecificLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_GlobalNodeOfSpecificLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_FileRecognizer;
class Handle_IGESData_FileRecognizer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_FileRecognizer();
		%feature("autodoc", "1");
		Handle_IGESData_FileRecognizer(const Handle_IGESData_FileRecognizer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FileRecognizer(const IGESData_FileRecognizer *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_FileRecognizer & operator=(const Handle_IGESData_FileRecognizer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_FileRecognizer & operator=(const IGESData_FileRecognizer *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_FileRecognizer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_FileRecognizer {
	IGESData_FileRecognizer* GetObject() {
	return (IGESData_FileRecognizer*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_FileRecognizer::~Handle_IGESData_FileRecognizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_FileRecognizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_DefaultGeneral;
class Handle_IGESData_DefaultGeneral : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_DefaultGeneral();
		%feature("autodoc", "1");
		Handle_IGESData_DefaultGeneral(const Handle_IGESData_DefaultGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultGeneral(const IGESData_DefaultGeneral *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultGeneral & operator=(const Handle_IGESData_DefaultGeneral &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_DefaultGeneral & operator=(const IGESData_DefaultGeneral *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_DefaultGeneral DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_DefaultGeneral {
	IGESData_DefaultGeneral* GetObject() {
	return (IGESData_DefaultGeneral*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_DefaultGeneral::~Handle_IGESData_DefaultGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_DefaultGeneral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_SingleParentEntity;
class Handle_IGESData_SingleParentEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_SingleParentEntity();
		%feature("autodoc", "1");
		Handle_IGESData_SingleParentEntity(const Handle_IGESData_SingleParentEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_SingleParentEntity(const IGESData_SingleParentEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_SingleParentEntity & operator=(const Handle_IGESData_SingleParentEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_SingleParentEntity & operator=(const IGESData_SingleParentEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_SingleParentEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_SingleParentEntity {
	IGESData_SingleParentEntity* GetObject() {
	return (IGESData_SingleParentEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_SingleParentEntity::~Handle_IGESData_SingleParentEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_SingleParentEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_NodeOfWriterLib;
class Handle_IGESData_NodeOfWriterLib : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfWriterLib();
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfWriterLib(const Handle_IGESData_NodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfWriterLib(const IGESData_NodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfWriterLib & operator=(const Handle_IGESData_NodeOfWriterLib &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_NodeOfWriterLib & operator=(const IGESData_NodeOfWriterLib *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_NodeOfWriterLib DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_NodeOfWriterLib {
	IGESData_NodeOfWriterLib* GetObject() {
	return (IGESData_NodeOfWriterLib*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_NodeOfWriterLib::~Handle_IGESData_NodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_NodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_IGESModel;
class Handle_IGESData_IGESModel : public Handle_Interface_InterfaceModel {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel();
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel(const Handle_IGESData_IGESModel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel(const IGESData_IGESModel *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel & operator=(const Handle_IGESData_IGESModel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel & operator=(const IGESData_IGESModel *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_IGESModel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_IGESModel {
	IGESData_IGESModel* GetObject() {
	return (IGESData_IGESModel*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_IGESModel::~Handle_IGESData_IGESModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_IGESModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_LabelDisplayEntity;
class Handle_IGESData_LabelDisplayEntity : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity();
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity(const Handle_IGESData_LabelDisplayEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity(const IGESData_LabelDisplayEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity & operator=(const Handle_IGESData_LabelDisplayEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity & operator=(const IGESData_LabelDisplayEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_LabelDisplayEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_LabelDisplayEntity {
	IGESData_LabelDisplayEntity* GetObject() {
	return (IGESData_LabelDisplayEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_LabelDisplayEntity::~Handle_IGESData_LabelDisplayEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_LabelDisplayEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESData_IGESReaderData;
class Handle_IGESData_IGESReaderData : public Handle_Interface_FileReaderData {
	public:
		%feature("autodoc", "1");
		Handle_IGESData_IGESReaderData();
		%feature("autodoc", "1");
		Handle_IGESData_IGESReaderData(const Handle_IGESData_IGESReaderData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESReaderData(const IGESData_IGESReaderData *anItem);
		%feature("autodoc", "1");
		Handle_IGESData_IGESReaderData & operator=(const Handle_IGESData_IGESReaderData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESData_IGESReaderData & operator=(const IGESData_IGESReaderData *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESData_IGESReaderData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESData_IGESReaderData {
	IGESData_IGESReaderData* GetObject() {
	return (IGESData_IGESReaderData*)$self->Access();
	}
};
%feature("shadow") Handle_IGESData_IGESReaderData::~Handle_IGESData_IGESReaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESData_IGESReaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESEntity;
class IGESData_IGESEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESData_IGESType IGESType() const;
		%feature("autodoc", "1");
		Standard_Integer TypeNumber() const;
		%feature("autodoc", "1");
		Standard_Integer FormNumber() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity DirFieldEntity(const Standard_Integer fieldnum) const;
		%feature("autodoc", "1");
		Standard_Boolean HasStructure() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Structure() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefType DefLineFont() const;
		%feature("autodoc", "1");
		Standard_Integer RankLineFont() const;
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity LineFont() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefList DefLevel() const;
		%feature("autodoc", "1");
		Standard_Integer Level() const;
		%feature("autodoc", "1");
		Handle_IGESData_LevelListEntity LevelList() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefList DefView() const;
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity View() const;
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity SingleView() const;
		%feature("autodoc", "1");
		Handle_IGESData_ViewKindEntity ViewList() const;
		%feature("autodoc", "1");
		Standard_Boolean HasTransf() const;
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity Transf() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLabelDisplay() const;
		%feature("autodoc", "1");
		Handle_IGESData_LabelDisplayEntity LabelDisplay() const;
		%feature("autodoc", "1");
		Standard_Integer BlankStatus() const;
		%feature("autodoc", "1");
		Standard_Integer SubordinateStatus() const;
		%feature("autodoc", "1");
		Standard_Integer UseFlag() const;
		%feature("autodoc", "1");
		Standard_Integer HierarchyStatus() const;
		%feature("autodoc", "1");
		Standard_Integer LineWeightNumber() const;
		%feature("autodoc", "1");
		Standard_Real LineWeight() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefType DefColor() const;
		%feature("autodoc", "1");
		Standard_Integer RankColor() const;
		%feature("autodoc", "1");
		Handle_IGESData_ColorEntity Color() const;
		%feature("autodoc", "1");
		Standard_Boolean CResValues(const char * res1, const char * res2) const;
		%feature("autodoc", "1");
		Standard_Boolean HasShortLabel() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ShortLabel() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasSubScriptNumber() const;
		%feature("autodoc", "1");
		Standard_Integer SubScriptNumber() const;
		%feature("autodoc", "1");
		void InitDirFieldEntity(const Standard_Integer fieldnum, const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		void InitTransf(const Handle_IGESData_TransfEntity &ent);
		%feature("autodoc", "1");
		void InitView(const Handle_IGESData_ViewKindEntity &ent);
		%feature("autodoc", "1");
		void InitLineFont(const Handle_IGESData_LineFontEntity &ent, const Standard_Integer rank=0);
		%feature("autodoc", "1");
		void InitLevel(const Handle_IGESData_LevelListEntity &ent, const Standard_Integer val=0);
		%feature("autodoc", "1");
		void InitColor(const Handle_IGESData_ColorEntity &ent, const Standard_Integer rank=0);
		%feature("autodoc", "1");
		void InitStatus(const Standard_Integer blank, const Standard_Integer subordinate, const Standard_Integer useflag, const Standard_Integer hierarchy);
		%feature("autodoc", "1");
		void SetLabel(const Handle_TCollection_HAsciiString &label, const Standard_Integer sub=-0x000000001);
		%feature("autodoc", "1");
		void InitMisc(const Handle_IGESData_IGESEntity &str, const Handle_IGESData_LabelDisplayEntity &lab, const Standard_Integer weightnum);
		%feature("autodoc", "1");
		Standard_Boolean HasOneParent() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity UniqueParent() const;
		%feature("autodoc", "1");
		gp_GTrsf Location() const;
		%feature("autodoc", "1");
		gp_GTrsf VectorLocation() const;
		%feature("autodoc", "1");
		gp_GTrsf CompoundLocation() const;
		%feature("autodoc", "1");
		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString NameValue() const;
		%feature("autodoc", "1");
		Standard_Boolean ArePresentAssociativities() const;
		%feature("autodoc", "1");
		Standard_Integer NbAssociativities() const;
		%feature("autodoc", "1");
		Interface_EntityIterator Associativities() const;
		%feature("autodoc", "1");
		Standard_Integer NbTypedAssociativities(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TypedAssociativity(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		void Associate(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		void Dissociate(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean ArePresentProperties() const;
		%feature("autodoc", "1");
		Standard_Integer NbProperties() const;
		%feature("autodoc", "1");
		Interface_EntityIterator Properties() const;
		%feature("autodoc", "1");
		Standard_Integer NbTypedProperties(const Handle_Standard_Type &atype) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TypedProperty(const Handle_Standard_Type &atype, const Standard_Integer anum=0) const;
		%feature("autodoc", "1");
		void AddProperty(const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		void RemoveProperty(const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		void SetLineWeight(const Standard_Real defw, const Standard_Real maxw, const Standard_Integer gradw);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_IGESEntity {
	Handle_IGESData_IGESEntity GetHandle() {
	return *(Handle_IGESData_IGESEntity*) &$self;
	}
};
%extend IGESData_IGESEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_IGESEntity::~IGESData_IGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};
%extend IGESData_IGESEntity {
	IGESData_IGESEntity () {}
};


%nodefaultctor IGESData_TransfEntity;
class IGESData_TransfEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		virtual		gp_GTrsf Value() const;

};
%extend IGESData_TransfEntity {
	Handle_IGESData_TransfEntity GetHandle() {
	return *(Handle_IGESData_TransfEntity*) &$self;
	}
};
%extend IGESData_TransfEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_TransfEntity::~IGESData_TransfEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_TransfEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_SpecificModule;
class IGESData_SpecificModule : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_SpecificModule {
	Handle_IGESData_SpecificModule GetHandle() {
	return *(Handle_IGESData_SpecificModule*) &$self;
	}
};
%extend IGESData_SpecificModule {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_SpecificModule::~IGESData_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_DefaultSpecific;
class IGESData_DefaultSpecific : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESData_DefaultSpecific();

};
%extend IGESData_DefaultSpecific {
	Handle_IGESData_DefaultSpecific GetHandle() {
	return *(Handle_IGESData_DefaultSpecific*) &$self;
	}
};
%extend IGESData_DefaultSpecific {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_DefaultSpecific::~IGESData_DefaultSpecific %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_DefaultSpecific {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ReadWriteModule;
class IGESData_ReadWriteModule : public Interface_ReaderModule {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Interface_FileReaderData &data, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void Read(const Standard_Integer CN, const Handle_Interface_FileReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_ReadWriteModule {
	Handle_IGESData_ReadWriteModule GetHandle() {
	return *(Handle_IGESData_ReadWriteModule*) &$self;
	}
};
%extend IGESData_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_ReadWriteModule::~IGESData_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESReaderData;
class IGESData_IGESReaderData : public Interface_FileReaderData {
	public:
		%feature("autodoc", "1");
		IGESData_IGESReaderData(const Standard_Integer nbe, const Standard_Integer nbp);
		%feature("autodoc", "1");
		void AddStartLine(const char * aval);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString StartSection() const;
		%feature("autodoc", "1");
		void AddGlobal(const Interface_ParamType atype, const char * aval);
		%feature("autodoc", "1");
		void SetGlobalSection();
		%feature("autodoc", "1");
		const IGESData_GlobalSection & GlobalSection() const;
		%feature("autodoc", "1");
		void SetDirPart(const Standard_Integer num, const Standard_Integer i1, const Standard_Integer i2, const Standard_Integer i3, const Standard_Integer i4, const Standard_Integer i5, const Standard_Integer i6, const Standard_Integer i7, const Standard_Integer i8, const Standard_Integer i9, const Standard_Integer i10, const Standard_Integer i11, const Standard_Integer i12, const Standard_Integer i13, const Standard_Integer i14, const Standard_Integer i15, const Standard_Integer i16, const Standard_Integer i17, const char * res1, const char * res2, const char * label, const char * subs);
		%feature("autodoc", "1");
		const IGESData_DirPart & DirPart(const Standard_Integer num) const;
		%feature("autodoc", "1");
		IGESData_IGESType DirType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer FindNextRecord(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetEntityNumbers();
		%feature("autodoc", "1");
		Handle_Interface_Check GlobalCheck() const;
		%feature("autodoc", "1");
		void SetDefaultLineWeight(const Standard_Real defw);
		%feature("autodoc", "1");
		Standard_Real DefaultLineWeight() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_IGESReaderData {
	Handle_IGESData_IGESReaderData GetHandle() {
	return *(Handle_IGESData_IGESReaderData*) &$self;
	}
};
%extend IGESData_IGESReaderData {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_IGESReaderData::~IGESData_IGESReaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESReaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ToolLocation;
class IGESData_ToolLocation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESData_ToolLocation(const Handle_IGESData_IGESModel &amodel, const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		void Load();
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real prec);
		%feature("autodoc", "1");
		void SetReference(const Handle_IGESData_IGESEntity &parent, const Handle_IGESData_IGESEntity &child);
		%feature("autodoc", "1");
		void SetParentAssoc(const Handle_IGESData_IGESEntity &parent, const Handle_IGESData_IGESEntity &child);
		%feature("autodoc", "1");
		void ResetDependences(const Handle_IGESData_IGESEntity &child);
		%feature("autodoc", "1");
		void SetOwnAsDependent(const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		Standard_Boolean IsTransf(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAssociativity(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasTransf(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		gp_GTrsf ExplicitLocation(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAmbiguous(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasParent(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Parent(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasParentByAssociativity(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		gp_GTrsf ParentLocation(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		gp_GTrsf EffectiveLocation(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean AnalyseLocation(const gp_GTrsf loc, gp_Trsf & result) const;
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertLocation(const Standard_Real prec, const gp_GTrsf loc, gp_Trsf & result, const Standard_Real uni=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_ToolLocation {
	Handle_IGESData_ToolLocation GetHandle() {
	return *(Handle_IGESData_ToolLocation*) &$self;
	}
};
%extend IGESData_ToolLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_ToolLocation::~IGESData_ToolLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ToolLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ColorEntity;
class IGESData_ColorEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESData_ColorEntity();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_ColorEntity {
	Handle_IGESData_ColorEntity GetHandle() {
	return *(Handle_IGESData_ColorEntity*) &$self;
	}
};
%extend IGESData_ColorEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_ColorEntity::~IGESData_ColorEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ColorEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESDumper;
class IGESData_IGESDumper {
	public:
		%feature("autodoc", "1");
		IGESData_IGESDumper(const Handle_IGESData_IGESModel &model, const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		void PrintDNum(const Handle_IGESData_IGESEntity &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintShort(const Handle_IGESData_IGESEntity &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void Dump(const Handle_IGESData_IGESEntity &ent, const Handle_Message_Messenger &S, const Standard_Integer own, const Standard_Integer attached=-0x000000001) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESData_IGESEntity &ent, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESData_IGESDumper::~IGESData_IGESDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData;
class IGESData {
	public:
		%feature("autodoc", "1");
		IGESData();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		Handle_IGESData_Protocol Protocol();

};
%feature("shadow") IGESData::~IGESData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESType;
class IGESData_IGESType {
	public:
		%feature("autodoc", "1");
		IGESData_IGESType();
		%feature("autodoc", "1");
		IGESData_IGESType(const Standard_Integer atype, const Standard_Integer aform);
		%feature("autodoc", "1");
		Standard_Integer Type() const;
		%feature("autodoc", "1");
		Standard_Integer Form() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IGESData_IGESType &another) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const IGESData_IGESType &another) const;
		%feature("autodoc", "1");
		void Nullify();

};
%feature("shadow") IGESData_IGESType::~IGESData_IGESType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ParamReader;
class IGESData_ParamReader {
	public:
		%feature("autodoc", "1");
		IGESData_ParamReader(const Handle_Interface_ParamList &list, const Handle_Interface_Check &ach, const Standard_Integer base=1, const Standard_Integer nbpar=0, const Standard_Integer num=0);
		%feature("autodoc", "1");
		Standard_Integer EntityNumber() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer CurrentNumber() const;
		%feature("autodoc", "1");
		void SetCurrentNumber(const Standard_Integer num);
		%feature("autodoc", "1");
		IGESData_ReadStage Stage() const;
		%feature("autodoc", "1");
		void NextStage();
		%feature("autodoc", "1");
		void EndAll();
		%feature("autodoc", "1");
		Standard_Integer NbParams() const;
		%feature("autodoc", "1");
		Interface_ParamType ParamType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		char * const ParamValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParamDefined(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParamEntity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer ParamNumber(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ParamEntity(const Handle_IGESData_IGESReaderData &IR, const Standard_Integer num);
		%feature("autodoc", "1");
		IGESData_ParamCursor Current() const;
		%feature("autodoc", "1");
		IGESData_ParamCursor CurrentList(const Standard_Integer nb, const Standard_Integer size=1) const;
		%feature("autodoc", "1");
		Standard_Boolean DefinedElseSkip();
		%feature("autodoc","ReadInteger(const PC) -> Standard_Integer");

		Standard_Boolean ReadInteger(const IGESData_ParamCursor &PC, Standard_Integer &OutValue);
		%feature("autodoc","ReadInteger(const PC, Standard_CString mess) -> Standard_Integer");

		Standard_Boolean ReadInteger(const IGESData_ParamCursor &PC, const char * mess, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ReadBoolean(const IGESData_ParamCursor &PC, const Message_Msg &amsg, Standard_Boolean & val, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadBoolean(const IGESData_ParamCursor &PC, const char * mess, Standard_Boolean & val, const Standard_Boolean exact=1);
		%feature("autodoc","ReadReal(const PC) -> Standard_Real");

		Standard_Boolean ReadReal(const IGESData_ParamCursor &PC, Standard_Real &OutValue);
		%feature("autodoc","ReadReal(const PC, Standard_CString mess) -> Standard_Real");

		Standard_Boolean ReadReal(const IGESData_ParamCursor &PC, const char * mess, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ReadXY(const IGESData_ParamCursor &PC, Message_Msg & amsg, gp_XY & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadXY(const IGESData_ParamCursor &PC, const char * mess, gp_XY & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadXYZ(const IGESData_ParamCursor &PC, Message_Msg & amsg, gp_XYZ & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadXYZ(const IGESData_ParamCursor &PC, const char * mess, gp_XYZ & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadText(const IGESData_ParamCursor &PC, const Message_Msg &amsg, Handle_TCollection_HAsciiString & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadText(const IGESData_ParamCursor &PC, const char * mess, Handle_TCollection_HAsciiString & val);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, IGESData_Status & aStatus, Handle_IGESData_IGESEntity & val, const Standard_Boolean canbenul=0);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, const char * mess, Handle_IGESData_IGESEntity & val, const Standard_Boolean canbenul=0);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, IGESData_Status & aStatus, const Handle_Standard_Type &type, Handle_IGESData_IGESEntity & val, const Standard_Boolean canbenul=0);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntity(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, const char * mess, const Handle_Standard_Type &type, Handle_IGESData_IGESEntity & val, const Standard_Boolean canbenul=0);
		%feature("autodoc", "1");
		Standard_Boolean ReadInts(const IGESData_ParamCursor &PC, const Message_Msg &amsg, Handle_TColStd_HArray1OfInteger & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadInts(const IGESData_ParamCursor &PC, const char * mess, Handle_TColStd_HArray1OfInteger & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadReals(const IGESData_ParamCursor &PC, Message_Msg & amsg, Handle_TColStd_HArray1OfReal & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadReals(const IGESData_ParamCursor &PC, const char * mess, Handle_TColStd_HArray1OfReal & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadTexts(const IGESData_ParamCursor &PC, const Message_Msg &amsg, Handle_Interface_HArray1OfHAsciiString & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadTexts(const IGESData_ParamCursor &PC, const char * mess, Handle_Interface_HArray1OfHAsciiString & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadEnts(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, const Message_Msg &amsg, Handle_IGESData_HArray1OfIGESEntity & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadEnts(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, const char * mess, Handle_IGESData_HArray1OfIGESEntity & val, const Standard_Integer index=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntList(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, Message_Msg & amsg, Interface_EntityList & val, const Standard_Boolean ord=1);
		%feature("autodoc", "1");
		Standard_Boolean ReadEntList(const Handle_IGESData_IGESReaderData &IR, const IGESData_ParamCursor &PC, const char * mess, Interface_EntityList & val, const Standard_Boolean ord=1);
		%feature("autodoc","ReadingReal(Standard_Integer num) -> Standard_Real");

		Standard_Boolean ReadingReal(const Standard_Integer num, Standard_Real &OutValue);
		%feature("autodoc","ReadingReal(Standard_Integer num, Standard_CString mess) -> Standard_Real");

		Standard_Boolean ReadingReal(const Standard_Integer num, const char * mess, Standard_Real &OutValue);
		%feature("autodoc","ReadingEntityNumber(Standard_Integer num) -> Standard_Integer");

		Standard_Boolean ReadingEntityNumber(const Standard_Integer num, Standard_Integer &OutValue);
		%feature("autodoc","ReadingEntityNumber(Standard_Integer num, Standard_CString mess) -> Standard_Integer");

		Standard_Boolean ReadingEntityNumber(const Standard_Integer num, const char * mess, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void SendFail(const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendWarning(const Message_Msg &amsg);
		%feature("autodoc", "1");
		void AddFail(const char * afail, const char * bfail="");
		%feature("autodoc", "1");
		void AddFail(const Handle_TCollection_HAsciiString &af, const Handle_TCollection_HAsciiString &bf);
		%feature("autodoc", "1");
		void AddWarning(const char * awarn, const char * bwarn="");
		%feature("autodoc", "1");
		void AddWarning(const Handle_TCollection_HAsciiString &aw, const Handle_TCollection_HAsciiString &bw);
		%feature("autodoc", "1");
		void Mend(const char * pref="");
		%feature("autodoc", "1");
		Standard_Boolean HasFailed() const;
		%feature("autodoc", "1");
		const Handle_Interface_Check & Check() const;
		%feature("autodoc", "1");
		Handle_Interface_Check & CCheck();
		%feature("autodoc", "1");
		Standard_Boolean IsCheckEmpty() const;

};
%feature("shadow") IGESData_ParamReader::~IGESData_ParamReader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ParamReader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_GlobalNodeOfSpecificLib;
class IGESData_GlobalNodeOfSpecificLib : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		IGESData_GlobalNodeOfSpecificLib();
		%feature("autodoc", "1");
		void Add(const Handle_IGESData_SpecificModule &amodule, const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		const Handle_IGESData_SpecificModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_IGESData_GlobalNodeOfSpecificLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_GlobalNodeOfSpecificLib {
	Handle_IGESData_GlobalNodeOfSpecificLib GetHandle() {
	return *(Handle_IGESData_GlobalNodeOfSpecificLib*) &$self;
	}
};
%extend IGESData_GlobalNodeOfSpecificLib {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_GlobalNodeOfSpecificLib::~IGESData_GlobalNodeOfSpecificLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_GlobalNodeOfSpecificLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_Array1OfIGESEntity;
class IGESData_Array1OfIGESEntity {
	public:
		%feature("autodoc", "1");
		IGESData_Array1OfIGESEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESData_Array1OfIGESEntity(const Handle_IGESData_IGESEntity &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESData_Array1OfIGESEntity & Assign(const IGESData_Array1OfIGESEntity &Other);
		%feature("autodoc", "1");
		const IGESData_Array1OfIGESEntity & operator=(const IGESData_Array1OfIGESEntity &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_IGESEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_IGESEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESData_IGESEntity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESData_Array1OfIGESEntity::~IGESData_Array1OfIGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_Array1OfIGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ParamCursor;
class IGESData_ParamCursor {
	public:
		%feature("autodoc", "1");
		IGESData_ParamCursor(const Standard_Integer num);
		%feature("autodoc", "1");
		IGESData_ParamCursor(const Standard_Integer num, const Standard_Integer nb, const Standard_Integer size=1);
		%feature("autodoc", "1");
		void SetTerm(const Standard_Integer size, const Standard_Boolean autoadv=1);
		%feature("autodoc", "1");
		void SetOne(const Standard_Boolean autoadv=1);
		%feature("autodoc", "1");
		void SetXY(const Standard_Boolean autoadv=1);
		%feature("autodoc", "1");
		void SetXYZ(const Standard_Boolean autoadv=1);
		%feature("autodoc", "1");
		void SetAdvance(const Standard_Boolean advance);
		%feature("autodoc", "1");
		Standard_Integer Start() const;
		%feature("autodoc", "1");
		Standard_Integer Limit() const;
		%feature("autodoc", "1");
		Standard_Integer Count() const;
		%feature("autodoc", "1");
		Standard_Integer ItemSize() const;
		%feature("autodoc", "1");
		Standard_Integer TermSize() const;
		%feature("autodoc", "1");
		Standard_Integer Offset() const;
		%feature("autodoc", "1");
		Standard_Boolean Advance() const;

};
%feature("shadow") IGESData_ParamCursor::~IGESData_ParamCursor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ParamCursor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_UndefinedEntity;
class IGESData_UndefinedEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESData_UndefinedEntity();
		%feature("autodoc", "1");
		Handle_Interface_UndefinedContent UndefinedContent() const;
		%feature("autodoc", "1");
		Handle_Interface_UndefinedContent ChangeableContent();
		%feature("autodoc", "1");
		void SetNewContent(const Handle_Interface_UndefinedContent &cont);
		%feature("autodoc", "1");
		Standard_Boolean IsOKDirPart() const;
		%feature("autodoc", "1");
		Standard_Integer DirStatus() const;
		%feature("autodoc", "1");
		void SetOKDirPart();
		%feature("autodoc", "1");
		virtual		IGESData_DefType DefLineFont() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefList DefLevel() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefList DefView() const;
		%feature("autodoc", "1");
		virtual		IGESData_DefType DefColor() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasSubScriptNumber() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ReadDir(const Handle_IGESData_IGESReaderData &IR, IGESData_DirPart & DP, Handle_Interface_Check & ach);
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR);
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_UndefinedEntity {
	Handle_IGESData_UndefinedEntity GetHandle() {
	return *(Handle_IGESData_UndefinedEntity*) &$self;
	}
};
%extend IGESData_UndefinedEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_UndefinedEntity::~IGESData_UndefinedEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_UndefinedEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_Array1OfDirPart;
class IGESData_Array1OfDirPart {
	public:
		%feature("autodoc", "1");
		IGESData_Array1OfDirPart(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESData_Array1OfDirPart(const IGESData_DirPart &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const IGESData_DirPart &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESData_Array1OfDirPart & Assign(const IGESData_Array1OfDirPart &Other);
		%feature("autodoc", "1");
		const IGESData_Array1OfDirPart & operator=(const IGESData_Array1OfDirPart &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IGESData_DirPart &Value);
		%feature("autodoc", "1");
		const IGESData_DirPart & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IGESData_DirPart & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		IGESData_DirPart & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IGESData_DirPart & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESData_Array1OfDirPart::~IGESData_Array1OfDirPart %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_Array1OfDirPart {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_HArray1OfIGESEntity;
class IGESData_HArray1OfIGESEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESData_HArray1OfIGESEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESData_HArray1OfIGESEntity(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESData_IGESEntity &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_IGESEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_IGESEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESData_Array1OfIGESEntity & Array1() const;
		%feature("autodoc", "1");
		IGESData_Array1OfIGESEntity & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_HArray1OfIGESEntity {
	Handle_IGESData_HArray1OfIGESEntity GetHandle() {
	return *(Handle_IGESData_HArray1OfIGESEntity*) &$self;
	}
};
%extend IGESData_HArray1OfIGESEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_HArray1OfIGESEntity::~IGESData_HArray1OfIGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_HArray1OfIGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_FileProtocol;
class IGESData_FileProtocol : public IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		IGESData_FileProtocol();
		%feature("autodoc", "1");
		void Add(const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbResources() const;
		%feature("autodoc", "1");
		virtual		Handle_Interface_Protocol Resource(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_FileProtocol {
	Handle_IGESData_FileProtocol GetHandle() {
	return *(Handle_IGESData_FileProtocol*) &$self;
	}
};
%extend IGESData_FileProtocol {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_FileProtocol::~IGESData_FileProtocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_FileProtocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_WriterLib;
class IGESData_WriterLib {
	public:
		%feature("autodoc", "1");
		static		void SetGlobal(const Handle_IGESData_ReadWriteModule &amodule, const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		IGESData_WriterLib(const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		IGESData_WriterLib();
		%feature("autodoc", "1");
		void AddProtocol(const Handle_Standard_Transient &aprotocol);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetComplete();
		%feature("autodoc","Select(const obj) -> Standard_Integer");

		Standard_Boolean Select(const Handle_IGESData_IGESEntity &obj, Handle_IGESData_ReadWriteModule & module, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_IGESData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;

};
%feature("shadow") IGESData_WriterLib::~IGESData_WriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_WriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_LevelListEntity;
class IGESData_LevelListEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbLevelNumbers() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LevelNumber(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean HasLevelNumber(const Standard_Integer level) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_LevelListEntity {
	Handle_IGESData_LevelListEntity GetHandle() {
	return *(Handle_IGESData_LevelListEntity*) &$self;
	}
};
%extend IGESData_LevelListEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_LevelListEntity::~IGESData_LevelListEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_LevelListEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_NodeOfSpecificLib;
class IGESData_NodeOfSpecificLib : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESData_NodeOfSpecificLib();
		%feature("autodoc", "1");
		void AddNode(const Handle_IGESData_GlobalNodeOfSpecificLib &anode);
		%feature("autodoc", "1");
		const Handle_IGESData_SpecificModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_IGESData_NodeOfSpecificLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_NodeOfSpecificLib {
	Handle_IGESData_NodeOfSpecificLib GetHandle() {
	return *(Handle_IGESData_NodeOfSpecificLib*) &$self;
	}
};
%extend IGESData_NodeOfSpecificLib {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_NodeOfSpecificLib::~IGESData_NodeOfSpecificLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_NodeOfSpecificLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_NameEntity;
class IGESData_NameEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_NameEntity {
	Handle_IGESData_NameEntity GetHandle() {
	return *(Handle_IGESData_NameEntity*) &$self;
	}
};
%extend IGESData_NameEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_NameEntity::~IGESData_NameEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_NameEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_SpecificLib;
class IGESData_SpecificLib {
	public:
		%feature("autodoc", "1");
		static		void SetGlobal(const Handle_IGESData_SpecificModule &amodule, const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		IGESData_SpecificLib(const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		IGESData_SpecificLib();
		%feature("autodoc", "1");
		void AddProtocol(const Handle_Standard_Transient &aprotocol);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetComplete();
		%feature("autodoc","Select(const obj) -> Standard_Integer");

		Standard_Boolean Select(const Handle_IGESData_IGESEntity &obj, Handle_IGESData_SpecificModule & module, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_IGESData_SpecificModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;

};
%feature("shadow") IGESData_SpecificLib::~IGESData_SpecificLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_SpecificLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_FreeFormatEntity;
class IGESData_FreeFormatEntity : public IGESData_UndefinedEntity {
	public:
		%feature("autodoc", "1");
		IGESData_FreeFormatEntity();
		%feature("autodoc", "1");
		void SetTypeNumber(const Standard_Integer typenum);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer formnum);
		%feature("autodoc", "1");
		Standard_Integer NbParams() const;
		%feature("autodoc", "1");
		Standard_Boolean ParamData(const Standard_Integer num, Interface_ParamType & ptype, Handle_IGESData_IGESEntity & ent, Handle_TCollection_HAsciiString & val) const;
		%feature("autodoc", "1");
		Interface_ParamType ParamType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParamEntity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ParamEntity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNegativePointer(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ParamValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger NegativePointers() const;
		%feature("autodoc", "1");
		void AddLiteral(const Interface_ParamType ptype, const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void AddLiteral(const Interface_ParamType ptype, const char * val);
		%feature("autodoc", "1");
		void AddEntity(const Interface_ParamType ptype, const Handle_IGESData_IGESEntity &ent, const Standard_Boolean negative=0);
		%feature("autodoc", "1");
		void AddEntities(const Handle_IGESData_HArray1OfIGESEntity &ents);
		%feature("autodoc", "1");
		void AddNegativePointers(const Handle_TColStd_HSequenceOfInteger &list);
		%feature("autodoc", "1");
		void ClearNegativePointers();
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_FreeFormatEntity {
	Handle_IGESData_FreeFormatEntity GetHandle() {
	return *(Handle_IGESData_FreeFormatEntity*) &$self;
	}
};
%extend IGESData_FreeFormatEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_FreeFormatEntity::~IGESData_FreeFormatEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_FreeFormatEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_SingleParentEntity;
class IGESData_SingleParentEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity SingleParent() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity Child(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_SingleParentEntity {
	Handle_IGESData_SingleParentEntity GetHandle() {
	return *(Handle_IGESData_SingleParentEntity*) &$self;
	}
};
%extend IGESData_SingleParentEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_SingleParentEntity::~IGESData_SingleParentEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_SingleParentEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_GeneralModule;
class IGESData_GeneralModule : public Interface_GeneralModule {
	public:
		%feature("autodoc", "1");
		virtual		void FillSharedCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void ListImpliedCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void OwnImpliedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		void CheckCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanCopy(const Standard_Integer CN, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void CopyCase(const Standard_Integer CN, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void RenewImpliedCase(const Standard_Integer CN, const Handle_Standard_Transient &entfrom, const Handle_Standard_Transient &entto, const Interface_CopyTool &TC) const;
		%feature("autodoc", "1");
		virtual		void OwnRenewCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, const Interface_CopyTool &TC) const;
		%feature("autodoc", "1");
		virtual		void WhenDeleteCase(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Standard_Boolean dispatched) const;
		%feature("autodoc", "1");
		virtual		void OwnDeleteCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Name(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_GeneralModule {
	Handle_IGESData_GeneralModule GetHandle() {
	return *(Handle_IGESData_GeneralModule*) &$self;
	}
};
%extend IGESData_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_GeneralModule::~IGESData_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_LabelDisplayEntity;
class IGESData_LabelDisplayEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESData_LabelDisplayEntity();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_LabelDisplayEntity {
	Handle_IGESData_LabelDisplayEntity GetHandle() {
	return *(Handle_IGESData_LabelDisplayEntity*) &$self;
	}
};
%extend IGESData_LabelDisplayEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_LabelDisplayEntity::~IGESData_LabelDisplayEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_LabelDisplayEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_FileRecognizer;
class IGESData_FileRecognizer : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Evaluate(const IGESData_IGESType &akey, Handle_IGESData_IGESEntity & res);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Result() const;
		%feature("autodoc", "1");
		void Add(const Handle_IGESData_FileRecognizer &reco);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_FileRecognizer {
	Handle_IGESData_FileRecognizer GetHandle() {
	return *(Handle_IGESData_FileRecognizer*) &$self;
	}
};
%extend IGESData_FileRecognizer {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_FileRecognizer::~IGESData_FileRecognizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_FileRecognizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_NodeOfWriterLib;
class IGESData_NodeOfWriterLib : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESData_NodeOfWriterLib();
		%feature("autodoc", "1");
		void AddNode(const Handle_IGESData_GlobalNodeOfWriterLib &anode);
		%feature("autodoc", "1");
		const Handle_IGESData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_IGESData_NodeOfWriterLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_NodeOfWriterLib {
	Handle_IGESData_NodeOfWriterLib GetHandle() {
	return *(Handle_IGESData_NodeOfWriterLib*) &$self;
	}
};
%extend IGESData_NodeOfWriterLib {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_NodeOfWriterLib::~IGESData_NodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_NodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_DefSwitch;
class IGESData_DefSwitch {
	public:
		%feature("autodoc", "1");
		IGESData_DefSwitch();
		%feature("autodoc", "1");
		void SetVoid();
		%feature("autodoc", "1");
		void SetReference();
		%feature("autodoc", "1");
		void SetRank(const Standard_Integer val);
		%feature("autodoc", "1");
		IGESData_DefType DefType() const;
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetIGESData_DefSwitchtheval() const;
		%feature("autodoc", "1");
		void _CSFDB_SetIGESData_DefSwitchtheval(const Standard_Integer p);

};
%feature("shadow") IGESData_DefSwitch::~IGESData_DefSwitch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_DefSwitch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESModel;
class IGESData_IGESModel : public Interface_InterfaceModel {
	public:
		%feature("autodoc", "1");
		IGESData_IGESModel();
		%feature("autodoc", "1");
		virtual		void ClearHeader();
		%feature("autodoc", "1");
		virtual		void DumpHeader(const Handle_Message_Messenger &S, const Standard_Integer level=0) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString StartSection() const;
		%feature("autodoc", "1");
		Standard_Integer NbStartLines() const;
		%feature("autodoc", "1");
		char * StartLine(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void ClearStartSection();
		%feature("autodoc", "1");
		void SetStartSection(const Handle_TColStd_HSequenceOfHAsciiString &list, const Standard_Boolean copy=1);
		%feature("autodoc", "1");
		void AddStartLine(const char * line, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		const IGESData_GlobalSection & GlobalSection() const;
		%feature("autodoc", "1");
		void SetGlobalSection(const IGESData_GlobalSection &header);
		%feature("autodoc", "1");
		Standard_Boolean ApplyStatic(const char * param="");
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer DNum(const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void GetFromAnother(const Handle_Interface_InterfaceModel &other);
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewEmptyModel() const;
		%feature("autodoc", "1");
		virtual		void VerifyCheck(Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void SetLineWeights(const Standard_Real defw);
		%feature("autodoc", "1");
		virtual		void ClearLabels();
		%feature("autodoc", "1");
		virtual		void PrintLabel(const Handle_Standard_Transient &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		void PrintToLog(const Handle_Standard_Transient &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintInfo(const Handle_Standard_Transient &ent, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringLabel(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_IGESModel {
	Handle_IGESData_IGESModel GetHandle() {
	return *(Handle_IGESData_IGESModel*) &$self;
	}
};
%extend IGESData_IGESModel {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_IGESModel::~IGESData_IGESModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_ViewKindEntity;
class IGESData_ViewKindEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSingle() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbViews() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_ViewKindEntity ViewItem(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_ViewKindEntity {
	Handle_IGESData_ViewKindEntity GetHandle() {
	return *(Handle_IGESData_ViewKindEntity*) &$self;
	}
};
%extend IGESData_ViewKindEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_ViewKindEntity::~IGESData_ViewKindEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_ViewKindEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_DefaultGeneral;
class IGESData_DefaultGeneral : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESData_DefaultGeneral();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_DefaultGeneral {
	Handle_IGESData_DefaultGeneral GetHandle() {
	return *(Handle_IGESData_DefaultGeneral*) &$self;
	}
};
%extend IGESData_DefaultGeneral {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_DefaultGeneral::~IGESData_DefaultGeneral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_DefaultGeneral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_DirChecker;
class IGESData_DirChecker {
	public:
		%feature("autodoc", "1");
		IGESData_DirChecker();
		%feature("autodoc", "1");
		IGESData_DirChecker(const Standard_Integer atype);
		%feature("autodoc", "1");
		IGESData_DirChecker(const Standard_Integer atype, const Standard_Integer aform);
		%feature("autodoc", "1");
		IGESData_DirChecker(const Standard_Integer atype, const Standard_Integer aform1, const Standard_Integer aform2);
		%feature("autodoc", "1");
		Standard_Boolean IsSet() const;
		%feature("autodoc", "1");
		void SetDefault();
		%feature("autodoc", "1");
		void Structure(const IGESData_DefType crit);
		%feature("autodoc", "1");
		void LineFont(const IGESData_DefType crit);
		%feature("autodoc", "1");
		void LineWeight(const IGESData_DefType crit);
		%feature("autodoc", "1");
		void Color(const IGESData_DefType crit);
		%feature("autodoc", "1");
		void GraphicsIgnored(const Standard_Integer hierarchy=-0x000000001);
		%feature("autodoc", "1");
		void BlankStatusIgnored();
		%feature("autodoc", "1");
		void BlankStatusRequired(const Standard_Integer val);
		%feature("autodoc", "1");
		void SubordinateStatusIgnored();
		%feature("autodoc", "1");
		void SubordinateStatusRequired(const Standard_Integer val);
		%feature("autodoc", "1");
		void UseFlagIgnored();
		%feature("autodoc", "1");
		void UseFlagRequired(const Standard_Integer val);
		%feature("autodoc", "1");
		void HierarchyStatusIgnored();
		%feature("autodoc", "1");
		void HierarchyStatusRequired(const Standard_Integer val);
		%feature("autodoc", "1");
		void Check(Handle_Interface_Check & ach, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		void CheckTypeAndForm(Handle_Interface_Check & ach, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean Correct(const Handle_IGESData_IGESEntity &ent) const;

};
%feature("shadow") IGESData_DirChecker::~IGESData_DirChecker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_DirChecker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_LineFontEntity;
class IGESData_LineFontEntity : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESData_LineFontEntity();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_LineFontEntity {
	Handle_IGESData_LineFontEntity GetHandle() {
	return *(Handle_IGESData_LineFontEntity*) &$self;
	}
};
%extend IGESData_LineFontEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_LineFontEntity::~IGESData_LineFontEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_LineFontEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_GlobalSection;
class IGESData_GlobalSection {
	public:
		%feature("autodoc", "1");
		IGESData_GlobalSection();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_ParamSet &params, Handle_Interface_Check & ach);
		%feature("autodoc", "1");
		void CopyRefs();
		%feature("autodoc", "1");
		Handle_Interface_ParamSet Params() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TranslatedFromHollerith(const Handle_TCollection_HAsciiString &astr) const;
		%feature("autodoc", "1");
		Standard_Character Separator() const;
		%feature("autodoc", "1");
		Standard_Character EndMark() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString SendName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString SystemId() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString InterfaceVersion() const;
		%feature("autodoc", "1");
		Standard_Integer IntegerBits() const;
		%feature("autodoc", "1");
		Standard_Integer MaxPower10Single() const;
		%feature("autodoc", "1");
		Standard_Integer MaxDigitsSingle() const;
		%feature("autodoc", "1");
		Standard_Integer MaxPower10Double() const;
		%feature("autodoc", "1");
		Standard_Integer MaxDigitsDouble() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReceiveName() const;
		%feature("autodoc", "1");
		Standard_Real Scale() const;
		%feature("autodoc", "1");
		Standard_Integer UnitFlag() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString UnitName() const;
		%feature("autodoc", "1");
		Standard_Integer LineWeightGrad() const;
		%feature("autodoc", "1");
		Standard_Real MaxLineWeight() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Date() const;
		%feature("autodoc", "1");
		Standard_Real Resolution() const;
		%feature("autodoc", "1");
		Standard_Real MaxCoord() const;
		%feature("autodoc", "1");
		Standard_Boolean HasMaxCoord() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AuthorName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString CompanyName() const;
		%feature("autodoc", "1");
		Standard_Integer IGESVersion() const;
		%feature("autodoc", "1");
		Standard_Integer DraftingStandard() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString LastChangeDate() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastChangeDate() const;
		%feature("autodoc", "1");
		void SetLastChangeDate();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationProtocol() const;
		%feature("autodoc", "1");
		Standard_Boolean HasApplicationProtocol() const;
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString NewDateString(const Standard_Integer year, const Standard_Integer month, const Standard_Integer day, const Standard_Integer hour, const Standard_Integer minut, const Standard_Integer second, const Standard_Integer mode=-0x000000001);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString NewDateString(const Handle_TCollection_HAsciiString &date, const Standard_Integer mode=1);
		%feature("autodoc", "1");
		Standard_Real UnitValue() const;
		%feature("autodoc", "1");
		void SetSeparator(const Standard_Character val);
		%feature("autodoc", "1");
		void SetEndMark(const Standard_Character val);
		%feature("autodoc", "1");
		void SetSendName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetFileName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetSystemId(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetInterfaceVersion(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetIntegerBits(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetMaxPower10Single(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetMaxDigitsSingle(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetMaxPower10Double(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetMaxDigitsDouble(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetReceiveName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetScale(const Standard_Real val);
		%feature("autodoc", "1");
		void SetUnitFlag(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetUnitName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetLineWeightGrad(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetMaxLineWeight(const Standard_Real val);
		%feature("autodoc", "1");
		void SetDate(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetResolution(const Standard_Real val);
		%feature("autodoc", "1");
		void SetMaxCoord(const Standard_Real val=0.0);
		%feature("autodoc", "1");
		void MaxMaxCoord(const Standard_Real val=0.0);
		%feature("autodoc", "1");
		void MaxMaxCoords(const gp_XYZ xyz);
		%feature("autodoc", "1");
		void SetAuthorName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetCompanyName(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetIGESVersion(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetDraftingStandard(const Standard_Integer val);
		%feature("autodoc", "1");
		void SetLastChangeDate(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void SetApplicationProtocol(const Handle_TCollection_HAsciiString &val);

};
%feature("shadow") IGESData_GlobalSection::~IGESData_GlobalSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_GlobalSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_GlobalNodeOfWriterLib;
class IGESData_GlobalNodeOfWriterLib : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		IGESData_GlobalNodeOfWriterLib();
		%feature("autodoc", "1");
		void Add(const Handle_IGESData_ReadWriteModule &amodule, const Handle_IGESData_Protocol &aprotocol);
		%feature("autodoc", "1");
		const Handle_IGESData_ReadWriteModule & Module() const;
		%feature("autodoc", "1");
		const Handle_IGESData_Protocol & Protocol() const;
		%feature("autodoc", "1");
		const Handle_IGESData_GlobalNodeOfWriterLib & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESData_GlobalNodeOfWriterLib {
	Handle_IGESData_GlobalNodeOfWriterLib GetHandle() {
	return *(Handle_IGESData_GlobalNodeOfWriterLib*) &$self;
	}
};
%extend IGESData_GlobalNodeOfWriterLib {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") IGESData_GlobalNodeOfWriterLib::~IGESData_GlobalNodeOfWriterLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_GlobalNodeOfWriterLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_BasicEditor;
class IGESData_BasicEditor {
	public:
		%feature("autodoc", "1");
		IGESData_BasicEditor(const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		IGESData_BasicEditor(const Handle_IGESData_IGESModel &model, const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel Model() const;
		%feature("autodoc", "1");
		Standard_Boolean SetUnitFlag(const Standard_Integer flag);
		%feature("autodoc", "1");
		Standard_Boolean SetUnitValue(const Standard_Real val);
		%feature("autodoc", "1");
		Standard_Boolean SetUnitName(const char * name);
		%feature("autodoc", "1");
		void ApplyUnit(const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		void ComputeStatus();
		%feature("autodoc", "1");
		Standard_Boolean AutoCorrect(const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		Standard_Integer AutoCorrectModel();
		%feature("autodoc", "1");
		static		Standard_Integer UnitNameFlag(const char * name);
		%feature("autodoc", "1");
		static		Standard_Real UnitFlagValue(const Standard_Integer flag);
		%feature("autodoc", "1");
		static		char * UnitFlagName(const Standard_Integer flag);
		%feature("autodoc", "1");
		static		char * IGESVersionName(const Standard_Integer flag);
		%feature("autodoc", "1");
		static		Standard_Integer IGESVersionMax();
		%feature("autodoc", "1");
		static		char * DraftingName(const Standard_Integer flag);
		%feature("autodoc", "1");
		static		Standard_Integer DraftingMax();

};
%feature("shadow") IGESData_BasicEditor::~IGESData_BasicEditor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_BasicEditor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_DirPart;
class IGESData_DirPart {
	public:
		%feature("autodoc", "1");
		IGESData_DirPart();
		%feature("autodoc", "1");
		void Init(const Standard_Integer i1, const Standard_Integer i2, const Standard_Integer i3, const Standard_Integer i4, const Standard_Integer i5, const Standard_Integer i6, const Standard_Integer i7, const Standard_Integer i8, const Standard_Integer i9, const Standard_Integer i19, const Standard_Integer i11, const Standard_Integer i12, const Standard_Integer i13, const Standard_Integer i14, const Standard_Integer i15, const Standard_Integer i16, const Standard_Integer i17, const char * res1, const char * res2, const char * label, const char * subscript);
		%feature("autodoc","Values(Standard_CString res1, Standard_CString res2, Standard_CString label, Standard_CString subscript) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void Values(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, const char * res1, const char * res2, const char * label, const char * subscript) const;
		%feature("autodoc", "1");
		IGESData_IGESType Type() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer Get_CSFDB_GetIGESData_DirPartthevals(const Standard_Integer i1) {
				return (Standard_Integer) $self->_CSFDB_GetIGESData_DirPartthevals(i1);
				}
		};
		%feature("autodoc","1");
		%extend {
				void Set_CSFDB_GetIGESData_DirPartthevals(Standard_Integer value ,const Standard_Integer i1) {
				$self->_CSFDB_GetIGESData_DirPartthevals(i1)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Character & _CSFDB_GetIGESData_DirParttheres1(const Standard_Integer i1);
		%feature("autodoc", "1");
		Standard_Character & _CSFDB_GetIGESData_DirParttheres2(const Standard_Integer i1);
		%feature("autodoc", "1");
		Standard_Character & _CSFDB_GetIGESData_DirPartthelabl(const Standard_Integer i1);
		%feature("autodoc", "1");
		Standard_Character & _CSFDB_GetIGESData_DirPartthesubs(const Standard_Integer i1);

};
%feature("shadow") IGESData_DirPart::~IGESData_DirPart %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_DirPart {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESWriter;
class IGESData_IGESWriter {
	public:
		%feature("autodoc", "1");
		IGESData_IGESWriter(const Handle_IGESData_IGESModel &amodel);
		%feature("autodoc", "1");
		IGESData_IGESWriter();
		%feature("autodoc", "1");
		IGESData_IGESWriter(const IGESData_IGESWriter &other);
		%feature("autodoc", "1");
		Interface_FloatWriter & FloatWriter();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetWriteMode() {
				return (Standard_Integer) $self->WriteMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetWriteMode(Standard_Integer value ) {
				$self->WriteMode()=value;
				}
		};
		%feature("autodoc", "1");
		void SendStartLine(const char * startline);
		%feature("autodoc", "1");
		void SendModel(const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		void SectionS();
		%feature("autodoc", "1");
		void SectionG(const IGESData_GlobalSection &header);
		%feature("autodoc", "1");
		void SectionsDP();
		%feature("autodoc", "1");
		void SectionT();
		%feature("autodoc", "1");
		void DirPart(const Handle_IGESData_IGESEntity &anent);
		%feature("autodoc", "1");
		void OwnParams(const Handle_IGESData_IGESEntity &anent);
		%feature("autodoc", "1");
		void Associativities(const Handle_IGESData_IGESEntity &anent);
		%feature("autodoc", "1");
		void Properties(const Handle_IGESData_IGESEntity &anent);
		%feature("autodoc", "1");
		void EndEntity();
		%feature("autodoc", "1");
		void SendVoid();
		%feature("autodoc", "1");
		void Send(const Standard_Integer val);
		%feature("autodoc", "1");
		void SendBoolean(const Standard_Boolean val);
		%feature("autodoc", "1");
		void Send(const Standard_Real val);
		%feature("autodoc", "1");
		void Send(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void Send(const Handle_IGESData_IGESEntity &val, const Standard_Boolean negative=0);
		%feature("autodoc", "1");
		void SendString(const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void Send(const gp_XY val);
		%feature("autodoc", "1");
		void Send(const gp_XYZ val);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString SectionStrings(const Standard_Integer numsec) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") IGESData_IGESWriter::~IGESData_IGESWriter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESWriter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESData_IGESReaderTool;
class IGESData_IGESReaderTool : public Interface_FileReaderTool {
	public:
		%feature("autodoc", "1");
		IGESData_IGESReaderTool(const Handle_IGESData_IGESReaderData &reader, const Handle_IGESData_Protocol &protocol);
		%feature("autodoc", "1");
		void Prepare(const Handle_IGESData_FileRecognizer &reco);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Standard_Integer num, Handle_Interface_Check & ach, Handle_Standard_Transient & ent);
		%feature("autodoc", "1");
		virtual		void BeginRead(const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AnalyseRecord(const Standard_Integer num, const Handle_Standard_Transient &anent, Handle_Interface_Check & acheck);
		%feature("autodoc", "1");
		virtual		void EndRead(const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		void ReadDir(const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, const IGESData_DirPart &DP, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void ReadProps(const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void ReadAssocs(const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;

};
%feature("shadow") IGESData_IGESReaderTool::~IGESData_IGESReaderTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESData_IGESReaderTool {
	void _kill_pointed() {
		delete $self;
	}
};
