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

%module MDataStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MDataStd_renames.i


%include MDataStd_required_python_modules.i


%include MDataStd_dependencies.i


%include MDataStd_headers.i




%nodefaultctor Handle_MDataStd_DirectoryRetrievalDriver;
class Handle_MDataStd_DirectoryRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver(const Handle_MDataStd_DirectoryRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver(const MDataStd_DirectoryRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver & operator=(const Handle_MDataStd_DirectoryRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver & operator=(const MDataStd_DirectoryRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_DirectoryRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_DirectoryRetrievalDriver {
	MDataStd_DirectoryRetrievalDriver* GetObject() {
	return (MDataStd_DirectoryRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_DirectoryRetrievalDriver::~Handle_MDataStd_DirectoryRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_DirectoryRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealArrayRetrievalDriver_1;
class Handle_MDataStd_RealArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1(const Handle_MDataStd_RealArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1(const MDataStd_RealArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1 & operator=(const Handle_MDataStd_RealArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1 & operator=(const MDataStd_RealArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealArrayRetrievalDriver_1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayRetrievalDriver_1 {
	MDataStd_RealArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_RealArrayRetrievalDriver_1*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealArrayRetrievalDriver_1::~Handle_MDataStd_RealArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ByteArrayRetrievalDriver_1;
class Handle_MDataStd_ByteArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1(const Handle_MDataStd_ByteArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1(const MDataStd_ByteArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1 & operator=(const Handle_MDataStd_ByteArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1 & operator=(const MDataStd_ByteArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ByteArrayRetrievalDriver_1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayRetrievalDriver_1 {
	MDataStd_ByteArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_ByteArrayRetrievalDriver_1*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ByteArrayRetrievalDriver_1::~Handle_MDataStd_ByteArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ByteArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ReferenceListStorageDriver;
class Handle_MDataStd_ReferenceListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver(const Handle_MDataStd_ReferenceListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver(const MDataStd_ReferenceListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver & operator=(const Handle_MDataStd_ReferenceListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver & operator=(const MDataStd_ReferenceListStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ReferenceListStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceListStorageDriver {
	MDataStd_ReferenceListStorageDriver* GetObject() {
	return (MDataStd_ReferenceListStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ReferenceListStorageDriver::~Handle_MDataStd_ReferenceListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ReferenceListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerListStorageDriver;
class Handle_MDataStd_IntegerListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver(const Handle_MDataStd_IntegerListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver(const MDataStd_IntegerListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver & operator=(const Handle_MDataStd_IntegerListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver & operator=(const MDataStd_IntegerListStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerListStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerListStorageDriver {
	MDataStd_IntegerListStorageDriver* GetObject() {
	return (MDataStd_IntegerListStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerListStorageDriver::~Handle_MDataStd_IntegerListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_BooleanListRetrievalDriver;
class Handle_MDataStd_BooleanListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver(const Handle_MDataStd_BooleanListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver(const MDataStd_BooleanListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver & operator=(const Handle_MDataStd_BooleanListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver & operator=(const MDataStd_BooleanListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_BooleanListRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanListRetrievalDriver {
	MDataStd_BooleanListRetrievalDriver* GetObject() {
	return (MDataStd_BooleanListRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_BooleanListRetrievalDriver::~Handle_MDataStd_BooleanListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_BooleanListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExtStringArrayRetrievalDriver_1;
class Handle_MDataStd_ExtStringArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1(const Handle_MDataStd_ExtStringArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1(const MDataStd_ExtStringArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1 & operator=(const Handle_MDataStd_ExtStringArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1 & operator=(const MDataStd_ExtStringArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExtStringArrayRetrievalDriver_1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver_1 {
	MDataStd_ExtStringArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_ExtStringArrayRetrievalDriver_1*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExtStringArrayRetrievalDriver_1::~Handle_MDataStd_ExtStringArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExtStringArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_TreeNodeRetrievalDriver;
class Handle_MDataStd_TreeNodeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver(const Handle_MDataStd_TreeNodeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver(const MDataStd_TreeNodeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver & operator=(const Handle_MDataStd_TreeNodeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver & operator=(const MDataStd_TreeNodeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_TreeNodeRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TreeNodeRetrievalDriver {
	MDataStd_TreeNodeRetrievalDriver* GetObject() {
	return (MDataStd_TreeNodeRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_TreeNodeRetrievalDriver::~Handle_MDataStd_TreeNodeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_TreeNodeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealListRetrievalDriver;
class Handle_MDataStd_RealListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver(const Handle_MDataStd_RealListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver(const MDataStd_RealListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver & operator=(const Handle_MDataStd_RealListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver & operator=(const MDataStd_RealListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealListRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealListRetrievalDriver {
	MDataStd_RealListRetrievalDriver* GetObject() {
	return (MDataStd_RealListRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealListRetrievalDriver::~Handle_MDataStd_RealListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NoteBookStorageDriver;
class Handle_MDataStd_NoteBookStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver(const Handle_MDataStd_NoteBookStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver(const MDataStd_NoteBookStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver & operator=(const Handle_MDataStd_NoteBookStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver & operator=(const MDataStd_NoteBookStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NoteBookStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NoteBookStorageDriver {
	MDataStd_NoteBookStorageDriver* GetObject() {
	return (MDataStd_NoteBookStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NoteBookStorageDriver::~Handle_MDataStd_NoteBookStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NoteBookStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExtStringListRetrievalDriver;
class Handle_MDataStd_ExtStringListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver(const Handle_MDataStd_ExtStringListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver(const MDataStd_ExtStringListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver & operator=(const Handle_MDataStd_ExtStringListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver & operator=(const MDataStd_ExtStringListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExtStringListRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringListRetrievalDriver {
	MDataStd_ExtStringListRetrievalDriver* GetObject() {
	return (MDataStd_ExtStringListRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExtStringListRetrievalDriver::~Handle_MDataStd_ExtStringListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExtStringListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_TickRetrievalDriver;
class Handle_MDataStd_TickRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver(const Handle_MDataStd_TickRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver(const MDataStd_TickRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver & operator=(const Handle_MDataStd_TickRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver & operator=(const MDataStd_TickRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_TickRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TickRetrievalDriver {
	MDataStd_TickRetrievalDriver* GetObject() {
	return (MDataStd_TickRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_TickRetrievalDriver::~Handle_MDataStd_TickRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_TickRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_DirectoryStorageDriver;
class Handle_MDataStd_DirectoryStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver(const Handle_MDataStd_DirectoryStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver(const MDataStd_DirectoryStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver & operator=(const Handle_MDataStd_DirectoryStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver & operator=(const MDataStd_DirectoryStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_DirectoryStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_DirectoryStorageDriver {
	MDataStd_DirectoryStorageDriver* GetObject() {
	return (MDataStd_DirectoryStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_DirectoryStorageDriver::~Handle_MDataStd_DirectoryStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_DirectoryStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NoteBookRetrievalDriver;
class Handle_MDataStd_NoteBookRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver(const Handle_MDataStd_NoteBookRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver(const MDataStd_NoteBookRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver & operator=(const Handle_MDataStd_NoteBookRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver & operator=(const MDataStd_NoteBookRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NoteBookRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NoteBookRetrievalDriver {
	MDataStd_NoteBookRetrievalDriver* GetObject() {
	return (MDataStd_NoteBookRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NoteBookRetrievalDriver::~Handle_MDataStd_NoteBookRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NoteBookRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealStorageDriver;
class Handle_MDataStd_RealStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver(const Handle_MDataStd_RealStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver(const MDataStd_RealStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver & operator=(const Handle_MDataStd_RealStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver & operator=(const MDataStd_RealStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealStorageDriver {
	MDataStd_RealStorageDriver* GetObject() {
	return (MDataStd_RealStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealStorageDriver::~Handle_MDataStd_RealStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_AsciiStringStorageDriver;
class Handle_MDataStd_AsciiStringStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver(const Handle_MDataStd_AsciiStringStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver(const MDataStd_AsciiStringStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver & operator=(const Handle_MDataStd_AsciiStringStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver & operator=(const MDataStd_AsciiStringStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_AsciiStringStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AsciiStringStorageDriver {
	MDataStd_AsciiStringStorageDriver* GetObject() {
	return (MDataStd_AsciiStringStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_AsciiStringStorageDriver::~Handle_MDataStd_AsciiStringStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_AsciiStringStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_AsciiStringRetrievalDriver;
class Handle_MDataStd_AsciiStringRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver(const Handle_MDataStd_AsciiStringRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver(const MDataStd_AsciiStringRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver & operator=(const Handle_MDataStd_AsciiStringRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver & operator=(const MDataStd_AsciiStringRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_AsciiStringRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AsciiStringRetrievalDriver {
	MDataStd_AsciiStringRetrievalDriver* GetObject() {
	return (MDataStd_AsciiStringRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_AsciiStringRetrievalDriver::~Handle_MDataStd_AsciiStringRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_AsciiStringRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntPackedMapRetrievalDriver_1;
class Handle_MDataStd_IntPackedMapRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1(const Handle_MDataStd_IntPackedMapRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1(const MDataStd_IntPackedMapRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1 & operator=(const Handle_MDataStd_IntPackedMapRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1 & operator=(const MDataStd_IntPackedMapRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntPackedMapRetrievalDriver_1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver_1 {
	MDataStd_IntPackedMapRetrievalDriver_1* GetObject() {
	return (MDataStd_IntPackedMapRetrievalDriver_1*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntPackedMapRetrievalDriver_1::~Handle_MDataStd_IntPackedMapRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntPackedMapRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerStorageDriver;
class Handle_MDataStd_IntegerStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver(const Handle_MDataStd_IntegerStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver(const MDataStd_IntegerStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver & operator=(const Handle_MDataStd_IntegerStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver & operator=(const MDataStd_IntegerStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerStorageDriver {
	MDataStd_IntegerStorageDriver* GetObject() {
	return (MDataStd_IntegerStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerStorageDriver::~Handle_MDataStd_IntegerStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerListRetrievalDriver;
class Handle_MDataStd_IntegerListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver(const Handle_MDataStd_IntegerListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver(const MDataStd_IntegerListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver & operator=(const Handle_MDataStd_IntegerListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver & operator=(const MDataStd_IntegerListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerListRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerListRetrievalDriver {
	MDataStd_IntegerListRetrievalDriver* GetObject() {
	return (MDataStd_IntegerListRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerListRetrievalDriver::~Handle_MDataStd_IntegerListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ReferenceArrayStorageDriver;
class Handle_MDataStd_ReferenceArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver(const Handle_MDataStd_ReferenceArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver(const MDataStd_ReferenceArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver & operator=(const Handle_MDataStd_ReferenceArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver & operator=(const MDataStd_ReferenceArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ReferenceArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceArrayStorageDriver {
	MDataStd_ReferenceArrayStorageDriver* GetObject() {
	return (MDataStd_ReferenceArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ReferenceArrayStorageDriver::~Handle_MDataStd_ReferenceArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ReferenceArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExtStringArrayStorageDriver;
class Handle_MDataStd_ExtStringArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver(const Handle_MDataStd_ExtStringArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver(const MDataStd_ExtStringArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver & operator=(const Handle_MDataStd_ExtStringArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver & operator=(const MDataStd_ExtStringArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExtStringArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayStorageDriver {
	MDataStd_ExtStringArrayStorageDriver* GetObject() {
	return (MDataStd_ExtStringArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExtStringArrayStorageDriver::~Handle_MDataStd_ExtStringArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExtStringArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_UAttributeRetrievalDriver;
class Handle_MDataStd_UAttributeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver(const Handle_MDataStd_UAttributeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver(const MDataStd_UAttributeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver & operator=(const Handle_MDataStd_UAttributeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver & operator=(const MDataStd_UAttributeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_UAttributeRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_UAttributeRetrievalDriver {
	MDataStd_UAttributeRetrievalDriver* GetObject() {
	return (MDataStd_UAttributeRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_UAttributeRetrievalDriver::~Handle_MDataStd_UAttributeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_UAttributeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_CommentRetrievalDriver;
class Handle_MDataStd_CommentRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver(const Handle_MDataStd_CommentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver(const MDataStd_CommentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver & operator=(const Handle_MDataStd_CommentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver & operator=(const MDataStd_CommentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_CommentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_CommentRetrievalDriver {
	MDataStd_CommentRetrievalDriver* GetObject() {
	return (MDataStd_CommentRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_CommentRetrievalDriver::~Handle_MDataStd_CommentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_CommentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RelationRetrievalDriver;
class Handle_MDataStd_RelationRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver(const Handle_MDataStd_RelationRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver(const MDataStd_RelationRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver & operator=(const Handle_MDataStd_RelationRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver & operator=(const MDataStd_RelationRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RelationRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RelationRetrievalDriver {
	MDataStd_RelationRetrievalDriver* GetObject() {
	return (MDataStd_RelationRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RelationRetrievalDriver::~Handle_MDataStd_RelationRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RelationRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_TreeNodeStorageDriver;
class Handle_MDataStd_TreeNodeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver(const Handle_MDataStd_TreeNodeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver(const MDataStd_TreeNodeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver & operator=(const Handle_MDataStd_TreeNodeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver & operator=(const MDataStd_TreeNodeStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_TreeNodeStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TreeNodeStorageDriver {
	MDataStd_TreeNodeStorageDriver* GetObject() {
	return (MDataStd_TreeNodeStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_TreeNodeStorageDriver::~Handle_MDataStd_TreeNodeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_TreeNodeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NameRetrievalDriver;
class Handle_MDataStd_NameRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver(const Handle_MDataStd_NameRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver(const MDataStd_NameRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver & operator=(const Handle_MDataStd_NameRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver & operator=(const MDataStd_NameRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NameRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NameRetrievalDriver {
	MDataStd_NameRetrievalDriver* GetObject() {
	return (MDataStd_NameRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NameRetrievalDriver::~Handle_MDataStd_NameRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NameRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExpressionRetrievalDriver;
class Handle_MDataStd_ExpressionRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver(const Handle_MDataStd_ExpressionRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver(const MDataStd_ExpressionRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver & operator=(const Handle_MDataStd_ExpressionRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver & operator=(const MDataStd_ExpressionRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExpressionRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExpressionRetrievalDriver {
	MDataStd_ExpressionRetrievalDriver* GetObject() {
	return (MDataStd_ExpressionRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExpressionRetrievalDriver::~Handle_MDataStd_ExpressionRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExpressionRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntPackedMapRetrievalDriver;
class Handle_MDataStd_IntPackedMapRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver(const Handle_MDataStd_IntPackedMapRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver(const MDataStd_IntPackedMapRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver & operator=(const Handle_MDataStd_IntPackedMapRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver & operator=(const MDataStd_IntPackedMapRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntPackedMapRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver {
	MDataStd_IntPackedMapRetrievalDriver* GetObject() {
	return (MDataStd_IntPackedMapRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntPackedMapRetrievalDriver::~Handle_MDataStd_IntPackedMapRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntPackedMapRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealArrayRetrievalDriver;
class Handle_MDataStd_RealArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver(const Handle_MDataStd_RealArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver(const MDataStd_RealArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver & operator=(const Handle_MDataStd_RealArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver & operator=(const MDataStd_RealArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayRetrievalDriver {
	MDataStd_RealArrayRetrievalDriver* GetObject() {
	return (MDataStd_RealArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealArrayRetrievalDriver::~Handle_MDataStd_RealArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ReferenceArrayRetrievalDriver;
class Handle_MDataStd_ReferenceArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver(const Handle_MDataStd_ReferenceArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver(const MDataStd_ReferenceArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver & operator=(const Handle_MDataStd_ReferenceArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver & operator=(const MDataStd_ReferenceArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ReferenceArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceArrayRetrievalDriver {
	MDataStd_ReferenceArrayRetrievalDriver* GetObject() {
	return (MDataStd_ReferenceArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ReferenceArrayRetrievalDriver::~Handle_MDataStd_ReferenceArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ReferenceArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NamedDataRetrievalDriver;
class Handle_MDataStd_NamedDataRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver(const Handle_MDataStd_NamedDataRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver(const MDataStd_NamedDataRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver & operator=(const Handle_MDataStd_NamedDataRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver & operator=(const MDataStd_NamedDataRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NamedDataRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NamedDataRetrievalDriver {
	MDataStd_NamedDataRetrievalDriver* GetObject() {
	return (MDataStd_NamedDataRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NamedDataRetrievalDriver::~Handle_MDataStd_NamedDataRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NamedDataRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExtStringArrayRetrievalDriver;
class Handle_MDataStd_ExtStringArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver(const Handle_MDataStd_ExtStringArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver(const MDataStd_ExtStringArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver & operator=(const Handle_MDataStd_ExtStringArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver & operator=(const MDataStd_ExtStringArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExtStringArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver {
	MDataStd_ExtStringArrayRetrievalDriver* GetObject() {
	return (MDataStd_ExtStringArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExtStringArrayRetrievalDriver::~Handle_MDataStd_ExtStringArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExtStringArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NameStorageDriver;
class Handle_MDataStd_NameStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver(const Handle_MDataStd_NameStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver(const MDataStd_NameStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver & operator=(const Handle_MDataStd_NameStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver & operator=(const MDataStd_NameStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NameStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NameStorageDriver {
	MDataStd_NameStorageDriver* GetObject() {
	return (MDataStd_NameStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NameStorageDriver::~Handle_MDataStd_NameStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NameStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerRetrievalDriver;
class Handle_MDataStd_IntegerRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver(const Handle_MDataStd_IntegerRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver(const MDataStd_IntegerRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver & operator=(const Handle_MDataStd_IntegerRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver & operator=(const MDataStd_IntegerRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerRetrievalDriver {
	MDataStd_IntegerRetrievalDriver* GetObject() {
	return (MDataStd_IntegerRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerRetrievalDriver::~Handle_MDataStd_IntegerRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_BooleanArrayStorageDriver;
class Handle_MDataStd_BooleanArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver(const Handle_MDataStd_BooleanArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver(const MDataStd_BooleanArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver & operator=(const Handle_MDataStd_BooleanArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver & operator=(const MDataStd_BooleanArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_BooleanArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanArrayStorageDriver {
	MDataStd_BooleanArrayStorageDriver* GetObject() {
	return (MDataStd_BooleanArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_BooleanArrayStorageDriver::~Handle_MDataStd_BooleanArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_BooleanArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntPackedMapStorageDriver;
class Handle_MDataStd_IntPackedMapStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver(const Handle_MDataStd_IntPackedMapStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver(const MDataStd_IntPackedMapStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver & operator=(const Handle_MDataStd_IntPackedMapStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver & operator=(const MDataStd_IntPackedMapStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntPackedMapStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapStorageDriver {
	MDataStd_IntPackedMapStorageDriver* GetObject() {
	return (MDataStd_IntPackedMapStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntPackedMapStorageDriver::~Handle_MDataStd_IntPackedMapStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntPackedMapStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExpressionStorageDriver;
class Handle_MDataStd_ExpressionStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver(const Handle_MDataStd_ExpressionStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver(const MDataStd_ExpressionStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver & operator=(const Handle_MDataStd_ExpressionStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver & operator=(const MDataStd_ExpressionStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExpressionStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExpressionStorageDriver {
	MDataStd_ExpressionStorageDriver* GetObject() {
	return (MDataStd_ExpressionStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExpressionStorageDriver::~Handle_MDataStd_ExpressionStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExpressionStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_NamedDataStorageDriver;
class Handle_MDataStd_NamedDataStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver(const Handle_MDataStd_NamedDataStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver(const MDataStd_NamedDataStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver & operator=(const Handle_MDataStd_NamedDataStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver & operator=(const MDataStd_NamedDataStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_NamedDataStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NamedDataStorageDriver {
	MDataStd_NamedDataStorageDriver* GetObject() {
	return (MDataStd_NamedDataStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_NamedDataStorageDriver::~Handle_MDataStd_NamedDataStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_NamedDataStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealArrayStorageDriver;
class Handle_MDataStd_RealArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver(const Handle_MDataStd_RealArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver(const MDataStd_RealArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver & operator=(const Handle_MDataStd_RealArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver & operator=(const MDataStd_RealArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayStorageDriver {
	MDataStd_RealArrayStorageDriver* GetObject() {
	return (MDataStd_RealArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealArrayStorageDriver::~Handle_MDataStd_RealArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ExtStringListStorageDriver;
class Handle_MDataStd_ExtStringListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver(const Handle_MDataStd_ExtStringListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver(const MDataStd_ExtStringListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver & operator=(const Handle_MDataStd_ExtStringListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver & operator=(const MDataStd_ExtStringListStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ExtStringListStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringListStorageDriver {
	MDataStd_ExtStringListStorageDriver* GetObject() {
	return (MDataStd_ExtStringListStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ExtStringListStorageDriver::~Handle_MDataStd_ExtStringListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ExtStringListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RelationStorageDriver;
class Handle_MDataStd_RelationStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver(const Handle_MDataStd_RelationStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver(const MDataStd_RelationStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver & operator=(const Handle_MDataStd_RelationStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver & operator=(const MDataStd_RelationStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RelationStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RelationStorageDriver {
	MDataStd_RelationStorageDriver* GetObject() {
	return (MDataStd_RelationStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RelationStorageDriver::~Handle_MDataStd_RelationStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RelationStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_BooleanArrayRetrievalDriver;
class Handle_MDataStd_BooleanArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver(const Handle_MDataStd_BooleanArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver(const MDataStd_BooleanArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver & operator=(const Handle_MDataStd_BooleanArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver & operator=(const MDataStd_BooleanArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_BooleanArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanArrayRetrievalDriver {
	MDataStd_BooleanArrayRetrievalDriver* GetObject() {
	return (MDataStd_BooleanArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_BooleanArrayRetrievalDriver::~Handle_MDataStd_BooleanArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_BooleanArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealListStorageDriver;
class Handle_MDataStd_RealListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver(const Handle_MDataStd_RealListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver(const MDataStd_RealListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver & operator=(const Handle_MDataStd_RealListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver & operator=(const MDataStd_RealListStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealListStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealListStorageDriver {
	MDataStd_RealListStorageDriver* GetObject() {
	return (MDataStd_RealListStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealListStorageDriver::~Handle_MDataStd_RealListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_UAttributeStorageDriver;
class Handle_MDataStd_UAttributeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver(const Handle_MDataStd_UAttributeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver(const MDataStd_UAttributeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver & operator=(const Handle_MDataStd_UAttributeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver & operator=(const MDataStd_UAttributeStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_UAttributeStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_UAttributeStorageDriver {
	MDataStd_UAttributeStorageDriver* GetObject() {
	return (MDataStd_UAttributeStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_UAttributeStorageDriver::~Handle_MDataStd_UAttributeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_UAttributeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_BooleanListStorageDriver;
class Handle_MDataStd_BooleanListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver(const Handle_MDataStd_BooleanListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver(const MDataStd_BooleanListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver & operator=(const Handle_MDataStd_BooleanListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver & operator=(const MDataStd_BooleanListStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_BooleanListStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanListStorageDriver {
	MDataStd_BooleanListStorageDriver* GetObject() {
	return (MDataStd_BooleanListStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_BooleanListStorageDriver::~Handle_MDataStd_BooleanListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_BooleanListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_VariableStorageDriver;
class Handle_MDataStd_VariableStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver(const Handle_MDataStd_VariableStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver(const MDataStd_VariableStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver & operator=(const Handle_MDataStd_VariableStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver & operator=(const MDataStd_VariableStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_VariableStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_VariableStorageDriver {
	MDataStd_VariableStorageDriver* GetObject() {
	return (MDataStd_VariableStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_VariableStorageDriver::~Handle_MDataStd_VariableStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_VariableStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerArrayRetrievalDriver_1;
class Handle_MDataStd_IntegerArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1(const Handle_MDataStd_IntegerArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1(const MDataStd_IntegerArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1 & operator=(const Handle_MDataStd_IntegerArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1 & operator=(const MDataStd_IntegerArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerArrayRetrievalDriver_1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver_1 {
	MDataStd_IntegerArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_IntegerArrayRetrievalDriver_1*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerArrayRetrievalDriver_1::~Handle_MDataStd_IntegerArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_RealRetrievalDriver;
class Handle_MDataStd_RealRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver(const Handle_MDataStd_RealRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver(const MDataStd_RealRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver & operator=(const Handle_MDataStd_RealRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver & operator=(const MDataStd_RealRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_RealRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealRetrievalDriver {
	MDataStd_RealRetrievalDriver* GetObject() {
	return (MDataStd_RealRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_RealRetrievalDriver::~Handle_MDataStd_RealRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_RealRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ByteArrayStorageDriver;
class Handle_MDataStd_ByteArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver(const Handle_MDataStd_ByteArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver(const MDataStd_ByteArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver & operator=(const Handle_MDataStd_ByteArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver & operator=(const MDataStd_ByteArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ByteArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayStorageDriver {
	MDataStd_ByteArrayStorageDriver* GetObject() {
	return (MDataStd_ByteArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ByteArrayStorageDriver::~Handle_MDataStd_ByteArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ByteArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_CommentStorageDriver;
class Handle_MDataStd_CommentStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver(const Handle_MDataStd_CommentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver(const MDataStd_CommentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver & operator=(const Handle_MDataStd_CommentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver & operator=(const MDataStd_CommentStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_CommentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_CommentStorageDriver {
	MDataStd_CommentStorageDriver* GetObject() {
	return (MDataStd_CommentStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_CommentStorageDriver::~Handle_MDataStd_CommentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_CommentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerArrayStorageDriver;
class Handle_MDataStd_IntegerArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver(const Handle_MDataStd_IntegerArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver(const MDataStd_IntegerArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver & operator=(const Handle_MDataStd_IntegerArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver & operator=(const MDataStd_IntegerArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerArrayStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayStorageDriver {
	MDataStd_IntegerArrayStorageDriver* GetObject() {
	return (MDataStd_IntegerArrayStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerArrayStorageDriver::~Handle_MDataStd_IntegerArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ReferenceListRetrievalDriver;
class Handle_MDataStd_ReferenceListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver(const Handle_MDataStd_ReferenceListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver(const MDataStd_ReferenceListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver & operator=(const Handle_MDataStd_ReferenceListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver & operator=(const MDataStd_ReferenceListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ReferenceListRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceListRetrievalDriver {
	MDataStd_ReferenceListRetrievalDriver* GetObject() {
	return (MDataStd_ReferenceListRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ReferenceListRetrievalDriver::~Handle_MDataStd_ReferenceListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ReferenceListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_IntegerArrayRetrievalDriver;
class Handle_MDataStd_IntegerArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver(const Handle_MDataStd_IntegerArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver(const MDataStd_IntegerArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver & operator=(const Handle_MDataStd_IntegerArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver & operator=(const MDataStd_IntegerArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_IntegerArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver {
	MDataStd_IntegerArrayRetrievalDriver* GetObject() {
	return (MDataStd_IntegerArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_IntegerArrayRetrievalDriver::~Handle_MDataStd_IntegerArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_IntegerArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_ByteArrayRetrievalDriver;
class Handle_MDataStd_ByteArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver(const Handle_MDataStd_ByteArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver(const MDataStd_ByteArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver & operator=(const Handle_MDataStd_ByteArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver & operator=(const MDataStd_ByteArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_ByteArrayRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayRetrievalDriver {
	MDataStd_ByteArrayRetrievalDriver* GetObject() {
	return (MDataStd_ByteArrayRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_ByteArrayRetrievalDriver::~Handle_MDataStd_ByteArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_ByteArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_TickStorageDriver;
class Handle_MDataStd_TickStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver(const Handle_MDataStd_TickStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver(const MDataStd_TickStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver & operator=(const Handle_MDataStd_TickStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver & operator=(const MDataStd_TickStorageDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_TickStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TickStorageDriver {
	MDataStd_TickStorageDriver* GetObject() {
	return (MDataStd_TickStorageDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_TickStorageDriver::~Handle_MDataStd_TickStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_TickStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MDataStd_VariableRetrievalDriver;
class Handle_MDataStd_VariableRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver(const Handle_MDataStd_VariableRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver(const MDataStd_VariableRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver & operator=(const Handle_MDataStd_VariableRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver & operator=(const MDataStd_VariableRetrievalDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_MDataStd_VariableRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_VariableRetrievalDriver {
	MDataStd_VariableRetrievalDriver* GetObject() {
	return (MDataStd_VariableRetrievalDriver*)$self->Access();
	}
};
%feature("shadow") Handle_MDataStd_VariableRetrievalDriver::~Handle_MDataStd_VariableRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MDataStd_VariableRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExtStringArrayRetrievalDriver;
class MDataStd_ExtStringArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayRetrievalDriver {
	Handle_MDataStd_ExtStringArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExtStringArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExtStringArrayRetrievalDriver::~MDataStd_ExtStringArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExtStringArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExpressionStorageDriver;
class MDataStd_ExpressionStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExpressionStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExpressionStorageDriver {
	Handle_MDataStd_ExpressionStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExpressionStorageDriver*) &$self;
	}
};
%extend MDataStd_ExpressionStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExpressionStorageDriver::~MDataStd_ExpressionStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExpressionStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealStorageDriver;
class MDataStd_RealStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealStorageDriver {
	Handle_MDataStd_RealStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealStorageDriver*) &$self;
	}
};
%extend MDataStd_RealStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealStorageDriver::~MDataStd_RealStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ReferenceArrayRetrievalDriver;
class MDataStd_ReferenceArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceArrayRetrievalDriver {
	Handle_MDataStd_ReferenceArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ReferenceArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ReferenceArrayRetrievalDriver::~MDataStd_ReferenceArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ReferenceArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NameRetrievalDriver;
class MDataStd_NameRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NameRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NameRetrievalDriver {
	Handle_MDataStd_NameRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NameRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NameRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NameRetrievalDriver::~MDataStd_NameRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NameRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntPackedMapStorageDriver;
class MDataStd_IntPackedMapStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapStorageDriver {
	Handle_MDataStd_IntPackedMapStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntPackedMapStorageDriver*) &$self;
	}
};
%extend MDataStd_IntPackedMapStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntPackedMapStorageDriver::~MDataStd_IntPackedMapStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntPackedMapStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_TreeNodeStorageDriver;
class MDataStd_TreeNodeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TreeNodeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TreeNodeStorageDriver {
	Handle_MDataStd_TreeNodeStorageDriver GetHandle() {
	return *(Handle_MDataStd_TreeNodeStorageDriver*) &$self;
	}
};
%extend MDataStd_TreeNodeStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_TreeNodeStorageDriver::~MDataStd_TreeNodeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_TreeNodeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExtStringArrayStorageDriver;
class MDataStd_ExtStringArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayStorageDriver {
	Handle_MDataStd_ExtStringArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ExtStringArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExtStringArrayStorageDriver::~MDataStd_ExtStringArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExtStringArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExpressionRetrievalDriver;
class MDataStd_ExpressionRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExpressionRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExpressionRetrievalDriver {
	Handle_MDataStd_ExpressionRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExpressionRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExpressionRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExpressionRetrievalDriver::~MDataStd_ExpressionRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExpressionRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_TickRetrievalDriver;
class MDataStd_TickRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TickRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TickRetrievalDriver {
	Handle_MDataStd_TickRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_TickRetrievalDriver*) &$self;
	}
};
%extend MDataStd_TickRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_TickRetrievalDriver::~MDataStd_TickRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_TickRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_CommentStorageDriver;
class MDataStd_CommentStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_CommentStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_CommentStorageDriver {
	Handle_MDataStd_CommentStorageDriver GetHandle() {
	return *(Handle_MDataStd_CommentStorageDriver*) &$self;
	}
};
%extend MDataStd_CommentStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_CommentStorageDriver::~MDataStd_CommentStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_CommentStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_UAttributeRetrievalDriver;
class MDataStd_UAttributeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_UAttributeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_UAttributeRetrievalDriver {
	Handle_MDataStd_UAttributeRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_UAttributeRetrievalDriver*) &$self;
	}
};
%extend MDataStd_UAttributeRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_UAttributeRetrievalDriver::~MDataStd_UAttributeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_UAttributeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_DirectoryStorageDriver;
class MDataStd_DirectoryStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_DirectoryStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_DirectoryStorageDriver {
	Handle_MDataStd_DirectoryStorageDriver GetHandle() {
	return *(Handle_MDataStd_DirectoryStorageDriver*) &$self;
	}
};
%extend MDataStd_DirectoryStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_DirectoryStorageDriver::~MDataStd_DirectoryStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_DirectoryStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ReferenceListStorageDriver;
class MDataStd_ReferenceListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceListStorageDriver {
	Handle_MDataStd_ReferenceListStorageDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceListStorageDriver*) &$self;
	}
};
%extend MDataStd_ReferenceListStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ReferenceListStorageDriver::~MDataStd_ReferenceListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ReferenceListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_BooleanListRetrievalDriver;
class MDataStd_BooleanListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanListRetrievalDriver {
	Handle_MDataStd_BooleanListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_BooleanListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_BooleanListRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_BooleanListRetrievalDriver::~MDataStd_BooleanListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_BooleanListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealArrayRetrievalDriver;
class MDataStd_RealArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayRetrievalDriver {
	Handle_MDataStd_RealArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealArrayRetrievalDriver::~MDataStd_RealArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealArrayRetrievalDriver_1;
class MDataStd_RealArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayRetrievalDriver_1 {
	Handle_MDataStd_RealArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_RealArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_RealArrayRetrievalDriver_1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealArrayRetrievalDriver_1::~MDataStd_RealArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerListRetrievalDriver;
class MDataStd_IntegerListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerListRetrievalDriver {
	Handle_MDataStd_IntegerListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerListRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerListRetrievalDriver::~MDataStd_IntegerListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_DirectoryRetrievalDriver;
class MDataStd_DirectoryRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_DirectoryRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_DirectoryRetrievalDriver {
	Handle_MDataStd_DirectoryRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_DirectoryRetrievalDriver*) &$self;
	}
};
%extend MDataStd_DirectoryRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_DirectoryRetrievalDriver::~MDataStd_DirectoryRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_DirectoryRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ByteArrayRetrievalDriver_1;
class MDataStd_ByteArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayRetrievalDriver_1 {
	Handle_MDataStd_ByteArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_ByteArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_ByteArrayRetrievalDriver_1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ByteArrayRetrievalDriver_1::~MDataStd_ByteArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ByteArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_AsciiStringRetrievalDriver;
class MDataStd_AsciiStringRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AsciiStringRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AsciiStringRetrievalDriver {
	Handle_MDataStd_AsciiStringRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_AsciiStringRetrievalDriver*) &$self;
	}
};
%extend MDataStd_AsciiStringRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_AsciiStringRetrievalDriver::~MDataStd_AsciiStringRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_AsciiStringRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_BooleanListStorageDriver;
class MDataStd_BooleanListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanListStorageDriver {
	Handle_MDataStd_BooleanListStorageDriver GetHandle() {
	return *(Handle_MDataStd_BooleanListStorageDriver*) &$self;
	}
};
%extend MDataStd_BooleanListStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_BooleanListStorageDriver::~MDataStd_BooleanListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_BooleanListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NoteBookRetrievalDriver;
class MDataStd_NoteBookRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NoteBookRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NoteBookRetrievalDriver {
	Handle_MDataStd_NoteBookRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NoteBookRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NoteBookRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NoteBookRetrievalDriver::~MDataStd_NoteBookRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NoteBookRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerListStorageDriver;
class MDataStd_IntegerListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerListStorageDriver {
	Handle_MDataStd_IntegerListStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerListStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerListStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerListStorageDriver::~MDataStd_IntegerListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntPackedMapRetrievalDriver_1;
class MDataStd_IntPackedMapRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapRetrievalDriver_1 {
	Handle_MDataStd_IntPackedMapRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_IntPackedMapRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_IntPackedMapRetrievalDriver_1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntPackedMapRetrievalDriver_1::~MDataStd_IntPackedMapRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntPackedMapRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerArrayStorageDriver;
class MDataStd_IntegerArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayStorageDriver {
	Handle_MDataStd_IntegerArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerArrayStorageDriver::~MDataStd_IntegerArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerRetrievalDriver;
class MDataStd_IntegerRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerRetrievalDriver {
	Handle_MDataStd_IntegerRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerRetrievalDriver::~MDataStd_IntegerRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_BooleanArrayStorageDriver;
class MDataStd_BooleanArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanArrayStorageDriver {
	Handle_MDataStd_BooleanArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_BooleanArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_BooleanArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_BooleanArrayStorageDriver::~MDataStd_BooleanArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_BooleanArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ReferenceArrayStorageDriver;
class MDataStd_ReferenceArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceArrayStorageDriver {
	Handle_MDataStd_ReferenceArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ReferenceArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ReferenceArrayStorageDriver::~MDataStd_ReferenceArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ReferenceArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NamedDataStorageDriver;
class MDataStd_NamedDataStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NamedDataStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NamedDataStorageDriver {
	Handle_MDataStd_NamedDataStorageDriver GetHandle() {
	return *(Handle_MDataStd_NamedDataStorageDriver*) &$self;
	}
};
%extend MDataStd_NamedDataStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NamedDataStorageDriver::~MDataStd_NamedDataStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NamedDataStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerStorageDriver;
class MDataStd_IntegerStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerStorageDriver {
	Handle_MDataStd_IntegerStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerStorageDriver::~MDataStd_IntegerStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NoteBookStorageDriver;
class MDataStd_NoteBookStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NoteBookStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NoteBookStorageDriver {
	Handle_MDataStd_NoteBookStorageDriver GetHandle() {
	return *(Handle_MDataStd_NoteBookStorageDriver*) &$self;
	}
};
%extend MDataStd_NoteBookStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NoteBookStorageDriver::~MDataStd_NoteBookStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NoteBookStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_UAttributeStorageDriver;
class MDataStd_UAttributeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_UAttributeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_UAttributeStorageDriver {
	Handle_MDataStd_UAttributeStorageDriver GetHandle() {
	return *(Handle_MDataStd_UAttributeStorageDriver*) &$self;
	}
};
%extend MDataStd_UAttributeStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_UAttributeStorageDriver::~MDataStd_UAttributeStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_UAttributeStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntPackedMapRetrievalDriver;
class MDataStd_IntPackedMapRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapRetrievalDriver {
	Handle_MDataStd_IntPackedMapRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntPackedMapRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntPackedMapRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntPackedMapRetrievalDriver::~MDataStd_IntPackedMapRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntPackedMapRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ByteArrayRetrievalDriver;
class MDataStd_ByteArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayRetrievalDriver {
	Handle_MDataStd_ByteArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ByteArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ByteArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ByteArrayRetrievalDriver::~MDataStd_ByteArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ByteArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NameStorageDriver;
class MDataStd_NameStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NameStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NameStorageDriver {
	Handle_MDataStd_NameStorageDriver GetHandle() {
	return *(Handle_MDataStd_NameStorageDriver*) &$self;
	}
};
%extend MDataStd_NameStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NameStorageDriver::~MDataStd_NameStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NameStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RelationStorageDriver;
class MDataStd_RelationStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RelationStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RelationStorageDriver {
	Handle_MDataStd_RelationStorageDriver GetHandle() {
	return *(Handle_MDataStd_RelationStorageDriver*) &$self;
	}
};
%extend MDataStd_RelationStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RelationStorageDriver::~MDataStd_RelationStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RelationStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExtStringListRetrievalDriver;
class MDataStd_ExtStringListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringListRetrievalDriver {
	Handle_MDataStd_ExtStringListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExtStringListRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExtStringListRetrievalDriver::~MDataStd_ExtStringListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExtStringListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealListStorageDriver;
class MDataStd_RealListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealListStorageDriver {
	Handle_MDataStd_RealListStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealListStorageDriver*) &$self;
	}
};
%extend MDataStd_RealListStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealListStorageDriver::~MDataStd_RealListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealRetrievalDriver;
class MDataStd_RealRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealRetrievalDriver {
	Handle_MDataStd_RealRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealRetrievalDriver::~MDataStd_RealRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_TickStorageDriver;
class MDataStd_TickStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TickStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TickStorageDriver {
	Handle_MDataStd_TickStorageDriver GetHandle() {
	return *(Handle_MDataStd_TickStorageDriver*) &$self;
	}
};
%extend MDataStd_TickStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_TickStorageDriver::~MDataStd_TickStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_TickStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExtStringArrayRetrievalDriver_1;
class MDataStd_ExtStringArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayRetrievalDriver_1 {
	Handle_MDataStd_ExtStringArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_ExtStringArrayRetrievalDriver_1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExtStringArrayRetrievalDriver_1::~MDataStd_ExtStringArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExtStringArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_TreeNodeRetrievalDriver;
class MDataStd_TreeNodeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TreeNodeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TreeNodeRetrievalDriver {
	Handle_MDataStd_TreeNodeRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_TreeNodeRetrievalDriver*) &$self;
	}
};
%extend MDataStd_TreeNodeRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_TreeNodeRetrievalDriver::~MDataStd_TreeNodeRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_TreeNodeRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealArrayStorageDriver;
class MDataStd_RealArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayStorageDriver {
	Handle_MDataStd_RealArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_RealArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealArrayStorageDriver::~MDataStd_RealArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_CommentRetrievalDriver;
class MDataStd_CommentRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_CommentRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_CommentRetrievalDriver {
	Handle_MDataStd_CommentRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_CommentRetrievalDriver*) &$self;
	}
};
%extend MDataStd_CommentRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_CommentRetrievalDriver::~MDataStd_CommentRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_CommentRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_AsciiStringStorageDriver;
class MDataStd_AsciiStringStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AsciiStringStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AsciiStringStorageDriver {
	Handle_MDataStd_AsciiStringStorageDriver GetHandle() {
	return *(Handle_MDataStd_AsciiStringStorageDriver*) &$self;
	}
};
%extend MDataStd_AsciiStringStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_AsciiStringStorageDriver::~MDataStd_AsciiStringStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_AsciiStringStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_VariableStorageDriver;
class MDataStd_VariableStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_VariableStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_VariableStorageDriver {
	Handle_MDataStd_VariableStorageDriver GetHandle() {
	return *(Handle_MDataStd_VariableStorageDriver*) &$self;
	}
};
%extend MDataStd_VariableStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_VariableStorageDriver::~MDataStd_VariableStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_VariableStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ReferenceListRetrievalDriver;
class MDataStd_ReferenceListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceListRetrievalDriver {
	Handle_MDataStd_ReferenceListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ReferenceListRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ReferenceListRetrievalDriver::~MDataStd_ReferenceListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ReferenceListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd;
class MDataStd {
	public:
		%feature("autodoc", "1");
		MDataStd();
		%feature("autodoc", "1");
		static		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		static		Standard_Integer RealDimensionToInteger(const TDataStd_RealEnum e);
		%feature("autodoc", "1");
		static		TDataStd_RealEnum IntegerToRealDimension(const Standard_Integer i);

};
%feature("shadow") MDataStd::~MDataStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ByteArrayStorageDriver;
class MDataStd_ByteArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayStorageDriver {
	Handle_MDataStd_ByteArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ByteArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ByteArrayStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ByteArrayStorageDriver::~MDataStd_ByteArrayStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ByteArrayStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerArrayRetrievalDriver_1;
class MDataStd_IntegerArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayRetrievalDriver_1 {
	Handle_MDataStd_IntegerArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_IntegerArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_IntegerArrayRetrievalDriver_1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerArrayRetrievalDriver_1::~MDataStd_IntegerArrayRetrievalDriver_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerArrayRetrievalDriver_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RealListRetrievalDriver;
class MDataStd_RealListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealListRetrievalDriver {
	Handle_MDataStd_RealListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealListRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RealListRetrievalDriver::~MDataStd_RealListRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RealListRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_BooleanArrayRetrievalDriver;
class MDataStd_BooleanArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanArrayRetrievalDriver {
	Handle_MDataStd_BooleanArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_BooleanArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_BooleanArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_BooleanArrayRetrievalDriver::~MDataStd_BooleanArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_BooleanArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_NamedDataRetrievalDriver;
class MDataStd_NamedDataRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NamedDataRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NamedDataRetrievalDriver {
	Handle_MDataStd_NamedDataRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NamedDataRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NamedDataRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_NamedDataRetrievalDriver::~MDataStd_NamedDataRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_NamedDataRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_IntegerArrayRetrievalDriver;
class MDataStd_IntegerArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayRetrievalDriver {
	Handle_MDataStd_IntegerArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerArrayRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_IntegerArrayRetrievalDriver::~MDataStd_IntegerArrayRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_IntegerArrayRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_ExtStringListStorageDriver;
class MDataStd_ExtStringListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringListStorageDriver {
	Handle_MDataStd_ExtStringListStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringListStorageDriver*) &$self;
	}
};
%extend MDataStd_ExtStringListStorageDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_ExtStringListStorageDriver::~MDataStd_ExtStringListStorageDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_ExtStringListStorageDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_RelationRetrievalDriver;
class MDataStd_RelationRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RelationRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RelationRetrievalDriver {
	Handle_MDataStd_RelationRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RelationRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RelationRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_RelationRetrievalDriver::~MDataStd_RelationRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_RelationRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MDataStd_VariableRetrievalDriver;
class MDataStd_VariableRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_VariableRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_VariableRetrievalDriver {
	Handle_MDataStd_VariableRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_VariableRetrievalDriver*) &$self;
	}
};
%extend MDataStd_VariableRetrievalDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") MDataStd_VariableRetrievalDriver::~MDataStd_VariableRetrievalDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MDataStd_VariableRetrievalDriver {
	void _kill_pointed() {
		delete $self;
	}
};
