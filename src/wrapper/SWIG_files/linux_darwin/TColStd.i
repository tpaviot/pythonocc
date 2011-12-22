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

%module TColStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TColStd_renames.i


%include TColStd_required_python_modules.i


%include TColStd_dependencies.i


%include TColStd_headers.i




%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(const Handle_TColStd_SequenceNodeOfSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(const TColStd_SequenceNodeOfSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString & operator=(const TColStd_SequenceNodeOfSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
	TColStd_SequenceNodeOfSequenceOfExtendedString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfExtendedString::~Handle_TColStd_SequenceNodeOfSequenceOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSetOfInteger;
class Handle_TColStd_HSetOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger(const Handle_TColStd_HSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger(const TColStd_HSetOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger & operator=(const Handle_TColStd_HSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger & operator=(const TColStd_HSetOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSetOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfInteger {
	TColStd_HSetOfInteger* GetObject() {
	return (TColStd_HSetOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSetOfInteger::~Handle_TColStd_HSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfListOfTransient;
class Handle_TColStd_ListNodeOfListOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient(const Handle_TColStd_ListNodeOfListOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient(const TColStd_ListNodeOfListOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient & operator=(const Handle_TColStd_ListNodeOfListOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfTransient & operator=(const TColStd_ListNodeOfListOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfListOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfTransient {
	TColStd_ListNodeOfListOfTransient* GetObject() {
	return (TColStd_ListNodeOfListOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfListOfTransient::~Handle_TColStd_ListNodeOfListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfByte;
class Handle_TColStd_HArray1OfByte : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte(const Handle_TColStd_HArray1OfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte(const TColStd_HArray1OfByte *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte & operator=(const Handle_TColStd_HArray1OfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte & operator=(const TColStd_HArray1OfByte *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfByte DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfByte {
	TColStd_HArray1OfByte* GetObject() {
	return (TColStd_HArray1OfByte*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfByte::~Handle_TColStd_HArray1OfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfHExtendedString;
class Handle_TColStd_HSequenceOfHExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString(const Handle_TColStd_HSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString(const TColStd_HSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString & operator=(const Handle_TColStd_HSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString & operator=(const TColStd_HSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfHExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfHExtendedString {
	TColStd_HSequenceOfHExtendedString* GetObject() {
	return (TColStd_HSequenceOfHExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfHExtendedString::~Handle_TColStd_HSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger & operator=(const TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString;
class Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(const Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(const TColStd_SequenceNodeOfSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString & operator=(const TColStd_SequenceNodeOfSequenceOfHExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
	TColStd_SequenceNodeOfSequenceOfHExtendedString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfHExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString::~Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfStringInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfStringInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger(const Handle_TColStd_DataMapNodeOfDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger(const TColStd_DataMapNodeOfDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger & operator=(const TColStd_DataMapNodeOfDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfStringInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfStringInteger {
	TColStd_DataMapNodeOfDataMapOfStringInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfStringInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfStringInteger::~Handle_TColStd_DataMapNodeOfDataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;
class Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient & operator=(const Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient & operator=(const TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient* GetObject() {
	return (TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient::~Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HPackedMapOfInteger;
class Handle_TColStd_HPackedMapOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger(const Handle_TColStd_HPackedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger(const TColStd_HPackedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger & operator=(const Handle_TColStd_HPackedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HPackedMapOfInteger & operator=(const TColStd_HPackedMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HPackedMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HPackedMapOfInteger {
	TColStd_HPackedMapOfInteger* GetObject() {
	return (TColStd_HPackedMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HPackedMapOfInteger::~Handle_TColStd_HPackedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HPackedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfAsciiString;
class Handle_TColStd_StdMapNodeOfMapOfAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfAsciiString(const Handle_TColStd_StdMapNodeOfMapOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfAsciiString(const TColStd_StdMapNodeOfMapOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfAsciiString & operator=(const Handle_TColStd_StdMapNodeOfMapOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfAsciiString & operator=(const TColStd_StdMapNodeOfMapOfAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StdMapNodeOfMapOfAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfAsciiString {
	TColStd_StdMapNodeOfMapOfAsciiString* GetObject() {
	return (TColStd_StdMapNodeOfMapOfAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfAsciiString::~Handle_TColStd_StdMapNodeOfMapOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StdMapNodeOfMapOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(const Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(const TColStd_SequenceNodeOfSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString & operator=(const TColStd_SequenceNodeOfSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
	TColStd_SequenceNodeOfSequenceOfHAsciiString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfHAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString::~Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient;
class Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient(const Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient(const TColStd_DataMapNodeOfDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient & operator=(const TColStd_DataMapNodeOfDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient {
	TColStd_DataMapNodeOfDataMapOfTransientTransient* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfTransientTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient::~Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfInteger;
class Handle_TColStd_StdMapNodeOfMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger(const Handle_TColStd_StdMapNodeOfMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger(const TColStd_StdMapNodeOfMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger & operator=(const Handle_TColStd_StdMapNodeOfMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfInteger & operator=(const TColStd_StdMapNodeOfMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StdMapNodeOfMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
	TColStd_StdMapNodeOfMapOfInteger* GetObject() {
	return (TColStd_StdMapNodeOfMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfInteger::~Handle_TColStd_StdMapNodeOfMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfInteger;
class Handle_TColStd_ListNodeOfSetListOfSetOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger(const Handle_TColStd_ListNodeOfSetListOfSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger(const TColStd_ListNodeOfSetListOfSetOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger & operator=(const Handle_TColStd_ListNodeOfSetListOfSetOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfInteger & operator=(const TColStd_ListNodeOfSetListOfSetOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfSetListOfSetOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
	TColStd_ListNodeOfSetListOfSetOfInteger* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfInteger::~Handle_TColStd_ListNodeOfSetListOfSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfInteger;
class Handle_TColStd_HArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger(const Handle_TColStd_HArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger(const TColStd_HArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & operator=(const Handle_TColStd_HArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & operator=(const TColStd_HArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfInteger {
	TColStd_HArray1OfInteger* GetObject() {
	return (TColStd_HArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfInteger::~Handle_TColStd_HArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfTransient;
class Handle_TColStd_HArray1OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient(const Handle_TColStd_HArray1OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient(const TColStd_HArray1OfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient & operator=(const Handle_TColStd_HArray1OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient & operator=(const TColStd_HArray1OfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfTransient {
	TColStd_HArray1OfTransient* GetObject() {
	return (TColStd_HArray1OfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfTransient::~Handle_TColStd_HArray1OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfReal;
class Handle_TColStd_HSequenceOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal(const Handle_TColStd_HSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal(const TColStd_HSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal & operator=(const Handle_TColStd_HSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal & operator=(const TColStd_HSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfReal {
	TColStd_HSequenceOfReal* GetObject() {
	return (TColStd_HSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfReal::~Handle_TColStd_HSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient(const TColStd_DataMapNodeOfDataMapOfIntegerTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient & operator=(const TColStd_DataMapNodeOfDataMapOfIntegerTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient {
	TColStd_DataMapNodeOfDataMapOfIntegerTransient* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfTransient;
class Handle_TColStd_ListNodeOfSetListOfSetOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient(const Handle_TColStd_ListNodeOfSetListOfSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient(const TColStd_ListNodeOfSetListOfSetOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient & operator=(const Handle_TColStd_ListNodeOfSetListOfSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfTransient & operator=(const TColStd_ListNodeOfSetListOfSetOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfSetListOfSetOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
	TColStd_ListNodeOfSetListOfSetOfTransient* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfTransient::~Handle_TColStd_ListNodeOfSetListOfSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(const TColStd_IndexedMapNodeOfIndexedMapOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal & operator=(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal & operator=(const TColStd_IndexedMapNodeOfIndexedMapOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
	TColStd_IndexedMapNodeOfIndexedMapOfReal* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfBoolean;
class Handle_TColStd_SequenceNodeOfSequenceOfBoolean : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfBoolean();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfBoolean(const Handle_TColStd_SequenceNodeOfSequenceOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfBoolean(const TColStd_SequenceNodeOfSequenceOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfBoolean & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfBoolean & operator=(const TColStd_SequenceNodeOfSequenceOfBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfBoolean DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfBoolean {
	TColStd_SequenceNodeOfSequenceOfBoolean* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfBoolean::~Handle_TColStd_SequenceNodeOfSequenceOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSetOfReal;
class Handle_TColStd_HSetOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal(const Handle_TColStd_HSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal(const TColStd_HSetOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal & operator=(const Handle_TColStd_HSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal & operator=(const TColStd_HSetOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSetOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfReal {
	TColStd_HSetOfReal* GetObject() {
	return (TColStd_HSetOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSetOfReal::~Handle_TColStd_HSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfTransient;
class Handle_TColStd_HSequenceOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient(const Handle_TColStd_HSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient(const TColStd_HSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient & operator=(const Handle_TColStd_HSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient & operator=(const TColStd_HSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfTransient {
	TColStd_HSequenceOfTransient* GetObject() {
	return (TColStd_HSequenceOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfTransient::~Handle_TColStd_HSequenceOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(const TColStd_IndexedMapNodeOfIndexedMapOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient & operator=(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient & operator=(const TColStd_IndexedMapNodeOfIndexedMapOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	TColStd_IndexedMapNodeOfIndexedMapOfTransient* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfCharacter;
class Handle_TColStd_HArray1OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter(const Handle_TColStd_HArray1OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter(const TColStd_HArray1OfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter & operator=(const Handle_TColStd_HArray1OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfCharacter & operator=(const TColStd_HArray1OfCharacter *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfCharacter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfCharacter {
	TColStd_HArray1OfCharacter* GetObject() {
	return (TColStd_HArray1OfCharacter*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfCharacter::~Handle_TColStd_HArray1OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StackNodeOfStackOfReal;
class Handle_TColStd_StackNodeOfStackOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal(const Handle_TColStd_StackNodeOfStackOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal(const TColStd_StackNodeOfStackOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal & operator=(const Handle_TColStd_StackNodeOfStackOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfReal & operator=(const TColStd_StackNodeOfStackOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StackNodeOfStackOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfReal {
	TColStd_StackNodeOfStackOfReal* GetObject() {
	return (TColStd_StackNodeOfStackOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StackNodeOfStackOfReal::~Handle_TColStd_StackNodeOfStackOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StackNodeOfStackOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfBoolean;
class Handle_TColStd_HArray1OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean(const Handle_TColStd_HArray1OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean(const TColStd_HArray1OfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean & operator=(const Handle_TColStd_HArray1OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfBoolean & operator=(const TColStd_HArray1OfBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfBoolean DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfBoolean {
	TColStd_HArray1OfBoolean* GetObject() {
	return (TColStd_HArray1OfBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfBoolean::~Handle_TColStd_HArray1OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfHAsciiString;
class Handle_TColStd_HSequenceOfHAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString(const Handle_TColStd_HSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString(const TColStd_HSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString & operator=(const Handle_TColStd_HSequenceOfHAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString & operator=(const TColStd_HSequenceOfHAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfHAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfHAsciiString {
	TColStd_HSequenceOfHAsciiString* GetObject() {
	return (TColStd_HSequenceOfHAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfHAsciiString::~Handle_TColStd_HSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfInteger;
class Handle_TColStd_SequenceNodeOfSequenceOfInteger : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger(const Handle_TColStd_SequenceNodeOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger(const TColStd_SequenceNodeOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfInteger & operator=(const TColStd_SequenceNodeOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
	TColStd_SequenceNodeOfSequenceOfInteger* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfInteger::~Handle_TColStd_SequenceNodeOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfExtendedString;
class Handle_TColStd_HSequenceOfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString(const Handle_TColStd_HSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString(const TColStd_HSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString & operator=(const Handle_TColStd_HSequenceOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString & operator=(const TColStd_HSequenceOfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfExtendedString {
	TColStd_HSequenceOfExtendedString* GetObject() {
	return (TColStd_HSequenceOfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfExtendedString::~Handle_TColStd_HSequenceOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfInteger;
class Handle_TColStd_QueueNodeOfQueueOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger(const Handle_TColStd_QueueNodeOfQueueOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger(const TColStd_QueueNodeOfQueueOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger & operator=(const Handle_TColStd_QueueNodeOfQueueOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfInteger & operator=(const TColStd_QueueNodeOfQueueOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_QueueNodeOfQueueOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
	TColStd_QueueNodeOfQueueOfInteger* GetObject() {
	return (TColStd_QueueNodeOfQueueOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfInteger::~Handle_TColStd_QueueNodeOfQueueOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray2OfBoolean;
class Handle_TColStd_HArray2OfBoolean : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean(const Handle_TColStd_HArray2OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean(const TColStd_HArray2OfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean & operator=(const Handle_TColStd_HArray2OfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfBoolean & operator=(const TColStd_HArray2OfBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray2OfBoolean DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfBoolean {
	TColStd_HArray2OfBoolean* GetObject() {
	return (TColStd_HArray2OfBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray2OfBoolean::~Handle_TColStd_HArray2OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray2OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfReal;
class Handle_TColStd_ListNodeOfSetListOfSetOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal(const Handle_TColStd_ListNodeOfSetListOfSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal(const TColStd_ListNodeOfSetListOfSetOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal & operator=(const Handle_TColStd_ListNodeOfSetListOfSetOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfSetListOfSetOfReal & operator=(const TColStd_ListNodeOfSetListOfSetOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfSetListOfSetOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
	TColStd_ListNodeOfSetListOfSetOfReal* GetObject() {
	return (TColStd_ListNodeOfSetListOfSetOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfReal::~Handle_TColStd_ListNodeOfSetListOfSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfAsciiString;
class Handle_TColStd_HSequenceOfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString(const Handle_TColStd_HSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString(const TColStd_HSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString & operator=(const Handle_TColStd_HSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString & operator=(const TColStd_HSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfAsciiString {
	TColStd_HSequenceOfAsciiString* GetObject() {
	return (TColStd_HSequenceOfAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfAsciiString::~Handle_TColStd_HSequenceOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(const TColStd_DataMapNodeOfDataMapOfIntegerReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal & operator=(const TColStd_DataMapNodeOfDataMapOfIntegerReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
	TColStd_DataMapNodeOfDataMapOfIntegerReal* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfExtendedString;
class Handle_TColStd_HArray1OfExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString(const Handle_TColStd_HArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString(const TColStd_HArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString & operator=(const Handle_TColStd_HArray1OfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString & operator=(const TColStd_HArray1OfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfExtendedString {
	TColStd_HArray1OfExtendedString* GetObject() {
	return (TColStd_HArray1OfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfExtendedString::~Handle_TColStd_HArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StackNodeOfStackOfTransient;
class Handle_TColStd_StackNodeOfStackOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient(const Handle_TColStd_StackNodeOfStackOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient(const TColStd_StackNodeOfStackOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient & operator=(const Handle_TColStd_StackNodeOfStackOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfTransient & operator=(const TColStd_StackNodeOfStackOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StackNodeOfStackOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfTransient {
	TColStd_StackNodeOfStackOfTransient* GetObject() {
	return (TColStd_StackNodeOfStackOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StackNodeOfStackOfTransient::~Handle_TColStd_StackNodeOfStackOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StackNodeOfStackOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray2OfTransient;
class Handle_TColStd_HArray2OfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient(const Handle_TColStd_HArray2OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient(const TColStd_HArray2OfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient & operator=(const Handle_TColStd_HArray2OfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfTransient & operator=(const TColStd_HArray2OfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray2OfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfTransient {
	TColStd_HArray2OfTransient* GetObject() {
	return (TColStd_HArray2OfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray2OfTransient::~Handle_TColStd_HArray2OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray2OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(const TColStd_DataMapNodeOfDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger & operator=(const TColStd_DataMapNodeOfDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	TColStd_DataMapNodeOfDataMapOfIntegerInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfIntegerInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfAsciiString;
class Handle_TColStd_SequenceNodeOfSequenceOfAsciiString : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(const Handle_TColStd_SequenceNodeOfSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(const TColStd_SequenceNodeOfSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString & operator=(const TColStd_SequenceNodeOfSequenceOfAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
	TColStd_SequenceNodeOfSequenceOfAsciiString* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfAsciiString::~Handle_TColStd_SequenceNodeOfSequenceOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSequenceOfInteger;
class Handle_TColStd_HSequenceOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger(const Handle_TColStd_HSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger(const TColStd_HSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger & operator=(const Handle_TColStd_HSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger & operator=(const TColStd_HSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSequenceOfInteger {
	TColStd_HSequenceOfInteger* GetObject() {
	return (TColStd_HSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSequenceOfInteger::~Handle_TColStd_HSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfReal;
class Handle_TColStd_HArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal(const Handle_TColStd_HArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal(const TColStd_HArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator=(const Handle_TColStd_HArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator=(const TColStd_HArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfReal {
	TColStd_HArray1OfReal* GetObject() {
	return (TColStd_HArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfReal::~Handle_TColStd_HArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfListOfInteger;
class Handle_TColStd_HArray1OfListOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger(const Handle_TColStd_HArray1OfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger(const TColStd_HArray1OfListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger & operator=(const Handle_TColStd_HArray1OfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfListOfInteger & operator=(const TColStd_HArray1OfListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfListOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfListOfInteger {
	TColStd_HArray1OfListOfInteger* GetObject() {
	return (TColStd_HArray1OfListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfListOfInteger::~Handle_TColStd_HArray1OfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfReal;
class Handle_TColStd_QueueNodeOfQueueOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal(const Handle_TColStd_QueueNodeOfQueueOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal(const TColStd_QueueNodeOfQueueOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal & operator=(const Handle_TColStd_QueueNodeOfQueueOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfReal & operator=(const TColStd_QueueNodeOfQueueOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_QueueNodeOfQueueOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfReal {
	TColStd_QueueNodeOfQueueOfReal* GetObject() {
	return (TColStd_QueueNodeOfQueueOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfReal::~Handle_TColStd_QueueNodeOfQueueOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_QueueNodeOfQueueOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfListOfInteger;
class Handle_TColStd_ListNodeOfListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger(const Handle_TColStd_ListNodeOfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger(const TColStd_ListNodeOfListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger & operator=(const Handle_TColStd_ListNodeOfListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfInteger & operator=(const TColStd_ListNodeOfListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfListOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfInteger {
	TColStd_ListNodeOfListOfInteger* GetObject() {
	return (TColStd_ListNodeOfListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfListOfInteger::~Handle_TColStd_ListNodeOfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray2OfInteger;
class Handle_TColStd_HArray2OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger(const Handle_TColStd_HArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger(const TColStd_HArray2OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger & operator=(const Handle_TColStd_HArray2OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfInteger & operator=(const TColStd_HArray2OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray2OfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfInteger {
	TColStd_HArray2OfInteger* GetObject() {
	return (TColStd_HArray2OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray2OfInteger::~Handle_TColStd_HArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfListOfReal;
class Handle_TColStd_ListNodeOfListOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal(const Handle_TColStd_ListNodeOfListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal(const TColStd_ListNodeOfListOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal & operator=(const Handle_TColStd_ListNodeOfListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfReal & operator=(const TColStd_ListNodeOfListOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfListOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfReal {
	TColStd_ListNodeOfListOfReal* GetObject() {
	return (TColStd_ListNodeOfListOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfListOfReal::~Handle_TColStd_ListNodeOfListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray2OfCharacter;
class Handle_TColStd_HArray2OfCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter(const Handle_TColStd_HArray2OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter(const TColStd_HArray2OfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter & operator=(const Handle_TColStd_HArray2OfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfCharacter & operator=(const TColStd_HArray2OfCharacter *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray2OfCharacter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfCharacter {
	TColStd_HArray2OfCharacter* GetObject() {
	return (TColStd_HArray2OfCharacter*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray2OfCharacter::~Handle_TColStd_HArray2OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray2OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfTransient;
class Handle_TColStd_QueueNodeOfQueueOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient(const Handle_TColStd_QueueNodeOfQueueOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient(const TColStd_QueueNodeOfQueueOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient & operator=(const Handle_TColStd_QueueNodeOfQueueOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_QueueNodeOfQueueOfTransient & operator=(const TColStd_QueueNodeOfQueueOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_QueueNodeOfQueueOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
	TColStd_QueueNodeOfQueueOfTransient* GetObject() {
	return (TColStd_QueueNodeOfQueueOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfTransient::~Handle_TColStd_QueueNodeOfQueueOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray2OfReal;
class Handle_TColStd_HArray2OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal();
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal(const Handle_TColStd_HArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal(const TColStd_HArray2OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal & operator=(const Handle_TColStd_HArray2OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal & operator=(const TColStd_HArray2OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray2OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray2OfReal {
	TColStd_HArray2OfReal* GetObject() {
	return (TColStd_HArray2OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray2OfReal::~Handle_TColStd_HArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StackNodeOfStackOfInteger;
class Handle_TColStd_StackNodeOfStackOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger(const Handle_TColStd_StackNodeOfStackOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger(const TColStd_StackNodeOfStackOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger & operator=(const Handle_TColStd_StackNodeOfStackOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StackNodeOfStackOfInteger & operator=(const TColStd_StackNodeOfStackOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StackNodeOfStackOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StackNodeOfStackOfInteger {
	TColStd_StackNodeOfStackOfInteger* GetObject() {
	return (TColStd_StackNodeOfStackOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StackNodeOfStackOfInteger::~Handle_TColStd_StackNodeOfStackOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StackNodeOfStackOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_ListNodeOfListOfAsciiString;
class Handle_TColStd_ListNodeOfListOfAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfAsciiString(const Handle_TColStd_ListNodeOfListOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfAsciiString(const TColStd_ListNodeOfListOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfAsciiString & operator=(const Handle_TColStd_ListNodeOfListOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_ListNodeOfListOfAsciiString & operator=(const TColStd_ListNodeOfListOfAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_ListNodeOfListOfAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_ListNodeOfListOfAsciiString {
	TColStd_ListNodeOfListOfAsciiString* GetObject() {
	return (TColStd_ListNodeOfListOfAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_ListNodeOfListOfAsciiString::~Handle_TColStd_ListNodeOfListOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_ListNodeOfListOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfReal;
class Handle_TColStd_SequenceNodeOfSequenceOfReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal(const Handle_TColStd_SequenceNodeOfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal(const TColStd_SequenceNodeOfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfReal & operator=(const TColStd_SequenceNodeOfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
	TColStd_SequenceNodeOfSequenceOfReal* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfReal::~Handle_TColStd_SequenceNodeOfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfTransient;
class Handle_TColStd_StdMapNodeOfMapOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient(const Handle_TColStd_StdMapNodeOfMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient(const TColStd_StdMapNodeOfMapOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient & operator=(const Handle_TColStd_StdMapNodeOfMapOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfTransient & operator=(const TColStd_StdMapNodeOfMapOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StdMapNodeOfMapOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
	TColStd_StdMapNodeOfMapOfTransient* GetObject() {
	return (TColStd_StdMapNodeOfMapOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfTransient::~Handle_TColStd_StdMapNodeOfMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfTransient;
class Handle_TColStd_SequenceNodeOfSequenceOfTransient : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient(const Handle_TColStd_SequenceNodeOfSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient(const TColStd_SequenceNodeOfSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfTransient & operator=(const TColStd_SequenceNodeOfSequenceOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
	TColStd_SequenceNodeOfSequenceOfTransient* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfTransient::~Handle_TColStd_SequenceNodeOfSequenceOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfReal;
class Handle_TColStd_StdMapNodeOfMapOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal();
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal(const Handle_TColStd_StdMapNodeOfMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal(const TColStd_StdMapNodeOfMapOfReal *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal & operator=(const Handle_TColStd_StdMapNodeOfMapOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_StdMapNodeOfMapOfReal & operator=(const TColStd_StdMapNodeOfMapOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_StdMapNodeOfMapOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_StdMapNodeOfMapOfReal {
	TColStd_StdMapNodeOfMapOfReal* GetObject() {
	return (TColStd_StdMapNodeOfMapOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfReal::~Handle_TColStd_StdMapNodeOfMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_StdMapNodeOfMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger;
class Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(const TColStd_IndexedMapNodeOfIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger & operator=(const Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger & operator=(const TColStd_IndexedMapNodeOfIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	TColStd_IndexedMapNodeOfIndexedMapOfInteger* GetObject() {
	return (TColStd_IndexedMapNodeOfIndexedMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HArray1OfAsciiString;
class Handle_TColStd_HArray1OfAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString(const Handle_TColStd_HArray1OfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString(const TColStd_HArray1OfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString & operator=(const Handle_TColStd_HArray1OfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString & operator=(const TColStd_HArray1OfAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HArray1OfAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HArray1OfAsciiString {
	TColStd_HArray1OfAsciiString* GetObject() {
	return (TColStd_HArray1OfAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HArray1OfAsciiString::~Handle_TColStd_HArray1OfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HArray1OfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger;
class Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger();
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger(const Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger(const TColStd_DataMapNodeOfDataMapOfAsciiStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger & operator=(const Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger & operator=(const TColStd_DataMapNodeOfDataMapOfAsciiStringInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger {
	TColStd_DataMapNodeOfDataMapOfAsciiStringInteger* GetObject() {
	return (TColStd_DataMapNodeOfDataMapOfAsciiStringInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger::~Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfAddress;
class Handle_TColStd_SequenceNodeOfSequenceOfAddress : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAddress();
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAddress(const Handle_TColStd_SequenceNodeOfSequenceOfAddress &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAddress(const TColStd_SequenceNodeOfSequenceOfAddress *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAddress & operator=(const Handle_TColStd_SequenceNodeOfSequenceOfAddress &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_SequenceNodeOfSequenceOfAddress & operator=(const TColStd_SequenceNodeOfSequenceOfAddress *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_SequenceNodeOfSequenceOfAddress DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAddress {
	TColStd_SequenceNodeOfSequenceOfAddress* GetObject() {
	return (TColStd_SequenceNodeOfSequenceOfAddress*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfAddress::~Handle_TColStd_SequenceNodeOfSequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_SequenceNodeOfSequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColStd_HSetOfTransient;
class Handle_TColStd_HSetOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient();
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient(const Handle_TColStd_HSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient(const TColStd_HSetOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient & operator=(const Handle_TColStd_HSetOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient & operator=(const TColStd_HSetOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_TColStd_HSetOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColStd_HSetOfTransient {
	TColStd_HSetOfTransient* GetObject() {
	return (TColStd_HSetOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_TColStd_HSetOfTransient::~Handle_TColStd_HSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColStd_HSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StdMapNodeOfMapOfInteger;
class TColStd_StdMapNodeOfMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfInteger(const Standard_Integer &K, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfInteger {
	Handle_TColStd_StdMapNodeOfMapOfInteger GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfInteger*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StdMapNodeOfMapOfInteger::~TColStd_StdMapNodeOfMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StdMapNodeOfMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfStringInteger;
class TColStd_DataMapOfStringInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfStringInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfStringInteger & Assign(const TColStd_DataMapOfStringInteger &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfStringInteger & operator=(const TColStd_DataMapOfStringInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TCollection_ExtendedString &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TCollection_ExtendedString &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TCollection_ExtendedString &K);

};
%feature("shadow") TColStd_DataMapOfStringInteger::~TColStd_DataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfHAsciiString;
class TColStd_SequenceOfHAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfHAsciiString & Assign(const TColStd_SequenceOfHAsciiString &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHAsciiString & operator=(const TColStd_SequenceOfHAsciiString &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & First() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfHAsciiString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfHAsciiString::~TColStd_SequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array2OfInteger;
class TColStd_Array2OfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfInteger(const Standard_Integer &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfInteger & Assign(const TColStd_Array2OfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_Array2OfInteger & operator=(const TColStd_Array2OfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Integer) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColStd_Array2OfInteger::~TColStd_Array2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;
class TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(const Handle_Standard_Transient &K1, const Standard_Integer K2, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient GetHandle() {
	return *(Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*) &$self;
	}
};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient::~TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfTransientTransient;
class TColStd_DataMapNodeOfDataMapOfTransientTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfTransientTransient(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfTransientTransient {
	Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfTransientTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfTransientTransient::~TColStd_DataMapNodeOfDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HPackedMapOfInteger;
class TColStd_HPackedMapOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HPackedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_HPackedMapOfInteger(const TColStd_PackedMapOfInteger &theOther);
		%feature("autodoc", "1");
		const TColStd_PackedMapOfInteger & Map() const;
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HPackedMapOfInteger {
	Handle_TColStd_HPackedMapOfInteger GetHandle() {
	return *(Handle_TColStd_HPackedMapOfInteger*) &$self;
	}
};
%extend TColStd_HPackedMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HPackedMapOfInteger::~TColStd_HPackedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HPackedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfHExtendedString;
class TColStd_HSequenceOfHExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfHExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHExtendedString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TCollection_HExtendedString &anItem);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHExtendedString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfHExtendedString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfHExtendedString {
	Handle_TColStd_HSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHExtendedString*) &$self;
	}
};
%extend TColStd_HSequenceOfHExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfHExtendedString::~TColStd_HSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfIntegerTransient;
class TColStd_DataMapOfIntegerTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerTransient & Assign(const TColStd_DataMapOfIntegerTransient &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerTransient & operator=(const TColStd_DataMapOfIntegerTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer &K);

};
%feature("shadow") TColStd_DataMapOfIntegerTransient::~TColStd_DataMapOfIntegerTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfIntegerTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfBoolean;
class TColStd_Array1OfBoolean {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean(const Standard_Boolean &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfBoolean & Assign(const TColStd_Array1OfBoolean &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfBoolean & operator=(const TColStd_Array1OfBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeValue(const Standard_Integer Index) {
				return (Standard_Boolean) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Boolean value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfBoolean::~TColStd_Array1OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfAsciiStringInteger;
class TColStd_DataMapOfAsciiStringInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfAsciiStringInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfAsciiStringInteger & Assign(const TColStd_DataMapOfAsciiStringInteger &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfAsciiStringInteger & operator=(const TColStd_DataMapOfAsciiStringInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TCollection_AsciiString &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TCollection_AsciiString &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") TColStd_DataMapOfAsciiStringInteger::~TColStd_DataMapOfAsciiStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfAsciiStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackNodeOfStackOfTransient;
class TColStd_StackNodeOfStackOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfTransient {
	Handle_TColStd_StackNodeOfStackOfTransient GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfTransient*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StackNodeOfStackOfTransient::~TColStd_StackNodeOfStackOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackNodeOfStackOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfIntegerReal;
class TColStd_DataMapOfIntegerReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal & Assign(const TColStd_DataMapOfIntegerReal &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal & operator=(const TColStd_DataMapOfIntegerReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFind(const Standard_Integer &K) {
				return (Standard_Real) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Real value ,const Standard_Integer &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer &K);

};
%feature("shadow") TColStd_DataMapOfIntegerReal::~TColStd_DataMapOfIntegerReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfIntegerReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapRealHasher;
class TColStd_MapRealHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapRealHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Standard_Real &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Standard_Real &K1, const Standard_Real &K2);

};
%feature("shadow") TColStd_MapRealHasher::~TColStd_MapRealHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapRealHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackNodeOfStackOfReal;
class TColStd_StackNodeOfStackOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfReal {
	Handle_TColStd_StackNodeOfStackOfReal GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfReal*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StackNodeOfStackOfReal::~TColStd_StackNodeOfStackOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackNodeOfStackOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger;
class TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger(const TColStd_DataMapOfAsciiStringInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfAsciiStringInteger &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger::~TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetIteratorOfSetOfInteger;
class TColStd_SetIteratorOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfInteger();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfInteger(const TColStd_SetOfInteger &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfInteger &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TColStd_SetIteratorOfSetOfInteger::~TColStd_SetIteratorOfSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetIteratorOfSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfTransient;
class TColStd_HSequenceOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfTransient &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Standard_Transient &anItem);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfTransient & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfTransient & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfTransient {
	Handle_TColStd_HSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_HSequenceOfTransient*) &$self;
	}
};
%extend TColStd_HSequenceOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfTransient::~TColStd_HSequenceOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfListOfInteger;
class TColStd_HArray1OfListOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up, const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		void Init(const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_ListOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfListOfInteger & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfListOfInteger {
	Handle_TColStd_HArray1OfListOfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfListOfInteger*) &$self;
	}
};
%extend TColStd_HArray1OfListOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfListOfInteger::~TColStd_HArray1OfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfReal;
class TColStd_ListIteratorOfSetListOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfReal();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfReal(const TColStd_SetListOfSetOfReal &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfReal &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};

};
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfReal::~TColStd_ListIteratorOfSetListOfSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfSetListOfSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray2OfReal;
class TColStd_HArray2OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Real &V);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Real) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfReal & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfReal {
	Handle_TColStd_HArray2OfReal GetHandle() {
	return *(Handle_TColStd_HArray2OfReal*) &$self;
	}
};
%extend TColStd_HArray2OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray2OfReal::~TColStd_HArray2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSetOfReal;
class TColStd_HSetOfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfReal();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Union(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Intersection(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal Difference(const Handle_TColStd_HSetOfReal &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfReal &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfReal &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfReal ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfReal & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfReal & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfReal {
	Handle_TColStd_HSetOfReal GetHandle() {
	return *(Handle_TColStd_HSetOfReal*) &$self;
	}
};
%extend TColStd_HSetOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSetOfReal::~TColStd_HSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerReal;
class TColStd_DataMapNodeOfDataMapOfIntegerReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerReal(const Standard_Integer &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerReal::~TColStd_DataMapNodeOfDataMapOfIntegerReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfReal;
class TColStd_SequenceNodeOfSequenceOfReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfReal(const Standard_Real &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfReal {
	Handle_TColStd_SequenceNodeOfSequenceOfReal GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfReal*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfReal::~TColStd_SequenceNodeOfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfSetListOfSetOfReal;
class TColStd_ListNodeOfSetListOfSetOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
	Handle_TColStd_ListNodeOfSetListOfSetOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfReal*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfReal::~TColStd_ListNodeOfSetListOfSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfSetListOfSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfCharacter;
class TColStd_Array1OfCharacter {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter(const Standard_Character &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfCharacter & Assign(const TColStd_Array1OfCharacter &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfCharacter & operator=(const TColStd_Array1OfCharacter &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Character & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfCharacter::~TColStd_Array1OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackOfTransient;
class TColStd_StackOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfTransient();
		%feature("autodoc", "1");
		const TColStd_StackOfTransient & Assign(const TColStd_StackOfTransient &Other);
		%feature("autodoc", "1");
		const TColStd_StackOfTransient & operator=(const TColStd_StackOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeTop();

};
%feature("shadow") TColStd_StackOfTransient::~TColStd_StackOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfListOfAsciiString;
class TColStd_ListIteratorOfListOfAsciiString {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfAsciiString();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfAsciiString(const TColStd_ListOfAsciiString &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfAsciiString &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;

};
%feature("shadow") TColStd_ListIteratorOfListOfAsciiString::~TColStd_ListIteratorOfListOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfListOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfInteger;
class TColStd_HSequenceOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfInteger &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Standard_Integer &anItem);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer anIndex) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer anIndex) {
				return (Standard_Integer) $self->ChangeValue(anIndex);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer anIndex) {
				$self->ChangeValue(anIndex)=value;
				}
		};
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfInteger {
	Handle_TColStd_HSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_HSequenceOfInteger*) &$self;
	}
};
%extend TColStd_HSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfInteger::~TColStd_HSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfReal;
class TColStd_Array1OfReal {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfReal(const Standard_Real &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Assign(const TColStd_Array1OfReal &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & operator=(const TColStd_Array1OfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Index) {
				return (Standard_Real) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfReal::~TColStd_Array1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfSetListOfSetOfInteger;
class TColStd_ListNodeOfSetListOfSetOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	Handle_TColStd_ListNodeOfSetListOfSetOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfInteger*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfInteger::~TColStd_ListNodeOfSetListOfSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfSetListOfSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetListOfSetOfTransient;
class TColStd_SetListOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfTransient();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfTransient &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_SetListOfSetOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfTransient & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfTransient & Other);
		%feature("autodoc", "1");
		Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Standard_Transient &I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It);

};
%feature("shadow") TColStd_SetListOfSetOfTransient::~TColStd_SetListOfSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetListOfSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger(const TColStd_DataMapOfIntegerListOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerListOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger::~TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfAsciiString;
class TColStd_HArray1OfAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up, const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		void Init(const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfAsciiString & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfAsciiString {
	Handle_TColStd_HArray1OfAsciiString GetHandle() {
	return *(Handle_TColStd_HArray1OfAsciiString*) &$self;
	}
};
%extend TColStd_HArray1OfAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfAsciiString::~TColStd_HArray1OfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapOfReal;
class TColStd_MapOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfReal & Assign(const TColStd_MapOfReal &Other);
		%feature("autodoc", "1");
		TColStd_MapOfReal & operator=(const TColStd_MapOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &aKey);

};
%feature("shadow") TColStd_MapOfReal::~TColStd_MapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfReal;
class TColStd_SequenceOfReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Assign(const TColStd_SequenceOfReal &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & operator=(const TColStd_SequenceOfReal &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Real &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Real &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		const Standard_Real & First() const;
		%feature("autodoc", "1");
		const Standard_Real & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfReal & S);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &I);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Index) {
				return (Standard_Real) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfReal::~TColStd_SequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfAsciiString;
class TColStd_SequenceOfAsciiString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfAsciiString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & Assign(const TColStd_SequenceOfAsciiString &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & operator=(const TColStd_SequenceOfAsciiString &Other);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TCollection_AsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & First() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfAsciiString & S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfAsciiString::~TColStd_SequenceOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfHExtendedString;
class TColStd_SequenceNodeOfSequenceOfHExtendedString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfHExtendedString(const Handle_TCollection_HExtendedString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfHExtendedString::~TColStd_SequenceNodeOfSequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfInteger;
class TColStd_SequenceOfInteger : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Assign(const TColStd_SequenceOfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & operator=(const TColStd_SequenceOfInteger &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Integer &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Integer &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		const Standard_Integer & First() const;
		%feature("autodoc", "1");
		const Standard_Integer & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfInteger & S);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &I);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfInteger::~TColStd_SequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfByte;
class TColStd_Array1OfByte {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfByte(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfByte(const Standard_Byte &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfByte & Assign(const TColStd_Array1OfByte &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfByte & operator=(const TColStd_Array1OfByte &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Byte & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Byte & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfByte::~TColStd_Array1OfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetIteratorOfSetOfReal;
class TColStd_SetIteratorOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfReal();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfReal(const TColStd_SetOfReal &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfReal &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") TColStd_SetIteratorOfSetOfReal::~TColStd_SetIteratorOfSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetIteratorOfSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfInteger;
class TColStd_Array1OfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfInteger(const Standard_Integer &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Assign(const TColStd_Array1OfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & operator=(const TColStd_Array1OfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfInteger::~TColStd_Array1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfReal;
class TColStd_HSequenceOfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Real &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfReal &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Standard_Real &anItem);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer anIndex) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer anIndex) {
				return (Standard_Real) $self->ChangeValue(anIndex);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer anIndex) {
				$self->ChangeValue(anIndex)=value;
				}
		};
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfReal ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfReal {
	Handle_TColStd_HSequenceOfReal GetHandle() {
	return *(Handle_TColStd_HSequenceOfReal*) &$self;
	}
};
%extend TColStd_HSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfReal::~TColStd_HSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIntegerHasher;
class TColStd_MapIntegerHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapIntegerHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Standard_Integer &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Standard_Integer &K1, const Standard_Integer &K2);

};
%feature("shadow") TColStd_MapIntegerHasher::~TColStd_MapIntegerHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIntegerHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfTransientTransient;
class TColStd_DataMapIteratorOfDataMapOfTransientTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfTransientTransient();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfTransientTransient(const TColStd_DataMapOfTransientTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfTransientTransient &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfTransientTransient::~TColStd_DataMapIteratorOfDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfAddress;
class TColStd_SequenceNodeOfSequenceOfAddress : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfAddress(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfAddress {
	Handle_TColStd_SequenceNodeOfSequenceOfAddress GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfAddress*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfAddress {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfAddress::~TColStd_SequenceNodeOfSequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapOfAsciiString;
class TColStd_MapOfAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfAsciiString & Assign(const TColStd_MapOfAsciiString &Other);
		%feature("autodoc", "1");
		TColStd_MapOfAsciiString & operator=(const TColStd_MapOfAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TCollection_AsciiString &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TCollection_AsciiString &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TCollection_AsciiString &aKey);

};
%feature("shadow") TColStd_MapOfAsciiString::~TColStd_MapOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfInteger;
class TColStd_IndexedMapNodeOfIndexedMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfInteger(const Standard_Integer &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey1() {
				return (Standard_Integer) $self->Key1();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey1(Standard_Integer value ) {
				$self->Key1()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfInteger::~TColStd_IndexedMapNodeOfIndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerInteger;
class TColStd_DataMapNodeOfDataMapOfIntegerInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerInteger(const Standard_Integer &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerInteger::~TColStd_DataMapNodeOfDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfTransient;
class TColStd_Array1OfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfTransient(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfTransient(const Handle_Standard_Transient &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfTransient & Assign(const TColStd_Array1OfTransient &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfTransient & operator=(const TColStd_Array1OfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfTransient::~TColStd_Array1OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapOfReal;
class TColStd_IndexedMapOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfReal & Assign(const TColStd_IndexedMapOfReal &Other);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfReal & operator=(const TColStd_IndexedMapOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Real &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Real &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &K) const;
		%feature("autodoc", "1");
		const Standard_Real & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Real &K) const;

};
%feature("shadow") TColStd_IndexedMapOfReal::~TColStd_IndexedMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfTransient;
class TColStd_ListIteratorOfSetListOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfTransient();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfTransient(const TColStd_SetListOfSetOfTransient &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfTransient &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfTransient::~TColStd_ListIteratorOfSetListOfSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfSetListOfSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfStringInteger;
class TColStd_DataMapIteratorOfDataMapOfStringInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfStringInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfStringInteger(const TColStd_DataMapOfStringInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfStringInteger &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfStringInteger::~TColStd_DataMapIteratorOfDataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapOfTransient;
class TColStd_MapOfTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfTransient & Assign(const TColStd_MapOfTransient &Other);
		%feature("autodoc", "1");
		TColStd_MapOfTransient & operator=(const TColStd_MapOfTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &aKey);

};
%feature("shadow") TColStd_MapOfTransient::~TColStd_MapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StdMapNodeOfMapOfTransient;
class TColStd_StdMapNodeOfMapOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfTransient(const Handle_Standard_Transient &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfTransient {
	Handle_TColStd_StdMapNodeOfMapOfTransient GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfTransient*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StdMapNodeOfMapOfTransient::~TColStd_StdMapNodeOfMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StdMapNodeOfMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray2OfBoolean;
class TColStd_HArray2OfBoolean : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Boolean) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Boolean value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array2OfBoolean & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfBoolean {
	Handle_TColStd_HArray2OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray2OfBoolean*) &$self;
	}
};
%extend TColStd_HArray2OfBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray2OfBoolean::~TColStd_HArray2OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray2OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfReal;
class TColStd_IndexedMapNodeOfIndexedMapOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfReal(const Standard_Real &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetKey1() {
				return (Standard_Real) $self->Key1();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey1(Standard_Real value ) {
				$self->Key1()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfReal::~TColStd_IndexedMapNodeOfIndexedMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueOfInteger;
class TColStd_QueueOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfInteger();
		%feature("autodoc", "1");
		const TColStd_QueueOfInteger & Assign(const TColStd_QueueOfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_QueueOfInteger & operator=(const TColStd_QueueOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Standard_Integer & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFront() {
				return (Standard_Integer) $self->ChangeFront();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFront(Standard_Integer value ) {
				$self->ChangeFront()=value;
				}
		};

};
%feature("shadow") TColStd_QueueOfInteger::~TColStd_QueueOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIteratorOfPackedMapOfInteger;
class TColStd_MapIteratorOfPackedMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfPackedMapOfInteger();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Key() const;
		%feature("autodoc", "1");
		void Next();

};
%feature("shadow") TColStd_MapIteratorOfPackedMapOfInteger::~TColStd_MapIteratorOfPackedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIteratorOfPackedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIteratorOfMapOfAsciiString;
class TColStd_MapIteratorOfMapOfAsciiString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfAsciiString();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfAsciiString(const TColStd_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;

};
%feature("shadow") TColStd_MapIteratorOfMapOfAsciiString::~TColStd_MapIteratorOfMapOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIteratorOfMapOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfHExtendedString;
class TColStd_SequenceOfHExtendedString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfHExtendedString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfHExtendedString & Assign(const TColStd_SequenceOfHExtendedString &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHExtendedString & operator=(const TColStd_SequenceOfHExtendedString &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HExtendedString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HExtendedString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & First() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfHExtendedString & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TCollection_HExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TCollection_HExtendedString &I);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfHExtendedString::~TColStd_SequenceOfHExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfHExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedDataMapOfTransientTransient;
class TColStd_IndexedDataMapOfTransientTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient & Assign(const TColStd_IndexedDataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient & operator=(const TColStd_IndexedDataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K, const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromKey(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromKey(const Handle_Standard_Transient &K);

};
%feature("shadow") TColStd_IndexedDataMapOfTransientTransient::~TColStd_IndexedDataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedDataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetListOfSetOfReal;
class TColStd_SetListOfSetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfReal();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfReal &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_SetListOfSetOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfReal & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfReal & Other);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetFirst() {
				return (Standard_Real) $self->First();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFirst(Standard_Real value ) {
				$self->First()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetLast() {
				return (Standard_Real) $self->Last();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetLast(Standard_Real value ) {
				$self->Last()=value;
				}
		};
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Real &I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It);

};
%feature("shadow") TColStd_SetListOfSetOfReal::~TColStd_SetListOfSetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetListOfSetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetOfReal;
class TColStd_SetOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfReal();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Real &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfReal &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Real &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfReal &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfReal &S) const;

};
%feature("shadow") TColStd_SetOfReal::~TColStd_SetOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackNodeOfStackOfInteger;
class TColStd_StackNodeOfStackOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StackNodeOfStackOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StackNodeOfStackOfInteger {
	Handle_TColStd_StackNodeOfStackOfInteger GetHandle() {
	return *(Handle_TColStd_StackNodeOfStackOfInteger*) &$self;
	}
};
%extend TColStd_StackNodeOfStackOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StackNodeOfStackOfInteger::~TColStd_StackNodeOfStackOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackNodeOfStackOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_PackedMapOfInteger;
class TColStd_PackedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator=(const TColStd_PackedMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer aKey);
		%feature("autodoc", "1");
		Standard_Integer NbBuckets() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer IsEmpty() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string StatisticsToString() {
			std::stringstream s;
			self->Statistics(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Integer GetMinimalMapped() const;
		%feature("autodoc", "1");
		Standard_Integer GetMaximalMapped() const;
		%feature("autodoc", "1");
		void Union(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator|=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Intersection(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator&=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Subtraction(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator-=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		void Difference(const TColStd_PackedMapOfInteger &arg0, const TColStd_PackedMapOfInteger &arg1);
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & operator^=(const TColStd_PackedMapOfInteger &MM);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TColStd_PackedMapOfInteger &arg0) const;
		%extend{
			bool __eq_wrapper__(const TColStd_PackedMapOfInteger &MM) {
				if (*self==MM) return true;
				else return false;
			}
		}
		%feature("autodoc", "1");
		Standard_Boolean IsSubset(const TColStd_PackedMapOfInteger &arg0) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<=(const TColStd_PackedMapOfInteger &MM) const;
		%feature("autodoc", "1");
		Standard_Boolean HasIntersection(const TColStd_PackedMapOfInteger &arg0) const;
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%feature("shadow") TColStd_PackedMapOfInteger::~TColStd_PackedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_PackedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfExtendedString;
class TColStd_HArray1OfExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up, const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		void Init(const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfExtendedString & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfExtendedString {
	Handle_TColStd_HArray1OfExtendedString GetHandle() {
	return *(Handle_TColStd_HArray1OfExtendedString*) &$self;
	}
};
%extend TColStd_HArray1OfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfExtendedString::~TColStd_HArray1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfTransient;
class TColStd_IndexedMapNodeOfIndexedMapOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapNodeOfIndexedMapOfTransient(const Handle_Standard_Transient &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient GetHandle() {
	return *(Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient*) &$self;
	}
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfTransient::~TColStd_IndexedMapNodeOfIndexedMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfListOfInteger;
class TColStd_Array1OfListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfListOfInteger(const TColStd_ListOfInteger &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TColStd_ListOfInteger &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfListOfInteger & Assign(const TColStd_Array1OfListOfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfListOfInteger & operator=(const TColStd_Array1OfListOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_ListOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfListOfInteger::~TColStd_Array1OfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray2OfInteger;
class TColStd_HArray2OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfInteger(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Integer &V);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Integer) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array2OfInteger & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfInteger & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfInteger {
	Handle_TColStd_HArray2OfInteger GetHandle() {
	return *(Handle_TColStd_HArray2OfInteger*) &$self;
	}
};
%extend TColStd_HArray2OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray2OfInteger::~TColStd_HArray2OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray2OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfByte;
class TColStd_HArray1OfByte : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfByte(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfByte(const Standard_Integer Low, const Standard_Integer Up, const Standard_Byte &V);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfByte & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfByte & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfByte {
	Handle_TColStd_HArray1OfByte GetHandle() {
	return *(Handle_TColStd_HArray1OfByte*) &$self;
	}
};
%extend TColStd_HArray1OfByte {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfByte::~TColStd_HArray1OfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIteratorOfMapOfReal;
class TColStd_MapIteratorOfMapOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfReal(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfReal &aMap);
		%feature("autodoc", "1");
		const Standard_Real & Key() const;

};
%feature("shadow") TColStd_MapIteratorOfMapOfReal::~TColStd_MapIteratorOfMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIteratorOfMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array2OfCharacter;
class TColStd_Array2OfCharacter {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter(const Standard_Character &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfCharacter & Assign(const TColStd_Array2OfCharacter &Other);
		%feature("autodoc", "1");
		const TColStd_Array2OfCharacter & operator=(const TColStd_Array2OfCharacter &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Character & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColStd_Array2OfCharacter::~TColStd_Array2OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array2OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapOfInteger;
class TColStd_MapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_MapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Assign(const TColStd_MapOfInteger &Other);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator=(const TColStd_MapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &aKey);

};
%feature("shadow") TColStd_MapOfInteger::~TColStd_MapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapTransientHasher;
class TColStd_MapTransientHasher {
	public:
		%feature("autodoc", "1");
		TColStd_MapTransientHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_Standard_Transient &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_Standard_Transient &K1, const Handle_Standard_Transient &K2);

};
%feature("shadow") TColStd_MapTransientHasher::~TColStd_MapTransientHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapTransientHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfAsciiStringInteger;
class TColStd_DataMapNodeOfDataMapOfAsciiStringInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfAsciiStringInteger(const TCollection_AsciiString &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfAsciiStringInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfAsciiStringInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfAsciiStringInteger::~TColStd_DataMapNodeOfDataMapOfAsciiStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfAsciiStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfAddress;
class TColStd_SequenceOfAddress : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfAddress();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfAddress & Assign(const TColStd_SequenceOfAddress &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAddress & operator=(const TColStd_SequenceOfAddress &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Address &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Address &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Address &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & First() const;
		%feature("autodoc", "1");
		const Standard_Address & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Address & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfAddress::~TColStd_SequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListOfAsciiString;
class TColStd_ListOfAsciiString {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfAsciiString();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfAsciiString &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_ListOfAsciiString &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &I, TColStd_ListIteratorOfListOfAsciiString & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfAsciiString & Other);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &I, TColStd_ListIteratorOfListOfAsciiString & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfAsciiString & Other);
		%feature("autodoc", "1");
		TCollection_AsciiString & First() const;
		%feature("autodoc", "1");
		TCollection_AsciiString & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfAsciiString & It);
		%feature("autodoc", "1");
		void InsertBefore(const TCollection_AsciiString &I, TColStd_ListIteratorOfListOfAsciiString & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfAsciiString & Other, TColStd_ListIteratorOfListOfAsciiString & It);
		%feature("autodoc", "1");
		void InsertAfter(const TCollection_AsciiString &I, TColStd_ListIteratorOfListOfAsciiString & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfAsciiString & Other, TColStd_ListIteratorOfListOfAsciiString & It);

};
%feature("shadow") TColStd_ListOfAsciiString::~TColStd_ListOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackOfInteger;
class TColStd_StackOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfInteger();
		%feature("autodoc", "1");
		const TColStd_StackOfInteger & Assign(const TColStd_StackOfInteger &Other);
		%feature("autodoc", "1");
		const TColStd_StackOfInteger & operator=(const TColStd_StackOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Standard_Integer & Top() const;
		%feature("autodoc", "1");
		void Push(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeTop() {
				return (Standard_Integer) $self->ChangeTop();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeTop(Standard_Integer value ) {
				$self->ChangeTop()=value;
				}
		};

};
%feature("shadow") TColStd_StackOfInteger::~TColStd_StackOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfStringInteger;
class TColStd_DataMapNodeOfDataMapOfStringInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfStringInteger(const TCollection_ExtendedString &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfStringInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfStringInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfStringInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfStringInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfStringInteger::~TColStd_DataMapNodeOfDataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfExtendedString;
class TColStd_SequenceOfExtendedString : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfExtendedString();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Assign(const TColStd_SequenceOfExtendedString &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & operator=(const TColStd_SequenceOfExtendedString &Other);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TCollection_ExtendedString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfExtendedString & S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfExtendedString::~TColStd_SequenceOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueNodeOfQueueOfReal;
class TColStd_QueueNodeOfQueueOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfReal {
	Handle_TColStd_QueueNodeOfQueueOfReal GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfReal*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_QueueNodeOfQueueOfReal::~TColStd_QueueNodeOfQueueOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueNodeOfQueueOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfInteger;
class TColStd_HArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfInteger(const Standard_Integer Low, const Standard_Integer Up, const Standard_Integer &V);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfInteger & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfInteger {
	Handle_TColStd_HArray1OfInteger GetHandle() {
	return *(Handle_TColStd_HArray1OfInteger*) &$self;
	}
};
%extend TColStd_HArray1OfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfInteger::~TColStd_HArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array2OfBoolean;
class TColStd_Array2OfBoolean {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfBoolean(const Standard_Boolean &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfBoolean & Assign(const TColStd_Array2OfBoolean &Other);
		%feature("autodoc", "1");
		const TColStd_Array2OfBoolean & operator=(const TColStd_Array2OfBoolean &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Boolean) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Boolean value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColStd_Array2OfBoolean::~TColStd_Array2OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array2OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerTransient;
class TColStd_DataMapIteratorOfDataMapOfIntegerTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerTransient();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerTransient(const TColStd_DataMapOfIntegerTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerTransient &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerTransient::~TColStd_DataMapIteratorOfDataMapOfIntegerTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfIntegerTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StdMapNodeOfMapOfAsciiString;
class TColStd_StdMapNodeOfMapOfAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfAsciiString(const TCollection_AsciiString &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfAsciiString {
	Handle_TColStd_StdMapNodeOfMapOfAsciiString GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfAsciiString*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StdMapNodeOfMapOfAsciiString::~TColStd_StdMapNodeOfMapOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StdMapNodeOfMapOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfListOfReal;
class TColStd_ListIteratorOfListOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfReal();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfReal(const TColStd_ListOfReal &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfReal &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};

};
%feature("shadow") TColStd_ListIteratorOfListOfReal::~TColStd_ListIteratorOfListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapOfTransient;
class TColStd_IndexedMapOfTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfTransient & Assign(const TColStd_IndexedMapOfTransient &Other);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfTransient & operator=(const TColStd_IndexedMapOfTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;

};
%feature("shadow") TColStd_IndexedMapOfTransient::~TColStd_IndexedMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfListOfTransient;
class TColStd_ListIteratorOfListOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfTransient();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfTransient(const TColStd_ListOfTransient &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfTransient &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_ListIteratorOfListOfTransient::~TColStd_ListIteratorOfListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueNodeOfQueueOfInteger;
class TColStd_QueueNodeOfQueueOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfInteger {
	Handle_TColStd_QueueNodeOfQueueOfInteger GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfInteger*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_QueueNodeOfQueueOfInteger::~TColStd_QueueNodeOfQueueOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueNodeOfQueueOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfListOfReal;
class TColStd_ListNodeOfListOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfReal(const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfReal {
	Handle_TColStd_ListNodeOfListOfReal GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfReal*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfListOfReal::~TColStd_ListNodeOfListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfInteger;
class TColStd_ListIteratorOfSetListOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfInteger();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfSetListOfSetOfInteger(const TColStd_SetListOfSetOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetListOfSetOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};

};
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfInteger::~TColStd_ListIteratorOfSetListOfSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfSetListOfSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfBoolean;
class TColStd_HArray1OfBoolean : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfBoolean(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfBoolean(const Standard_Integer Low, const Standard_Integer Up, const Standard_Boolean &V);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &Value);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeValue(const Standard_Integer Index) {
				return (Standard_Boolean) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Boolean value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array1OfBoolean & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfBoolean & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfBoolean {
	Handle_TColStd_HArray1OfBoolean GetHandle() {
	return *(Handle_TColStd_HArray1OfBoolean*) &$self;
	}
};
%extend TColStd_HArray1OfBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfBoolean::~TColStd_HArray1OfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetListOfSetOfInteger;
class TColStd_SetListOfSetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetListOfSetOfInteger();
		%feature("autodoc", "1");
		void Assign(const TColStd_SetListOfSetOfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_SetListOfSetOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_SetListOfSetOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_SetListOfSetOfInteger & Other);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFirst() {
				return (Standard_Integer) $self->First();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFirst(Standard_Integer value ) {
				$self->First()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetLast() {
				return (Standard_Integer) $self->Last();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetLast(Standard_Integer value ) {
				$self->Last()=value;
				}
		};
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer &I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It);

};
%feature("shadow") TColStd_SetListOfSetOfInteger::~TColStd_SetListOfSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetListOfSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfReal;
class TColStd_HArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_Real &V);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Index) {
				return (Standard_Real) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfReal & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfReal {
	Handle_TColStd_HArray1OfReal GetHandle() {
	return *(Handle_TColStd_HArray1OfReal*) &$self;
	}
};
%extend TColStd_HArray1OfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfReal::~TColStd_HArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfListOfInteger;
class TColStd_ListNodeOfListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfInteger(const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfInteger {
	Handle_TColStd_ListNodeOfListOfInteger GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfInteger*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfListOfInteger::~TColStd_ListNodeOfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfSetListOfSetOfTransient;
class TColStd_ListNodeOfSetListOfSetOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfSetListOfSetOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	Handle_TColStd_ListNodeOfSetListOfSetOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfSetListOfSetOfTransient*) &$self;
	}
};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfTransient::~TColStd_ListNodeOfSetListOfSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfSetListOfSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackIteratorOfStackOfTransient;
class TColStd_StackIteratorOfStackOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfTransient();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfTransient(const TColStd_StackOfTransient &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfTransient &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_StackIteratorOfStackOfTransient::~TColStd_StackIteratorOfStackOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackIteratorOfStackOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfAsciiString;
class TColStd_Array1OfAsciiString {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfAsciiString(const TCollection_AsciiString &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfAsciiString & Assign(const TColStd_Array1OfAsciiString &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfAsciiString & operator=(const TColStd_Array1OfAsciiString &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfAsciiString::~TColStd_Array1OfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfCharacter;
class TColStd_HArray1OfCharacter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfCharacter(const Standard_Integer Low, const Standard_Integer Up, const Standard_Character &V);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfCharacter & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfCharacter & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfCharacter {
	Handle_TColStd_HArray1OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray1OfCharacter*) &$self;
	}
};
%extend TColStd_HArray1OfCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfCharacter::~TColStd_HArray1OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfHAsciiString;
class TColStd_HSequenceOfHAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfHAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfHAsciiString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfHAsciiString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfHAsciiString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfHAsciiString {
	Handle_TColStd_HSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfHAsciiString*) &$self;
	}
};
%extend TColStd_HSequenceOfHAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfHAsciiString::~TColStd_HSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_IndexedMapOfInteger;
class TColStd_IndexedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & Assign(const TColStd_IndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & operator=(const TColStd_IndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;

};
%feature("shadow") TColStd_IndexedMapOfInteger::~TColStd_IndexedMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_IndexedMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfAsciiString;
class TColStd_SequenceNodeOfSequenceOfAsciiString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfAsciiString(const TCollection_AsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfAsciiString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfAsciiString::~TColStd_SequenceNodeOfSequenceOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListIteratorOfListOfInteger;
class TColStd_ListIteratorOfListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfInteger();
		%feature("autodoc", "1");
		TColStd_ListIteratorOfListOfInteger(const TColStd_ListOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const TColStd_ListOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};

};
%feature("shadow") TColStd_ListIteratorOfListOfInteger::~TColStd_ListIteratorOfListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListIteratorOfListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray1OfTransient;
class TColStd_HArray1OfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray1OfTransient(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_HArray1OfTransient(const Standard_Integer Low, const Standard_Integer Up, const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColStd_Array1OfTransient & Array1() const;
		%feature("autodoc", "1");
		TColStd_Array1OfTransient & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray1OfTransient {
	Handle_TColStd_HArray1OfTransient GetHandle() {
	return *(Handle_TColStd_HArray1OfTransient*) &$self;
	}
};
%extend TColStd_HArray1OfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray1OfTransient::~TColStd_HArray1OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray1OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSetOfInteger;
class TColStd_HSetOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfInteger();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Union(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Intersection(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger Difference(const Handle_TColStd_HSetOfInteger &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfInteger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfInteger &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfInteger ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfInteger & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfInteger & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfInteger {
	Handle_TColStd_HSetOfInteger GetHandle() {
	return *(Handle_TColStd_HSetOfInteger*) &$self;
	}
};
%extend TColStd_HSetOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSetOfInteger::~TColStd_HSetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListOfReal;
class TColStd_ListOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfReal();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfReal &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_ListOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfReal & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I);
		%feature("autodoc", "1");
		void Append(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfReal & Other);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetFirst() {
				return (Standard_Real) $self->First();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFirst(Standard_Real value ) {
				$self->First()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetLast() {
				return (Standard_Real) $self->Last();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetLast(Standard_Real value ) {
				$self->Last()=value;
				}
		};
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Real &I, TColStd_ListIteratorOfListOfReal & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It);

};
%feature("shadow") TColStd_ListOfReal::~TColStd_ListOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackIteratorOfStackOfInteger;
class TColStd_StackIteratorOfStackOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfInteger();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfInteger(const TColStd_StackOfInteger &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfInteger &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TColStd_StackIteratorOfStackOfInteger::~TColStd_StackIteratorOfStackOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackIteratorOfStackOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfExtendedString;
class TColStd_SequenceNodeOfSequenceOfExtendedString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfExtendedString(const TCollection_ExtendedString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	Handle_TColStd_SequenceNodeOfSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfExtendedString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfExtendedString::~TColStd_SequenceNodeOfSequenceOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfBoolean;
class TColStd_SequenceNodeOfSequenceOfBoolean : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfBoolean(const Standard_Boolean &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetValue() {
				return (Standard_Boolean) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Boolean value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfBoolean {
	Handle_TColStd_SequenceNodeOfSequenceOfBoolean GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfBoolean*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfBoolean::~TColStd_SequenceNodeOfSequenceOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerReal;
class TColStd_DataMapIteratorOfDataMapOfIntegerReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerReal();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerReal(const TColStd_DataMapOfIntegerReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerReal &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerReal::~TColStd_DataMapIteratorOfDataMapOfIntegerReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfIntegerReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackIteratorOfStackOfReal;
class TColStd_StackIteratorOfStackOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfReal();
		%feature("autodoc", "1");
		TColStd_StackIteratorOfStackOfReal(const TColStd_StackOfReal &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_StackOfReal &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") TColStd_StackIteratorOfStackOfReal::~TColStd_StackIteratorOfStackOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackIteratorOfStackOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfTransient;
class TColStd_SequenceNodeOfSequenceOfTransient : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfTransient(const Handle_Standard_Transient &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
	Handle_TColStd_SequenceNodeOfSequenceOfTransient GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfTransient*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfTransient::~TColStd_SequenceNodeOfSequenceOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListOfTransient;
class TColStd_ListOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfTransient();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfTransient &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_ListOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfTransient & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfTransient & Other);
		%feature("autodoc", "1");
		Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Standard_Transient &I, TColStd_ListIteratorOfListOfTransient & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It);

};
%feature("shadow") TColStd_ListOfTransient::~TColStd_ListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIteratorOfMapOfInteger;
class TColStd_MapIteratorOfMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfInteger(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;

};
%feature("shadow") TColStd_MapIteratorOfMapOfInteger::~TColStd_MapIteratorOfMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIteratorOfMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfIntegerListOfInteger;
class TColStd_DataMapOfIntegerListOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger & Assign(const TColStd_DataMapOfIntegerListOfInteger &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger & operator=(const TColStd_DataMapOfIntegerListOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_ListOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const Standard_Integer &K);

};
%feature("shadow") TColStd_DataMapOfIntegerListOfInteger::~TColStd_DataMapOfIntegerListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfIntegerListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetOfInteger;
class TColStd_SetOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfInteger();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfInteger &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfInteger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfInteger &S) const;

};
%feature("shadow") TColStd_SetOfInteger::~TColStd_SetOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StackOfReal;
class TColStd_StackOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_StackOfReal();
		%feature("autodoc", "1");
		const TColStd_StackOfReal & Assign(const TColStd_StackOfReal &Other);
		%feature("autodoc", "1");
		const TColStd_StackOfReal & operator=(const TColStd_StackOfReal &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Standard_Real & Top() const;
		%feature("autodoc", "1");
		void Push(const Standard_Real &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeTop() {
				return (Standard_Real) $self->ChangeTop();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeTop(Standard_Real value ) {
				$self->ChangeTop()=value;
				}
		};

};
%feature("shadow") TColStd_StackOfReal::~TColStd_StackOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StackOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfListOfAsciiString;
class TColStd_ListNodeOfListOfAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfAsciiString(const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfAsciiString {
	Handle_TColStd_ListNodeOfListOfAsciiString GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfAsciiString*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfListOfAsciiString::~TColStd_ListNodeOfListOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfListOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerInteger;
class TColStd_DataMapIteratorOfDataMapOfIntegerInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		TColStd_DataMapIteratorOfDataMapOfIntegerInteger(const TColStd_DataMapOfIntegerInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_DataMapOfIntegerInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerInteger::~TColStd_DataMapIteratorOfDataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapIteratorOfDataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListOfInteger;
class TColStd_ListOfInteger {
	public:
		%feature("autodoc", "1");
		TColStd_ListOfInteger();
		%feature("autodoc", "1");
		void Assign(const TColStd_ListOfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const TColStd_ListOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(TColStd_ListOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I);
		%feature("autodoc", "1");
		void Append(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(TColStd_ListOfInteger & Other);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetFirst() {
				return (Standard_Integer) $self->First();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetFirst(Standard_Integer value ) {
				$self->First()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetLast() {
				return (Standard_Integer) $self->Last();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetLast(Standard_Integer value ) {
				$self->Last()=value;
				}
		};
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer &I, TColStd_ListIteratorOfListOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It);

};
%feature("shadow") TColStd_ListOfInteger::~TColStd_ListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_MapIteratorOfMapOfTransient;
class TColStd_MapIteratorOfMapOfTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient();
		%feature("autodoc", "1");
		TColStd_MapIteratorOfMapOfTransient(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColStd_MapOfTransient &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;

};
%feature("shadow") TColStd_MapIteratorOfMapOfTransient::~TColStd_MapIteratorOfMapOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_MapIteratorOfMapOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfAsciiString;
class TColStd_HSequenceOfAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfAsciiString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const TCollection_AsciiString &anItem);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfAsciiString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfAsciiString {
	Handle_TColStd_HSequenceOfAsciiString GetHandle() {
	return *(Handle_TColStd_HSequenceOfAsciiString*) &$self;
	}
};
%extend TColStd_HSequenceOfAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfAsciiString::~TColStd_HSequenceOfAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSequenceOfExtendedString;
class TColStd_HSequenceOfExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSequenceOfExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColStd_HSequenceOfExtendedString &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const TCollection_ExtendedString &anItem);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Sequence() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfExtendedString & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSequenceOfExtendedString {
	Handle_TColStd_HSequenceOfExtendedString GetHandle() {
	return *(Handle_TColStd_HSequenceOfExtendedString*) &$self;
	}
};
%extend TColStd_HSequenceOfExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSequenceOfExtendedString::~TColStd_HSequenceOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSequenceOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray2OfCharacter;
class TColStd_HArray2OfCharacter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfCharacter(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_Character &V);
		%feature("autodoc", "1");
		void Init(const Standard_Character &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Character &Value);
		%feature("autodoc", "1");
		const Standard_Character & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Character & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfCharacter & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfCharacter & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfCharacter {
	Handle_TColStd_HArray2OfCharacter GetHandle() {
	return *(Handle_TColStd_HArray2OfCharacter*) &$self;
	}
};
%extend TColStd_HArray2OfCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray2OfCharacter::~TColStd_HArray2OfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray2OfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfBoolean;
class TColStd_SequenceOfBoolean : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfBoolean();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfBoolean & Assign(const TColStd_SequenceOfBoolean &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfBoolean & operator=(const TColStd_SequenceOfBoolean &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Boolean &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Boolean &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		const Standard_Boolean & First() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &I);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeValue(const Standard_Integer Index) {
				return (Standard_Boolean) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Boolean value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfBoolean::~TColStd_SequenceOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetIteratorOfSetOfTransient;
class TColStd_SetIteratorOfSetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfTransient();
		%feature("autodoc", "1");
		TColStd_SetIteratorOfSetOfTransient(const TColStd_SetOfTransient &S);
		%feature("autodoc", "1");
		void Initialize(const TColStd_SetOfTransient &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") TColStd_SetIteratorOfSetOfTransient::~TColStd_SetIteratorOfSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetIteratorOfSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array1OfExtendedString;
class TColStd_Array1OfExtendedString {
	public:
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColStd_Array1OfExtendedString(const TCollection_ExtendedString &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TCollection_ExtendedString &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfExtendedString & Assign(const TColStd_Array1OfExtendedString &Other);
		%feature("autodoc", "1");
		const TColStd_Array1OfExtendedString & operator=(const TColStd_Array1OfExtendedString &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const Standard_Integer Index);

};
%feature("shadow") TColStd_Array1OfExtendedString::~TColStd_Array1OfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array1OfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;
class TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(const Standard_Integer &K, const TColStd_ListOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger::~TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfIntegerInteger;
class TColStd_DataMapOfIntegerInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger & Assign(const TColStd_DataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger & operator=(const TColStd_DataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const Standard_Integer &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const Standard_Integer &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer &K);

};
%feature("shadow") TColStd_DataMapOfIntegerInteger::~TColStd_DataMapOfIntegerInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfIntegerInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapOfTransientTransient;
class TColStd_DataMapOfTransientTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapOfTransientTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColStd_DataMapOfTransientTransient & Assign(const TColStd_DataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		TColStd_DataMapOfTransientTransient & operator=(const TColStd_DataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Handle_Standard_Transient &K);

};
%feature("shadow") TColStd_DataMapOfTransientTransient::~TColStd_DataMapOfTransientTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapOfTransientTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_StdMapNodeOfMapOfReal;
class TColStd_StdMapNodeOfMapOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_StdMapNodeOfMapOfReal(const Standard_Real &K, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetKey() {
				return (Standard_Real) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Real value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_StdMapNodeOfMapOfReal {
	Handle_TColStd_StdMapNodeOfMapOfReal GetHandle() {
	return *(Handle_TColStd_StdMapNodeOfMapOfReal*) &$self;
	}
};
%extend TColStd_StdMapNodeOfMapOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_StdMapNodeOfMapOfReal::~TColStd_StdMapNodeOfMapOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_StdMapNodeOfMapOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfInteger;
class TColStd_SequenceNodeOfSequenceOfInteger : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfInteger(const Standard_Integer &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
	Handle_TColStd_SequenceNodeOfSequenceOfInteger GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfInteger*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfInteger::~TColStd_SequenceNodeOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerTransient;
class TColStd_DataMapNodeOfDataMapOfIntegerTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_DataMapNodeOfDataMapOfIntegerTransient(const Standard_Integer &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerTransient {
	Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient GetHandle() {
	return *(Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient*) &$self;
	}
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerTransient::~TColStd_DataMapNodeOfDataMapOfIntegerTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_DataMapNodeOfDataMapOfIntegerTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SetOfTransient;
class TColStd_SetOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_SetOfTransient();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Union(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		void Intersection(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		void Difference(const TColStd_SetOfTransient &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const TColStd_SetOfTransient &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const TColStd_SetOfTransient &S) const;

};
%feature("shadow") TColStd_SetOfTransient::~TColStd_SetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceNodeOfSequenceOfHAsciiString;
class TColStd_SequenceNodeOfSequenceOfHAsciiString : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceNodeOfSequenceOfHAsciiString(const Handle_TCollection_HAsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString GetHandle() {
	return *(Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString*) &$self;
	}
};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_SequenceNodeOfSequenceOfHAsciiString::~TColStd_SequenceNodeOfSequenceOfHAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_ListNodeOfListOfTransient;
class TColStd_ListNodeOfListOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_ListNodeOfListOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_ListNodeOfListOfTransient {
	Handle_TColStd_ListNodeOfListOfTransient GetHandle() {
	return *(Handle_TColStd_ListNodeOfListOfTransient*) &$self;
	}
};
%extend TColStd_ListNodeOfListOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_ListNodeOfListOfTransient::~TColStd_ListNodeOfListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_ListNodeOfListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array2OfReal;
class TColStd_Array2OfReal {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfReal(const Standard_Real &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Assign(const TColStd_Array2OfReal &Other);
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & operator=(const TColStd_Array2OfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Real) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColStd_Array2OfReal::~TColStd_Array2OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array2OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueNodeOfQueueOfTransient;
class TColStd_QueueNodeOfQueueOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColStd_QueueNodeOfQueueOfTransient(const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_QueueNodeOfQueueOfTransient {
	Handle_TColStd_QueueNodeOfQueueOfTransient GetHandle() {
	return *(Handle_TColStd_QueueNodeOfQueueOfTransient*) &$self;
	}
};
%extend TColStd_QueueNodeOfQueueOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_QueueNodeOfQueueOfTransient::~TColStd_QueueNodeOfQueueOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueNodeOfQueueOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueOfReal;
class TColStd_QueueOfReal {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfReal();
		%feature("autodoc", "1");
		const TColStd_QueueOfReal & Assign(const TColStd_QueueOfReal &Other);
		%feature("autodoc", "1");
		const TColStd_QueueOfReal & operator=(const TColStd_QueueOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Standard_Real & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Standard_Real &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFront() {
				return (Standard_Real) $self->ChangeFront();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFront(Standard_Real value ) {
				$self->ChangeFront()=value;
				}
		};

};
%feature("shadow") TColStd_QueueOfReal::~TColStd_QueueOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_Array2OfTransient;
class TColStd_Array2OfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_Array2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_Array2OfTransient(const Handle_Standard_Transient &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColStd_Array2OfTransient & Assign(const TColStd_Array2OfTransient &Other);
		%feature("autodoc", "1");
		const TColStd_Array2OfTransient & operator=(const TColStd_Array2OfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColStd_Array2OfTransient::~TColStd_Array2OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_Array2OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_QueueOfTransient;
class TColStd_QueueOfTransient {
	public:
		%feature("autodoc", "1");
		TColStd_QueueOfTransient();
		%feature("autodoc", "1");
		const TColStd_QueueOfTransient & Assign(const TColStd_QueueOfTransient &Other);
		%feature("autodoc", "1");
		const TColStd_QueueOfTransient & operator=(const TColStd_QueueOfTransient &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Front() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Push(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFront();

};
%feature("shadow") TColStd_QueueOfTransient::~TColStd_QueueOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_QueueOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HSetOfTransient;
class TColStd_HSetOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HSetOfTransient();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Union(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Intersection(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient Difference(const Handle_TColStd_HSetOfTransient &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_TColStd_HSetOfTransient &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_TColStd_HSetOfTransient &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSetOfTransient ShallowCopy() const;
		%feature("autodoc", "1");
		const TColStd_SetOfTransient & Set() const;
		%feature("autodoc", "1");
		TColStd_SetOfTransient & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HSetOfTransient {
	Handle_TColStd_HSetOfTransient GetHandle() {
	return *(Handle_TColStd_HSetOfTransient*) &$self;
	}
};
%extend TColStd_HSetOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HSetOfTransient::~TColStd_HSetOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HSetOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_SequenceOfTransient;
class TColStd_SequenceOfTransient : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColStd_SequenceOfTransient();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColStd_SequenceOfTransient & Assign(const TColStd_SequenceOfTransient &Other);
		%feature("autodoc", "1");
		const TColStd_SequenceOfTransient & operator=(const TColStd_SequenceOfTransient &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Append(TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void Prepend(TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & First() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColStd_SequenceOfTransient & S);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColStd_SequenceOfTransient::~TColStd_SequenceOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_SequenceOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColStd_HArray2OfTransient;
class TColStd_HArray2OfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColStd_HArray2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColStd_HArray2OfTransient(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Transient &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_Standard_Transient &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColStd_Array2OfTransient & Array2() const;
		%feature("autodoc", "1");
		TColStd_Array2OfTransient & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColStd_HArray2OfTransient {
	Handle_TColStd_HArray2OfTransient GetHandle() {
	return *(Handle_TColStd_HArray2OfTransient*) &$self;
	}
};
%extend TColStd_HArray2OfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColStd_HArray2OfTransient::~TColStd_HArray2OfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColStd_HArray2OfTransient {
	void _kill_pointed() {
		delete $self;
	}
};
