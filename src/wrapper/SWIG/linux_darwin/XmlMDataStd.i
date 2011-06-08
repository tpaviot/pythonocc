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

%module XmlMDataStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlMDataStd_renames.i


%include XmlMDataStd_required_python_modules.i


%include XmlMDataStd_dependencies.i


%include XmlMDataStd_headers.i




%nodefaultctor Handle_XmlMDataStd_IntPackedMapDriver;
class Handle_XmlMDataStd_IntPackedMapDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver(const Handle_XmlMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver(const XmlMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver & operator=(const Handle_XmlMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver & operator=(const XmlMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_IntPackedMapDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntPackedMapDriver {
	XmlMDataStd_IntPackedMapDriver* GetObject() {
	return (XmlMDataStd_IntPackedMapDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_IntPackedMapDriver::~Handle_XmlMDataStd_IntPackedMapDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_IntPackedMapDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_BooleanListDriver;
class Handle_XmlMDataStd_BooleanListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver(const Handle_XmlMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver(const XmlMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver & operator=(const Handle_XmlMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver & operator=(const XmlMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_BooleanListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_BooleanListDriver {
	XmlMDataStd_BooleanListDriver* GetObject() {
	return (XmlMDataStd_BooleanListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_BooleanListDriver::~Handle_XmlMDataStd_BooleanListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_BooleanListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ExpressionDriver;
class Handle_XmlMDataStd_ExpressionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver(const Handle_XmlMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver(const XmlMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver & operator=(const Handle_XmlMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver & operator=(const XmlMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ExpressionDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExpressionDriver {
	XmlMDataStd_ExpressionDriver* GetObject() {
	return (XmlMDataStd_ExpressionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ExpressionDriver::~Handle_XmlMDataStd_ExpressionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ExpressionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_RealListDriver;
class Handle_XmlMDataStd_RealListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver(const Handle_XmlMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver(const XmlMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver & operator=(const Handle_XmlMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver & operator=(const XmlMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_RealListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealListDriver {
	XmlMDataStd_RealListDriver* GetObject() {
	return (XmlMDataStd_RealListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_RealListDriver::~Handle_XmlMDataStd_RealListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_RealListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ExtStringArrayDriver;
class Handle_XmlMDataStd_ExtStringArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver(const Handle_XmlMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver(const XmlMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver & operator=(const Handle_XmlMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver & operator=(const XmlMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ExtStringArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExtStringArrayDriver {
	XmlMDataStd_ExtStringArrayDriver* GetObject() {
	return (XmlMDataStd_ExtStringArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ExtStringArrayDriver::~Handle_XmlMDataStd_ExtStringArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ExtStringArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_AsciiStringDriver;
class Handle_XmlMDataStd_AsciiStringDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver(const Handle_XmlMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver(const XmlMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver & operator=(const Handle_XmlMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver & operator=(const XmlMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_AsciiStringDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_AsciiStringDriver {
	XmlMDataStd_AsciiStringDriver* GetObject() {
	return (XmlMDataStd_AsciiStringDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_AsciiStringDriver::~Handle_XmlMDataStd_AsciiStringDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_AsciiStringDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_CommentDriver;
class Handle_XmlMDataStd_CommentDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver(const Handle_XmlMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver(const XmlMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver & operator=(const Handle_XmlMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver & operator=(const XmlMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_CommentDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_CommentDriver {
	XmlMDataStd_CommentDriver* GetObject() {
	return (XmlMDataStd_CommentDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_CommentDriver::~Handle_XmlMDataStd_CommentDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_CommentDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ReferenceArrayDriver;
class Handle_XmlMDataStd_ReferenceArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver(const Handle_XmlMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver(const XmlMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver & operator=(const Handle_XmlMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver & operator=(const XmlMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ReferenceArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ReferenceArrayDriver {
	XmlMDataStd_ReferenceArrayDriver* GetObject() {
	return (XmlMDataStd_ReferenceArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ReferenceArrayDriver::~Handle_XmlMDataStd_ReferenceArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ReferenceArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_TreeNodeDriver;
class Handle_XmlMDataStd_TreeNodeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver(const Handle_XmlMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver(const XmlMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver & operator=(const Handle_XmlMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver & operator=(const XmlMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_TreeNodeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_TreeNodeDriver {
	XmlMDataStd_TreeNodeDriver* GetObject() {
	return (XmlMDataStd_TreeNodeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_TreeNodeDriver::~Handle_XmlMDataStd_TreeNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_TreeNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ExtStringListDriver;
class Handle_XmlMDataStd_ExtStringListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver(const Handle_XmlMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver(const XmlMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver & operator=(const Handle_XmlMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver & operator=(const XmlMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ExtStringListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExtStringListDriver {
	XmlMDataStd_ExtStringListDriver* GetObject() {
	return (XmlMDataStd_ExtStringListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ExtStringListDriver::~Handle_XmlMDataStd_ExtStringListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ExtStringListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_NoteBookDriver;
class Handle_XmlMDataStd_NoteBookDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver(const Handle_XmlMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver(const XmlMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver & operator=(const Handle_XmlMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver & operator=(const XmlMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_NoteBookDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NoteBookDriver {
	XmlMDataStd_NoteBookDriver* GetObject() {
	return (XmlMDataStd_NoteBookDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_NoteBookDriver::~Handle_XmlMDataStd_NoteBookDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_NoteBookDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ByteArrayDriver;
class Handle_XmlMDataStd_ByteArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver(const Handle_XmlMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver(const XmlMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver & operator=(const Handle_XmlMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver & operator=(const XmlMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ByteArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ByteArrayDriver {
	XmlMDataStd_ByteArrayDriver* GetObject() {
	return (XmlMDataStd_ByteArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ByteArrayDriver::~Handle_XmlMDataStd_ByteArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ByteArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_BooleanArrayDriver;
class Handle_XmlMDataStd_BooleanArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver(const Handle_XmlMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver(const XmlMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver & operator=(const Handle_XmlMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver & operator=(const XmlMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_BooleanArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_BooleanArrayDriver {
	XmlMDataStd_BooleanArrayDriver* GetObject() {
	return (XmlMDataStd_BooleanArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_BooleanArrayDriver::~Handle_XmlMDataStd_BooleanArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_BooleanArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_IntegerDriver;
class Handle_XmlMDataStd_IntegerDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver(const Handle_XmlMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver(const XmlMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver & operator=(const Handle_XmlMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver & operator=(const XmlMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_IntegerDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerDriver {
	XmlMDataStd_IntegerDriver* GetObject() {
	return (XmlMDataStd_IntegerDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_IntegerDriver::~Handle_XmlMDataStd_IntegerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_IntegerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_RealDriver;
class Handle_XmlMDataStd_RealDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver(const Handle_XmlMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver(const XmlMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver & operator=(const Handle_XmlMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver & operator=(const XmlMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_RealDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealDriver {
	XmlMDataStd_RealDriver* GetObject() {
	return (XmlMDataStd_RealDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_RealDriver::~Handle_XmlMDataStd_RealDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_RealDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_DirectoryDriver;
class Handle_XmlMDataStd_DirectoryDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver(const Handle_XmlMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver(const XmlMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver & operator=(const Handle_XmlMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver & operator=(const XmlMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_DirectoryDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_DirectoryDriver {
	XmlMDataStd_DirectoryDriver* GetObject() {
	return (XmlMDataStd_DirectoryDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_DirectoryDriver::~Handle_XmlMDataStd_DirectoryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_DirectoryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_IntegerArrayDriver;
class Handle_XmlMDataStd_IntegerArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver(const Handle_XmlMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver(const XmlMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver & operator=(const Handle_XmlMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver & operator=(const XmlMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_IntegerArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerArrayDriver {
	XmlMDataStd_IntegerArrayDriver* GetObject() {
	return (XmlMDataStd_IntegerArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_IntegerArrayDriver::~Handle_XmlMDataStd_IntegerArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_IntegerArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_UAttributeDriver;
class Handle_XmlMDataStd_UAttributeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver(const Handle_XmlMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver(const XmlMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver & operator=(const Handle_XmlMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver & operator=(const XmlMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_UAttributeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_UAttributeDriver {
	XmlMDataStd_UAttributeDriver* GetObject() {
	return (XmlMDataStd_UAttributeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_UAttributeDriver::~Handle_XmlMDataStd_UAttributeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_UAttributeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_TickDriver;
class Handle_XmlMDataStd_TickDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver(const Handle_XmlMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver(const XmlMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver & operator=(const Handle_XmlMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver & operator=(const XmlMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_TickDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_TickDriver {
	XmlMDataStd_TickDriver* GetObject() {
	return (XmlMDataStd_TickDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_TickDriver::~Handle_XmlMDataStd_TickDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_TickDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_IntegerListDriver;
class Handle_XmlMDataStd_IntegerListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver(const Handle_XmlMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver(const XmlMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver & operator=(const Handle_XmlMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver & operator=(const XmlMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_IntegerListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerListDriver {
	XmlMDataStd_IntegerListDriver* GetObject() {
	return (XmlMDataStd_IntegerListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_IntegerListDriver::~Handle_XmlMDataStd_IntegerListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_IntegerListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_ReferenceListDriver;
class Handle_XmlMDataStd_ReferenceListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver(const Handle_XmlMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver(const XmlMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver & operator=(const Handle_XmlMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver & operator=(const XmlMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_ReferenceListDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ReferenceListDriver {
	XmlMDataStd_ReferenceListDriver* GetObject() {
	return (XmlMDataStd_ReferenceListDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_ReferenceListDriver::~Handle_XmlMDataStd_ReferenceListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_ReferenceListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_NamedDataDriver;
class Handle_XmlMDataStd_NamedDataDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver(const Handle_XmlMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver(const XmlMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver & operator=(const Handle_XmlMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver & operator=(const XmlMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_NamedDataDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NamedDataDriver {
	XmlMDataStd_NamedDataDriver* GetObject() {
	return (XmlMDataStd_NamedDataDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_NamedDataDriver::~Handle_XmlMDataStd_NamedDataDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_NamedDataDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_RelationDriver;
class Handle_XmlMDataStd_RelationDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver(const Handle_XmlMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver(const XmlMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver & operator=(const Handle_XmlMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver & operator=(const XmlMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_RelationDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RelationDriver {
	XmlMDataStd_RelationDriver* GetObject() {
	return (XmlMDataStd_RelationDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_RelationDriver::~Handle_XmlMDataStd_RelationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_RelationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_NameDriver;
class Handle_XmlMDataStd_NameDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver(const Handle_XmlMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver(const XmlMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver & operator=(const Handle_XmlMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver & operator=(const XmlMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_NameDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NameDriver {
	XmlMDataStd_NameDriver* GetObject() {
	return (XmlMDataStd_NameDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_NameDriver::~Handle_XmlMDataStd_NameDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_NameDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_VariableDriver;
class Handle_XmlMDataStd_VariableDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver(const Handle_XmlMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver(const XmlMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver & operator=(const Handle_XmlMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver & operator=(const XmlMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_VariableDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_VariableDriver {
	XmlMDataStd_VariableDriver* GetObject() {
	return (XmlMDataStd_VariableDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_VariableDriver::~Handle_XmlMDataStd_VariableDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_VariableDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XmlMDataStd_RealArrayDriver;
class Handle_XmlMDataStd_RealArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver(const Handle_XmlMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver(const XmlMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver & operator=(const Handle_XmlMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver & operator=(const XmlMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlMDataStd_RealArrayDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealArrayDriver {
	XmlMDataStd_RealArrayDriver* GetObject() {
	return (XmlMDataStd_RealArrayDriver*)$self->Access();
	}
};
%feature("shadow") Handle_XmlMDataStd_RealArrayDriver::~Handle_XmlMDataStd_RealArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlMDataStd_RealArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_DirectoryDriver;
class XmlMDataStd_DirectoryDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_DirectoryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_DirectoryDriver {
	Handle_XmlMDataStd_DirectoryDriver GetHandle() {
	return *(Handle_XmlMDataStd_DirectoryDriver*) &$self;
	}
};
%extend XmlMDataStd_DirectoryDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_DirectoryDriver::~XmlMDataStd_DirectoryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_DirectoryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ExpressionDriver;
class XmlMDataStd_ExpressionDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExpressionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ExpressionDriver {
	Handle_XmlMDataStd_ExpressionDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExpressionDriver*) &$self;
	}
};
%extend XmlMDataStd_ExpressionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ExpressionDriver::~XmlMDataStd_ExpressionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ExpressionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_BooleanListDriver;
class XmlMDataStd_BooleanListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_BooleanListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_BooleanListDriver {
	Handle_XmlMDataStd_BooleanListDriver GetHandle() {
	return *(Handle_XmlMDataStd_BooleanListDriver*) &$self;
	}
};
%extend XmlMDataStd_BooleanListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_BooleanListDriver::~XmlMDataStd_BooleanListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_BooleanListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_NamedDataDriver;
class XmlMDataStd_NamedDataDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NamedDataDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_NamedDataDriver {
	Handle_XmlMDataStd_NamedDataDriver GetHandle() {
	return *(Handle_XmlMDataStd_NamedDataDriver*) &$self;
	}
};
%extend XmlMDataStd_NamedDataDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_NamedDataDriver::~XmlMDataStd_NamedDataDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_NamedDataDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_IntegerDriver;
class XmlMDataStd_IntegerDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_IntegerDriver {
	Handle_XmlMDataStd_IntegerDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerDriver*) &$self;
	}
};
%extend XmlMDataStd_IntegerDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_IntegerDriver::~XmlMDataStd_IntegerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_IntegerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_RealArrayDriver;
class XmlMDataStd_RealArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_RealArrayDriver {
	Handle_XmlMDataStd_RealArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_RealArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_RealArrayDriver::~XmlMDataStd_RealArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_RealArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ExtStringListDriver;
class XmlMDataStd_ExtStringListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExtStringListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ExtStringListDriver {
	Handle_XmlMDataStd_ExtStringListDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExtStringListDriver*) &$self;
	}
};
%extend XmlMDataStd_ExtStringListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ExtStringListDriver::~XmlMDataStd_ExtStringListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ExtStringListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_RelationDriver;
class XmlMDataStd_RelationDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RelationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_RelationDriver {
	Handle_XmlMDataStd_RelationDriver GetHandle() {
	return *(Handle_XmlMDataStd_RelationDriver*) &$self;
	}
};
%extend XmlMDataStd_RelationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_RelationDriver::~XmlMDataStd_RelationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_RelationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_IntegerArrayDriver;
class XmlMDataStd_IntegerArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_IntegerArrayDriver {
	Handle_XmlMDataStd_IntegerArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_IntegerArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_IntegerArrayDriver::~XmlMDataStd_IntegerArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_IntegerArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_VariableDriver;
class XmlMDataStd_VariableDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_VariableDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_VariableDriver {
	Handle_XmlMDataStd_VariableDriver GetHandle() {
	return *(Handle_XmlMDataStd_VariableDriver*) &$self;
	}
};
%extend XmlMDataStd_VariableDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_VariableDriver::~XmlMDataStd_VariableDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_VariableDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_RealListDriver;
class XmlMDataStd_RealListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_RealListDriver {
	Handle_XmlMDataStd_RealListDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealListDriver*) &$self;
	}
};
%extend XmlMDataStd_RealListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_RealListDriver::~XmlMDataStd_RealListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_RealListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_AsciiStringDriver;
class XmlMDataStd_AsciiStringDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_AsciiStringDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_AsciiStringDriver {
	Handle_XmlMDataStd_AsciiStringDriver GetHandle() {
	return *(Handle_XmlMDataStd_AsciiStringDriver*) &$self;
	}
};
%extend XmlMDataStd_AsciiStringDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_AsciiStringDriver::~XmlMDataStd_AsciiStringDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_AsciiStringDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_RealDriver;
class XmlMDataStd_RealDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_RealDriver {
	Handle_XmlMDataStd_RealDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealDriver*) &$self;
	}
};
%extend XmlMDataStd_RealDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_RealDriver::~XmlMDataStd_RealDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_RealDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ReferenceArrayDriver;
class XmlMDataStd_ReferenceArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ReferenceArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ReferenceArrayDriver {
	Handle_XmlMDataStd_ReferenceArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ReferenceArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_ReferenceArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ReferenceArrayDriver::~XmlMDataStd_ReferenceArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ReferenceArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_NameDriver;
class XmlMDataStd_NameDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NameDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_NameDriver {
	Handle_XmlMDataStd_NameDriver GetHandle() {
	return *(Handle_XmlMDataStd_NameDriver*) &$self;
	}
};
%extend XmlMDataStd_NameDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_NameDriver::~XmlMDataStd_NameDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_NameDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_IntegerListDriver;
class XmlMDataStd_IntegerListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_IntegerListDriver {
	Handle_XmlMDataStd_IntegerListDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerListDriver*) &$self;
	}
};
%extend XmlMDataStd_IntegerListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_IntegerListDriver::~XmlMDataStd_IntegerListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_IntegerListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd;
class XmlMDataStd {
	public:
		%feature("autodoc", "1");
		XmlMDataStd();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &anMsgDrv);
		%feature("autodoc", "1");
		static		void SetDocumentVersion(const Standard_Integer DocVersion);
		%feature("autodoc", "1");
		static		Standard_Integer DocumentVersion();

};
%feature("shadow") XmlMDataStd::~XmlMDataStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_UAttributeDriver;
class XmlMDataStd_UAttributeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_UAttributeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_UAttributeDriver {
	Handle_XmlMDataStd_UAttributeDriver GetHandle() {
	return *(Handle_XmlMDataStd_UAttributeDriver*) &$self;
	}
};
%extend XmlMDataStd_UAttributeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_UAttributeDriver::~XmlMDataStd_UAttributeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_UAttributeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_TreeNodeDriver;
class XmlMDataStd_TreeNodeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_TreeNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_TreeNodeDriver {
	Handle_XmlMDataStd_TreeNodeDriver GetHandle() {
	return *(Handle_XmlMDataStd_TreeNodeDriver*) &$self;
	}
};
%extend XmlMDataStd_TreeNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_TreeNodeDriver::~XmlMDataStd_TreeNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_TreeNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_BooleanArrayDriver;
class XmlMDataStd_BooleanArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_BooleanArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_BooleanArrayDriver {
	Handle_XmlMDataStd_BooleanArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_BooleanArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_BooleanArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_BooleanArrayDriver::~XmlMDataStd_BooleanArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_BooleanArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ByteArrayDriver;
class XmlMDataStd_ByteArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ByteArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ByteArrayDriver {
	Handle_XmlMDataStd_ByteArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ByteArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_ByteArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ByteArrayDriver::~XmlMDataStd_ByteArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ByteArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_IntPackedMapDriver;
class XmlMDataStd_IntPackedMapDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntPackedMapDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_IntPackedMapDriver {
	Handle_XmlMDataStd_IntPackedMapDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntPackedMapDriver*) &$self;
	}
};
%extend XmlMDataStd_IntPackedMapDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_IntPackedMapDriver::~XmlMDataStd_IntPackedMapDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_IntPackedMapDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ExtStringArrayDriver;
class XmlMDataStd_ExtStringArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExtStringArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ExtStringArrayDriver {
	Handle_XmlMDataStd_ExtStringArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExtStringArrayDriver*) &$self;
	}
};
%extend XmlMDataStd_ExtStringArrayDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ExtStringArrayDriver::~XmlMDataStd_ExtStringArrayDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ExtStringArrayDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_NoteBookDriver;
class XmlMDataStd_NoteBookDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NoteBookDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_NoteBookDriver {
	Handle_XmlMDataStd_NoteBookDriver GetHandle() {
	return *(Handle_XmlMDataStd_NoteBookDriver*) &$self;
	}
};
%extend XmlMDataStd_NoteBookDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_NoteBookDriver::~XmlMDataStd_NoteBookDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_NoteBookDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_ReferenceListDriver;
class XmlMDataStd_ReferenceListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ReferenceListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_ReferenceListDriver {
	Handle_XmlMDataStd_ReferenceListDriver GetHandle() {
	return *(Handle_XmlMDataStd_ReferenceListDriver*) &$self;
	}
};
%extend XmlMDataStd_ReferenceListDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_ReferenceListDriver::~XmlMDataStd_ReferenceListDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_ReferenceListDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_TickDriver;
class XmlMDataStd_TickDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_TickDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_TickDriver {
	Handle_XmlMDataStd_TickDriver GetHandle() {
	return *(Handle_XmlMDataStd_TickDriver*) &$self;
	}
};
%extend XmlMDataStd_TickDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_TickDriver::~XmlMDataStd_TickDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_TickDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlMDataStd_CommentDriver;
class XmlMDataStd_CommentDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_CommentDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlMDataStd_CommentDriver {
	Handle_XmlMDataStd_CommentDriver GetHandle() {
	return *(Handle_XmlMDataStd_CommentDriver*) &$self;
	}
};
%extend XmlMDataStd_CommentDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlMDataStd_CommentDriver::~XmlMDataStd_CommentDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlMDataStd_CommentDriver {
	void _kill_pointed() {
		delete $self;
	}
};
