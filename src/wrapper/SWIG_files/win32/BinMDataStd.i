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

%module BinMDataStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinMDataStd_renames.i


%include BinMDataStd_required_python_modules.i


%include BinMDataStd_dependencies.i


%include BinMDataStd_headers.i




%nodefaultctor Handle_BinMDataStd_RealArrayDriver;
class Handle_BinMDataStd_RealArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver(const Handle_BinMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver(const BinMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver & operator=(const Handle_BinMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver & operator=(const BinMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_RealArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealArrayDriver {
	BinMDataStd_RealArrayDriver* GetObject() {
	return (BinMDataStd_RealArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_RealArrayDriver::~Handle_BinMDataStd_RealArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_RealArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_NoteBookDriver;
class Handle_BinMDataStd_NoteBookDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver(const Handle_BinMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver(const BinMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver & operator=(const Handle_BinMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver & operator=(const BinMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_NoteBookDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NoteBookDriver {
	BinMDataStd_NoteBookDriver* GetObject() {
	return (BinMDataStd_NoteBookDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_NoteBookDriver::~Handle_BinMDataStd_NoteBookDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_NoteBookDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ReferenceArrayDriver;
class Handle_BinMDataStd_ReferenceArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver(const Handle_BinMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver(const BinMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver & operator=(const Handle_BinMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver & operator=(const BinMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ReferenceArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ReferenceArrayDriver {
	BinMDataStd_ReferenceArrayDriver* GetObject() {
	return (BinMDataStd_ReferenceArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ReferenceArrayDriver::~Handle_BinMDataStd_ReferenceArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ReferenceArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_IntegerDriver;
class Handle_BinMDataStd_IntegerDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver(const Handle_BinMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver(const BinMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver & operator=(const Handle_BinMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver & operator=(const BinMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_IntegerDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerDriver {
	BinMDataStd_IntegerDriver* GetObject() {
	return (BinMDataStd_IntegerDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_IntegerDriver::~Handle_BinMDataStd_IntegerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_IntegerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ByteArrayDriver;
class Handle_BinMDataStd_ByteArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver(const Handle_BinMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver(const BinMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver & operator=(const Handle_BinMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver & operator=(const BinMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ByteArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ByteArrayDriver {
	BinMDataStd_ByteArrayDriver* GetObject() {
	return (BinMDataStd_ByteArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ByteArrayDriver::~Handle_BinMDataStd_ByteArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ByteArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ExpressionDriver;
class Handle_BinMDataStd_ExpressionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver(const Handle_BinMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver(const BinMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver & operator=(const Handle_BinMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver & operator=(const BinMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ExpressionDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExpressionDriver {
	BinMDataStd_ExpressionDriver* GetObject() {
	return (BinMDataStd_ExpressionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ExpressionDriver::~Handle_BinMDataStd_ExpressionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ExpressionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_UAttributeDriver;
class Handle_BinMDataStd_UAttributeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver(const Handle_BinMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver(const BinMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver & operator=(const Handle_BinMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver & operator=(const BinMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_UAttributeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_UAttributeDriver {
	BinMDataStd_UAttributeDriver* GetObject() {
	return (BinMDataStd_UAttributeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_UAttributeDriver::~Handle_BinMDataStd_UAttributeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_UAttributeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_NamedDataDriver;
class Handle_BinMDataStd_NamedDataDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver(const Handle_BinMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver(const BinMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver & operator=(const Handle_BinMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver & operator=(const BinMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_NamedDataDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NamedDataDriver {
	BinMDataStd_NamedDataDriver* GetObject() {
	return (BinMDataStd_NamedDataDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_NamedDataDriver::~Handle_BinMDataStd_NamedDataDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_NamedDataDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_IntegerArrayDriver;
class Handle_BinMDataStd_IntegerArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver(const Handle_BinMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver(const BinMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver & operator=(const Handle_BinMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver & operator=(const BinMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_IntegerArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerArrayDriver {
	BinMDataStd_IntegerArrayDriver* GetObject() {
	return (BinMDataStd_IntegerArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_IntegerArrayDriver::~Handle_BinMDataStd_IntegerArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_IntegerArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_DirectoryDriver;
class Handle_BinMDataStd_DirectoryDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver(const Handle_BinMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver(const BinMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver & operator=(const Handle_BinMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver & operator=(const BinMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_DirectoryDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_DirectoryDriver {
	BinMDataStd_DirectoryDriver* GetObject() {
	return (BinMDataStd_DirectoryDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_DirectoryDriver::~Handle_BinMDataStd_DirectoryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_DirectoryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ExtStringListDriver;
class Handle_BinMDataStd_ExtStringListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver(const Handle_BinMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver(const BinMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver & operator=(const Handle_BinMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver & operator=(const BinMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ExtStringListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExtStringListDriver {
	BinMDataStd_ExtStringListDriver* GetObject() {
	return (BinMDataStd_ExtStringListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ExtStringListDriver::~Handle_BinMDataStd_ExtStringListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ExtStringListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_BooleanListDriver;
class Handle_BinMDataStd_BooleanListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver(const Handle_BinMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver(const BinMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver & operator=(const Handle_BinMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver & operator=(const BinMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_BooleanListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_BooleanListDriver {
	BinMDataStd_BooleanListDriver* GetObject() {
	return (BinMDataStd_BooleanListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_BooleanListDriver::~Handle_BinMDataStd_BooleanListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_BooleanListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ExtStringArrayDriver;
class Handle_BinMDataStd_ExtStringArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver(const Handle_BinMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver(const BinMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver & operator=(const Handle_BinMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver & operator=(const BinMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ExtStringArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExtStringArrayDriver {
	BinMDataStd_ExtStringArrayDriver* GetObject() {
	return (BinMDataStd_ExtStringArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ExtStringArrayDriver::~Handle_BinMDataStd_ExtStringArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ExtStringArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_VariableDriver;
class Handle_BinMDataStd_VariableDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver(const Handle_BinMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver(const BinMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver & operator=(const Handle_BinMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver & operator=(const BinMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_VariableDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_VariableDriver {
	BinMDataStd_VariableDriver* GetObject() {
	return (BinMDataStd_VariableDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_VariableDriver::~Handle_BinMDataStd_VariableDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_VariableDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_TickDriver;
class Handle_BinMDataStd_TickDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver(const Handle_BinMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver(const BinMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver & operator=(const Handle_BinMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver & operator=(const BinMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_TickDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_TickDriver {
	BinMDataStd_TickDriver* GetObject() {
	return (BinMDataStd_TickDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_TickDriver::~Handle_BinMDataStd_TickDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_TickDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_TreeNodeDriver;
class Handle_BinMDataStd_TreeNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver(const Handle_BinMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver(const BinMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver & operator=(const Handle_BinMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver & operator=(const BinMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_TreeNodeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_TreeNodeDriver {
	BinMDataStd_TreeNodeDriver* GetObject() {
	return (BinMDataStd_TreeNodeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_TreeNodeDriver::~Handle_BinMDataStd_TreeNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_TreeNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_NameDriver;
class Handle_BinMDataStd_NameDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver(const Handle_BinMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver(const BinMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver & operator=(const Handle_BinMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver & operator=(const BinMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_NameDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NameDriver {
	BinMDataStd_NameDriver* GetObject() {
	return (BinMDataStd_NameDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_NameDriver::~Handle_BinMDataStd_NameDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_NameDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_RealDriver;
class Handle_BinMDataStd_RealDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver(const Handle_BinMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver(const BinMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver & operator=(const Handle_BinMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver & operator=(const BinMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_RealDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealDriver {
	BinMDataStd_RealDriver* GetObject() {
	return (BinMDataStd_RealDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_RealDriver::~Handle_BinMDataStd_RealDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_RealDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_ReferenceListDriver;
class Handle_BinMDataStd_ReferenceListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver(const Handle_BinMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver(const BinMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver & operator=(const Handle_BinMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver & operator=(const BinMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_ReferenceListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ReferenceListDriver {
	BinMDataStd_ReferenceListDriver* GetObject() {
	return (BinMDataStd_ReferenceListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_ReferenceListDriver::~Handle_BinMDataStd_ReferenceListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_ReferenceListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_CommentDriver;
class Handle_BinMDataStd_CommentDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver(const Handle_BinMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver(const BinMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver & operator=(const Handle_BinMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver & operator=(const BinMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_CommentDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_CommentDriver {
	BinMDataStd_CommentDriver* GetObject() {
	return (BinMDataStd_CommentDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_CommentDriver::~Handle_BinMDataStd_CommentDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_CommentDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_BooleanArrayDriver;
class Handle_BinMDataStd_BooleanArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver(const Handle_BinMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver(const BinMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver & operator=(const Handle_BinMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver & operator=(const BinMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_BooleanArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_BooleanArrayDriver {
	BinMDataStd_BooleanArrayDriver* GetObject() {
	return (BinMDataStd_BooleanArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_BooleanArrayDriver::~Handle_BinMDataStd_BooleanArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_BooleanArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_RelationDriver;
class Handle_BinMDataStd_RelationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver(const Handle_BinMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver(const BinMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver & operator=(const Handle_BinMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver & operator=(const BinMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_RelationDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RelationDriver {
	BinMDataStd_RelationDriver* GetObject() {
	return (BinMDataStd_RelationDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_RelationDriver::~Handle_BinMDataStd_RelationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_RelationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_IntegerListDriver;
class Handle_BinMDataStd_IntegerListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver(const Handle_BinMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver(const BinMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver & operator=(const Handle_BinMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver & operator=(const BinMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_IntegerListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerListDriver {
	BinMDataStd_IntegerListDriver* GetObject() {
	return (BinMDataStd_IntegerListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_IntegerListDriver::~Handle_BinMDataStd_IntegerListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_IntegerListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_IntPackedMapDriver;
class Handle_BinMDataStd_IntPackedMapDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver(const Handle_BinMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver(const BinMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver & operator=(const Handle_BinMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver & operator=(const BinMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_IntPackedMapDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntPackedMapDriver {
	BinMDataStd_IntPackedMapDriver* GetObject() {
	return (BinMDataStd_IntPackedMapDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_IntPackedMapDriver::~Handle_BinMDataStd_IntPackedMapDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_IntPackedMapDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_RealListDriver;
class Handle_BinMDataStd_RealListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver(const Handle_BinMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver(const BinMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver & operator=(const Handle_BinMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver & operator=(const BinMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_RealListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealListDriver {
	BinMDataStd_RealListDriver* GetObject() {
	return (BinMDataStd_RealListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_RealListDriver::~Handle_BinMDataStd_RealListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_RealListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMDataStd_AsciiStringDriver;
class Handle_BinMDataStd_AsciiStringDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver(const Handle_BinMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver(const BinMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver & operator=(const Handle_BinMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver & operator=(const BinMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMDataStd_AsciiStringDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_AsciiStringDriver {
	BinMDataStd_AsciiStringDriver* GetObject() {
	return (BinMDataStd_AsciiStringDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMDataStd_AsciiStringDriver::~Handle_BinMDataStd_AsciiStringDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMDataStd_AsciiStringDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_IntegerArrayDriver;
class BinMDataStd_IntegerArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_IntegerArrayDriver {
	Handle_BinMDataStd_IntegerArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerArrayDriver*) &$self;
	}
};
%extend BinMDataStd_IntegerArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_IntegerArrayDriver::~BinMDataStd_IntegerArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_IntegerArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_TreeNodeDriver;
class BinMDataStd_TreeNodeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_TreeNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_TreeNodeDriver {
	Handle_BinMDataStd_TreeNodeDriver GetHandle() {
	return *(Handle_BinMDataStd_TreeNodeDriver*) &$self;
	}
};
%extend BinMDataStd_TreeNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_TreeNodeDriver::~BinMDataStd_TreeNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_TreeNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_TickDriver;
class BinMDataStd_TickDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_TickDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_TickDriver {
	Handle_BinMDataStd_TickDriver GetHandle() {
	return *(Handle_BinMDataStd_TickDriver*) &$self;
	}
};
%extend BinMDataStd_TickDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_TickDriver::~BinMDataStd_TickDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_TickDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_AsciiStringDriver;
class BinMDataStd_AsciiStringDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_AsciiStringDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_AsciiStringDriver {
	Handle_BinMDataStd_AsciiStringDriver GetHandle() {
	return *(Handle_BinMDataStd_AsciiStringDriver*) &$self;
	}
};
%extend BinMDataStd_AsciiStringDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_AsciiStringDriver::~BinMDataStd_AsciiStringDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_AsciiStringDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_NoteBookDriver;
class BinMDataStd_NoteBookDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NoteBookDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_NoteBookDriver {
	Handle_BinMDataStd_NoteBookDriver GetHandle() {
	return *(Handle_BinMDataStd_NoteBookDriver*) &$self;
	}
};
%extend BinMDataStd_NoteBookDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_NoteBookDriver::~BinMDataStd_NoteBookDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_NoteBookDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_CommentDriver;
class BinMDataStd_CommentDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_CommentDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_CommentDriver {
	Handle_BinMDataStd_CommentDriver GetHandle() {
	return *(Handle_BinMDataStd_CommentDriver*) &$self;
	}
};
%extend BinMDataStd_CommentDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_CommentDriver::~BinMDataStd_CommentDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_CommentDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_NameDriver;
class BinMDataStd_NameDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NameDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_NameDriver {
	Handle_BinMDataStd_NameDriver GetHandle() {
	return *(Handle_BinMDataStd_NameDriver*) &$self;
	}
};
%extend BinMDataStd_NameDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_NameDriver::~BinMDataStd_NameDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_NameDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ExtStringListDriver;
class BinMDataStd_ExtStringListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExtStringListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ExtStringListDriver {
	Handle_BinMDataStd_ExtStringListDriver GetHandle() {
	return *(Handle_BinMDataStd_ExtStringListDriver*) &$self;
	}
};
%extend BinMDataStd_ExtStringListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ExtStringListDriver::~BinMDataStd_ExtStringListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ExtStringListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ReferenceArrayDriver;
class BinMDataStd_ReferenceArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ReferenceArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ReferenceArrayDriver {
	Handle_BinMDataStd_ReferenceArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ReferenceArrayDriver*) &$self;
	}
};
%extend BinMDataStd_ReferenceArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ReferenceArrayDriver::~BinMDataStd_ReferenceArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ReferenceArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_RealDriver;
class BinMDataStd_RealDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_RealDriver {
	Handle_BinMDataStd_RealDriver GetHandle() {
	return *(Handle_BinMDataStd_RealDriver*) &$self;
	}
};
%extend BinMDataStd_RealDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_RealDriver::~BinMDataStd_RealDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_RealDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_RealArrayDriver;
class BinMDataStd_RealArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_RealArrayDriver {
	Handle_BinMDataStd_RealArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_RealArrayDriver*) &$self;
	}
};
%extend BinMDataStd_RealArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_RealArrayDriver::~BinMDataStd_RealArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_RealArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_BooleanArrayDriver;
class BinMDataStd_BooleanArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_BooleanArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_BooleanArrayDriver {
	Handle_BinMDataStd_BooleanArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_BooleanArrayDriver*) &$self;
	}
};
%extend BinMDataStd_BooleanArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_BooleanArrayDriver::~BinMDataStd_BooleanArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_BooleanArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_RealListDriver;
class BinMDataStd_RealListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_RealListDriver {
	Handle_BinMDataStd_RealListDriver GetHandle() {
	return *(Handle_BinMDataStd_RealListDriver*) &$self;
	}
};
%extend BinMDataStd_RealListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_RealListDriver::~BinMDataStd_RealListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_RealListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_IntPackedMapDriver;
class BinMDataStd_IntPackedMapDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntPackedMapDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_IntPackedMapDriver {
	Handle_BinMDataStd_IntPackedMapDriver GetHandle() {
	return *(Handle_BinMDataStd_IntPackedMapDriver*) &$self;
	}
};
%extend BinMDataStd_IntPackedMapDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_IntPackedMapDriver::~BinMDataStd_IntPackedMapDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_IntPackedMapDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ByteArrayDriver;
class BinMDataStd_ByteArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ByteArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ByteArrayDriver {
	Handle_BinMDataStd_ByteArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ByteArrayDriver*) &$self;
	}
};
%extend BinMDataStd_ByteArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ByteArrayDriver::~BinMDataStd_ByteArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ByteArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_BooleanListDriver;
class BinMDataStd_BooleanListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_BooleanListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_BooleanListDriver {
	Handle_BinMDataStd_BooleanListDriver GetHandle() {
	return *(Handle_BinMDataStd_BooleanListDriver*) &$self;
	}
};
%extend BinMDataStd_BooleanListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_BooleanListDriver::~BinMDataStd_BooleanListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_BooleanListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_VariableDriver;
class BinMDataStd_VariableDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_VariableDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_VariableDriver {
	Handle_BinMDataStd_VariableDriver GetHandle() {
	return *(Handle_BinMDataStd_VariableDriver*) &$self;
	}
};
%extend BinMDataStd_VariableDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_VariableDriver::~BinMDataStd_VariableDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_VariableDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_DirectoryDriver;
class BinMDataStd_DirectoryDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_DirectoryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_DirectoryDriver {
	Handle_BinMDataStd_DirectoryDriver GetHandle() {
	return *(Handle_BinMDataStd_DirectoryDriver*) &$self;
	}
};
%extend BinMDataStd_DirectoryDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_DirectoryDriver::~BinMDataStd_DirectoryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_DirectoryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ExtStringArrayDriver;
class BinMDataStd_ExtStringArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExtStringArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ExtStringArrayDriver {
	Handle_BinMDataStd_ExtStringArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ExtStringArrayDriver*) &$self;
	}
};
%extend BinMDataStd_ExtStringArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ExtStringArrayDriver::~BinMDataStd_ExtStringArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ExtStringArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_IntegerListDriver;
class BinMDataStd_IntegerListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_IntegerListDriver {
	Handle_BinMDataStd_IntegerListDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerListDriver*) &$self;
	}
};
%extend BinMDataStd_IntegerListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_IntegerListDriver::~BinMDataStd_IntegerListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_IntegerListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_NamedDataDriver;
class BinMDataStd_NamedDataDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NamedDataDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_NamedDataDriver {
	Handle_BinMDataStd_NamedDataDriver GetHandle() {
	return *(Handle_BinMDataStd_NamedDataDriver*) &$self;
	}
};
%extend BinMDataStd_NamedDataDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_NamedDataDriver::~BinMDataStd_NamedDataDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_NamedDataDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd;
class BinMDataStd {
	public:
		%feature("autodoc", "1");
		BinMDataStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);
		%feature("autodoc", "1");
		static		void SetDocumentVersion(const Standard_Integer DocVersion);
		%feature("autodoc", "1");
		static		Standard_Integer DocumentVersion();

};
%feature("shadow") BinMDataStd::~BinMDataStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ExpressionDriver;
class BinMDataStd_ExpressionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExpressionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ExpressionDriver {
	Handle_BinMDataStd_ExpressionDriver GetHandle() {
	return *(Handle_BinMDataStd_ExpressionDriver*) &$self;
	}
};
%extend BinMDataStd_ExpressionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ExpressionDriver::~BinMDataStd_ExpressionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ExpressionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_IntegerDriver;
class BinMDataStd_IntegerDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_IntegerDriver {
	Handle_BinMDataStd_IntegerDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerDriver*) &$self;
	}
};
%extend BinMDataStd_IntegerDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_IntegerDriver::~BinMDataStd_IntegerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_IntegerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_ReferenceListDriver;
class BinMDataStd_ReferenceListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ReferenceListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_ReferenceListDriver {
	Handle_BinMDataStd_ReferenceListDriver GetHandle() {
	return *(Handle_BinMDataStd_ReferenceListDriver*) &$self;
	}
};
%extend BinMDataStd_ReferenceListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_ReferenceListDriver::~BinMDataStd_ReferenceListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_ReferenceListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_RelationDriver;
class BinMDataStd_RelationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RelationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_RelationDriver {
	Handle_BinMDataStd_RelationDriver GetHandle() {
	return *(Handle_BinMDataStd_RelationDriver*) &$self;
	}
};
%extend BinMDataStd_RelationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_RelationDriver::~BinMDataStd_RelationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_RelationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMDataStd_UAttributeDriver;
class BinMDataStd_UAttributeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_UAttributeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMDataStd_UAttributeDriver {
	Handle_BinMDataStd_UAttributeDriver GetHandle() {
	return *(Handle_BinMDataStd_UAttributeDriver*) &$self;
	}
};
%extend BinMDataStd_UAttributeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BinMDataStd_UAttributeDriver::~BinMDataStd_UAttributeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMDataStd_UAttributeDriver {
	void _kill_pointed() {
		delete $self;
	}
};
