/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module TDataStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TDataStd_renames.i


%include TDataStd_required_python_modules.i


%include TDataStd_dependencies.i


%include TDataStd_headers.i

typedef TDataStd_TreeNode * TDataStd_PtrTreeNode;

enum TDataStd_RealEnum {
	TDataStd_SCALAR,
	TDataStd_LENGTH,
	TDataStd_ANGULAR,
	};



%nodefaultctor Handle_TDataStd_DeltaOnModificationOfExtStringArray;
class Handle_TDataStd_DeltaOnModificationOfExtStringArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray(const Handle_TDataStd_DeltaOnModificationOfExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray(const TDataStd_DeltaOnModificationOfExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray & operator=(const Handle_TDataStd_DeltaOnModificationOfExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfExtStringArray & operator=(const TDataStd_DeltaOnModificationOfExtStringArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DeltaOnModificationOfExtStringArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfExtStringArray {
	TDataStd_DeltaOnModificationOfExtStringArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfExtStringArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DeltaOnModificationOfExtStringArray::~Handle_TDataStd_DeltaOnModificationOfExtStringArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DeltaOnModificationOfExtStringArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Relation;
class Handle_TDataStd_Relation : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Relation();
		%feature("autodoc", "1");
		Handle_TDataStd_Relation(const Handle_TDataStd_Relation &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation(const TDataStd_Relation *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation & operator=(const Handle_TDataStd_Relation &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Relation & operator=(const TDataStd_Relation *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Relation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Relation {
	TDataStd_Relation* GetObject() {
	return (TDataStd_Relation*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Relation::~Handle_TDataStd_Relation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Relation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringByte;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringByte : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte(const Handle_TDataStd_DataMapNodeOfDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte(const TDataStd_DataMapNodeOfDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte & operator=(const TDataStd_DataMapNodeOfDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DataMapNodeOfDataMapOfStringByte DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringByte {
	TDataStd_DataMapNodeOfDataMapOfStringByte* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringByte*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DataMapNodeOfDataMapOfStringByte::~Handle_TDataStd_DataMapNodeOfDataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ListNodeOfListOfExtendedString;
class Handle_TDataStd_ListNodeOfListOfExtendedString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString();
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString(const Handle_TDataStd_ListNodeOfListOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString(const TDataStd_ListNodeOfListOfExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString & operator=(const Handle_TDataStd_ListNodeOfListOfExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfExtendedString & operator=(const TDataStd_ListNodeOfListOfExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ListNodeOfListOfExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ListNodeOfListOfExtendedString {
	TDataStd_ListNodeOfListOfExtendedString* GetObject() {
	return (TDataStd_ListNodeOfListOfExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ListNodeOfListOfExtendedString::~Handle_TDataStd_ListNodeOfListOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ListNodeOfListOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_TreeNode;
class Handle_TDataStd_TreeNode : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode(const Handle_TDataStd_TreeNode &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode(const TDataStd_TreeNode *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode & operator=(const Handle_TDataStd_TreeNode &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode & operator=(const TDataStd_TreeNode *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_TreeNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_TreeNode {
	TDataStd_TreeNode* GetObject() {
	return (TDataStd_TreeNode*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_TreeNode::~Handle_TDataStd_TreeNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_TreeNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_BooleanList;
class Handle_TDataStd_BooleanList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList(const Handle_TDataStd_BooleanList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList(const TDataStd_BooleanList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList & operator=(const Handle_TDataStd_BooleanList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanList & operator=(const TDataStd_BooleanList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_BooleanList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_BooleanList {
	TDataStd_BooleanList* GetObject() {
	return (TDataStd_BooleanList*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_BooleanList::~Handle_TDataStd_BooleanList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_BooleanList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_UAttribute;
class Handle_TDataStd_UAttribute : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute();
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute(const Handle_TDataStd_UAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute(const TDataStd_UAttribute *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute & operator=(const Handle_TDataStd_UAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_UAttribute & operator=(const TDataStd_UAttribute *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_UAttribute DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_UAttribute {
	TDataStd_UAttribute* GetObject() {
	return (TDataStd_UAttribute*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_UAttribute::~Handle_TDataStd_UAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_UAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringReal;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal(const Handle_TDataStd_DataMapNodeOfDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal(const TDataStd_DataMapNodeOfDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal & operator=(const TDataStd_DataMapNodeOfDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DataMapNodeOfDataMapOfStringReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringReal {
	TDataStd_DataMapNodeOfDataMapOfStringReal* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringReal*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DataMapNodeOfDataMapOfStringReal::~Handle_TDataStd_DataMapNodeOfDataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_AsciiString;
class Handle_TDataStd_AsciiString : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString();
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString(const Handle_TDataStd_AsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString(const TDataStd_AsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString & operator=(const Handle_TDataStd_AsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_AsciiString & operator=(const TDataStd_AsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_AsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_AsciiString {
	TDataStd_AsciiString* GetObject() {
	return (TDataStd_AsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_AsciiString::~Handle_TDataStd_AsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_AsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringHArray1OfReal;
class Handle_TDataStd_HDataMapOfStringHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal(const Handle_TDataStd_HDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal(const TDataStd_HDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal & operator=(const Handle_TDataStd_HDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfReal & operator=(const TDataStd_HDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringHArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfReal {
	TDataStd_HDataMapOfStringHArray1OfReal* GetObject() {
	return (TDataStd_HDataMapOfStringHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringHArray1OfReal::~Handle_TDataStd_HDataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ReferenceArray;
class Handle_TDataStd_ReferenceArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray(const Handle_TDataStd_ReferenceArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray(const TDataStd_ReferenceArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray & operator=(const Handle_TDataStd_ReferenceArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceArray & operator=(const TDataStd_ReferenceArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ReferenceArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ReferenceArray {
	TDataStd_ReferenceArray* GetObject() {
	return (TDataStd_ReferenceArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ReferenceArray::~Handle_TDataStd_ReferenceArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ReferenceArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger & operator=(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger::~Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfIntArray;
class Handle_TDataStd_DeltaOnModificationOfIntArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray(const Handle_TDataStd_DeltaOnModificationOfIntArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray(const TDataStd_DeltaOnModificationOfIntArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray & operator=(const Handle_TDataStd_DeltaOnModificationOfIntArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntArray & operator=(const TDataStd_DeltaOnModificationOfIntArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DeltaOnModificationOfIntArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfIntArray {
	TDataStd_DeltaOnModificationOfIntArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfIntArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DeltaOnModificationOfIntArray::~Handle_TDataStd_DeltaOnModificationOfIntArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DeltaOnModificationOfIntArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_IntPackedMap;
class Handle_TDataStd_IntPackedMap : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap();
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap(const Handle_TDataStd_IntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap(const TDataStd_IntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap & operator=(const Handle_TDataStd_IntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntPackedMap & operator=(const TDataStd_IntPackedMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntPackedMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntPackedMap {
	TDataStd_IntPackedMap* GetObject() {
	return (TDataStd_IntPackedMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_IntPackedMap::~Handle_TDataStd_IntPackedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_IntPackedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringInteger;
class Handle_TDataStd_HDataMapOfStringInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger(const Handle_TDataStd_HDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger(const TDataStd_HDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger & operator=(const Handle_TDataStd_HDataMapOfStringInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringInteger & operator=(const TDataStd_HDataMapOfStringInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringInteger {
	TDataStd_HDataMapOfStringInteger* GetObject() {
	return (TDataStd_HDataMapOfStringInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringInteger::~Handle_TDataStd_HDataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfByteArray;
class Handle_TDataStd_DeltaOnModificationOfByteArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray(const Handle_TDataStd_DeltaOnModificationOfByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray(const TDataStd_DeltaOnModificationOfByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray & operator=(const Handle_TDataStd_DeltaOnModificationOfByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfByteArray & operator=(const TDataStd_DeltaOnModificationOfByteArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DeltaOnModificationOfByteArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfByteArray {
	TDataStd_DeltaOnModificationOfByteArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfByteArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DeltaOnModificationOfByteArray::~Handle_TDataStd_DeltaOnModificationOfByteArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DeltaOnModificationOfByteArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_IntegerList;
class Handle_TDataStd_IntegerList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList(const Handle_TDataStd_IntegerList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList(const TDataStd_IntegerList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList & operator=(const Handle_TDataStd_IntegerList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerList & operator=(const TDataStd_IntegerList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntegerList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntegerList {
	TDataStd_IntegerList* GetObject() {
	return (TDataStd_IntegerList*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_IntegerList::~Handle_TDataStd_IntegerList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_IntegerList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfIntPackedMap;
class Handle_TDataStd_DeltaOnModificationOfIntPackedMap : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap(const Handle_TDataStd_DeltaOnModificationOfIntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap(const TDataStd_DeltaOnModificationOfIntPackedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap & operator=(const Handle_TDataStd_DeltaOnModificationOfIntPackedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfIntPackedMap & operator=(const TDataStd_DeltaOnModificationOfIntPackedMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DeltaOnModificationOfIntPackedMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfIntPackedMap {
	TDataStd_DeltaOnModificationOfIntPackedMap* GetObject() {
	return (TDataStd_DeltaOnModificationOfIntPackedMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DeltaOnModificationOfIntPackedMap::~Handle_TDataStd_DeltaOnModificationOfIntPackedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DeltaOnModificationOfIntPackedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ExtStringArray;
class Handle_TDataStd_ExtStringArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray(const Handle_TDataStd_ExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray(const TDataStd_ExtStringArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray & operator=(const Handle_TDataStd_ExtStringArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringArray & operator=(const TDataStd_ExtStringArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ExtStringArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ExtStringArray {
	TDataStd_ExtStringArray* GetObject() {
	return (TDataStd_ExtStringArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ExtStringArray::~Handle_TDataStd_ExtStringArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ExtStringArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ExtStringList;
class Handle_TDataStd_ExtStringList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList();
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList(const Handle_TDataStd_ExtStringList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList(const TDataStd_ExtStringList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList & operator=(const Handle_TDataStd_ExtStringList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ExtStringList & operator=(const TDataStd_ExtStringList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ExtStringList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ExtStringList {
	TDataStd_ExtStringList* GetObject() {
	return (TDataStd_ExtStringList*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ExtStringList::~Handle_TDataStd_ExtStringList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ExtStringList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_IntegerArray;
class Handle_TDataStd_IntegerArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray();
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray(const Handle_TDataStd_IntegerArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray(const TDataStd_IntegerArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray & operator=(const Handle_TDataStd_IntegerArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_IntegerArray & operator=(const TDataStd_IntegerArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntegerArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_IntegerArray {
	TDataStd_IntegerArray* GetObject() {
	return (TDataStd_IntegerArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_IntegerArray::~Handle_TDataStd_IntegerArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_IntegerArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringReal;
class Handle_TDataStd_HDataMapOfStringReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal(const Handle_TDataStd_HDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal(const TDataStd_HDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal & operator=(const Handle_TDataStd_HDataMapOfStringReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringReal & operator=(const TDataStd_HDataMapOfStringReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringReal {
	TDataStd_HDataMapOfStringReal* GetObject() {
	return (TDataStd_HDataMapOfStringReal*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringReal::~Handle_TDataStd_HDataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ReferenceList;
class Handle_TDataStd_ReferenceList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList();
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList(const Handle_TDataStd_ReferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList(const TDataStd_ReferenceList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList & operator=(const Handle_TDataStd_ReferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ReferenceList & operator=(const TDataStd_ReferenceList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ReferenceList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ReferenceList {
	TDataStd_ReferenceList* GetObject() {
	return (TDataStd_ReferenceList*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ReferenceList::~Handle_TDataStd_ReferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ReferenceList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringString;
class Handle_TDataStd_HDataMapOfStringString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString(const Handle_TDataStd_HDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString(const TDataStd_HDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString & operator=(const Handle_TDataStd_HDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringString & operator=(const TDataStd_HDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringString {
	TDataStd_HDataMapOfStringString* GetObject() {
	return (TDataStd_HDataMapOfStringString*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringString::~Handle_TDataStd_HDataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Expression;
class Handle_TDataStd_Expression : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Expression();
		%feature("autodoc", "1");
		Handle_TDataStd_Expression(const Handle_TDataStd_Expression &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression(const TDataStd_Expression *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression & operator=(const Handle_TDataStd_Expression &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Expression & operator=(const TDataStd_Expression *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Expression DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Expression {
	TDataStd_Expression* GetObject() {
	return (TDataStd_Expression*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Expression::~Handle_TDataStd_Expression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Expression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringHArray1OfInteger;
class Handle_TDataStd_HDataMapOfStringHArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger(const Handle_TDataStd_HDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger(const TDataStd_HDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger & operator=(const Handle_TDataStd_HDataMapOfStringHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringHArray1OfInteger & operator=(const TDataStd_HDataMapOfStringHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringHArray1OfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringHArray1OfInteger {
	TDataStd_HDataMapOfStringHArray1OfInteger* GetObject() {
	return (TDataStd_HDataMapOfStringHArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringHArray1OfInteger::~Handle_TDataStd_HDataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DeltaOnModificationOfRealArray;
class Handle_TDataStd_DeltaOnModificationOfRealArray : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray();
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray(const Handle_TDataStd_DeltaOnModificationOfRealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray(const TDataStd_DeltaOnModificationOfRealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray & operator=(const Handle_TDataStd_DeltaOnModificationOfRealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DeltaOnModificationOfRealArray & operator=(const TDataStd_DeltaOnModificationOfRealArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DeltaOnModificationOfRealArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DeltaOnModificationOfRealArray {
	TDataStd_DeltaOnModificationOfRealArray* GetObject() {
	return (TDataStd_DeltaOnModificationOfRealArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DeltaOnModificationOfRealArray::~Handle_TDataStd_DeltaOnModificationOfRealArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DeltaOnModificationOfRealArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Variable;
class Handle_TDataStd_Variable : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Variable();
		%feature("autodoc", "1");
		Handle_TDataStd_Variable(const Handle_TDataStd_Variable &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable(const TDataStd_Variable *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable & operator=(const Handle_TDataStd_Variable &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Variable & operator=(const TDataStd_Variable *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Variable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Variable {
	TDataStd_Variable* GetObject() {
	return (TDataStd_Variable*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Variable::~Handle_TDataStd_Variable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Variable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_BooleanArray;
class Handle_TDataStd_BooleanArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray();
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray(const Handle_TDataStd_BooleanArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray(const TDataStd_BooleanArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray & operator=(const Handle_TDataStd_BooleanArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_BooleanArray & operator=(const TDataStd_BooleanArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_BooleanArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_BooleanArray {
	TDataStd_BooleanArray* GetObject() {
	return (TDataStd_BooleanArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_BooleanArray::~Handle_TDataStd_BooleanArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_BooleanArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HLabelArray1;
class Handle_TDataStd_HLabelArray1 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1();
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1(const Handle_TDataStd_HLabelArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1(const TDataStd_HLabelArray1 *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1 & operator=(const Handle_TDataStd_HLabelArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HLabelArray1 & operator=(const TDataStd_HLabelArray1 *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HLabelArray1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HLabelArray1 {
	TDataStd_HLabelArray1* GetObject() {
	return (TDataStd_HLabelArray1*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HLabelArray1::~Handle_TDataStd_HLabelArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HLabelArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Name;
class Handle_TDataStd_Name : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Name();
		%feature("autodoc", "1");
		Handle_TDataStd_Name(const Handle_TDataStd_Name &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Name(const TDataStd_Name *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Name & operator=(const Handle_TDataStd_Name &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Name & operator=(const TDataStd_Name *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Name DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Name {
	TDataStd_Name* GetObject() {
	return (TDataStd_Name*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Name::~Handle_TDataStd_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ListNodeOfListOfByte;
class Handle_TDataStd_ListNodeOfListOfByte : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte();
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte(const Handle_TDataStd_ListNodeOfListOfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte(const TDataStd_ListNodeOfListOfByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte & operator=(const Handle_TDataStd_ListNodeOfListOfByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ListNodeOfListOfByte & operator=(const TDataStd_ListNodeOfListOfByte *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ListNodeOfListOfByte DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ListNodeOfListOfByte {
	TDataStd_ListNodeOfListOfByte* GetObject() {
	return (TDataStd_ListNodeOfListOfByte*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ListNodeOfListOfByte::~Handle_TDataStd_ListNodeOfListOfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ListNodeOfListOfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Tick;
class Handle_TDataStd_Tick : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Tick();
		%feature("autodoc", "1");
		Handle_TDataStd_Tick(const Handle_TDataStd_Tick &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick(const TDataStd_Tick *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick & operator=(const Handle_TDataStd_Tick &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Tick & operator=(const TDataStd_Tick *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Tick DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Tick {
	TDataStd_Tick* GetObject() {
	return (TDataStd_Tick*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Tick::~Handle_TDataStd_Tick %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Tick {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_HDataMapOfStringByte;
class Handle_TDataStd_HDataMapOfStringByte : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte();
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte(const Handle_TDataStd_HDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte(const TDataStd_HDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte & operator=(const Handle_TDataStd_HDataMapOfStringByte &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_HDataMapOfStringByte & operator=(const TDataStd_HDataMapOfStringByte *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_HDataMapOfStringByte DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_HDataMapOfStringByte {
	TDataStd_HDataMapOfStringByte* GetObject() {
	return (TDataStd_HDataMapOfStringByte*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_HDataMapOfStringByte::~Handle_TDataStd_HDataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_HDataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Comment;
class Handle_TDataStd_Comment : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Comment();
		%feature("autodoc", "1");
		Handle_TDataStd_Comment(const Handle_TDataStd_Comment &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment(const TDataStd_Comment *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment & operator=(const Handle_TDataStd_Comment &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Comment & operator=(const TDataStd_Comment *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Comment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Comment {
	TDataStd_Comment* GetObject() {
	return (TDataStd_Comment*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Comment::~Handle_TDataStd_Comment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Comment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringString;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString(const Handle_TDataStd_DataMapNodeOfDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString(const TDataStd_DataMapNodeOfDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringString &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringString & operator=(const TDataStd_DataMapNodeOfDataMapOfStringString *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DataMapNodeOfDataMapOfStringString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringString {
	TDataStd_DataMapNodeOfDataMapOfStringString* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringString*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DataMapNodeOfDataMapOfStringString::~Handle_TDataStd_DataMapNodeOfDataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Integer;
class Handle_TDataStd_Integer : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Integer();
		%feature("autodoc", "1");
		Handle_TDataStd_Integer(const Handle_TDataStd_Integer &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer(const TDataStd_Integer *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer & operator=(const Handle_TDataStd_Integer &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer & operator=(const TDataStd_Integer *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Integer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Integer {
	TDataStd_Integer* GetObject() {
	return (TDataStd_Integer*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Integer::~Handle_TDataStd_Integer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Integer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Directory;
class Handle_TDataStd_Directory : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Directory();
		%feature("autodoc", "1");
		Handle_TDataStd_Directory(const Handle_TDataStd_Directory &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory(const TDataStd_Directory *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory & operator=(const Handle_TDataStd_Directory &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Directory & operator=(const TDataStd_Directory *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Directory DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Directory {
	TDataStd_Directory* GetObject() {
	return (TDataStd_Directory*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Directory::~Handle_TDataStd_Directory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Directory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Current;
class Handle_TDataStd_Current : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Current();
		%feature("autodoc", "1");
		Handle_TDataStd_Current(const Handle_TDataStd_Current &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Current(const TDataStd_Current *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Current & operator=(const Handle_TDataStd_Current &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Current & operator=(const TDataStd_Current *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Current DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Current {
	TDataStd_Current* GetObject() {
	return (TDataStd_Current*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Current::~Handle_TDataStd_Current %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Current {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_RealArray;
class Handle_TDataStd_RealArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray();
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray(const Handle_TDataStd_RealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray(const TDataStd_RealArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray & operator=(const Handle_TDataStd_RealArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealArray & operator=(const TDataStd_RealArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_RealArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_RealArray {
	TDataStd_RealArray* GetObject() {
	return (TDataStd_RealArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_RealArray::~Handle_TDataStd_RealArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_RealArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_NoteBook;
class Handle_TDataStd_NoteBook : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook();
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook(const Handle_TDataStd_NoteBook &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook(const TDataStd_NoteBook *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook & operator=(const Handle_TDataStd_NoteBook &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NoteBook & operator=(const TDataStd_NoteBook *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_NoteBook DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_NoteBook {
	TDataStd_NoteBook* GetObject() {
	return (TDataStd_NoteBook*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_NoteBook::~Handle_TDataStd_NoteBook %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_NoteBook {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_RealList;
class Handle_TDataStd_RealList : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_RealList();
		%feature("autodoc", "1");
		Handle_TDataStd_RealList(const Handle_TDataStd_RealList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList(const TDataStd_RealList *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList & operator=(const Handle_TDataStd_RealList &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_RealList & operator=(const TDataStd_RealList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_RealList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_RealList {
	TDataStd_RealList* GetObject() {
	return (TDataStd_RealList*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_RealList::~Handle_TDataStd_RealList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_RealList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_ByteArray;
class Handle_TDataStd_ByteArray : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray();
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray(const Handle_TDataStd_ByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray(const TDataStd_ByteArray *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray & operator=(const Handle_TDataStd_ByteArray &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_ByteArray & operator=(const TDataStd_ByteArray *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_ByteArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_ByteArray {
	TDataStd_ByteArray* GetObject() {
	return (TDataStd_ByteArray*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_ByteArray::~Handle_TDataStd_ByteArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_ByteArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal;
class Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal & operator=(const Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal & operator=(const TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal* GetObject() {
	return (TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal::~Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_Real;
class Handle_TDataStd_Real : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_Real();
		%feature("autodoc", "1");
		Handle_TDataStd_Real(const Handle_TDataStd_Real &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Real(const TDataStd_Real *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_Real & operator=(const Handle_TDataStd_Real &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_Real & operator=(const TDataStd_Real *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Real DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_Real {
	TDataStd_Real* GetObject() {
	return (TDataStd_Real*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_Real::~Handle_TDataStd_Real %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_Real {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDataStd_NamedData;
class Handle_TDataStd_NamedData : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData();
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData(const Handle_TDataStd_NamedData &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData(const TDataStd_NamedData *anItem);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData & operator=(const Handle_TDataStd_NamedData &aHandle);
		%feature("autodoc", "1");
		Handle_TDataStd_NamedData & operator=(const TDataStd_NamedData *anItem);
		%feature("autodoc", "1");
		static		Handle_TDataStd_NamedData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDataStd_NamedData {
	TDataStd_NamedData* GetObject() {
	return (TDataStd_NamedData*)$self->Access();
	}
};
%feature("shadow") Handle_TDataStd_NamedData::~Handle_TDataStd_NamedData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDataStd_NamedData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringHArray1OfInteger;
class TDataStd_HDataMapOfStringHArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfInteger(const TDataStd_DataMapOfStringHArray1OfInteger &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfInteger & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	Handle_TDataStd_HDataMapOfStringHArray1OfInteger GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringHArray1OfInteger*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringHArray1OfInteger::~TDataStd_HDataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringByte;
class TDataStd_DataMapIteratorOfDataMapOfStringByte : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringByte();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringByte(const TDataStd_DataMapOfStringByte &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringByte &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Byte & Value() const;

};
%feature("shadow") TDataStd_DataMapIteratorOfDataMapOfStringByte::~TDataStd_DataMapIteratorOfDataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapIteratorOfDataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_NoteBook;
class TDataStd_NoteBook : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &current, Handle_TDataStd_NoteBook & N);
		%feature("autodoc", "1");
		static		Handle_TDataStd_NoteBook New(const TDF_Label &label);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_NoteBook();
		%feature("autodoc", "1");
		Handle_TDataStd_Real Append(const Standard_Real value, const Standard_Boolean isExported=false);
		%feature("autodoc", "1");
		Handle_TDataStd_Integer Append(const Standard_Integer value, const Standard_Boolean isExported=false);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_NoteBook {
	Handle_TDataStd_NoteBook GetHandle() {
	return *(Handle_TDataStd_NoteBook*) &$self;
	}
};
%extend TDataStd_NoteBook {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_NoteBook::~TDataStd_NoteBook %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_NoteBook {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringString;
class TDataStd_DataMapNodeOfDataMapOfStringString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringString(const TCollection_ExtendedString &K, const TCollection_ExtendedString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringString GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringString*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DataMapNodeOfDataMapOfStringString::~TDataStd_DataMapNodeOfDataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapNodeOfDataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_LabelArray1;
class TDataStd_LabelArray1 {
	public:
		%feature("autodoc", "1");
		TDataStd_LabelArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_LabelArray1(const TDF_Label &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TDF_Label &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & Assign(const TDataStd_LabelArray1 &Other);
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & operator=(const TDataStd_LabelArray1 &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TDF_Label &Value);
		%feature("autodoc", "1");
		const TDF_Label & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TDF_Label & operator()(const Standard_Integer Index);

};
%feature("shadow") TDataStd_LabelArray1::~TDataStd_LabelArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_LabelArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListIteratorOfListOfExtendedString;
class TDataStd_ListIteratorOfListOfExtendedString {
	public:
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfExtendedString();
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfExtendedString(const TDataStd_ListOfExtendedString &L);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_ListOfExtendedString &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;

};
%feature("shadow") TDataStd_ListIteratorOfListOfExtendedString::~TDataStd_ListIteratorOfListOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListIteratorOfListOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_NamedData;
class TDataStd_NamedData : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_NamedData Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_NamedData();
		%feature("autodoc", "1");
		Standard_Boolean HasIntegers() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInteger(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Integer GetInteger(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetInteger(const TCollection_ExtendedString &theName, const Standard_Integer theInteger);
		%feature("autodoc", "1");
		const TColStd_DataMapOfStringInteger & GetIntegersContainer();
		%feature("autodoc", "1");
		void ChangeIntegers(const TColStd_DataMapOfStringInteger &theIntegers);
		%feature("autodoc", "1");
		Standard_Boolean HasReals() const;
		%feature("autodoc", "1");
		Standard_Boolean HasReal(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Real GetReal(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetReal(const TCollection_ExtendedString &theName, const Standard_Real theReal);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringReal & GetRealsContainer();
		%feature("autodoc", "1");
		void ChangeReals(const TDataStd_DataMapOfStringReal &theReals);
		%feature("autodoc", "1");
		Standard_Boolean HasStrings() const;
		%feature("autodoc", "1");
		Standard_Boolean HasString(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetString(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetString(const TCollection_ExtendedString &theName, const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringString & GetStringsContainer();
		%feature("autodoc", "1");
		void ChangeStrings(const TDataStd_DataMapOfStringString &theStrings);
		%feature("autodoc", "1");
		Standard_Boolean HasBytes() const;
		%feature("autodoc", "1");
		Standard_Boolean HasByte(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		Standard_Byte GetByte(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetByte(const TCollection_ExtendedString &theName, const Standard_Byte theByte);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringByte & GetBytesContainer();
		%feature("autodoc", "1");
		void ChangeBytes(const TDataStd_DataMapOfStringByte &theBytes);
		%feature("autodoc", "1");
		Standard_Boolean HasArraysOfIntegers() const;
		%feature("autodoc", "1");
		Standard_Boolean HasArrayOfIntegers(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & GetArrayOfIntegers(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetArrayOfIntegers(const TCollection_ExtendedString &theName, const Handle_TColStd_HArray1OfInteger &theArrayOfIntegers);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfInteger & GetArraysOfIntegersContainer();
		%feature("autodoc", "1");
		void ChangeArraysOfIntegers(const TDataStd_DataMapOfStringHArray1OfInteger &theArraysOfIntegers);
		%feature("autodoc", "1");
		Standard_Boolean HasArraysOfReals() const;
		%feature("autodoc", "1");
		Standard_Boolean HasArrayOfReals(const TCollection_ExtendedString &theName) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & GetArrayOfReals(const TCollection_ExtendedString &theName);
		%feature("autodoc", "1");
		void SetArrayOfReals(const TCollection_ExtendedString &theName, const Handle_TColStd_HArray1OfReal &theArrayOfReals);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfReal & GetArraysOfRealsContainer();
		%feature("autodoc", "1");
		void ChangeArraysOfReals(const TDataStd_DataMapOfStringHArray1OfReal &theArraysOfReals);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_NamedData {
	Handle_TDataStd_NamedData GetHandle() {
	return *(Handle_TDataStd_NamedData*) &$self;
	}
};
%extend TDataStd_NamedData {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_NamedData::~TDataStd_NamedData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_NamedData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapOfStringReal;
class TDataStd_DataMapOfStringReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & Assign(const TDataStd_DataMapOfStringReal &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & operator=(const TDataStd_DataMapOfStringReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFind(const TCollection_ExtendedString &K) {
				return (Standard_Real) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Real value ,const TCollection_ExtendedString &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") TDataStd_DataMapOfStringReal::~TDataStd_DataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_RealArray;
class TDataStd_RealArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_RealArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=false);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfReal &newArray, const Standard_Boolean isCheckItems=true);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_RealArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_RealArray {
	Handle_TDataStd_RealArray GetHandle() {
	return *(Handle_TDataStd_RealArray*) &$self;
	}
};
%extend TDataStd_RealArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_RealArray::~TDataStd_RealArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_RealArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListOfExtendedString;
class TDataStd_ListOfExtendedString {
	public:
		%feature("autodoc", "1");
		TDataStd_ListOfExtendedString();
		%feature("autodoc", "1");
		void Assign(const TDataStd_ListOfExtendedString &Other);
		%feature("autodoc", "1");
		void operator=(const TDataStd_ListOfExtendedString &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & theIt);
		%feature("autodoc", "1");
		void Prepend(TDataStd_ListOfExtendedString & Other);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & theIt);
		%feature("autodoc", "1");
		void Append(TDataStd_ListOfExtendedString & Other);
		%feature("autodoc", "1");
		TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertBefore(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertBefore(TDataStd_ListOfExtendedString & Other, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertAfter(const TCollection_ExtendedString &I, TDataStd_ListIteratorOfListOfExtendedString & It);
		%feature("autodoc", "1");
		void InsertAfter(TDataStd_ListOfExtendedString & Other, TDataStd_ListIteratorOfListOfExtendedString & It);

};
%feature("shadow") TDataStd_ListOfExtendedString::~TDataStd_ListOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringReal;
class TDataStd_DataMapIteratorOfDataMapOfStringReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringReal();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringReal(const TDataStd_DataMapOfStringReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringReal &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") TDataStd_DataMapIteratorOfDataMapOfStringReal::~TDataStd_DataMapIteratorOfDataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapIteratorOfDataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfIntPackedMap;
class TDataStd_DeltaOnModificationOfIntPackedMap : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfIntPackedMap(const Handle_TDataStd_IntPackedMap &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	Handle_TDataStd_DeltaOnModificationOfIntPackedMap GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfIntPackedMap*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DeltaOnModificationOfIntPackedMap::~TDataStd_DeltaOnModificationOfIntPackedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DeltaOnModificationOfIntPackedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Relation;
class TDataStd_Relation : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Relation Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Relation();
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		void SetRelation(const TCollection_ExtendedString &E);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetRelation() const;
		%feature("autodoc", "1");
		TDF_AttributeList & GetVariables();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Relation {
	Handle_TDataStd_Relation GetHandle() {
	return *(Handle_TDataStd_Relation*) &$self;
	}
};
%extend TDataStd_Relation {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Relation::~TDataStd_Relation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Relation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListNodeOfListOfExtendedString;
class TDataStd_ListNodeOfListOfExtendedString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_ListNodeOfListOfExtendedString(const TCollection_ExtendedString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ListNodeOfListOfExtendedString {
	Handle_TDataStd_ListNodeOfListOfExtendedString GetHandle() {
	return *(Handle_TDataStd_ListNodeOfListOfExtendedString*) &$self;
	}
};
%extend TDataStd_ListNodeOfListOfExtendedString {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ListNodeOfListOfExtendedString::~TDataStd_ListNodeOfListOfExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListNodeOfListOfExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_AsciiString;
class TDataStd_AsciiString : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_AsciiString Set(const TDF_Label &label, const TCollection_AsciiString &string);
		%feature("autodoc", "1");
		TDataStd_AsciiString();
		%feature("autodoc", "1");
		void Set(const TCollection_AsciiString &S);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_AsciiString {
	Handle_TDataStd_AsciiString GetHandle() {
	return *(Handle_TDataStd_AsciiString*) &$self;
	}
};
%extend TDataStd_AsciiString {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_AsciiString::~TDataStd_AsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_AsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringString;
class TDataStd_DataMapIteratorOfDataMapOfStringString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringString();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringString(const TDataStd_DataMapOfStringString &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringString &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value() const;

};
%feature("shadow") TDataStd_DataMapIteratorOfDataMapOfStringString::~TDataStd_DataMapIteratorOfDataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapIteratorOfDataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Expression;
class TDataStd_Expression : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Expression Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Expression();
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		void SetExpression(const TCollection_ExtendedString &E);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & GetExpression() const;
		%feature("autodoc", "1");
		TDF_AttributeList & GetVariables();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Expression {
	Handle_TDataStd_Expression GetHandle() {
	return *(Handle_TDataStd_Expression*) &$self;
	}
};
%extend TDataStd_Expression {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Expression::~TDataStd_Expression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Expression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfExtStringArray;
class TDataStd_DeltaOnModificationOfExtStringArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfExtStringArray(const Handle_TDataStd_ExtStringArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfExtStringArray {
	Handle_TDataStd_DeltaOnModificationOfExtStringArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfExtStringArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfExtStringArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DeltaOnModificationOfExtStringArray::~TDataStd_DeltaOnModificationOfExtStringArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DeltaOnModificationOfExtStringArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListNodeOfListOfByte;
class TDataStd_ListNodeOfListOfByte : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_ListNodeOfListOfByte(const Standard_Byte &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Byte & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ListNodeOfListOfByte {
	Handle_TDataStd_ListNodeOfListOfByte GetHandle() {
	return *(Handle_TDataStd_ListNodeOfListOfByte*) &$self;
	}
};
%extend TDataStd_ListNodeOfListOfByte {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ListNodeOfListOfByte::~TDataStd_ListNodeOfListOfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListNodeOfListOfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfRealArray;
class TDataStd_DeltaOnModificationOfRealArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfRealArray(const Handle_TDataStd_RealArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfRealArray {
	Handle_TDataStd_DeltaOnModificationOfRealArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfRealArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfRealArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DeltaOnModificationOfRealArray::~TDataStd_DeltaOnModificationOfRealArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DeltaOnModificationOfRealArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListOfByte;
class TDataStd_ListOfByte {
	public:
		%feature("autodoc", "1");
		TDataStd_ListOfByte();
		%feature("autodoc", "1");
		void Assign(const TDataStd_ListOfByte &Other);
		%feature("autodoc", "1");
		void operator=(const TDataStd_ListOfByte &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Byte &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & theIt);
		%feature("autodoc", "1");
		void Prepend(TDataStd_ListOfByte & Other);
		%feature("autodoc", "1");
		void Append(const Standard_Byte &I);
		%feature("autodoc", "1");
		void Append(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & theIt);
		%feature("autodoc", "1");
		void Append(TDataStd_ListOfByte & Other);
		%feature("autodoc", "1");
		Standard_Byte & First() const;
		%feature("autodoc", "1");
		Standard_Byte & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertBefore(TDataStd_ListOfByte & Other, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Byte &I, TDataStd_ListIteratorOfListOfByte & It);
		%feature("autodoc", "1");
		void InsertAfter(TDataStd_ListOfByte & Other, TDataStd_ListIteratorOfListOfByte & It);

};
%feature("shadow") TDataStd_ListOfByte::~TDataStd_ListOfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListOfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_BooleanArray;
class TDataStd_BooleanArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_BooleanArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const Standard_Boolean value);
		%feature("autodoc", "1");
		Standard_Boolean Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfByte & InternalArray() const;
		%feature("autodoc", "1");
		void SetInternalArray(const Handle_TColStd_HArray1OfByte &values);
		%feature("autodoc", "1");
		TDataStd_BooleanArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_BooleanArray {
	Handle_TDataStd_BooleanArray GetHandle() {
	return *(Handle_TDataStd_BooleanArray*) &$self;
	}
};
%extend TDataStd_BooleanArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_BooleanArray::~TDataStd_BooleanArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_BooleanArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringInteger;
class TDataStd_HDataMapOfStringInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringInteger(const TColStd_DataMapOfStringInteger &theOther);
		%feature("autodoc", "1");
		const TColStd_DataMapOfStringInteger & Map() const;
		%feature("autodoc", "1");
		TColStd_DataMapOfStringInteger & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringInteger {
	Handle_TDataStd_HDataMapOfStringInteger GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringInteger*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringInteger::~TDataStd_HDataMapOfStringInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ByteArray;
class TDataStd_ByteArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_ByteArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=false);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const Standard_Byte value);
		%feature("autodoc", "1");
		Standard_Byte Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte const InternalArray() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfByte &newArray, const Standard_Boolean isCheckItems=true);
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_ByteArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ByteArray {
	Handle_TDataStd_ByteArray GetHandle() {
	return *(Handle_TDataStd_ByteArray*) &$self;
	}
};
%extend TDataStd_ByteArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ByteArray::~TDataStd_ByteArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ByteArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_IntPackedMap;
class TDataStd_IntPackedMap : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntPackedMap Set(const TDF_Label &label, const Standard_Boolean isDelta=false);
		%feature("autodoc", "1");
		TDataStd_IntPackedMap();
		%feature("autodoc", "1");
		Standard_Boolean ChangeMap(const Handle_TColStd_HPackedMapOfInteger &theMap);
		%feature("autodoc", "1");
		const TColStd_PackedMapOfInteger & GetMap() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetHMap() const;
		%feature("autodoc", "1");
		Standard_Boolean Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_Integer theKey);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer theKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer theKey) const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntPackedMap {
	Handle_TDataStd_IntPackedMap GetHandle() {
	return *(Handle_TDataStd_IntPackedMap*) &$self;
	}
};
%extend TDataStd_IntPackedMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_IntPackedMap::~TDataStd_IntPackedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_IntPackedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal;
class TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal(const TDataStd_DataMapOfStringHArray1OfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringHArray1OfReal &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value() const;

};
%feature("shadow") TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal::~TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ExtStringList;
class TDataStd_ExtStringList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_ExtStringList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_ExtStringList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		void Append(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const TCollection_ExtendedString &value, const TCollection_ExtendedString &before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const TCollection_ExtendedString &value, const TCollection_ExtendedString &after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TCollection_ExtendedString &value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TCollection_ExtendedString & First() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Last() const;
		%feature("autodoc", "1");
		const TDataStd_ListOfExtendedString & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ExtStringList {
	Handle_TDataStd_ExtStringList GetHandle() {
	return *(Handle_TDataStd_ExtStringList*) &$self;
	}
};
%extend TDataStd_ExtStringList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ExtStringList::~TDataStd_ExtStringList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ExtStringList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapOfStringHArray1OfInteger;
class TDataStd_DataMapOfStringHArray1OfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & Assign(const TDataStd_DataMapOfStringHArray1OfInteger &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfInteger & operator=(const TDataStd_DataMapOfStringHArray1OfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & operator()(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") TDataStd_DataMapOfStringHArray1OfInteger::~TDataStd_DataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapOfStringHArray1OfReal;
class TDataStd_DataMapOfStringHArray1OfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & Assign(const TDataStd_DataMapOfStringHArray1OfReal &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & operator=(const TDataStd_DataMapOfStringHArray1OfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator()(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") TDataStd_DataMapOfStringHArray1OfReal::~TDataStd_DataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_BooleanList;
class TDataStd_BooleanList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_BooleanList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_BooleanList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Boolean value);
		%feature("autodoc", "1");
		void Append(const Standard_Boolean value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean First() const;
		%feature("autodoc", "1");
		Standard_Boolean Last() const;
		%feature("autodoc", "1");
		const TDataStd_ListOfByte & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_BooleanList {
	Handle_TDataStd_BooleanList GetHandle() {
	return *(Handle_TDataStd_BooleanList*) &$self;
	}
};
%extend TDataStd_BooleanList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_BooleanList::~TDataStd_BooleanList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_BooleanList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringByte;
class TDataStd_DataMapNodeOfDataMapOfStringByte : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringByte(const TCollection_ExtendedString &K, const Standard_Byte &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Standard_Byte & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringByte GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringByte*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DataMapNodeOfDataMapOfStringByte::~TDataStd_DataMapNodeOfDataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapNodeOfDataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringReal;
class TDataStd_HDataMapOfStringReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringReal(const TDataStd_DataMapOfStringReal &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringReal & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringReal & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringReal {
	Handle_TDataStd_HDataMapOfStringReal GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringReal*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringReal::~TDataStd_HDataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_IntegerList;
class TDataStd_IntegerList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntegerList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_IntegerList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer value);
		%feature("autodoc", "1");
		void Append(const Standard_Integer value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Standard_Integer value, const Standard_Integer before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Standard_Integer value, const Standard_Integer after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Last() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntegerList {
	Handle_TDataStd_IntegerList GetHandle() {
	return *(Handle_TDataStd_IntegerList*) &$self;
	}
};
%extend TDataStd_IntegerList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_IntegerList::~TDataStd_IntegerList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_IntegerList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfIntArray;
class TDataStd_DeltaOnModificationOfIntArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfIntArray(const Handle_TDataStd_IntegerArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfIntArray {
	Handle_TDataStd_DeltaOnModificationOfIntArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfIntArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfIntArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DeltaOnModificationOfIntArray::~TDataStd_DeltaOnModificationOfIntArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DeltaOnModificationOfIntArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal;
class TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal::~TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapOfStringString;
class TDataStd_DataMapOfStringString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & Assign(const TDataStd_DataMapOfStringString &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & operator=(const TDataStd_DataMapOfStringString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") TDataStd_DataMapOfStringString::~TDataStd_DataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_IntegerArray;
class TDataStd_IntegerArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_IntegerArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=false);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer Value);
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfInteger &newArray, const Standard_Boolean isCheckItems=true);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_IntegerArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_IntegerArray {
	Handle_TDataStd_IntegerArray GetHandle() {
	return *(Handle_TDataStd_IntegerArray*) &$self;
	}
};
%extend TDataStd_IntegerArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_IntegerArray::~TDataStd_IntegerArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_IntegerArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Current;
class TDataStd_Current : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		void Set(const TDF_Label &L);
		%feature("autodoc", "1");
		static		TDF_Label Get(const TDF_Label &acces);
		%feature("autodoc", "1");
		static		Standard_Boolean Has(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDataStd_Current();
		%feature("autodoc", "1");
		void SetLabel(const TDF_Label &current);
		%feature("autodoc", "1");
		TDF_Label GetLabel() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Current {
	Handle_TDataStd_Current GetHandle() {
	return *(Handle_TDataStd_Current*) &$self;
	}
};
%extend TDataStd_Current {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Current::~TDataStd_Current %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Current {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringByte;
class TDataStd_HDataMapOfStringByte : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringByte(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringByte(const TDataStd_DataMapOfStringByte &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringByte & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringByte {
	Handle_TDataStd_HDataMapOfStringByte GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringByte*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringByte {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringByte::~TDataStd_HDataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringReal;
class TDataStd_DataMapNodeOfDataMapOfStringReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringReal(const TCollection_ExtendedString &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
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
%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringReal GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringReal*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DataMapNodeOfDataMapOfStringReal::~TDataStd_DataMapNodeOfDataMapOfStringReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapNodeOfDataMapOfStringReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringString;
class TDataStd_HDataMapOfStringString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringString(const TDataStd_DataMapOfStringString &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringString & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringString & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringString {
	Handle_TDataStd_HDataMapOfStringString GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringString*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringString {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringString::~TDataStd_HDataMapOfStringString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_UAttribute;
class TDataStd_UAttribute : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Handle_TDataStd_UAttribute Set(const TDF_Label &label, const Standard_GUID &LocalID);
		%feature("autodoc", "1");
		TDataStd_UAttribute();
		%feature("autodoc", "1");
		void SetID(const Standard_GUID &LocalID);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_UAttribute {
	Handle_TDataStd_UAttribute GetHandle() {
	return *(Handle_TDataStd_UAttribute*) &$self;
	}
};
%extend TDataStd_UAttribute {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_UAttribute::~TDataStd_UAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_UAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HLabelArray1;
class TDataStd_HLabelArray1 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HLabelArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDataStd_HLabelArray1(const Standard_Integer Low, const Standard_Integer Up, const TDF_Label &V);
		%feature("autodoc", "1");
		void Init(const TDF_Label &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TDF_Label &Value);
		%feature("autodoc", "1");
		const TDF_Label & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TDataStd_LabelArray1 & Array1() const;
		%feature("autodoc", "1");
		TDataStd_LabelArray1 & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HLabelArray1 {
	Handle_TDataStd_HLabelArray1 GetHandle() {
	return *(Handle_TDataStd_HLabelArray1*) &$self;
	}
};
%extend TDataStd_HLabelArray1 {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HLabelArray1::~TDataStd_HLabelArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HLabelArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd;
class TDataStd {
	public:
		%feature("autodoc", "1");
		TDataStd();
		%feature("autodoc", "1");
		static		void IDList(TDF_IDList & anIDList);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TDataStd_RealEnum DIM, Standard_OStream & S);

};
%feature("shadow") TDataStd::~TDataStd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ReferenceList;
class TDataStd_ReferenceList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_ReferenceList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_ReferenceList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const TDF_Label &value);
		%feature("autodoc", "1");
		void Append(const TDF_Label &value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const TDF_Label &value, const TDF_Label &before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const TDF_Label &value, const TDF_Label &after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TDF_Label &value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TDF_Label & First() const;
		%feature("autodoc", "1");
		const TDF_Label & Last() const;
		%feature("autodoc", "1");
		const TDF_LabelList & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ReferenceList {
	Handle_TDataStd_ReferenceList GetHandle() {
	return *(Handle_TDataStd_ReferenceList*) &$self;
	}
};
%extend TDataStd_ReferenceList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ReferenceList::~TDataStd_ReferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ReferenceList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_TreeNode;
class TDataStd_TreeNode : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &L, Handle_TDataStd_TreeNode & T);
		%feature("autodoc", "1");
		static		Handle_TDataStd_TreeNode Set(const TDF_Label &L);
		%feature("autodoc", "1");
		static		Handle_TDataStd_TreeNode Set(const TDF_Label &L, const Standard_GUID &ExplicitTreeID);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetDefaultTreeID();
		%feature("autodoc", "1");
		TDataStd_TreeNode();
		%feature("autodoc", "1");
		Standard_Boolean Append(const Handle_TDataStd_TreeNode &Child);
		%feature("autodoc", "1");
		Standard_Boolean Prepend(const Handle_TDataStd_TreeNode &Child);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Handle_TDataStd_TreeNode &Node);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Handle_TDataStd_TreeNode &Node);
		%feature("autodoc", "1");
		Standard_Boolean Remove();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Standard_Integer NbChildren(const Standard_Boolean allLevels=false) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscendant(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDescendant(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRoot() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Root() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFather(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean IsChild(const Handle_TDataStd_TreeNode &of) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFather() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Father() const;
		%feature("autodoc", "1");
		Standard_Boolean HasNext() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Next() const;
		%feature("autodoc", "1");
		Standard_Boolean HasPrevious() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Previous() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirst() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode First() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLast() const;
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Last();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode FindLast();
		%feature("autodoc", "1");
		void SetTreeID(const Standard_GUID &explicitID);
		%feature("autodoc", "1");
		void SetFather(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetNext(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetFirst(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		void SetLast(const Handle_TDataStd_TreeNode &F);
		%feature("autodoc", "1");
		virtual		void AfterAddition();
		%feature("autodoc", "1");
		virtual		void BeforeForget();
		%feature("autodoc", "1");
		virtual		void AfterResume();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=false);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=false);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_TreeNode {
	Handle_TDataStd_TreeNode GetHandle() {
	return *(Handle_TDataStd_TreeNode*) &$self;
	}
};
%extend TDataStd_TreeNode {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_TreeNode::~TDataStd_TreeNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_TreeNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger;
class TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger(const TCollection_ExtendedString &K, const Handle_TColStd_HArray1OfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger GetHandle() {
	return *(Handle_TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger*) &$self;
	}
};
%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger::~TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Tick;
class TDataStd_Tick : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Tick Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Tick();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Tick {
	Handle_TDataStd_Tick GetHandle() {
	return *(Handle_TDataStd_Tick*) &$self;
	}
};
%extend TDataStd_Tick {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Tick::~TDataStd_Tick %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Tick {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ReferenceArray;
class TDataStd_ReferenceArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_ReferenceArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer index, const TDF_Label &value);
		%feature("autodoc", "1");
		TDF_Label Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TDF_Label operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		const Handle_TDataStd_HLabelArray1 & InternalArray() const;
		%feature("autodoc", "1");
		void SetInternalArray(const Handle_TDataStd_HLabelArray1 &values, const Standard_Boolean isCheckItems=true);
		%feature("autodoc", "1");
		TDataStd_ReferenceArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ReferenceArray {
	Handle_TDataStd_ReferenceArray GetHandle() {
	return *(Handle_TDataStd_ReferenceArray*) &$self;
	}
};
%extend TDataStd_ReferenceArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ReferenceArray::~TDataStd_ReferenceArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ReferenceArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Name;
class TDataStd_Name : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Name Set(const TDF_Label &label, const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		TDataStd_Name();
		%feature("autodoc", "1");
		void Set(const TCollection_ExtendedString &S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Name {
	Handle_TDataStd_Name GetHandle() {
	return *(Handle_TDataStd_Name*) &$self;
	}
};
%extend TDataStd_Name {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Name::~TDataStd_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ChildNodeIterator;
class TDataStd_ChildNodeIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_ChildNodeIterator();
		%feature("autodoc", "1");
		TDataStd_ChildNodeIterator(const Handle_TDataStd_TreeNode &aTreeNode, const Standard_Boolean allLevels=false);
		%feature("autodoc", "1");
		void Initialize(const Handle_TDataStd_TreeNode &aTreeNode, const Standard_Boolean allLevels=false);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void NextBrother();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode Value() const;

};
%feature("shadow") TDataStd_ChildNodeIterator::~TDataStd_ChildNodeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ChildNodeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Directory;
class TDataStd_Directory : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &current, Handle_TDataStd_Directory & D);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Directory New(const TDF_Label &label);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Directory AddDirectory(const Handle_TDataStd_Directory &dir);
		%feature("autodoc", "1");
		static		TDF_Label MakeObjectLabel(const Handle_TDataStd_Directory &dir);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDataStd_Directory();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Directory {
	Handle_TDataStd_Directory GetHandle() {
	return *(Handle_TDataStd_Directory*) &$self;
	}
};
%extend TDataStd_Directory {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Directory::~TDataStd_Directory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Directory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_RealList;
class TDataStd_RealList : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_RealList Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_RealList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_Real value);
		%feature("autodoc", "1");
		void Append(const Standard_Real value);
		%feature("autodoc", "1");
		Standard_Boolean InsertBefore(const Standard_Real value, const Standard_Real before_value);
		%feature("autodoc", "1");
		Standard_Boolean InsertAfter(const Standard_Real value, const Standard_Real after_value);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Real value);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		const TColStd_ListOfReal & List() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_RealList {
	Handle_TDataStd_RealList GetHandle() {
	return *(Handle_TDataStd_RealList*) &$self;
	}
};
%extend TDataStd_RealList {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_RealList::~TDataStd_RealList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_RealList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_HDataMapOfStringHArray1OfReal;
class TDataStd_HDataMapOfStringHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_HDataMapOfStringHArray1OfReal(const TDataStd_DataMapOfStringHArray1OfReal &theOther);
		%feature("autodoc", "1");
		const TDataStd_DataMapOfStringHArray1OfReal & Map() const;
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringHArray1OfReal & ChangeMap();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_HDataMapOfStringHArray1OfReal {
	Handle_TDataStd_HDataMapOfStringHArray1OfReal GetHandle() {
	return *(Handle_TDataStd_HDataMapOfStringHArray1OfReal*) &$self;
	}
};
%extend TDataStd_HDataMapOfStringHArray1OfReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_HDataMapOfStringHArray1OfReal::~TDataStd_HDataMapOfStringHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_HDataMapOfStringHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Comment;
class TDataStd_Comment : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Comment Set(const TDF_Label &label);
		%feature("autodoc", "1");
		static		Handle_TDataStd_Comment Set(const TDF_Label &label, const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		TDataStd_Comment();
		%feature("autodoc", "1");
		void Set(const TCollection_ExtendedString &S);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterRetrieval(const Standard_Boolean forceIt=false);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Comment {
	Handle_TDataStd_Comment GetHandle() {
	return *(Handle_TDataStd_Comment*) &$self;
	}
};
%extend TDataStd_Comment {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Comment::~TDataStd_Comment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Comment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Variable;
class TDataStd_Variable : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Variable Set(const TDF_Label &label);
		%feature("autodoc", "1");
		TDataStd_Variable();
		%feature("autodoc", "1");
		void Name(const TCollection_ExtendedString &string);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Name() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real value, const TDataStd_RealEnum dimension=TDataStd_SCALAR) const;
		%feature("autodoc", "1");
		Standard_Boolean IsValued() const;
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Real Real() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAssigned() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Expression Assign() const;
		%feature("autodoc", "1");
		void Desassign() const;
		%feature("autodoc", "1");
		Handle_TDataStd_Expression Expression() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		void Unit(const TCollection_AsciiString &unit);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Unit() const;
		%feature("autodoc", "1");
		void Constant(const Standard_Boolean status);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &DS) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Variable {
	Handle_TDataStd_Variable GetHandle() {
	return *(Handle_TDataStd_Variable*) &$self;
	}
};
%extend TDataStd_Variable {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Variable::~TDataStd_Variable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Variable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Real;
class TDataStd_Real : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Real Set(const TDF_Label &label, const Standard_Real value);
		%feature("autodoc", "1");
		TDataStd_Real();
		%feature("autodoc", "1");
		void SetDimension(const TDataStd_RealEnum DIM);
		%feature("autodoc", "1");
		TDataStd_RealEnum GetDimension() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Real {
	Handle_TDataStd_Real GetHandle() {
	return *(Handle_TDataStd_Real*) &$self;
	}
};
%extend TDataStd_Real {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Real::~TDataStd_Real %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Real {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger;
class TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger();
		%feature("autodoc", "1");
		TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger(const TDataStd_DataMapOfStringHArray1OfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_DataMapOfStringHArray1OfInteger &aMap);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Value() const;

};
%feature("shadow") TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger::~TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DeltaOnModificationOfByteArray;
class TDataStd_DeltaOnModificationOfByteArray : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDataStd_DeltaOnModificationOfByteArray(const Handle_TDataStd_ByteArray &Arr);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_DeltaOnModificationOfByteArray {
	Handle_TDataStd_DeltaOnModificationOfByteArray GetHandle() {
	return *(Handle_TDataStd_DeltaOnModificationOfByteArray*) &$self;
	}
};
%extend TDataStd_DeltaOnModificationOfByteArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_DeltaOnModificationOfByteArray::~TDataStd_DeltaOnModificationOfByteArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DeltaOnModificationOfByteArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ListIteratorOfListOfByte;
class TDataStd_ListIteratorOfListOfByte {
	public:
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfByte();
		%feature("autodoc", "1");
		TDataStd_ListIteratorOfListOfByte(const TDataStd_ListOfByte &L);
		%feature("autodoc", "1");
		void Initialize(const TDataStd_ListOfByte &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Byte & Value() const;

};
%feature("shadow") TDataStd_ListIteratorOfListOfByte::~TDataStd_ListIteratorOfListOfByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ListIteratorOfListOfByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_ExtStringArray;
class TDataStd_ExtStringArray : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_ExtStringArray Set(const TDF_Label &label, const Standard_Integer lower, const Standard_Integer upper, const Standard_Boolean isDelta=false);
		%feature("autodoc", "1");
		void Init(const Standard_Integer lower, const Standard_Integer upper);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_ExtendedString &Value);
		%feature("autodoc", "1");
		TCollection_ExtendedString Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void ChangeArray(const Handle_TColStd_HArray1OfExtendedString &newArray, const Standard_Boolean isCheckItems=true);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString const Array() const;
		%feature("autodoc", "1");
		Standard_Boolean GetDelta() const;
		%feature("autodoc", "1");
		void SetDelta(const Standard_Boolean isDelta);
		%feature("autodoc", "1");
		TDataStd_ExtStringArray();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_ExtStringArray {
	Handle_TDataStd_ExtStringArray GetHandle() {
	return *(Handle_TDataStd_ExtStringArray*) &$self;
	}
};
%extend TDataStd_ExtStringArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_ExtStringArray::~TDataStd_ExtStringArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_ExtStringArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_DataMapOfStringByte;
class TDataStd_DataMapOfStringByte : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & Assign(const TDataStd_DataMapOfStringByte &Other);
		%feature("autodoc", "1");
		TDataStd_DataMapOfStringByte & operator=(const TDataStd_DataMapOfStringByte &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_ExtendedString &K, const Standard_Byte &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		const Standard_Byte & Find(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const Standard_Byte & operator()(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeFind(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Byte & operator()(const TCollection_ExtendedString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_ExtendedString &K);

};
%feature("shadow") TDataStd_DataMapOfStringByte::~TDataStd_DataMapOfStringByte %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_DataMapOfStringByte {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDataStd_Integer;
class TDataStd_Integer : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDataStd_Integer Set(const TDF_Label &label, const Standard_Integer value);
		%feature("autodoc", "1");
		void Set(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer Get() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCaptured() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		TDataStd_Integer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDataStd_Integer {
	Handle_TDataStd_Integer GetHandle() {
	return *(Handle_TDataStd_Integer*) &$self;
	}
};
%extend TDataStd_Integer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TDataStd_Integer::~TDataStd_Integer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDataStd_Integer {
	void _kill_pointed() {
		delete $self;
	}
};
