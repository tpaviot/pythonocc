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

%module PColStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PColStd_renames.i


%include PColStd_required_python_modules.i


%include PColStd_dependencies.i


%include PColStd_headers.i




%nodefaultctor Handle_PColStd_HSingleListOfReal;
class Handle_PColStd_HSingleListOfReal : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal();
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal(const Handle_PColStd_HSingleListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal(const PColStd_HSingleListOfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal & operator=(const Handle_PColStd_HSingleListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal & operator=(const PColStd_HSingleListOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSingleListOfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSingleListOfReal {
	PColStd_HSingleListOfReal* GetObject() {
	return (PColStd_HSingleListOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSingleListOfReal::~Handle_PColStd_HSingleListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSingleListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray1OfExtendedString;
class Handle_PColStd_HArray1OfExtendedString : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfExtendedString();
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfExtendedString(const Handle_PColStd_HArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfExtendedString(const PColStd_HArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfExtendedString & operator=(const Handle_PColStd_HArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfExtendedString & operator=(const PColStd_HArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray1OfExtendedString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray1OfExtendedString {
	PColStd_HArray1OfExtendedString* GetObject() {
	return (PColStd_HArray1OfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray1OfExtendedString::~Handle_PColStd_HArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HDoubleListOfInteger;
class Handle_PColStd_HDoubleListOfInteger : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger(const Handle_PColStd_HDoubleListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger(const PColStd_HDoubleListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger & operator=(const Handle_PColStd_HDoubleListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger & operator=(const PColStd_HDoubleListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HDoubleListOfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HDoubleListOfInteger {
	PColStd_HDoubleListOfInteger* GetObject() {
	return (PColStd_HDoubleListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HDoubleListOfInteger::~Handle_PColStd_HDoubleListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HDoubleListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent;
class Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent(const PColStd_VArrayNodeOfFieldOfHArray2OfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent & operator=(const PColStd_VArrayNodeOfFieldOfHArray2OfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent {
	PColStd_VArrayNodeOfFieldOfHArray2OfPersistent* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray2OfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent::~Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray2OfPersistent;
class Handle_PColStd_HArray2OfPersistent : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfPersistent(const Handle_PColStd_HArray2OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfPersistent(const PColStd_HArray2OfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfPersistent & operator=(const Handle_PColStd_HArray2OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfPersistent & operator=(const PColStd_HArray2OfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray2OfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray2OfPersistent {
	PColStd_HArray2OfPersistent* GetObject() {
	return (PColStd_HArray2OfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray2OfPersistent::~Handle_PColStd_HArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal;
class Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal(const PColStd_VArrayNodeOfFieldOfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal & operator=(const PColStd_VArrayNodeOfFieldOfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal {
	PColStd_VArrayNodeOfFieldOfHArray1OfReal* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal::~Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HDoubleListOfReal;
class Handle_PColStd_HDoubleListOfReal : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal();
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal(const Handle_PColStd_HDoubleListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal(const PColStd_HDoubleListOfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal & operator=(const Handle_PColStd_HDoubleListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal & operator=(const PColStd_HDoubleListOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HDoubleListOfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HDoubleListOfReal {
	PColStd_HDoubleListOfReal* GetObject() {
	return (PColStd_HDoubleListOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HDoubleListOfReal::~Handle_PColStd_HDoubleListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HDoubleListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_SeqNodeOfHSequenceOfInteger;
class Handle_PColStd_SeqNodeOfHSequenceOfInteger : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger(const PColStd_SeqNodeOfHSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger & operator=(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger & operator=(const PColStd_SeqNodeOfHSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_SeqNodeOfHSequenceOfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_SeqNodeOfHSequenceOfInteger {
	PColStd_SeqNodeOfHSequenceOfInteger* GetObject() {
	return (PColStd_SeqNodeOfHSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_SeqNodeOfHSequenceOfInteger::~Handle_PColStd_SeqNodeOfHSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_SeqNodeOfHSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSequenceOfReal;
class Handle_PColStd_HSequenceOfReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal(const Handle_PColStd_HSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal(const PColStd_HSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal & operator=(const Handle_PColStd_HSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal & operator=(const PColStd_HSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSequenceOfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSequenceOfReal {
	PColStd_HSequenceOfReal* GetObject() {
	return (PColStd_HSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSequenceOfReal::~Handle_PColStd_HSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSequenceOfHAsciiString;
class Handle_PColStd_HSequenceOfHAsciiString : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString(const Handle_PColStd_HSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString(const PColStd_HSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString & operator=(const Handle_PColStd_HSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString & operator=(const PColStd_HSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSequenceOfHAsciiString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSequenceOfHAsciiString {
	PColStd_HSequenceOfHAsciiString* GetObject() {
	return (PColStd_HSequenceOfHAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSequenceOfHAsciiString::~Handle_PColStd_HSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSequenceOfHExtendedString;
class Handle_PColStd_HSequenceOfHExtendedString : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString(const Handle_PColStd_HSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString(const PColStd_HSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString & operator=(const Handle_PColStd_HSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString & operator=(const PColStd_HSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSequenceOfHExtendedString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSequenceOfHExtendedString {
	PColStd_HSequenceOfHExtendedString* GetObject() {
	return (PColStd_HSequenceOfHExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSequenceOfHExtendedString::~Handle_PColStd_HSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSequenceOfInteger;
class Handle_PColStd_HSequenceOfInteger : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger(const Handle_PColStd_HSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger(const PColStd_HSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger & operator=(const Handle_PColStd_HSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger & operator=(const PColStd_HSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSequenceOfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSequenceOfInteger {
	PColStd_HSequenceOfInteger* GetObject() {
	return (PColStd_HSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSequenceOfInteger::~Handle_PColStd_HSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent;
class Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent(const PColStd_VArrayNodeOfFieldOfHArray1OfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent & operator=(const PColStd_VArrayNodeOfFieldOfHArray1OfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent {
	PColStd_VArrayNodeOfFieldOfHArray1OfPersistent* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray1OfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent::~Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString;
class Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString(const PColStd_SeqNodeOfHSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString & operator=(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString & operator=(const PColStd_SeqNodeOfHSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString {
	PColStd_SeqNodeOfHSequenceOfHExtendedString* GetObject() {
	return (PColStd_SeqNodeOfHSequenceOfHExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString::~Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray1OfPersistent;
class Handle_PColStd_HArray1OfPersistent : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfPersistent(const Handle_PColStd_HArray1OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfPersistent(const PColStd_HArray1OfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfPersistent & operator=(const Handle_PColStd_HArray1OfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfPersistent & operator=(const PColStd_HArray1OfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray1OfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray1OfPersistent {
	PColStd_HArray1OfPersistent* GetObject() {
	return (PColStd_HArray1OfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray1OfPersistent::~Handle_PColStd_HArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSequenceOfPersistent;
class Handle_PColStd_HSequenceOfPersistent : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent(const Handle_PColStd_HSequenceOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent(const PColStd_HSequenceOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent & operator=(const Handle_PColStd_HSequenceOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent & operator=(const PColStd_HSequenceOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSequenceOfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSequenceOfPersistent {
	PColStd_HSequenceOfPersistent* GetObject() {
	return (PColStd_HSequenceOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSequenceOfPersistent::~Handle_PColStd_HSequenceOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSequenceOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSingleListOfPersistent;
class Handle_PColStd_HSingleListOfPersistent : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent(const Handle_PColStd_HSingleListOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent(const PColStd_HSingleListOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent & operator=(const Handle_PColStd_HSingleListOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent & operator=(const PColStd_HSingleListOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSingleListOfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSingleListOfPersistent {
	PColStd_HSingleListOfPersistent* GetObject() {
	return (PColStd_HSingleListOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSingleListOfPersistent::~Handle_PColStd_HSingleListOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSingleListOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger;
class Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger(const PColStd_VArrayNodeOfFieldOfHArray2OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger & operator=(const PColStd_VArrayNodeOfFieldOfHArray2OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger {
	PColStd_VArrayNodeOfFieldOfHArray2OfInteger* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray2OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger::~Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString;
class Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString(const PColStd_SeqNodeOfHSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString & operator=(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString & operator=(const PColStd_SeqNodeOfHSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString {
	PColStd_SeqNodeOfHSequenceOfHAsciiString* GetObject() {
	return (PColStd_SeqNodeOfHSequenceOfHAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString::~Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray1OfReal;
class Handle_PColStd_HArray1OfReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal();
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal(const Handle_PColStd_HArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal(const PColStd_HArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal & operator=(const Handle_PColStd_HArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal & operator=(const PColStd_HArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray1OfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray1OfReal {
	PColStd_HArray1OfReal* GetObject() {
	return (PColStd_HArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray1OfReal::~Handle_PColStd_HArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HDoubleListOfPersistent;
class Handle_PColStd_HDoubleListOfPersistent : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent(const Handle_PColStd_HDoubleListOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent(const PColStd_HDoubleListOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent & operator=(const Handle_PColStd_HDoubleListOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent & operator=(const PColStd_HDoubleListOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HDoubleListOfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HDoubleListOfPersistent {
	PColStd_HDoubleListOfPersistent* GetObject() {
	return (PColStd_HDoubleListOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HDoubleListOfPersistent::~Handle_PColStd_HDoubleListOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HDoubleListOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal;
class Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal(const PColStd_VArrayNodeOfFieldOfHArray2OfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal & operator=(const PColStd_VArrayNodeOfFieldOfHArray2OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal {
	PColStd_VArrayNodeOfFieldOfHArray2OfReal* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray2OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal::~Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray2OfInteger;
class Handle_PColStd_HArray2OfInteger : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfInteger(const Handle_PColStd_HArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfInteger(const PColStd_HArray2OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfInteger & operator=(const Handle_PColStd_HArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfInteger & operator=(const PColStd_HArray2OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray2OfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray2OfInteger {
	PColStd_HArray2OfInteger* GetObject() {
	return (PColStd_HArray2OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray2OfInteger::~Handle_PColStd_HArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString;
class Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString(const PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString & operator=(const PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString {
	PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString::~Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray1OfInteger;
class Handle_PColStd_HArray1OfInteger : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger(const Handle_PColStd_HArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger(const PColStd_HArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger & operator=(const Handle_PColStd_HArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger & operator=(const PColStd_HArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray1OfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray1OfInteger {
	PColStd_HArray1OfInteger* GetObject() {
	return (PColStd_HArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray1OfInteger::~Handle_PColStd_HArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger;
class Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger(const PColStd_VArrayNodeOfFieldOfHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger & operator=(const Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger & operator=(const PColStd_VArrayNodeOfFieldOfHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger {
	PColStd_VArrayNodeOfFieldOfHArray1OfInteger* GetObject() {
	return (PColStd_VArrayNodeOfFieldOfHArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger::~Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_SeqNodeOfHSequenceOfPersistent;
class Handle_PColStd_SeqNodeOfHSequenceOfPersistent : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent();
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent(const PColStd_SeqNodeOfHSequenceOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent & operator=(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent & operator=(const PColStd_SeqNodeOfHSequenceOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_SeqNodeOfHSequenceOfPersistent DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_SeqNodeOfHSequenceOfPersistent {
	PColStd_SeqNodeOfHSequenceOfPersistent* GetObject() {
	return (PColStd_SeqNodeOfHSequenceOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_SeqNodeOfHSequenceOfPersistent::~Handle_PColStd_SeqNodeOfHSequenceOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_SeqNodeOfHSequenceOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HArray2OfReal;
class Handle_PColStd_HArray2OfReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal();
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal(const Handle_PColStd_HArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal(const PColStd_HArray2OfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal & operator=(const Handle_PColStd_HArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HArray2OfReal & operator=(const PColStd_HArray2OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HArray2OfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HArray2OfReal {
	PColStd_HArray2OfReal* GetObject() {
	return (PColStd_HArray2OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HArray2OfReal::~Handle_PColStd_HArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_HSingleListOfInteger;
class Handle_PColStd_HSingleListOfInteger : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger();
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger(const Handle_PColStd_HSingleListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger(const PColStd_HSingleListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger & operator=(const Handle_PColStd_HSingleListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger & operator=(const PColStd_HSingleListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_HSingleListOfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_HSingleListOfInteger {
	PColStd_HSingleListOfInteger* GetObject() {
	return (PColStd_HSingleListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_HSingleListOfInteger::~Handle_PColStd_HSingleListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_HSingleListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PColStd_SeqNodeOfHSequenceOfReal;
class Handle_PColStd_SeqNodeOfHSequenceOfReal : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal();
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal(const Handle_PColStd_SeqNodeOfHSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal(const PColStd_SeqNodeOfHSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal & operator=(const Handle_PColStd_SeqNodeOfHSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal & operator=(const PColStd_SeqNodeOfHSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_PColStd_SeqNodeOfHSequenceOfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColStd_SeqNodeOfHSequenceOfReal {
	PColStd_SeqNodeOfHSequenceOfReal* GetObject() {
	return (PColStd_SeqNodeOfHSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_PColStd_SeqNodeOfHSequenceOfReal::~Handle_PColStd_SeqNodeOfHSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PColStd_SeqNodeOfHSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString;
class PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString(const Handle_PCollection_HExtendedString &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PCollection_HExtendedString &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray1OfExtendedStringmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray1OfExtendedStringmyValue(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString {
	Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString::~PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray1OfReal;
class PColStd_VArrayTNodeOfFieldOfHArray1OfReal {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfReal();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray1OfReal::~PColStd_VArrayTNodeOfFieldOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HDoubleListOfInteger;
class PColStd_HDoubleListOfInteger : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HDoubleListOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger Construct(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger Tail() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger Previous() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HDoubleListOfInteger & WithList);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &T);
		%feature("autodoc", "1");
		void ChangeBackPointer(const Handle_PColStd_HDoubleListOfInteger &BackPointer);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HDoubleListOfInteger &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HDoubleListOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HDoubleListOfIntegerData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfIntegerData(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger _CSFDB_GetPColStd_HDoubleListOfIntegerNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfIntegerNext(const Handle_PColStd_HDoubleListOfInteger &p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfInteger _CSFDB_GetPColStd_HDoubleListOfIntegerBefore() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfIntegerBefore(const Handle_PColStd_HDoubleListOfInteger &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HDoubleListOfInteger {
	Handle_PColStd_HDoubleListOfInteger GetHandle() {
	return *(Handle_PColStd_HDoubleListOfInteger*) &$self;
	}
};
%extend PColStd_HDoubleListOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HDoubleListOfInteger::~PColStd_HDoubleListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HDoubleListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqExplorerOfHSequenceOfInteger;
class PColStd_SeqExplorerOfHSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		PColStd_SeqExplorerOfHSequenceOfInteger(const Handle_PColStd_HSequenceOfInteger &S);
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Integer &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Integer &T);

};
%feature("shadow") PColStd_SeqExplorerOfHSequenceOfInteger::~PColStd_SeqExplorerOfHSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqExplorerOfHSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HOfExtendedString;
class PColStd_HOfExtendedString {
	public:
		%feature("autodoc", "1");
		PColStd_HOfExtendedString();
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Handle_PCollection_HExtendedString &MyKey, const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compare(const Handle_PCollection_HExtendedString &One, const Handle_PCollection_HExtendedString &Two) const;

};
%feature("shadow") PColStd_HOfExtendedString::~PColStd_HOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray2OfInteger;
class PColStd_FieldOfHArray2OfInteger : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfInteger();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfInteger(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfInteger(const PColStd_FieldOfHArray2OfInteger &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray2OfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray2OfInteger &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray2OfInteger::~PColStd_FieldOfHArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray1OfExtendedString;
class PColStd_FieldOfHArray1OfExtendedString : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfExtendedString();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfExtendedString(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfExtendedString(const PColStd_FieldOfHArray1OfExtendedString &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray1OfExtendedString &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray1OfExtendedString &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HExtendedString &Value);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray1OfExtendedString::~PColStd_FieldOfHArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HOfReal;
class PColStd_HOfReal {
	public:
		%feature("autodoc", "1");
		PColStd_HOfReal();
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Standard_Real &MyKey, const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compare(const Standard_Real &One, const Standard_Real &Two) const;

};
%feature("shadow") PColStd_HOfReal::~PColStd_HOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray2OfInteger;
class PColStd_VArrayTNodeOfFieldOfHArray2OfInteger {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfInteger();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray2OfInteger::~PColStd_VArrayTNodeOfFieldOfHArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent;
class PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent::~PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray2OfReal;
class PColStd_FieldOfHArray2OfReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfReal();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfReal(const PColStd_FieldOfHArray2OfReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray2OfReal &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray2OfReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Index) {
				return (Standard_Real) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray2OfReal::~PColStd_FieldOfHArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSequenceOfHAsciiString;
class PColStd_HSequenceOfHAsciiString : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString First() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColStd_HSequenceOfHAsciiString &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColStd_HSequenceOfHAsciiString &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColStd_HSequenceOfHAsciiString &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColStd_HSequenceOfHAsciiString &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHAsciiString Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PCollection_HAsciiString &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HAsciiString &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HAsciiString &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HSequenceOfHAsciiString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString _CSFDB_GetPColStd_HSequenceOfHAsciiStringFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHAsciiStringFirstItem(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString _CSFDB_GetPColStd_HSequenceOfHAsciiStringLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHAsciiStringLastItem(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSequenceOfHAsciiStringSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHAsciiStringSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSequenceOfHAsciiString {
	Handle_PColStd_HSequenceOfHAsciiString GetHandle() {
	return *(Handle_PColStd_HSequenceOfHAsciiString*) &$self;
	}
};
%extend PColStd_HSequenceOfHAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSequenceOfHAsciiString::~PColStd_HSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSequenceOfReal;
class PColStd_HSequenceOfReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Real &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColStd_HSequenceOfReal &S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColStd_HSequenceOfReal &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Real &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColStd_HSequenceOfReal &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Real &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColStd_HSequenceOfReal &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfReal Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Real &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Real &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HSequenceOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal _CSFDB_GetPColStd_HSequenceOfRealFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfRealFirstItem(const Handle_PColStd_SeqNodeOfHSequenceOfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal _CSFDB_GetPColStd_HSequenceOfRealLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfRealLastItem(const Handle_PColStd_SeqNodeOfHSequenceOfReal &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSequenceOfRealSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfRealSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSequenceOfReal {
	Handle_PColStd_HSequenceOfReal GetHandle() {
	return *(Handle_PColStd_HSequenceOfReal*) &$self;
	}
};
%extend PColStd_HSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSequenceOfReal::~PColStd_HSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqNodeOfHSequenceOfReal;
class PColStd_SeqNodeOfHSequenceOfReal : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfReal(const Handle_PColStd_SeqNodeOfHSequenceOfReal &TheLast, const Standard_Real &TheItem);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfReal(const Standard_Real &TheItem, const Handle_PColStd_SeqNodeOfHSequenceOfReal &TheFirst);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfReal(const Handle_PColStd_SeqNodeOfHSequenceOfReal &ThePrevious, const Handle_PColStd_SeqNodeOfHSequenceOfReal &TheNext, const Standard_Real &TheItem);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal Next() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColStd_SeqNodeOfHSequenceOfReal &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfReal &ANode);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfReal();
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal _CSFDB_GetPColStd_SeqNodeOfHSequenceOfRealMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfRealMyPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfReal &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPColStd_SeqNodeOfHSequenceOfRealMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfRealMyItem(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfReal _CSFDB_GetPColStd_SeqNodeOfHSequenceOfRealMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfRealMyNext(const Handle_PColStd_SeqNodeOfHSequenceOfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_SeqNodeOfHSequenceOfReal {
	Handle_PColStd_SeqNodeOfHSequenceOfReal GetHandle() {
	return *(Handle_PColStd_SeqNodeOfHSequenceOfReal*) &$self;
	}
};
%extend PColStd_SeqNodeOfHSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_SeqNodeOfHSequenceOfReal::~PColStd_SeqNodeOfHSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqNodeOfHSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray1OfInteger;
class PColStd_VArrayTNodeOfFieldOfHArray1OfInteger {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfInteger();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray1OfInteger::~PColStd_VArrayTNodeOfFieldOfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray2OfInteger;
class PColStd_VArrayNodeOfFieldOfHArray2OfInteger : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfInteger();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray2OfIntegermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray2OfIntegermyValue(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfInteger {
	Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray2OfInteger*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray2OfInteger::~PColStd_VArrayNodeOfFieldOfHArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSingleListOfPersistent;
class PColStd_HSingleListOfPersistent : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HSingleListOfPersistent();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent Construct(const Handle_Standard_Persistent &T) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent Tail() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HSingleListOfPersistent & WithList);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HSingleListOfPersistent &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HSingleListOfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_Standard_Persistent _CSFDB_GetPColStd_HSingleListOfPersistentData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfPersistentData(const Handle_Standard_Persistent &p);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfPersistent _CSFDB_GetPColStd_HSingleListOfPersistentNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfPersistentNext(const Handle_PColStd_HSingleListOfPersistent &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSingleListOfPersistent {
	Handle_PColStd_HSingleListOfPersistent GetHandle() {
	return *(Handle_PColStd_HSingleListOfPersistent*) &$self;
	}
};
%extend PColStd_HSingleListOfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSingleListOfPersistent::~PColStd_HSingleListOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSingleListOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray1OfPersistent;
class PColStd_VArrayNodeOfFieldOfHArray1OfPersistent : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfPersistent();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfPersistent(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_Standard_Persistent _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray1OfPersistentmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray1OfPersistentmyValue(const Handle_Standard_Persistent &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfPersistent {
	Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray1OfPersistent*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray1OfPersistent::~PColStd_VArrayNodeOfFieldOfHArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSequenceOfHExtendedString;
class PColStd_HSequenceOfHExtendedString : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString First() const;
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColStd_HSequenceOfHExtendedString &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColStd_HSequenceOfHExtendedString &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColStd_HSequenceOfHExtendedString &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColStd_HSequenceOfHExtendedString &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfHExtendedString Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PCollection_HExtendedString &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HExtendedString &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HExtendedString &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HSequenceOfHExtendedString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString _CSFDB_GetPColStd_HSequenceOfHExtendedStringFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHExtendedStringFirstItem(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString _CSFDB_GetPColStd_HSequenceOfHExtendedStringLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHExtendedStringLastItem(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSequenceOfHExtendedStringSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfHExtendedStringSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSequenceOfHExtendedString {
	Handle_PColStd_HSequenceOfHExtendedString GetHandle() {
	return *(Handle_PColStd_HSequenceOfHExtendedString*) &$self;
	}
};
%extend PColStd_HSequenceOfHExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSequenceOfHExtendedString::~PColStd_HSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent;
class PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent::~PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray1OfReal;
class PColStd_HArray1OfReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray1OfReal();
		%feature("autodoc", "1");
		PColStd_HArray1OfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfRealLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfRealLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfRealUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfRealUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray1OfReal & _CSFDB_GetPColStd_HArray1OfRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray1OfReal {
	Handle_PColStd_HArray1OfReal GetHandle() {
	return *(Handle_PColStd_HArray1OfReal*) &$self;
	}
};
%extend PColStd_HArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray1OfReal::~PColStd_HArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray2OfPersistent;
class PColStd_HArray2OfPersistent : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray2OfPersistent(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColStd_HArray2OfPersistent(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_Standard_Persistent &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray2OfPersistent();
		%feature("autodoc", "1");
		PColStd_HArray2OfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfPersistentmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfPersistentmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfPersistentmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfPersistentmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfPersistentmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfPersistentmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfPersistentmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfPersistentmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray2OfPersistent & _CSFDB_GetPColStd_HArray2OfPersistentData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray2OfPersistent {
	Handle_PColStd_HArray2OfPersistent GetHandle() {
	return *(Handle_PColStd_HArray2OfPersistent*) &$self;
	}
};
%extend PColStd_HArray2OfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray2OfPersistent::~PColStd_HArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray2OfPersistent;
class PColStd_VArrayNodeOfFieldOfHArray2OfPersistent : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfPersistent();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfPersistent(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_Standard_Persistent _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray2OfPersistentmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray2OfPersistentmyValue(const Handle_Standard_Persistent &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfPersistent {
	Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray2OfPersistent*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray2OfPersistent::~PColStd_VArrayNodeOfFieldOfHArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqExplorerOfHSequenceOfReal;
class PColStd_SeqExplorerOfHSequenceOfReal {
	public:
		%feature("autodoc", "1");
		PColStd_SeqExplorerOfHSequenceOfReal(const Handle_PColStd_HSequenceOfReal &S);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Real &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Real &T);

};
%feature("shadow") PColStd_SeqExplorerOfHSequenceOfReal::~PColStd_SeqExplorerOfHSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqExplorerOfHSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray2OfReal;
class PColStd_VArrayTNodeOfFieldOfHArray2OfReal {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfReal();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray2OfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray2OfReal::~PColStd_VArrayTNodeOfFieldOfHArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqExplorerOfHSequenceOfHExtendedString;
class PColStd_SeqExplorerOfHSequenceOfHExtendedString {
	public:
		%feature("autodoc", "1");
		PColStd_SeqExplorerOfHSequenceOfHExtendedString(const Handle_PColStd_HSequenceOfHExtendedString &S);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PCollection_HExtendedString &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HExtendedString &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HExtendedString &T);

};
%feature("shadow") PColStd_SeqExplorerOfHSequenceOfHExtendedString::~PColStd_SeqExplorerOfHSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqExplorerOfHSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray2OfPersistent;
class PColStd_FieldOfHArray2OfPersistent : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfPersistent();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfPersistent(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray2OfPersistent(const PColStd_FieldOfHArray2OfPersistent &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray2OfPersistent &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray2OfPersistent &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray2OfPersistent::~PColStd_FieldOfHArray2OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray2OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqNodeOfHSequenceOfInteger;
class PColStd_SeqNodeOfHSequenceOfInteger : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfInteger(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &TheLast, const Standard_Integer &TheItem);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfInteger(const Standard_Integer &TheItem, const Handle_PColStd_SeqNodeOfHSequenceOfInteger &TheFirst);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfInteger(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &ThePrevious, const Handle_PColStd_SeqNodeOfHSequenceOfInteger &TheNext, const Standard_Integer &TheItem);
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger Next() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &ANode);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfInteger();
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger _CSFDB_GetPColStd_SeqNodeOfHSequenceOfIntegerMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfIntegerMyPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_SeqNodeOfHSequenceOfIntegerMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfIntegerMyItem(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger _CSFDB_GetPColStd_SeqNodeOfHSequenceOfIntegerMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfIntegerMyNext(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_SeqNodeOfHSequenceOfInteger {
	Handle_PColStd_SeqNodeOfHSequenceOfInteger GetHandle() {
	return *(Handle_PColStd_SeqNodeOfHSequenceOfInteger*) &$self;
	}
};
%extend PColStd_SeqNodeOfHSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_SeqNodeOfHSequenceOfInteger::~PColStd_SeqNodeOfHSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqNodeOfHSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HOfInteger;
class PColStd_HOfInteger {
	public:
		%feature("autodoc", "1");
		PColStd_HOfInteger();
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Standard_Integer &MyKey, const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compare(const Standard_Integer &One, const Standard_Integer &Two) const;

};
%feature("shadow") PColStd_HOfInteger::~PColStd_HOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqNodeOfHSequenceOfHAsciiString;
class PColStd_SeqNodeOfHSequenceOfHAsciiString : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHAsciiString(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &TheLast, const Handle_PCollection_HAsciiString &TheItem);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHAsciiString(const Handle_PCollection_HAsciiString &TheItem, const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &TheFirst);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHAsciiString(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &ThePrevious, const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &TheNext, const Handle_PCollection_HAsciiString &TheItem);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString Next() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_PCollection_HAsciiString &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &ANode);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHAsciiString();
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHAsciiString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyItem(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHAsciiStringMyNext(const Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_SeqNodeOfHSequenceOfHAsciiString {
	Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString GetHandle() {
	return *(Handle_PColStd_SeqNodeOfHSequenceOfHAsciiString*) &$self;
	}
};
%extend PColStd_SeqNodeOfHSequenceOfHAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_SeqNodeOfHSequenceOfHAsciiString::~PColStd_SeqNodeOfHSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqNodeOfHSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HDoubleListOfPersistent;
class PColStd_HDoubleListOfPersistent : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HDoubleListOfPersistent();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent Construct(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent Tail() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent Previous() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HDoubleListOfPersistent & WithList);
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void ChangeBackPointer(const Handle_PColStd_HDoubleListOfPersistent &BackPointer);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HDoubleListOfPersistent &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HDoubleListOfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_Standard_Persistent _CSFDB_GetPColStd_HDoubleListOfPersistentData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfPersistentData(const Handle_Standard_Persistent &p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent _CSFDB_GetPColStd_HDoubleListOfPersistentNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfPersistentNext(const Handle_PColStd_HDoubleListOfPersistent &p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfPersistent _CSFDB_GetPColStd_HDoubleListOfPersistentBefore() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfPersistentBefore(const Handle_PColStd_HDoubleListOfPersistent &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HDoubleListOfPersistent {
	Handle_PColStd_HDoubleListOfPersistent GetHandle() {
	return *(Handle_PColStd_HDoubleListOfPersistent*) &$self;
	}
};
%extend PColStd_HDoubleListOfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HDoubleListOfPersistent::~PColStd_HDoubleListOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HDoubleListOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray2OfReal;
class PColStd_VArrayNodeOfFieldOfHArray2OfReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfReal();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray2OfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray2OfRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray2OfRealmyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfReal {
	Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray2OfReal*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray2OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray2OfReal::~PColStd_VArrayNodeOfFieldOfHArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray1OfReal;
class PColStd_VArrayNodeOfFieldOfHArray1OfReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfReal();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray1OfRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray1OfRealmyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfReal {
	Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray1OfReal*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray1OfReal::~PColStd_VArrayNodeOfFieldOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSingleListOfReal;
class PColStd_HSingleListOfReal : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HSingleListOfReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal Construct(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal Tail() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HSingleListOfReal & WithList);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &T);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HSingleListOfReal &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HSingleListOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPColStd_HSingleListOfRealData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfRealData(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfReal _CSFDB_GetPColStd_HSingleListOfRealNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfRealNext(const Handle_PColStd_HSingleListOfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSingleListOfReal {
	Handle_PColStd_HSingleListOfReal GetHandle() {
	return *(Handle_PColStd_HSingleListOfReal*) &$self;
	}
};
%extend PColStd_HSingleListOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSingleListOfReal::~PColStd_HSingleListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSingleListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqExplorerOfHSequenceOfHAsciiString;
class PColStd_SeqExplorerOfHSequenceOfHAsciiString {
	public:
		%feature("autodoc", "1");
		PColStd_SeqExplorerOfHSequenceOfHAsciiString(const Handle_PColStd_HSequenceOfHAsciiString &S);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PCollection_HAsciiString &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HAsciiString &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PCollection_HAsciiString &T);

};
%feature("shadow") PColStd_SeqExplorerOfHSequenceOfHAsciiString::~PColStd_SeqExplorerOfHSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqExplorerOfHSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HDoubleListOfReal;
class PColStd_HDoubleListOfReal : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HDoubleListOfReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal Construct(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal Tail() const;
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal Previous() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HDoubleListOfReal & WithList);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &T);
		%feature("autodoc", "1");
		void ChangeBackPointer(const Handle_PColStd_HDoubleListOfReal &BackPointer);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HDoubleListOfReal &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HDoubleListOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPColStd_HDoubleListOfRealData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfRealData(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal _CSFDB_GetPColStd_HDoubleListOfRealNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfRealNext(const Handle_PColStd_HDoubleListOfReal &p);
		%feature("autodoc", "1");
		Handle_PColStd_HDoubleListOfReal _CSFDB_GetPColStd_HDoubleListOfRealBefore() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HDoubleListOfRealBefore(const Handle_PColStd_HDoubleListOfReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HDoubleListOfReal {
	Handle_PColStd_HDoubleListOfReal GetHandle() {
	return *(Handle_PColStd_HDoubleListOfReal*) &$self;
	}
};
%extend PColStd_HDoubleListOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HDoubleListOfReal::~PColStd_HDoubleListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HDoubleListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSequenceOfInteger;
class PColStd_HSequenceOfInteger : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColStd_HSequenceOfInteger &S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColStd_HSequenceOfInteger &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Integer &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColStd_HSequenceOfInteger &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Integer &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColStd_HSequenceOfInteger &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfInteger Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Integer &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Integer &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HSequenceOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger _CSFDB_GetPColStd_HSequenceOfIntegerFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfIntegerFirstItem(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfInteger _CSFDB_GetPColStd_HSequenceOfIntegerLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfIntegerLastItem(const Handle_PColStd_SeqNodeOfHSequenceOfInteger &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSequenceOfIntegerSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfIntegerSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSequenceOfInteger {
	Handle_PColStd_HSequenceOfInteger GetHandle() {
	return *(Handle_PColStd_HSequenceOfInteger*) &$self;
	}
};
%extend PColStd_HSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSequenceOfInteger::~PColStd_HSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray1OfInteger;
class PColStd_FieldOfHArray1OfInteger : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfInteger();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfInteger(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfInteger(const PColStd_FieldOfHArray1OfInteger &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray1OfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray1OfInteger &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray1OfInteger::~PColStd_FieldOfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqExplorerOfHSequenceOfPersistent;
class PColStd_SeqExplorerOfHSequenceOfPersistent {
	public:
		%feature("autodoc", "1");
		PColStd_SeqExplorerOfHSequenceOfPersistent(const Handle_PColStd_HSequenceOfPersistent &S);
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_Standard_Persistent &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_Standard_Persistent &T);

};
%feature("shadow") PColStd_SeqExplorerOfHSequenceOfPersistent::~PColStd_SeqExplorerOfHSequenceOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqExplorerOfHSequenceOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray1OfReal;
class PColStd_FieldOfHArray1OfReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfReal();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfReal(const PColStd_FieldOfHArray1OfReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray1OfReal &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray1OfReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Index) {
				return (Standard_Real) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray1OfReal::~PColStd_FieldOfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray1OfInteger;
class PColStd_HArray1OfInteger : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up, const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray1OfInteger();
		%feature("autodoc", "1");
		PColStd_HArray1OfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfIntegerLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfIntegerLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfIntegerUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfIntegerUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray1OfInteger & _CSFDB_GetPColStd_HArray1OfIntegerData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray1OfInteger {
	Handle_PColStd_HArray1OfInteger GetHandle() {
	return *(Handle_PColStd_HArray1OfInteger*) &$self;
	}
};
%extend PColStd_HArray1OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray1OfInteger::~PColStd_HArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSequenceOfPersistent;
class PColStd_HSequenceOfPersistent : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HSequenceOfPersistent();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent First() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColStd_HSequenceOfPersistent &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColStd_HSequenceOfPersistent &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColStd_HSequenceOfPersistent &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColStd_HSequenceOfPersistent &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColStd_HSequenceOfPersistent Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Persistent &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_Standard_Persistent &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_Standard_Persistent &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PColStd_HSequenceOfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent _CSFDB_GetPColStd_HSequenceOfPersistentFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfPersistentFirstItem(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent _CSFDB_GetPColStd_HSequenceOfPersistentLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfPersistentLastItem(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSequenceOfPersistentSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSequenceOfPersistentSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSequenceOfPersistent {
	Handle_PColStd_HSequenceOfPersistent GetHandle() {
	return *(Handle_PColStd_HSequenceOfPersistent*) &$self;
	}
};
%extend PColStd_HSequenceOfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSequenceOfPersistent::~PColStd_HSequenceOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSequenceOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString;
class PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString();
		%feature("autodoc", "1");
		PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString(const Handle_PCollection_HExtendedString &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PCollection_HExtendedString &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString::~PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayTNodeOfFieldOfHArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray1OfPersistent;
class PColStd_HArray1OfPersistent : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray1OfPersistent(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColStd_HArray1OfPersistent(const Standard_Integer Low, const Standard_Integer Up, const Handle_Standard_Persistent &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray1OfPersistent();
		%feature("autodoc", "1");
		PColStd_HArray1OfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfPersistentLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfPersistentLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfPersistentUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfPersistentUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray1OfPersistent & _CSFDB_GetPColStd_HArray1OfPersistentData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray1OfPersistent {
	Handle_PColStd_HArray1OfPersistent GetHandle() {
	return *(Handle_PColStd_HArray1OfPersistent*) &$self;
	}
};
%extend PColStd_HArray1OfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray1OfPersistent::~PColStd_HArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HOfAsciiString;
class PColStd_HOfAsciiString {
	public:
		%feature("autodoc", "1");
		PColStd_HOfAsciiString();
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Handle_PCollection_HAsciiString &MyKey, const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compare(const Handle_PCollection_HAsciiString &One, const Handle_PCollection_HAsciiString &Two) const;

};
%feature("shadow") PColStd_HOfAsciiString::~PColStd_HOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HashAsciiString;
class PColStd_HashAsciiString : public PColStd_HOfAsciiString {
	public:
		%feature("autodoc", "1");
		PColStd_HashAsciiString();

};
%feature("shadow") PColStd_HashAsciiString::~PColStd_HashAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HashAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_VArrayNodeOfFieldOfHArray1OfInteger;
class PColStd_VArrayNodeOfFieldOfHArray1OfInteger : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfInteger();
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColStd_VArrayNodeOfFieldOfHArray1OfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_VArrayNodeOfFieldOfHArray1OfIntegermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_VArrayNodeOfFieldOfHArray1OfIntegermyValue(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfInteger {
	Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger GetHandle() {
	return *(Handle_PColStd_VArrayNodeOfFieldOfHArray1OfInteger*) &$self;
	}
};
%extend PColStd_VArrayNodeOfFieldOfHArray1OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_VArrayNodeOfFieldOfHArray1OfInteger::~PColStd_VArrayNodeOfFieldOfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_VArrayNodeOfFieldOfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_FieldOfHArray1OfPersistent;
class PColStd_FieldOfHArray1OfPersistent : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfPersistent();
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfPersistent(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColStd_FieldOfHArray1OfPersistent(const PColStd_FieldOfHArray1OfPersistent &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColStd_FieldOfHArray1OfPersistent &Other);
		%feature("autodoc", "1");
		void operator=(const PColStd_FieldOfHArray1OfPersistent &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PColStd_FieldOfHArray1OfPersistent::~PColStd_FieldOfHArray1OfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_FieldOfHArray1OfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HSingleListOfInteger;
class PColStd_HSingleListOfInteger : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_HSingleListOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger Construct(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger Tail() const;
		%feature("autodoc", "1");
		void SwapTail(Handle_PColStd_HSingleListOfInteger & WithList);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &T);
		%feature("autodoc", "1");
		void ChangeForwardPointer(const Handle_PColStd_HSingleListOfInteger &ForwardPointer);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HSingleListOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HSingleListOfIntegerData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfIntegerData(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_HSingleListOfInteger _CSFDB_GetPColStd_HSingleListOfIntegerNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HSingleListOfIntegerNext(const Handle_PColStd_HSingleListOfInteger &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HSingleListOfInteger {
	Handle_PColStd_HSingleListOfInteger GetHandle() {
	return *(Handle_PColStd_HSingleListOfInteger*) &$self;
	}
};
%extend PColStd_HSingleListOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HSingleListOfInteger::~PColStd_HSingleListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HSingleListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqNodeOfHSequenceOfHExtendedString;
class PColStd_SeqNodeOfHSequenceOfHExtendedString : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHExtendedString(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &TheLast, const Handle_PCollection_HExtendedString &TheItem);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHExtendedString(const Handle_PCollection_HExtendedString &TheItem, const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &TheFirst);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHExtendedString(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &ThePrevious, const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &TheNext, const Handle_PCollection_HExtendedString &TheItem);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString Next() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_PCollection_HExtendedString &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &ANode);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHExtendedString();
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfHExtendedString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyItem(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString _CSFDB_GetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfHExtendedStringMyNext(const Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_SeqNodeOfHSequenceOfHExtendedString {
	Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString GetHandle() {
	return *(Handle_PColStd_SeqNodeOfHSequenceOfHExtendedString*) &$self;
	}
};
%extend PColStd_SeqNodeOfHSequenceOfHExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_SeqNodeOfHSequenceOfHExtendedString::~PColStd_SeqNodeOfHSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqNodeOfHSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray2OfInteger;
class PColStd_HArray2OfInteger : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray2OfInteger();
		%feature("autodoc", "1");
		PColStd_HArray2OfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfIntegermyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfIntegermyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfIntegermyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfIntegermyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfIntegermyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfIntegermyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfIntegermyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfIntegermyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray2OfInteger & _CSFDB_GetPColStd_HArray2OfIntegerData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray2OfInteger {
	Handle_PColStd_HArray2OfInteger GetHandle() {
	return *(Handle_PColStd_HArray2OfInteger*) &$self;
	}
};
%extend PColStd_HArray2OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray2OfInteger::~PColStd_HArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray2OfReal;
class PColStd_HArray2OfReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray2OfReal();
		%feature("autodoc", "1");
		PColStd_HArray2OfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfRealmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfRealmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfRealmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfRealmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfRealmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfRealmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray2OfRealmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray2OfRealmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray2OfReal & _CSFDB_GetPColStd_HArray2OfRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray2OfReal {
	Handle_PColStd_HArray2OfReal GetHandle() {
	return *(Handle_PColStd_HArray2OfReal*) &$self;
	}
};
%extend PColStd_HArray2OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray2OfReal::~PColStd_HArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HashExtendedString;
class PColStd_HashExtendedString : public PColStd_HOfExtendedString {
	public:
		%feature("autodoc", "1");
		PColStd_HashExtendedString();
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Handle_PCollection_HExtendedString &MyKey, const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compare(const Handle_PCollection_HExtendedString &One, const Handle_PCollection_HExtendedString &Two) const;

};
%feature("shadow") PColStd_HashExtendedString::~PColStd_HashExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HashExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_SeqNodeOfHSequenceOfPersistent;
class PColStd_SeqNodeOfHSequenceOfPersistent : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfPersistent(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &TheLast, const Handle_Standard_Persistent &TheItem);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfPersistent(const Handle_Standard_Persistent &TheItem, const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &TheFirst);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfPersistent(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &ThePrevious, const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &TheNext, const Handle_Standard_Persistent &TheItem);
		%feature("autodoc", "1");
		Handle_Standard_Persistent Value() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent Next() const;
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Standard_Persistent &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &ANode);
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfPersistent();
		%feature("autodoc", "1");
		PColStd_SeqNodeOfHSequenceOfPersistent(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent _CSFDB_GetPColStd_SeqNodeOfHSequenceOfPersistentMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfPersistentMyPrevious(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &p);
		%feature("autodoc", "1");
		Handle_Standard_Persistent _CSFDB_GetPColStd_SeqNodeOfHSequenceOfPersistentMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfPersistentMyItem(const Handle_Standard_Persistent &p);
		%feature("autodoc", "1");
		Handle_PColStd_SeqNodeOfHSequenceOfPersistent _CSFDB_GetPColStd_SeqNodeOfHSequenceOfPersistentMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_SeqNodeOfHSequenceOfPersistentMyNext(const Handle_PColStd_SeqNodeOfHSequenceOfPersistent &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_SeqNodeOfHSequenceOfPersistent {
	Handle_PColStd_SeqNodeOfHSequenceOfPersistent GetHandle() {
	return *(Handle_PColStd_SeqNodeOfHSequenceOfPersistent*) &$self;
	}
};
%extend PColStd_SeqNodeOfHSequenceOfPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_SeqNodeOfHSequenceOfPersistent::~PColStd_SeqNodeOfHSequenceOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_SeqNodeOfHSequenceOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PColStd_HArray1OfExtendedString;
class PColStd_HArray1OfExtendedString : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up, const Handle_PCollection_HExtendedString &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HExtendedString &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PColStd_HArray1OfExtendedString();
		%feature("autodoc", "1");
		PColStd_HArray1OfExtendedString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfExtendedStringLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfExtendedStringLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColStd_HArray1OfExtendedStringUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColStd_HArray1OfExtendedStringUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColStd_FieldOfHArray1OfExtendedString & _CSFDB_GetPColStd_HArray1OfExtendedStringData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColStd_HArray1OfExtendedString {
	Handle_PColStd_HArray1OfExtendedString GetHandle() {
	return *(Handle_PColStd_HArray1OfExtendedString*) &$self;
	}
};
%extend PColStd_HArray1OfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PColStd_HArray1OfExtendedString::~PColStd_HArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PColStd_HArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};
