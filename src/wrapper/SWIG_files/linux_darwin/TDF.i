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

%module TDF
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TDF_renames.i


%include TDF_required_python_modules.i


%include TDF_dependencies.i


%include TDF_headers.i

typedef TDF_LabelNode * TDF_LabelNodePtr;
typedef Handle_NCollection_BaseAllocator TDF_HAllocator;



%nodefaultctor Handle_TDF_DoubleMapNodeOfGUIDProgIDMap;
class Handle_TDF_DoubleMapNodeOfGUIDProgIDMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap();
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap(const Handle_TDF_DoubleMapNodeOfGUIDProgIDMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap(const TDF_DoubleMapNodeOfGUIDProgIDMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap & operator=(const Handle_TDF_DoubleMapNodeOfGUIDProgIDMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap & operator=(const TDF_DoubleMapNodeOfGUIDProgIDMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DoubleMapNodeOfGUIDProgIDMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DoubleMapNodeOfGUIDProgIDMap {
	TDF_DoubleMapNodeOfGUIDProgIDMap* GetObject() {
	return (TDF_DoubleMapNodeOfGUIDProgIDMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DoubleMapNodeOfGUIDProgIDMap::~Handle_TDF_DoubleMapNodeOfGUIDProgIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DoubleMapNodeOfGUIDProgIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_AttributeDelta;
class Handle_TDF_AttributeDelta : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta();
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta(const Handle_TDF_AttributeDelta &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta(const TDF_AttributeDelta *anItem);
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & operator=(const Handle_TDF_AttributeDelta &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & operator=(const TDF_AttributeDelta *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_AttributeDelta DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_AttributeDelta {
	TDF_AttributeDelta* GetObject() {
	return (TDF_AttributeDelta*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_AttributeDelta::~Handle_TDF_AttributeDelta %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_AttributeDelta {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_StdMapNodeOfLabelMap;
class Handle_TDF_StdMapNodeOfLabelMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfLabelMap();
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfLabelMap(const Handle_TDF_StdMapNodeOfLabelMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfLabelMap(const TDF_StdMapNodeOfLabelMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfLabelMap & operator=(const Handle_TDF_StdMapNodeOfLabelMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfLabelMap & operator=(const TDF_StdMapNodeOfLabelMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_StdMapNodeOfLabelMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_StdMapNodeOfLabelMap {
	TDF_StdMapNodeOfLabelMap* GetObject() {
	return (TDF_StdMapNodeOfLabelMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_StdMapNodeOfLabelMap::~Handle_TDF_StdMapNodeOfLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_StdMapNodeOfLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_Attribute;
class Handle_TDF_Attribute : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_Attribute();
		%feature("autodoc", "1");
		Handle_TDF_Attribute(const Handle_TDF_Attribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Attribute(const TDF_Attribute *anItem);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & operator=(const Handle_TDF_Attribute &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & operator=(const TDF_Attribute *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_Attribute DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_Attribute {
	TDF_Attribute* GetObject() {
	return (TDF_Attribute*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_Attribute::~Handle_TDF_Attribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_Attribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_Reference;
class Handle_TDF_Reference : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDF_Reference();
		%feature("autodoc", "1");
		Handle_TDF_Reference(const Handle_TDF_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Reference(const TDF_Reference *anItem);
		%feature("autodoc", "1");
		Handle_TDF_Reference & operator=(const Handle_TDF_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Reference & operator=(const TDF_Reference *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_Reference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_Reference {
	TDF_Reference* GetObject() {
	return (TDF_Reference*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_Reference::~Handle_TDF_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_Reference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DataMapNodeOfAttributeDataMap;
class Handle_TDF_DataMapNodeOfAttributeDataMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfAttributeDataMap();
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfAttributeDataMap(const Handle_TDF_DataMapNodeOfAttributeDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfAttributeDataMap(const TDF_DataMapNodeOfAttributeDataMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfAttributeDataMap & operator=(const Handle_TDF_DataMapNodeOfAttributeDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfAttributeDataMap & operator=(const TDF_DataMapNodeOfAttributeDataMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DataMapNodeOfAttributeDataMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DataMapNodeOfAttributeDataMap {
	TDF_DataMapNodeOfAttributeDataMap* GetObject() {
	return (TDF_DataMapNodeOfAttributeDataMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DataMapNodeOfAttributeDataMap::~Handle_TDF_DataMapNodeOfAttributeDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DataMapNodeOfAttributeDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_StdMapNodeOfIDMap;
class Handle_TDF_StdMapNodeOfIDMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfIDMap();
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfIDMap(const Handle_TDF_StdMapNodeOfIDMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfIDMap(const TDF_StdMapNodeOfIDMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfIDMap & operator=(const Handle_TDF_StdMapNodeOfIDMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfIDMap & operator=(const TDF_StdMapNodeOfIDMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_StdMapNodeOfIDMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_StdMapNodeOfIDMap {
	TDF_StdMapNodeOfIDMap* GetObject() {
	return (TDF_StdMapNodeOfIDMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_StdMapNodeOfIDMap::~Handle_TDF_StdMapNodeOfIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_StdMapNodeOfIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DataSet;
class Handle_TDF_DataSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DataSet();
		%feature("autodoc", "1");
		Handle_TDF_DataSet(const Handle_TDF_DataSet &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataSet(const TDF_DataSet *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DataSet & operator=(const Handle_TDF_DataSet &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataSet & operator=(const TDF_DataSet *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DataSet DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DataSet {
	TDF_DataSet* GetObject() {
	return (TDF_DataSet*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DataSet::~Handle_TDF_DataSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DataSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DeltaOnModification;
class Handle_TDF_DeltaOnModification : public Handle_TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnModification();
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnModification(const Handle_TDF_DeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnModification(const TDF_DeltaOnModification *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnModification & operator=(const Handle_TDF_DeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnModification & operator=(const TDF_DeltaOnModification *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DeltaOnModification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DeltaOnModification {
	TDF_DeltaOnModification* GetObject() {
	return (TDF_DeltaOnModification*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DeltaOnModification::~Handle_TDF_DeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DataMapNodeOfLabelDataMap;
class Handle_TDF_DataMapNodeOfLabelDataMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelDataMap();
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelDataMap(const Handle_TDF_DataMapNodeOfLabelDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelDataMap(const TDF_DataMapNodeOfLabelDataMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelDataMap & operator=(const Handle_TDF_DataMapNodeOfLabelDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelDataMap & operator=(const TDF_DataMapNodeOfLabelDataMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DataMapNodeOfLabelDataMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DataMapNodeOfLabelDataMap {
	TDF_DataMapNodeOfLabelDataMap* GetObject() {
	return (TDF_DataMapNodeOfLabelDataMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DataMapNodeOfLabelDataMap::~Handle_TDF_DataMapNodeOfLabelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DataMapNodeOfLabelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_ListNodeOfAttributeList;
class Handle_TDF_ListNodeOfAttributeList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeList();
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeList(const Handle_TDF_ListNodeOfAttributeList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeList(const TDF_ListNodeOfAttributeList *anItem);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeList & operator=(const Handle_TDF_ListNodeOfAttributeList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeList & operator=(const TDF_ListNodeOfAttributeList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_ListNodeOfAttributeList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_ListNodeOfAttributeList {
	TDF_ListNodeOfAttributeList* GetObject() {
	return (TDF_ListNodeOfAttributeList*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_ListNodeOfAttributeList::~Handle_TDF_ListNodeOfAttributeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_ListNodeOfAttributeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DeltaOnRemoval;
class Handle_TDF_DeltaOnRemoval : public Handle_TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnRemoval();
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnRemoval(const Handle_TDF_DeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnRemoval(const TDF_DeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnRemoval & operator=(const Handle_TDF_DeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnRemoval & operator=(const TDF_DeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DeltaOnRemoval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DeltaOnRemoval {
	TDF_DeltaOnRemoval* GetObject() {
	return (TDF_DeltaOnRemoval*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DeltaOnRemoval::~Handle_TDF_DeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DefaultDeltaOnRemoval;
class Handle_TDF_DefaultDeltaOnRemoval : public Handle_TDF_DeltaOnRemoval {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnRemoval();
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnRemoval(const Handle_TDF_DefaultDeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnRemoval(const TDF_DefaultDeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnRemoval & operator=(const Handle_TDF_DefaultDeltaOnRemoval &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnRemoval & operator=(const TDF_DefaultDeltaOnRemoval *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DefaultDeltaOnRemoval DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DefaultDeltaOnRemoval {
	TDF_DefaultDeltaOnRemoval* GetObject() {
	return (TDF_DefaultDeltaOnRemoval*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DefaultDeltaOnRemoval::~Handle_TDF_DefaultDeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DefaultDeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_SequenceNodeOfAttributeSequence;
class Handle_TDF_SequenceNodeOfAttributeSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfAttributeSequence();
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfAttributeSequence(const Handle_TDF_SequenceNodeOfAttributeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfAttributeSequence(const TDF_SequenceNodeOfAttributeSequence *anItem);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfAttributeSequence & operator=(const Handle_TDF_SequenceNodeOfAttributeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfAttributeSequence & operator=(const TDF_SequenceNodeOfAttributeSequence *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_SequenceNodeOfAttributeSequence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_SequenceNodeOfAttributeSequence {
	TDF_SequenceNodeOfAttributeSequence* GetObject() {
	return (TDF_SequenceNodeOfAttributeSequence*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_SequenceNodeOfAttributeSequence::~Handle_TDF_SequenceNodeOfAttributeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_SequenceNodeOfAttributeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_ListNodeOfIDList;
class Handle_TDF_ListNodeOfIDList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfIDList();
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfIDList(const Handle_TDF_ListNodeOfIDList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfIDList(const TDF_ListNodeOfIDList *anItem);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfIDList & operator=(const Handle_TDF_ListNodeOfIDList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfIDList & operator=(const TDF_ListNodeOfIDList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_ListNodeOfIDList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_ListNodeOfIDList {
	TDF_ListNodeOfIDList* GetObject() {
	return (TDF_ListNodeOfIDList*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_ListNodeOfIDList::~Handle_TDF_ListNodeOfIDList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_ListNodeOfIDList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_SequenceNodeOfLabelSequence;
class Handle_TDF_SequenceNodeOfLabelSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfLabelSequence();
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfLabelSequence(const Handle_TDF_SequenceNodeOfLabelSequence &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfLabelSequence(const TDF_SequenceNodeOfLabelSequence *anItem);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfLabelSequence & operator=(const Handle_TDF_SequenceNodeOfLabelSequence &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_SequenceNodeOfLabelSequence & operator=(const TDF_SequenceNodeOfLabelSequence *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_SequenceNodeOfLabelSequence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_SequenceNodeOfLabelSequence {
	TDF_SequenceNodeOfLabelSequence* GetObject() {
	return (TDF_SequenceNodeOfLabelSequence*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_SequenceNodeOfLabelSequence::~Handle_TDF_SequenceNodeOfLabelSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_SequenceNodeOfLabelSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DataMapNodeOfLabelIntegerMap;
class Handle_TDF_DataMapNodeOfLabelIntegerMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelIntegerMap();
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelIntegerMap(const Handle_TDF_DataMapNodeOfLabelIntegerMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelIntegerMap(const TDF_DataMapNodeOfLabelIntegerMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelIntegerMap & operator=(const Handle_TDF_DataMapNodeOfLabelIntegerMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelIntegerMap & operator=(const TDF_DataMapNodeOfLabelIntegerMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DataMapNodeOfLabelIntegerMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DataMapNodeOfLabelIntegerMap {
	TDF_DataMapNodeOfLabelIntegerMap* GetObject() {
	return (TDF_DataMapNodeOfLabelIntegerMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DataMapNodeOfLabelIntegerMap::~Handle_TDF_DataMapNodeOfLabelIntegerMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DataMapNodeOfLabelIntegerMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_RelocationTable;
class Handle_TDF_RelocationTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable();
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable(const Handle_TDF_RelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable(const TDF_RelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable & operator=(const Handle_TDF_RelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_RelocationTable & operator=(const TDF_RelocationTable *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_RelocationTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_RelocationTable {
	TDF_RelocationTable* GetObject() {
	return (TDF_RelocationTable*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_RelocationTable::~Handle_TDF_RelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_RelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_StdMapNodeOfAttributeMap;
class Handle_TDF_StdMapNodeOfAttributeMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfAttributeMap();
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfAttributeMap(const Handle_TDF_StdMapNodeOfAttributeMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfAttributeMap(const TDF_StdMapNodeOfAttributeMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfAttributeMap & operator=(const Handle_TDF_StdMapNodeOfAttributeMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_StdMapNodeOfAttributeMap & operator=(const TDF_StdMapNodeOfAttributeMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_StdMapNodeOfAttributeMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_StdMapNodeOfAttributeMap {
	TDF_StdMapNodeOfAttributeMap* GetObject() {
	return (TDF_StdMapNodeOfAttributeMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_StdMapNodeOfAttributeMap::~Handle_TDF_StdMapNodeOfAttributeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_StdMapNodeOfAttributeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_ListNodeOfAttributeDeltaList;
class Handle_TDF_ListNodeOfAttributeDeltaList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeDeltaList();
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeDeltaList(const Handle_TDF_ListNodeOfAttributeDeltaList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeDeltaList(const TDF_ListNodeOfAttributeDeltaList *anItem);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeDeltaList & operator=(const Handle_TDF_ListNodeOfAttributeDeltaList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfAttributeDeltaList & operator=(const TDF_ListNodeOfAttributeDeltaList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_ListNodeOfAttributeDeltaList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_ListNodeOfAttributeDeltaList {
	TDF_ListNodeOfAttributeDeltaList* GetObject() {
	return (TDF_ListNodeOfAttributeDeltaList*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_ListNodeOfAttributeDeltaList::~Handle_TDF_ListNodeOfAttributeDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_ListNodeOfAttributeDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_ListNodeOfLabelList;
class Handle_TDF_ListNodeOfLabelList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfLabelList();
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfLabelList(const Handle_TDF_ListNodeOfLabelList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfLabelList(const TDF_ListNodeOfLabelList *anItem);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfLabelList & operator=(const Handle_TDF_ListNodeOfLabelList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfLabelList & operator=(const TDF_ListNodeOfLabelList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_ListNodeOfLabelList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_ListNodeOfLabelList {
	TDF_ListNodeOfLabelList* GetObject() {
	return (TDF_ListNodeOfLabelList*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_ListNodeOfLabelList::~Handle_TDF_ListNodeOfLabelList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_ListNodeOfLabelList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_Data;
class Handle_TDF_Data : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_Data();
		%feature("autodoc", "1");
		Handle_TDF_Data(const Handle_TDF_Data &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Data(const TDF_Data *anItem);
		%feature("autodoc", "1");
		Handle_TDF_Data & operator=(const Handle_TDF_Data &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Data & operator=(const TDF_Data *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_Data DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_Data {
	TDF_Data* GetObject() {
	return (TDF_Data*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_Data::~Handle_TDF_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DoubleMapNodeOfAttributeDoubleMap;
class Handle_TDF_DoubleMapNodeOfAttributeDoubleMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap();
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap(const Handle_TDF_DoubleMapNodeOfAttributeDoubleMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap(const TDF_DoubleMapNodeOfAttributeDoubleMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap & operator=(const Handle_TDF_DoubleMapNodeOfAttributeDoubleMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap & operator=(const TDF_DoubleMapNodeOfAttributeDoubleMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DoubleMapNodeOfAttributeDoubleMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DoubleMapNodeOfAttributeDoubleMap {
	TDF_DoubleMapNodeOfAttributeDoubleMap* GetObject() {
	return (TDF_DoubleMapNodeOfAttributeDoubleMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DoubleMapNodeOfAttributeDoubleMap::~Handle_TDF_DoubleMapNodeOfAttributeDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DoubleMapNodeOfAttributeDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DeltaOnAddition;
class Handle_TDF_DeltaOnAddition : public Handle_TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnAddition();
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnAddition(const Handle_TDF_DeltaOnAddition &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnAddition(const TDF_DeltaOnAddition *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnAddition & operator=(const Handle_TDF_DeltaOnAddition &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnAddition & operator=(const TDF_DeltaOnAddition *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DeltaOnAddition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DeltaOnAddition {
	TDF_DeltaOnAddition* GetObject() {
	return (TDF_DeltaOnAddition*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DeltaOnAddition::~Handle_TDF_DeltaOnAddition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DeltaOnAddition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_IndexedMapNodeOfAttributeIndexedMap;
class Handle_TDF_IndexedMapNodeOfAttributeIndexedMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap();
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap(const Handle_TDF_IndexedMapNodeOfAttributeIndexedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap(const TDF_IndexedMapNodeOfAttributeIndexedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap & operator=(const Handle_TDF_IndexedMapNodeOfAttributeIndexedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap & operator=(const TDF_IndexedMapNodeOfAttributeIndexedMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_IndexedMapNodeOfAttributeIndexedMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_IndexedMapNodeOfAttributeIndexedMap {
	TDF_IndexedMapNodeOfAttributeIndexedMap* GetObject() {
	return (TDF_IndexedMapNodeOfAttributeIndexedMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_IndexedMapNodeOfAttributeIndexedMap::~Handle_TDF_IndexedMapNodeOfAttributeIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_IndexedMapNodeOfAttributeIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_ListNodeOfDeltaList;
class Handle_TDF_ListNodeOfDeltaList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfDeltaList();
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfDeltaList(const Handle_TDF_ListNodeOfDeltaList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfDeltaList(const TDF_ListNodeOfDeltaList *anItem);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfDeltaList & operator=(const Handle_TDF_ListNodeOfDeltaList &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_ListNodeOfDeltaList & operator=(const TDF_ListNodeOfDeltaList *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_ListNodeOfDeltaList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_ListNodeOfDeltaList {
	TDF_ListNodeOfDeltaList* GetObject() {
	return (TDF_ListNodeOfDeltaList*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_ListNodeOfDeltaList::~Handle_TDF_ListNodeOfDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_ListNodeOfDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_HAttributeArray1;
class Handle_TDF_HAttributeArray1 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_HAttributeArray1();
		%feature("autodoc", "1");
		Handle_TDF_HAttributeArray1(const Handle_TDF_HAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_HAttributeArray1(const TDF_HAttributeArray1 *anItem);
		%feature("autodoc", "1");
		Handle_TDF_HAttributeArray1 & operator=(const Handle_TDF_HAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_HAttributeArray1 & operator=(const TDF_HAttributeArray1 *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_HAttributeArray1 DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_HAttributeArray1 {
	TDF_HAttributeArray1* GetObject() {
	return (TDF_HAttributeArray1*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_HAttributeArray1::~Handle_TDF_HAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_HAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_TagSource;
class Handle_TDF_TagSource : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TDF_TagSource();
		%feature("autodoc", "1");
		Handle_TDF_TagSource(const Handle_TDF_TagSource &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_TagSource(const TDF_TagSource *anItem);
		%feature("autodoc", "1");
		Handle_TDF_TagSource & operator=(const Handle_TDF_TagSource &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_TagSource & operator=(const TDF_TagSource *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_TagSource DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_TagSource {
	TDF_TagSource* GetObject() {
	return (TDF_TagSource*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_TagSource::~Handle_TDF_TagSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_TagSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DeltaOnResume;
class Handle_TDF_DeltaOnResume : public Handle_TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnResume();
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnResume(const Handle_TDF_DeltaOnResume &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnResume(const TDF_DeltaOnResume *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnResume & operator=(const Handle_TDF_DeltaOnResume &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnResume & operator=(const TDF_DeltaOnResume *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DeltaOnResume DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DeltaOnResume {
	TDF_DeltaOnResume* GetObject() {
	return (TDF_DeltaOnResume*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DeltaOnResume::~Handle_TDF_DeltaOnResume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DeltaOnResume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DataMapNodeOfLabelLabelMap;
class Handle_TDF_DataMapNodeOfLabelLabelMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelLabelMap();
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelLabelMap(const Handle_TDF_DataMapNodeOfLabelLabelMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelLabelMap(const TDF_DataMapNodeOfLabelLabelMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelLabelMap & operator=(const Handle_TDF_DataMapNodeOfLabelLabelMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DataMapNodeOfLabelLabelMap & operator=(const TDF_DataMapNodeOfLabelLabelMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DataMapNodeOfLabelLabelMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DataMapNodeOfLabelLabelMap {
	TDF_DataMapNodeOfLabelLabelMap* GetObject() {
	return (TDF_DataMapNodeOfLabelLabelMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DataMapNodeOfLabelLabelMap::~Handle_TDF_DataMapNodeOfLabelLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DataMapNodeOfLabelLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_Delta;
class Handle_TDF_Delta : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TDF_Delta();
		%feature("autodoc", "1");
		Handle_TDF_Delta(const Handle_TDF_Delta &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Delta(const TDF_Delta *anItem);
		%feature("autodoc", "1");
		Handle_TDF_Delta & operator=(const Handle_TDF_Delta &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_Delta & operator=(const TDF_Delta *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_Delta DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_Delta {
	TDF_Delta* GetObject() {
	return (TDF_Delta*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_Delta::~Handle_TDF_Delta %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_Delta {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DefaultDeltaOnModification;
class Handle_TDF_DefaultDeltaOnModification : public Handle_TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnModification();
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnModification(const Handle_TDF_DefaultDeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnModification(const TDF_DefaultDeltaOnModification *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnModification & operator=(const Handle_TDF_DefaultDeltaOnModification &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DefaultDeltaOnModification & operator=(const TDF_DefaultDeltaOnModification *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DefaultDeltaOnModification DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DefaultDeltaOnModification {
	TDF_DefaultDeltaOnModification* GetObject() {
	return (TDF_DefaultDeltaOnModification*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DefaultDeltaOnModification::~Handle_TDF_DefaultDeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DefaultDeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DeltaOnForget;
class Handle_TDF_DeltaOnForget : public Handle_TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnForget();
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnForget(const Handle_TDF_DeltaOnForget &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnForget(const TDF_DeltaOnForget *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnForget & operator=(const Handle_TDF_DeltaOnForget &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DeltaOnForget & operator=(const TDF_DeltaOnForget *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DeltaOnForget DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DeltaOnForget {
	TDF_DeltaOnForget* GetObject() {
	return (TDF_DeltaOnForget*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DeltaOnForget::~Handle_TDF_DeltaOnForget %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DeltaOnForget {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_IndexedMapNodeOfLabelIndexedMap;
class Handle_TDF_IndexedMapNodeOfLabelIndexedMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfLabelIndexedMap();
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfLabelIndexedMap(const Handle_TDF_IndexedMapNodeOfLabelIndexedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfLabelIndexedMap(const TDF_IndexedMapNodeOfLabelIndexedMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfLabelIndexedMap & operator=(const Handle_TDF_IndexedMapNodeOfLabelIndexedMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_IndexedMapNodeOfLabelIndexedMap & operator=(const TDF_IndexedMapNodeOfLabelIndexedMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_IndexedMapNodeOfLabelIndexedMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_IndexedMapNodeOfLabelIndexedMap {
	TDF_IndexedMapNodeOfLabelIndexedMap* GetObject() {
	return (TDF_IndexedMapNodeOfLabelIndexedMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_IndexedMapNodeOfLabelIndexedMap::~Handle_TDF_IndexedMapNodeOfLabelIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_IndexedMapNodeOfLabelIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TDF_DoubleMapNodeOfLabelDoubleMap;
class Handle_TDF_DoubleMapNodeOfLabelDoubleMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfLabelDoubleMap();
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfLabelDoubleMap(const Handle_TDF_DoubleMapNodeOfLabelDoubleMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfLabelDoubleMap(const TDF_DoubleMapNodeOfLabelDoubleMap *anItem);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfLabelDoubleMap & operator=(const Handle_TDF_DoubleMapNodeOfLabelDoubleMap &aHandle);
		%feature("autodoc", "1");
		Handle_TDF_DoubleMapNodeOfLabelDoubleMap & operator=(const TDF_DoubleMapNodeOfLabelDoubleMap *anItem);
		%feature("autodoc", "1");
		static		Handle_TDF_DoubleMapNodeOfLabelDoubleMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TDF_DoubleMapNodeOfLabelDoubleMap {
	TDF_DoubleMapNodeOfLabelDoubleMap* GetObject() {
	return (TDF_DoubleMapNodeOfLabelDoubleMap*)$self->Access();
	}
};
%feature("shadow") Handle_TDF_DoubleMapNodeOfLabelDoubleMap::~Handle_TDF_DoubleMapNodeOfLabelDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TDF_DoubleMapNodeOfLabelDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Attribute;
class TDF_Attribute : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		TDF_Label const Label() const;
		%feature("autodoc", "1");
		Standard_Integer Transaction() const;
		%feature("autodoc", "1");
		Standard_Integer UntilTransaction() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNew() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForgotten() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAttribute(const Standard_GUID &anID) const;
		%feature("autodoc", "1");
		Standard_Boolean FindAttribute(const Standard_GUID &anID, Handle_TDF_Attribute & anAttribute) const;
		%feature("autodoc", "1");
		void AddAttribute(const Handle_TDF_Attribute &other) const;
		%feature("autodoc", "1");
		Standard_Boolean ForgetAttribute(const Standard_GUID &aguid) const;
		%feature("autodoc", "1");
		void ForgetAllAttributes(const Standard_Boolean clearChildren=1) const;
		%feature("autodoc", "1");
		virtual		void AfterAddition();
		%feature("autodoc", "1");
		virtual		void BeforeRemoval();
		%feature("autodoc", "1");
		virtual		void BeforeForget();
		%feature("autodoc", "1");
		virtual		void AfterResume();
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterRetrieval(const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		void BeforeCommitTransaction();
		%feature("autodoc", "1");
		void Backup();
		%feature("autodoc", "1");
		Standard_Boolean IsBackuped() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnAddition DeltaOnAddition() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnForget DeltaOnForget() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnResume DeltaOnResume() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnModification DeltaOnModification(const Handle_TDF_Attribute &anOldAttribute) const;
		%feature("autodoc", "1");
		virtual		void DeltaOnModification(const Handle_TDF_DeltaOnModification &aDelta);
		%feature("autodoc", "1");
		virtual		Handle_TDF_DeltaOnRemoval DeltaOnRemoval() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &intoAttribute, const Handle_TDF_RelocationTable &aRelocationTable) const;
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
		virtual		void ExtendedDump(Standard_OStream & anOS, const TDF_IDFilter &aFilter, TDF_AttributeIndexedMap & aMap) const;
		%feature("autodoc", "1");
		void Forget(const Standard_Integer aTransaction);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_Attribute {
	Handle_TDF_Attribute GetHandle() {
	return *(Handle_TDF_Attribute*) &$self;
	}
};
%extend TDF_Attribute {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_Attribute::~TDF_Attribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Attribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListIteratorOfAttributeDeltaList;
class TDF_ListIteratorOfAttributeDeltaList {
	public:
		%feature("autodoc", "1");
		TDF_ListIteratorOfAttributeDeltaList();
		%feature("autodoc", "1");
		TDF_ListIteratorOfAttributeDeltaList(const TDF_AttributeDeltaList &L);
		%feature("autodoc", "1");
		void Initialize(const TDF_AttributeDeltaList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & Value() const;

};
%feature("shadow") TDF_ListIteratorOfAttributeDeltaList::~TDF_ListIteratorOfAttributeDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListIteratorOfAttributeDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_StdMapNodeOfLabelMap;
class TDF_StdMapNodeOfLabelMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_StdMapNodeOfLabelMap(const TDF_Label &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_StdMapNodeOfLabelMap {
	Handle_TDF_StdMapNodeOfLabelMap GetHandle() {
	return *(Handle_TDF_StdMapNodeOfLabelMap*) &$self;
	}
};
%extend TDF_StdMapNodeOfLabelMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_StdMapNodeOfLabelMap::~TDF_StdMapNodeOfLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_StdMapNodeOfLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeDelta;
class TDF_AttributeDelta : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		TDF_Label Label() const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute Attribute() const;
		%feature("autodoc", "1");
		Standard_GUID ID() const;
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
%extend TDF_AttributeDelta {
	Handle_TDF_AttributeDelta GetHandle() {
	return *(Handle_TDF_AttributeDelta*) &$self;
	}
};
%extend TDF_AttributeDelta {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_AttributeDelta::~TDF_AttributeDelta %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeDelta {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaOnResume;
class TDF_DeltaOnResume : public TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		TDF_DeltaOnResume(const Handle_TDF_Attribute &anAtt);

};
%extend TDF_DeltaOnResume {
	Handle_TDF_DeltaOnResume GetHandle() {
	return *(Handle_TDF_DeltaOnResume*) &$self;
	}
};
%extend TDF_DeltaOnResume {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DeltaOnResume::~TDF_DeltaOnResume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaOnResume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeDoubleMap;
class TDF_AttributeDoubleMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_AttributeDoubleMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_AttributeDoubleMap & Assign(const TDF_AttributeDoubleMap &Other);
		%feature("autodoc", "1");
		TDF_AttributeDoubleMap & operator=(const TDF_AttributeDoubleMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Handle_TDF_Attribute &K1, const Handle_TDF_Attribute &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Handle_TDF_Attribute &K1, const Handle_TDF_Attribute &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Find1(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Find2(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Handle_TDF_Attribute &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const Handle_TDF_Attribute &K);

};
%feature("shadow") TDF_AttributeDoubleMap::~TDF_AttributeDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_MapIteratorOfAttributeMap;
class TDF_MapIteratorOfAttributeMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_MapIteratorOfAttributeMap();
		%feature("autodoc", "1");
		TDF_MapIteratorOfAttributeMap(const TDF_AttributeMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_AttributeMap &aMap);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Key() const;

};
%feature("shadow") TDF_MapIteratorOfAttributeMap::~TDF_MapIteratorOfAttributeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_MapIteratorOfAttributeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListIteratorOfLabelList;
class TDF_ListIteratorOfLabelList {
	public:
		%feature("autodoc", "1");
		TDF_ListIteratorOfLabelList();
		%feature("autodoc", "1");
		TDF_ListIteratorOfLabelList(const TDF_LabelList &L);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDF_Label & Value() const;

};
%feature("shadow") TDF_ListIteratorOfLabelList::~TDF_ListIteratorOfLabelList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListIteratorOfLabelList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_GUIDProgIDMap;
class TDF_GUIDProgIDMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_GUIDProgIDMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_GUIDProgIDMap & Assign(const TDF_GUIDProgIDMap &Other);
		%feature("autodoc", "1");
		TDF_GUIDProgIDMap & operator=(const TDF_GUIDProgIDMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Standard_GUID &K1, const TCollection_ExtendedString &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Standard_GUID &K1, const TCollection_ExtendedString &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Find1(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		const Standard_GUID & Find2(const TCollection_ExtendedString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Standard_GUID &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const TCollection_ExtendedString &K);

};
%feature("shadow") TDF_GUIDProgIDMap::~TDF_GUIDProgIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_GUIDProgIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeDeltaList;
class TDF_AttributeDeltaList {
	public:
		%feature("autodoc", "1");
		TDF_AttributeDeltaList();
		%feature("autodoc", "1");
		void Assign(const TDF_AttributeDeltaList &Other);
		%feature("autodoc", "1");
		void operator=(const TDF_AttributeDeltaList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_AttributeDelta &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_AttributeDelta &I, TDF_ListIteratorOfAttributeDeltaList & theIt);
		%feature("autodoc", "1");
		void Prepend(TDF_AttributeDeltaList & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_AttributeDelta &I);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_AttributeDelta &I, TDF_ListIteratorOfAttributeDeltaList & theIt);
		%feature("autodoc", "1");
		void Append(TDF_AttributeDeltaList & Other);
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & First() const;
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDF_ListIteratorOfAttributeDeltaList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TDF_AttributeDelta &I, TDF_ListIteratorOfAttributeDeltaList & It);
		%feature("autodoc", "1");
		void InsertBefore(TDF_AttributeDeltaList & Other, TDF_ListIteratorOfAttributeDeltaList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TDF_AttributeDelta &I, TDF_ListIteratorOfAttributeDeltaList & It);
		%feature("autodoc", "1");
		void InsertAfter(TDF_AttributeDeltaList & Other, TDF_ListIteratorOfAttributeDeltaList & It);

};
%feature("shadow") TDF_AttributeDeltaList::~TDF_AttributeDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaOnAddition;
class TDF_DeltaOnAddition : public TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		TDF_DeltaOnAddition(const Handle_TDF_Attribute &anAtt);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DeltaOnAddition {
	Handle_TDF_DeltaOnAddition GetHandle() {
	return *(Handle_TDF_DeltaOnAddition*) &$self;
	}
};
%extend TDF_DeltaOnAddition {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DeltaOnAddition::~TDF_DeltaOnAddition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaOnAddition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaOnModification;
class TDF_DeltaOnModification : public TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DeltaOnModification {
	Handle_TDF_DeltaOnModification GetHandle() {
	return *(Handle_TDF_DeltaOnModification*) &$self;
	}
};
%extend TDF_DeltaOnModification {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DeltaOnModification::~TDF_DeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TDF_DeltaOnModification {
	TDF_DeltaOnModification () {}
};


%nodefaultctor TDF_ClosureMode;
class TDF_ClosureMode {
	public:
		%feature("autodoc", "1");
		TDF_ClosureMode(const Standard_Boolean aMode=1);
		%feature("autodoc", "1");
		void Descendants(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean Descendants() const;
		%feature("autodoc", "1");
		void References(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean References() const;

};
%feature("shadow") TDF_ClosureMode::~TDF_ClosureMode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ClosureMode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_StdMapNodeOfIDMap;
class TDF_StdMapNodeOfIDMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_StdMapNodeOfIDMap(const Standard_GUID &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_GUID & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_StdMapNodeOfIDMap {
	Handle_TDF_StdMapNodeOfIDMap GetHandle() {
	return *(Handle_TDF_StdMapNodeOfIDMap*) &$self;
	}
};
%extend TDF_StdMapNodeOfIDMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_StdMapNodeOfIDMap::~TDF_StdMapNodeOfIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_StdMapNodeOfIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelMapHasher;
class TDF_LabelMapHasher {
	public:
		%feature("autodoc", "1");
		TDF_LabelMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const TDF_Label &aLab, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TDF_Label &aLab1, const TDF_Label &aLab2);

};
%feature("shadow") TDF_LabelMapHasher::~TDF_LabelMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_IndexedMapNodeOfAttributeIndexedMap;
class TDF_IndexedMapNodeOfAttributeIndexedMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_IndexedMapNodeOfAttributeIndexedMap(const Handle_TDF_Attribute &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Key1() const;
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
%extend TDF_IndexedMapNodeOfAttributeIndexedMap {
	Handle_TDF_IndexedMapNodeOfAttributeIndexedMap GetHandle() {
	return *(Handle_TDF_IndexedMapNodeOfAttributeIndexedMap*) &$self;
	}
};
%extend TDF_IndexedMapNodeOfAttributeIndexedMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_IndexedMapNodeOfAttributeIndexedMap::~TDF_IndexedMapNodeOfAttributeIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_IndexedMapNodeOfAttributeIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Label;
class TDF_Label {
	public:
		%feature("autodoc", "1");
		TDF_Label();
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		Handle_TDF_Data Data() const;
		%feature("autodoc", "1");
		Standard_Integer Tag() const;
		%feature("autodoc", "1");
		TDF_Label const Father() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNull() const;
		%feature("autodoc", "1");
		void Imported(const Standard_Boolean aStatus) const;
		%feature("autodoc", "1");
		Standard_Boolean IsImported() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TDF_Label &aLabel) const;
		%extend{
			bool __eq_wrapper__(const TDF_Label &aLabel) {
				if (*self==aLabel) return true;
				else return false;
			}
		}
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const TDF_Label &aLabel) const;
		%extend{
			bool __ne_wrapper__(const TDF_Label &aLabel) {
				if (*self!=aLabel) return true;
				else return false;
			}
		}
		%feature("autodoc", "1");
		Standard_Boolean IsRoot() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAttribute(const Standard_GUID &anID) const;
		%feature("autodoc", "1");
		void AddAttribute(const Handle_TDF_Attribute &anAttribute) const;
		%feature("autodoc", "1");
		void ForgetAttribute(const Handle_TDF_Attribute &anAttribute) const;
		%feature("autodoc", "1");
		Standard_Boolean ForgetAttribute(const Standard_GUID &aguid) const;
		%feature("autodoc", "1");
		void ForgetAllAttributes(const Standard_Boolean clearChildren=1) const;
		%feature("autodoc", "1");
		void ResumeAttribute(const Handle_TDF_Attribute &anAttribute) const;
		%feature("autodoc", "1");
		Standard_Boolean FindAttribute(const Standard_GUID &anID, Handle_TDF_Attribute & anAttribute) const;
		%feature("autodoc", "1");
		Standard_Boolean FindAttribute(const Standard_GUID &anID, const Standard_Integer aTransaction, Handle_TDF_Attribute & anAttribute) const;
		%feature("autodoc", "1");
		Standard_Boolean MayBeModified() const;
		%feature("autodoc", "1");
		Standard_Boolean AttributesModified() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAttribute() const;
		%feature("autodoc", "1");
		Standard_Integer NbAttributes() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDescendant(const TDF_Label &aLabel) const;
		%feature("autodoc", "1");
		TDF_Label const Root() const;
		%feature("autodoc", "1");
		Standard_Boolean HasChild() const;
		%feature("autodoc", "1");
		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		TDF_Label FindChild(const Standard_Integer aTag, const Standard_Boolean create=1) const;
		%feature("autodoc", "1");
		TDF_Label NewChild() const;
		%feature("autodoc", "1");
		Standard_Integer Transaction() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLowerNode(const TDF_Label &otherLabel) const;
		%feature("autodoc", "1");
		Standard_Boolean HasGreaterNode(const TDF_Label &otherLabel) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void ExtendedDump(Standard_OStream & anOS, const TDF_IDFilter &aFilter, TDF_AttributeIndexedMap & aMap) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string EntryDumpToString() {
			std::stringstream s;
			self->EntryDump(s);
			return s.str();}
		};
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}
		%pythoncode {
		def __ne__(self,right):
			try:
				return self.__ne_wrapper__(right)
			except:
				return True
		}

};
%feature("shadow") TDF_Label::~TDF_Label %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Label {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_MapIteratorOfLabelMap;
class TDF_MapIteratorOfLabelMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_MapIteratorOfLabelMap();
		%feature("autodoc", "1");
		TDF_MapIteratorOfLabelMap(const TDF_LabelMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;

};
%feature("shadow") TDF_MapIteratorOfLabelMap::~TDF_MapIteratorOfLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_MapIteratorOfLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListNodeOfDeltaList;
class TDF_ListNodeOfDeltaList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_ListNodeOfDeltaList(const Handle_TDF_Delta &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TDF_Delta & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_ListNodeOfDeltaList {
	Handle_TDF_ListNodeOfDeltaList GetHandle() {
	return *(Handle_TDF_ListNodeOfDeltaList*) &$self;
	}
};
%extend TDF_ListNodeOfDeltaList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_ListNodeOfDeltaList::~TDF_ListNodeOfDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListNodeOfDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapNodeOfAttributeDoubleMap;
class TDF_DoubleMapNodeOfAttributeDoubleMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapNodeOfAttributeDoubleMap(const Handle_TDF_Attribute &K1, const Handle_TDF_Attribute &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Key1() const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DoubleMapNodeOfAttributeDoubleMap {
	Handle_TDF_DoubleMapNodeOfAttributeDoubleMap GetHandle() {
	return *(Handle_TDF_DoubleMapNodeOfAttributeDoubleMap*) &$self;
	}
};
%extend TDF_DoubleMapNodeOfAttributeDoubleMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DoubleMapNodeOfAttributeDoubleMap::~TDF_DoubleMapNodeOfAttributeDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapNodeOfAttributeDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeMap;
class TDF_AttributeMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_AttributeMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_AttributeMap & Assign(const TDF_AttributeMap &Other);
		%feature("autodoc", "1");
		TDF_AttributeMap & operator=(const TDF_AttributeMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_TDF_Attribute &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_TDF_Attribute &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_TDF_Attribute &aKey);

};
%feature("shadow") TDF_AttributeMap::~TDF_AttributeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelMap;
class TDF_LabelMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelMap & Assign(const TDF_LabelMap &Other);
		%feature("autodoc", "1");
		TDF_LabelMap & operator=(const TDF_LabelMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TDF_Label &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TDF_Label &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TDF_Label &aKey);

};
%feature("shadow") TDF_LabelMap::~TDF_LabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelIndexedMap;
class TDF_LabelIndexedMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelIndexedMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelIndexedMap & Assign(const TDF_LabelIndexedMap &Other);
		%feature("autodoc", "1");
		TDF_LabelIndexedMap & operator=(const TDF_LabelIndexedMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TDF_Label &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TDF_Label &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TDF_Label &K) const;

};
%feature("shadow") TDF_LabelIndexedMap::~TDF_LabelIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapNodeOfGUIDProgIDMap;
class TDF_DoubleMapNodeOfGUIDProgIDMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapNodeOfGUIDProgIDMap(const Standard_GUID &K1, const TCollection_ExtendedString &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_GUID & Key1() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DoubleMapNodeOfGUIDProgIDMap {
	Handle_TDF_DoubleMapNodeOfGUIDProgIDMap GetHandle() {
	return *(Handle_TDF_DoubleMapNodeOfGUIDProgIDMap*) &$self;
	}
};
%extend TDF_DoubleMapNodeOfGUIDProgIDMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DoubleMapNodeOfGUIDProgIDMap::~TDF_DoubleMapNodeOfGUIDProgIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapNodeOfGUIDProgIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelDataMap;
class TDF_LabelDataMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelDataMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelDataMap & Assign(const TDF_LabelDataMap &Other);
		%feature("autodoc", "1");
		TDF_LabelDataMap & operator=(const TDF_LabelDataMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const TDF_Label &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const TDF_Label & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		TDF_Label & operator()(const TDF_Label &K);

};
%feature("shadow") TDF_LabelDataMap::~TDF_LabelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_MapIteratorOfIDMap;
class TDF_MapIteratorOfIDMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_MapIteratorOfIDMap();
		%feature("autodoc", "1");
		TDF_MapIteratorOfIDMap(const TDF_IDMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_IDMap &aMap);
		%feature("autodoc", "1");
		const Standard_GUID & Key() const;

};
%feature("shadow") TDF_MapIteratorOfIDMap::~TDF_MapIteratorOfIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_MapIteratorOfIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelList;
class TDF_LabelList {
	public:
		%feature("autodoc", "1");
		TDF_LabelList();
		%feature("autodoc", "1");
		void Assign(const TDF_LabelList &Other);
		%feature("autodoc", "1");
		void operator=(const TDF_LabelList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TDF_Label &I);
		%feature("autodoc", "1");
		void Prepend(const TDF_Label &I, TDF_ListIteratorOfLabelList & theIt);
		%feature("autodoc", "1");
		void Prepend(TDF_LabelList & Other);
		%feature("autodoc", "1");
		void Append(const TDF_Label &I);
		%feature("autodoc", "1");
		void Append(const TDF_Label &I, TDF_ListIteratorOfLabelList & theIt);
		%feature("autodoc", "1");
		void Append(TDF_LabelList & Other);
		%feature("autodoc", "1");
		TDF_Label & First() const;
		%feature("autodoc", "1");
		TDF_Label & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDF_ListIteratorOfLabelList & It);
		%feature("autodoc", "1");
		void InsertBefore(const TDF_Label &I, TDF_ListIteratorOfLabelList & It);
		%feature("autodoc", "1");
		void InsertBefore(TDF_LabelList & Other, TDF_ListIteratorOfLabelList & It);
		%feature("autodoc", "1");
		void InsertAfter(const TDF_Label &I, TDF_ListIteratorOfLabelList & It);
		%feature("autodoc", "1");
		void InsertAfter(TDF_LabelList & Other, TDF_ListIteratorOfLabelList & It);

};
%feature("shadow") TDF_LabelList::~TDF_LabelList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DefaultDeltaOnModification;
class TDF_DefaultDeltaOnModification : public TDF_DeltaOnModification {
	public:
		%feature("autodoc", "1");
		TDF_DefaultDeltaOnModification(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DefaultDeltaOnModification {
	Handle_TDF_DefaultDeltaOnModification GetHandle() {
	return *(Handle_TDF_DefaultDeltaOnModification*) &$self;
	}
};
%extend TDF_DefaultDeltaOnModification {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DefaultDeltaOnModification::~TDF_DefaultDeltaOnModification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DefaultDeltaOnModification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_IDFilter;
class TDF_IDFilter {
	public:
		%feature("autodoc", "1");
		TDF_IDFilter(const Standard_Boolean ignoreMode=1);
		%feature("autodoc", "1");
		void IgnoreAll(const Standard_Boolean ignore);
		%feature("autodoc", "1");
		Standard_Boolean IgnoreAll() const;
		%feature("autodoc", "1");
		void Keep(const Standard_GUID &anID);
		%feature("autodoc", "1");
		void Keep(const TDF_IDList &anIDList);
		%feature("autodoc", "1");
		void Ignore(const Standard_GUID &anID);
		%feature("autodoc", "1");
		void Ignore(const TDF_IDList &anIDList);
		%feature("autodoc", "1");
		Standard_Boolean IsKept(const Standard_GUID &anID) const;
		%feature("autodoc", "1");
		Standard_Boolean IsKept(const Handle_TDF_Attribute &anAtt) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIgnored(const Standard_GUID &anID) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIgnored(const Handle_TDF_Attribute &anAtt) const;
		%feature("autodoc", "1");
		void IDList(TDF_IDList & anIDList) const;
		%feature("autodoc", "1");
		void Copy(const TDF_IDFilter &fromFilter);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") TDF_IDFilter::~TDF_IDFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_IDFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Transaction;
class TDF_Transaction {
	public:
		%feature("autodoc", "1");
		TDF_Transaction(const TCollection_AsciiString &aName="");
		%feature("autodoc", "1");
		TDF_Transaction(const Handle_TDF_Data &aDF, const TCollection_AsciiString &aName="");
		%feature("autodoc", "1");
		void Initialize(const Handle_TDF_Data &aDF);
		%feature("autodoc", "1");
		Standard_Integer Open();
		%feature("autodoc", "1");
		Handle_TDF_Delta Commit(const Standard_Boolean withDelta=0);
		%feature("autodoc", "1");
		void Abort();
		%feature("autodoc", "1");
		Handle_TDF_Data Data() const;
		%feature("autodoc", "1");
		Standard_Integer Transaction() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpen() const;

};
%feature("shadow") TDF_Transaction::~TDF_Transaction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Transaction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeSequence;
class TDF_AttributeSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TDF_AttributeSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TDF_AttributeSequence & Assign(const TDF_AttributeSequence &Other);
		%feature("autodoc", "1");
		const TDF_AttributeSequence & operator=(const TDF_AttributeSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_Attribute &T);
		%feature("autodoc", "1");
		void Append(TDF_AttributeSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_Attribute &T);
		%feature("autodoc", "1");
		void Prepend(TDF_AttributeSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TDF_Attribute &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TDF_AttributeSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TDF_Attribute &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TDF_AttributeSequence & S);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & First() const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TDF_AttributeSequence & S);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TDF_Attribute &I);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TDF_AttributeSequence::~TDF_AttributeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapNodeOfAttributeDataMap;
class TDF_DataMapNodeOfAttributeDataMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DataMapNodeOfAttributeDataMap(const Handle_TDF_Attribute &K, const Handle_TDF_Attribute &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Key() const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DataMapNodeOfAttributeDataMap {
	Handle_TDF_DataMapNodeOfAttributeDataMap GetHandle() {
	return *(Handle_TDF_DataMapNodeOfAttributeDataMap*) &$self;
	}
};
%extend TDF_DataMapNodeOfAttributeDataMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DataMapNodeOfAttributeDataMap::~TDF_DataMapNodeOfAttributeDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapNodeOfAttributeDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListNodeOfAttributeList;
class TDF_ListNodeOfAttributeList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_ListNodeOfAttributeList(const Handle_TDF_Attribute &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_ListNodeOfAttributeList {
	Handle_TDF_ListNodeOfAttributeList GetHandle() {
	return *(Handle_TDF_ListNodeOfAttributeList*) &$self;
	}
};
%extend TDF_ListNodeOfAttributeList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_ListNodeOfAttributeList::~TDF_ListNodeOfAttributeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListNodeOfAttributeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_IndexedMapNodeOfLabelIndexedMap;
class TDF_IndexedMapNodeOfLabelIndexedMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_IndexedMapNodeOfLabelIndexedMap(const TDF_Label &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TDF_Label & Key1() const;
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
%extend TDF_IndexedMapNodeOfLabelIndexedMap {
	Handle_TDF_IndexedMapNodeOfLabelIndexedMap GetHandle() {
	return *(Handle_TDF_IndexedMapNodeOfLabelIndexedMap*) &$self;
	}
};
%extend TDF_IndexedMapNodeOfLabelIndexedMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_IndexedMapNodeOfLabelIndexedMap::~TDF_IndexedMapNodeOfLabelIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_IndexedMapNodeOfLabelIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_TagSource;
class TDF_TagSource : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDF_TagSource Set(const TDF_Label &label);
		%feature("autodoc", "1");
		static		TDF_Label NewChild(const TDF_Label &L);
		%feature("autodoc", "1");
		TDF_TagSource();
		%feature("autodoc", "1");
		Standard_Integer NewTag();
		%feature("autodoc", "1");
		TDF_Label NewChild();
		%feature("autodoc", "1");
		Standard_Integer Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer T);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_TagSource {
	Handle_TDF_TagSource GetHandle() {
	return *(Handle_TDF_TagSource*) &$self;
	}
};
%extend TDF_TagSource {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_TagSource::~TDF_TagSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_TagSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Tool;
class TDF_Tool {
	public:
		%feature("autodoc", "1");
		TDF_Tool();
		%feature("autodoc", "1");
		static		Standard_Integer NbLabels(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		static		Standard_Integer NbAttributes(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		static		Standard_Integer NbAttributes(const TDF_Label &aLabel, const TDF_IDFilter &aFilter);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSelfContained(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSelfContained(const TDF_Label &aLabel, const TDF_IDFilter &aFilter);
		%feature("autodoc", "1");
		static		void OutReferers(const TDF_Label &theLabel, TDF_AttributeMap & theAtts);
		%feature("autodoc", "1");
		static		void OutReferers(const TDF_Label &aLabel, const TDF_IDFilter &aFilterForReferers, const TDF_IDFilter &aFilterForReferences, TDF_AttributeMap & atts);
		%feature("autodoc", "1");
		static		void OutReferences(const TDF_Label &aLabel, TDF_AttributeMap & atts);
		%feature("autodoc", "1");
		static		void OutReferences(const TDF_Label &aLabel, const TDF_IDFilter &aFilterForReferers, const TDF_IDFilter &aFilterForReferences, TDF_AttributeMap & atts);
		%feature("autodoc", "1");
		static		void RelocateLabel(const TDF_Label &aSourceLabel, const TDF_Label &fromRoot, const TDF_Label &toRoot, TDF_Label & aTargetLabel, const Standard_Boolean create=0);
		%feature("autodoc", "1");
		static		void Entry(const TDF_Label &aLabel, TCollection_AsciiString & anEntry);
		%feature("autodoc", "1");
		static		void TagList(const TDF_Label &aLabel, TColStd_ListOfInteger & aTagList);
		%feature("autodoc", "1");
		static		void TagList(const TCollection_AsciiString &anEntry, TColStd_ListOfInteger & aTagList);
		%feature("autodoc", "1");
		static		void Label(const Handle_TDF_Data &aDF, const TCollection_AsciiString &anEntry, TDF_Label & aLabel, const Standard_Boolean create=0);
		%feature("autodoc", "1");
		static		void Label(const Handle_TDF_Data &aDF, const char * anEntry, TDF_Label & aLabel, const Standard_Boolean create=0);
		%feature("autodoc", "1");
		static		void Label(const Handle_TDF_Data &aDF, const TColStd_ListOfInteger &aTagList, TDF_Label & aLabel, const Standard_Boolean create=0);
		%feature("autodoc", "1");
		static		void CountLabels(TDF_LabelList & aLabelList, TDF_LabelIntegerMap & aLabelMap);
		%feature("autodoc", "1");
		static		void DeductLabels(TDF_LabelList & aLabelList, TDF_LabelIntegerMap & aLabelMap);
		%feature("autodoc", "1");
		static		void DeepDump(Standard_OStream & anOS, const Handle_TDF_Data &aDF);
		%feature("autodoc", "1");
		static		void ExtendedDeepDump(Standard_OStream & anOS, const Handle_TDF_Data &aDF, const TDF_IDFilter &aFilter);
		%feature("autodoc", "1");
		static		void DeepDump(Standard_OStream & anOS, const TDF_Label &aLabel);
		%feature("autodoc", "1");
		static		void ExtendedDeepDump(Standard_OStream & anOS, const TDF_Label &aLabel, const TDF_IDFilter &aFilter);

};
%feature("shadow") TDF_Tool::~TDF_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Data;
class TDF_Data : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDF_Data();
		%feature("autodoc", "1");
		TDF_Label const Root() const;
		%feature("autodoc", "1");
		Standard_Integer Transaction() const;
		%feature("autodoc", "1");
		Standard_Integer Time() const;
		%feature("autodoc", "1");
		Standard_Boolean IsApplicable(const Handle_TDF_Delta &aDelta) const;
		%feature("autodoc", "1");
		Handle_TDF_Delta Undo(const Handle_TDF_Delta &aDelta, const Standard_Boolean withDelta=0);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean NotUndoMode() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void AllowModification(const Standard_Boolean theAllowModification);
		%feature("autodoc", "1");
		Standard_Boolean IsModificationAllowed() const;
		%feature("autodoc", "1");
		const Handle_NCollection_BaseAllocator & LabelNodeAllocator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_Data {
	Handle_TDF_Data GetHandle() {
	return *(Handle_TDF_Data*) &$self;
	}
};
%extend TDF_Data {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_Data::~TDF_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapNodeOfLabelDoubleMap;
class TDF_DoubleMapNodeOfLabelDoubleMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapNodeOfLabelDoubleMap(const TDF_Label &K1, const TDF_Label &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TDF_Label & Key1() const;
		%feature("autodoc", "1");
		TDF_Label & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DoubleMapNodeOfLabelDoubleMap {
	Handle_TDF_DoubleMapNodeOfLabelDoubleMap GetHandle() {
	return *(Handle_TDF_DoubleMapNodeOfLabelDoubleMap*) &$self;
	}
};
%extend TDF_DoubleMapNodeOfLabelDoubleMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DoubleMapNodeOfLabelDoubleMap::~TDF_DoubleMapNodeOfLabelDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapNodeOfLabelDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListNodeOfIDList;
class TDF_ListNodeOfIDList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_ListNodeOfIDList(const Standard_GUID &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_GUID & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_ListNodeOfIDList {
	Handle_TDF_ListNodeOfIDList GetHandle() {
	return *(Handle_TDF_ListNodeOfIDList*) &$self;
	}
};
%extend TDF_ListNodeOfIDList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_ListNodeOfIDList::~TDF_ListNodeOfIDList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListNodeOfIDList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelSequence;
class TDF_LabelSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TDF_LabelSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TDF_LabelSequence & Assign(const TDF_LabelSequence &Other);
		%feature("autodoc", "1");
		const TDF_LabelSequence & operator=(const TDF_LabelSequence &Other);
		%feature("autodoc", "1");
		void Append(const TDF_Label &T);
		%feature("autodoc", "1");
		void Append(TDF_LabelSequence & S);
		%feature("autodoc", "1");
		void Prepend(const TDF_Label &T);
		%feature("autodoc", "1");
		void Prepend(TDF_LabelSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TDF_Label &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TDF_LabelSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TDF_Label &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TDF_LabelSequence & S);
		%feature("autodoc", "1");
		const TDF_Label & First() const;
		%feature("autodoc", "1");
		const TDF_Label & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TDF_LabelSequence & S);
		%feature("autodoc", "1");
		const TDF_Label & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TDF_Label &I);
		%feature("autodoc", "1");
		TDF_Label & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TDF_Label & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TDF_LabelSequence::~TDF_LabelSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_SequenceNodeOfLabelSequence;
class TDF_SequenceNodeOfLabelSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TDF_SequenceNodeOfLabelSequence(const TDF_Label &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_SequenceNodeOfLabelSequence {
	Handle_TDF_SequenceNodeOfLabelSequence GetHandle() {
	return *(Handle_TDF_SequenceNodeOfLabelSequence*) &$self;
	}
};
%extend TDF_SequenceNodeOfLabelSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_SequenceNodeOfLabelSequence::~TDF_SequenceNodeOfLabelSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_SequenceNodeOfLabelSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_CopyTool;
class TDF_CopyTool {
	public:
		%feature("autodoc", "1");
		TDF_CopyTool();
		%feature("autodoc", "1");
		static		void Copy(const Handle_TDF_DataSet &aSourceDataSet, const Handle_TDF_RelocationTable &aRelocationTable);
		%feature("autodoc", "1");
		static		void Copy(const Handle_TDF_DataSet &aSourceDataSet, const Handle_TDF_RelocationTable &aRelocationTable, const TDF_IDFilter &aPrivilegeFilter);
		%feature("autodoc", "1");
		static		void Copy(const Handle_TDF_DataSet &aSourceDataSet, const Handle_TDF_RelocationTable &aRelocationTable, const TDF_IDFilter &aPrivilegeFilter, const TDF_IDFilter &aRefFilter, const Standard_Boolean setSelfContained);

};
%feature("shadow") TDF_CopyTool::~TDF_CopyTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_CopyTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapNodeOfLabelLabelMap;
class TDF_DataMapNodeOfLabelLabelMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DataMapNodeOfLabelLabelMap(const TDF_Label &K, const TDF_Label &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DataMapNodeOfLabelLabelMap {
	Handle_TDF_DataMapNodeOfLabelLabelMap GetHandle() {
	return *(Handle_TDF_DataMapNodeOfLabelLabelMap*) &$self;
	}
};
%extend TDF_DataMapNodeOfLabelLabelMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DataMapNodeOfLabelLabelMap::~TDF_DataMapNodeOfLabelLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapNodeOfLabelLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapIteratorOfLabelIntegerMap;
class TDF_DataMapIteratorOfLabelIntegerMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelIntegerMap();
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelIntegerMap(const TDF_LabelIntegerMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelIntegerMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TDF_DataMapIteratorOfLabelIntegerMap::~TDF_DataMapIteratorOfLabelIntegerMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapIteratorOfLabelIntegerMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapIteratorOfLabelLabelMap;
class TDF_DataMapIteratorOfLabelLabelMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelLabelMap();
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelLabelMap(const TDF_LabelLabelMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelLabelMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const TDF_Label & Value() const;

};
%feature("shadow") TDF_DataMapIteratorOfLabelLabelMap::~TDF_DataMapIteratorOfLabelLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapIteratorOfLabelLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeDataMap;
class TDF_AttributeDataMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_AttributeDataMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_AttributeDataMap & Assign(const TDF_AttributeDataMap &Other);
		%feature("autodoc", "1");
		TDF_AttributeDataMap & operator=(const TDF_AttributeDataMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_TDF_Attribute &K, const Handle_TDF_Attribute &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_TDF_Attribute &K);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Find(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & operator()(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & ChangeFind(const Handle_TDF_Attribute &K);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & operator()(const Handle_TDF_Attribute &K);

};
%feature("shadow") TDF_AttributeDataMap::~TDF_AttributeDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_IDList;
class TDF_IDList {
	public:
		%feature("autodoc", "1");
		TDF_IDList();
		%feature("autodoc", "1");
		void Assign(const TDF_IDList &Other);
		%feature("autodoc", "1");
		void operator=(const TDF_IDList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_GUID &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_GUID &I, TDF_ListIteratorOfIDList & theIt);
		%feature("autodoc", "1");
		void Prepend(TDF_IDList & Other);
		%feature("autodoc", "1");
		void Append(const Standard_GUID &I);
		%feature("autodoc", "1");
		void Append(const Standard_GUID &I, TDF_ListIteratorOfIDList & theIt);
		%feature("autodoc", "1");
		void Append(TDF_IDList & Other);
		%feature("autodoc", "1");
		Standard_GUID & First() const;
		%feature("autodoc", "1");
		Standard_GUID & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDF_ListIteratorOfIDList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_GUID &I, TDF_ListIteratorOfIDList & It);
		%feature("autodoc", "1");
		void InsertBefore(TDF_IDList & Other, TDF_ListIteratorOfIDList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_GUID &I, TDF_ListIteratorOfIDList & It);
		%feature("autodoc", "1");
		void InsertAfter(TDF_IDList & Other, TDF_ListIteratorOfIDList & It);

};
%feature("shadow") TDF_IDList::~TDF_IDList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_IDList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapIteratorOfAttributeDataMap;
class TDF_DataMapIteratorOfAttributeDataMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfAttributeDataMap();
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfAttributeDataMap(const TDF_AttributeDataMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_AttributeDataMap &aMap);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Key() const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Value() const;

};
%feature("shadow") TDF_DataMapIteratorOfAttributeDataMap::~TDF_DataMapIteratorOfAttributeDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapIteratorOfAttributeDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelLabelMap;
class TDF_LabelLabelMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelLabelMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelLabelMap & Assign(const TDF_LabelLabelMap &Other);
		%feature("autodoc", "1");
		TDF_LabelLabelMap & operator=(const TDF_LabelLabelMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const TDF_Label &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const TDF_Label & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		TDF_Label & operator()(const TDF_Label &K);

};
%feature("shadow") TDF_LabelLabelMap::~TDF_LabelLabelMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelLabelMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListIteratorOfAttributeList;
class TDF_ListIteratorOfAttributeList {
	public:
		%feature("autodoc", "1");
		TDF_ListIteratorOfAttributeList();
		%feature("autodoc", "1");
		TDF_ListIteratorOfAttributeList(const TDF_AttributeList &L);
		%feature("autodoc", "1");
		void Initialize(const TDF_AttributeList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Value() const;

};
%feature("shadow") TDF_ListIteratorOfAttributeList::~TDF_ListIteratorOfAttributeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListIteratorOfAttributeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListIteratorOfDeltaList;
class TDF_ListIteratorOfDeltaList {
	public:
		%feature("autodoc", "1");
		TDF_ListIteratorOfDeltaList();
		%feature("autodoc", "1");
		TDF_ListIteratorOfDeltaList(const TDF_DeltaList &L);
		%feature("autodoc", "1");
		void Initialize(const TDF_DeltaList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TDF_Delta & Value() const;

};
%feature("shadow") TDF_ListIteratorOfDeltaList::~TDF_ListIteratorOfDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListIteratorOfDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeIterator;
class TDF_AttributeIterator {
	public:
		%feature("autodoc", "1");
		TDF_AttributeIterator();
		%feature("autodoc", "1");
		TDF_AttributeIterator(const TDF_Label &aLabel, const Standard_Boolean withoutForgotten=1);
		%feature("autodoc", "1");
		TDF_AttributeIterator(const TDF_LabelNodePtr aLabelNode, const Standard_Boolean withoutForgotten=1);
		%feature("autodoc", "1");
		void Initialize(const TDF_Label &aLabel, const Standard_Boolean withoutForgotten=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TDF_Attribute * Value() const;

};
%feature("shadow") TDF_AttributeIterator::~TDF_AttributeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelDoubleMap;
class TDF_LabelDoubleMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelDoubleMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelDoubleMap & Assign(const TDF_LabelDoubleMap &Other);
		%feature("autodoc", "1");
		TDF_LabelDoubleMap & operator=(const TDF_LabelDoubleMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const TDF_Label &K1, const TDF_Label &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const TDF_Label &K1, const TDF_Label &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & Find1(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & Find2(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const TDF_Label &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const TDF_Label &K);

};
%feature("shadow") TDF_LabelDoubleMap::~TDF_LabelDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapIteratorOfAttributeDoubleMap;
class TDF_DoubleMapIteratorOfAttributeDoubleMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfAttributeDoubleMap();
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfAttributeDoubleMap(const TDF_AttributeDoubleMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_AttributeDoubleMap &aMap);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Key1() const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Key2() const;

};
%feature("shadow") TDF_DoubleMapIteratorOfAttributeDoubleMap::~TDF_DoubleMapIteratorOfAttributeDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapIteratorOfAttributeDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapNodeOfLabelIntegerMap;
class TDF_DataMapNodeOfLabelIntegerMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DataMapNodeOfLabelIntegerMap(const TDF_Label &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
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
%extend TDF_DataMapNodeOfLabelIntegerMap {
	Handle_TDF_DataMapNodeOfLabelIntegerMap GetHandle() {
	return *(Handle_TDF_DataMapNodeOfLabelIntegerMap*) &$self;
	}
};
%extend TDF_DataMapNodeOfLabelIntegerMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DataMapNodeOfLabelIntegerMap::~TDF_DataMapNodeOfLabelIntegerMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapNodeOfLabelIntegerMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_SequenceNodeOfAttributeSequence;
class TDF_SequenceNodeOfAttributeSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TDF_SequenceNodeOfAttributeSequence(const Handle_TDF_Attribute &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_SequenceNodeOfAttributeSequence {
	Handle_TDF_SequenceNodeOfAttributeSequence GetHandle() {
	return *(Handle_TDF_SequenceNodeOfAttributeSequence*) &$self;
	}
};
%extend TDF_SequenceNodeOfAttributeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_SequenceNodeOfAttributeSequence::~TDF_SequenceNodeOfAttributeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_SequenceNodeOfAttributeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListIteratorOfIDList;
class TDF_ListIteratorOfIDList {
	public:
		%feature("autodoc", "1");
		TDF_ListIteratorOfIDList();
		%feature("autodoc", "1");
		TDF_ListIteratorOfIDList(const TDF_IDList &L);
		%feature("autodoc", "1");
		void Initialize(const TDF_IDList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_GUID & Value() const;

};
%feature("shadow") TDF_ListIteratorOfIDList::~TDF_ListIteratorOfIDList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListIteratorOfIDList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeArray1;
class TDF_AttributeArray1 {
	public:
		%feature("autodoc", "1");
		TDF_AttributeArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDF_AttributeArray1(const Handle_TDF_Attribute &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_TDF_Attribute &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TDF_AttributeArray1 & Assign(const TDF_AttributeArray1 &Other);
		%feature("autodoc", "1");
		const TDF_AttributeArray1 & operator=(const TDF_AttributeArray1 &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TDF_Attribute &Value);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & operator()(const Standard_Integer Index);

};
%feature("shadow") TDF_AttributeArray1::~TDF_AttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_IDMap;
class TDF_IDMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_IDMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_IDMap & Assign(const TDF_IDMap &Other);
		%feature("autodoc", "1");
		TDF_IDMap & operator=(const TDF_IDMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Standard_GUID &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_GUID &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_GUID &aKey);

};
%feature("shadow") TDF_IDMap::~TDF_IDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_IDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaList;
class TDF_DeltaList {
	public:
		%feature("autodoc", "1");
		TDF_DeltaList();
		%feature("autodoc", "1");
		void Assign(const TDF_DeltaList &Other);
		%feature("autodoc", "1");
		void operator=(const TDF_DeltaList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_Delta &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_Delta &I, TDF_ListIteratorOfDeltaList & theIt);
		%feature("autodoc", "1");
		void Prepend(TDF_DeltaList & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_Delta &I);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_Delta &I, TDF_ListIteratorOfDeltaList & theIt);
		%feature("autodoc", "1");
		void Append(TDF_DeltaList & Other);
		%feature("autodoc", "1");
		Handle_TDF_Delta & First() const;
		%feature("autodoc", "1");
		Handle_TDF_Delta & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDF_ListIteratorOfDeltaList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TDF_Delta &I, TDF_ListIteratorOfDeltaList & It);
		%feature("autodoc", "1");
		void InsertBefore(TDF_DeltaList & Other, TDF_ListIteratorOfDeltaList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TDF_Delta &I, TDF_ListIteratorOfDeltaList & It);
		%feature("autodoc", "1");
		void InsertAfter(TDF_DeltaList & Other, TDF_ListIteratorOfDeltaList & It);

};
%feature("shadow") TDF_DeltaList::~TDF_DeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListNodeOfLabelList;
class TDF_ListNodeOfLabelList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_ListNodeOfLabelList(const TDF_Label &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_ListNodeOfLabelList {
	Handle_TDF_ListNodeOfLabelList GetHandle() {
	return *(Handle_TDF_ListNodeOfLabelList*) &$self;
	}
};
%extend TDF_ListNodeOfLabelList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_ListNodeOfLabelList::~TDF_ListNodeOfLabelList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListNodeOfLabelList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_StdMapNodeOfAttributeMap;
class TDF_StdMapNodeOfAttributeMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_StdMapNodeOfAttributeMap(const Handle_TDF_Attribute &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_StdMapNodeOfAttributeMap {
	Handle_TDF_StdMapNodeOfAttributeMap GetHandle() {
	return *(Handle_TDF_StdMapNodeOfAttributeMap*) &$self;
	}
};
%extend TDF_StdMapNodeOfAttributeMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_StdMapNodeOfAttributeMap::~TDF_StdMapNodeOfAttributeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_StdMapNodeOfAttributeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_CopyLabel;
class TDF_CopyLabel {
	public:
		%feature("autodoc", "1");
		TDF_CopyLabel();
		%feature("autodoc", "1");
		TDF_CopyLabel(const TDF_Label &aSource, const TDF_Label &aTarget);
		%feature("autodoc", "1");
		void Load(const TDF_Label &aSource, const TDF_Label &aTarget);
		%feature("autodoc", "1");
		void UseFilter(const TDF_IDFilter &aFilter);
		%feature("autodoc", "1");
		static		Standard_Boolean ExternalReferences(const TDF_Label &Lab, TDF_AttributeMap & aExternals, const TDF_IDFilter &aFilter);
		%feature("autodoc", "1");
		static		void ExternalReferences(const TDF_Label &aRefLab, const TDF_Label &Lab, TDF_AttributeMap & aExternals, const TDF_IDFilter &aFilter, Handle_TDF_DataSet & aDataSet);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_TDF_RelocationTable & RelocationTable() const;

};
%feature("shadow") TDF_CopyLabel::~TDF_CopyLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_CopyLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataSet;
class TDF_DataSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDF_DataSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void AddLabel(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		Standard_Boolean ContainsLabel(const TDF_Label &aLabel) const;
		%feature("autodoc", "1");
		TDF_LabelMap & Labels();
		%feature("autodoc", "1");
		void AddAttribute(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		Standard_Boolean ContainsAttribute(const Handle_TDF_Attribute &anAttribute) const;
		%feature("autodoc", "1");
		TDF_AttributeMap & Attributes();
		%feature("autodoc", "1");
		void AddRoot(const TDF_Label &aLabel);
		%feature("autodoc", "1");
		TDF_LabelList & Roots();
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
%extend TDF_DataSet {
	Handle_TDF_DataSet GetHandle() {
	return *(Handle_TDF_DataSet*) &$self;
	}
};
%extend TDF_DataSet {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DataSet::~TDF_DataSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ChildIterator;
class TDF_ChildIterator {
	public:
		%feature("autodoc", "1");
		TDF_ChildIterator();
		%feature("autodoc", "1");
		TDF_ChildIterator(const TDF_Label &aLabel, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		void Initialize(const TDF_Label &aLabel, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void NextBrother();
		%feature("autodoc", "1");
		TDF_Label const Value() const;

};
%feature("shadow") TDF_ChildIterator::~TDF_ChildIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ChildIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeList;
class TDF_AttributeList {
	public:
		%feature("autodoc", "1");
		TDF_AttributeList();
		%feature("autodoc", "1");
		void Assign(const TDF_AttributeList &Other);
		%feature("autodoc", "1");
		void operator=(const TDF_AttributeList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_Attribute &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TDF_Attribute &I, TDF_ListIteratorOfAttributeList & theIt);
		%feature("autodoc", "1");
		void Prepend(TDF_AttributeList & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_Attribute &I);
		%feature("autodoc", "1");
		void Append(const Handle_TDF_Attribute &I, TDF_ListIteratorOfAttributeList & theIt);
		%feature("autodoc", "1");
		void Append(TDF_AttributeList & Other);
		%feature("autodoc", "1");
		Handle_TDF_Attribute & First() const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TDF_ListIteratorOfAttributeList & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TDF_Attribute &I, TDF_ListIteratorOfAttributeList & It);
		%feature("autodoc", "1");
		void InsertBefore(TDF_AttributeList & Other, TDF_ListIteratorOfAttributeList & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TDF_Attribute &I, TDF_ListIteratorOfAttributeList & It);
		%feature("autodoc", "1");
		void InsertAfter(TDF_AttributeList & Other, TDF_ListIteratorOfAttributeList & It);

};
%feature("shadow") TDF_AttributeList::~TDF_AttributeList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_HAttributeArray1;
class TDF_HAttributeArray1 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up, const Handle_TDF_Attribute &V);
		%feature("autodoc", "1");
		void Init(const Handle_TDF_Attribute &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TDF_Attribute &Value);
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TDF_Attribute & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TDF_AttributeArray1 & Array1() const;
		%feature("autodoc", "1");
		TDF_AttributeArray1 & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_HAttributeArray1 {
	Handle_TDF_HAttributeArray1 GetHandle() {
	return *(Handle_TDF_HAttributeArray1*) &$self;
	}
};
%extend TDF_HAttributeArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_HAttributeArray1::~TDF_HAttributeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_HAttributeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_RelocationTable;
class TDF_RelocationTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDF_RelocationTable(const Standard_Boolean selfRelocate=0);
		%feature("autodoc", "1");
		void SelfRelocate(const Standard_Boolean selfRelocate);
		%feature("autodoc", "1");
		Standard_Boolean SelfRelocate() const;
		%feature("autodoc", "1");
		void AfterRelocate(const Standard_Boolean afterRelocate);
		%feature("autodoc", "1");
		Standard_Boolean AfterRelocate() const;
		%feature("autodoc", "1");
		void SetRelocation(const TDF_Label &aSourceLabel, const TDF_Label &aTargetLabel);
		%feature("autodoc", "1");
		Standard_Boolean HasRelocation(const TDF_Label &aSourceLabel, TDF_Label & aTargetLabel) const;
		%feature("autodoc", "1");
		void SetRelocation(const Handle_TDF_Attribute &aSourceAttribute, const Handle_TDF_Attribute &aTargetAttribute);
		%feature("autodoc", "1");
		Standard_Boolean HasRelocation(const Handle_TDF_Attribute &aSourceAttribute, Handle_TDF_Attribute & aTargetAttribute) const;
		%feature("autodoc", "1");
		void SetTransientRelocation(const Handle_Standard_Transient &aSourceTransient, const Handle_Standard_Transient &aTargetTransient);
		%feature("autodoc", "1");
		Standard_Boolean HasTransientRelocation(const Handle_Standard_Transient &aSourceTransient, Handle_Standard_Transient & aTargetTransient) const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void TargetLabelMap(TDF_LabelMap & aLabelMap) const;
		%feature("autodoc", "1");
		void TargetAttributeMap(TDF_AttributeMap & anAttributeMap) const;
		%feature("autodoc", "1");
		TDF_LabelDataMap & LabelTable();
		%feature("autodoc", "1");
		TDF_AttributeDataMap & AttributeTable();
		%feature("autodoc", "1");
		TColStd_IndexedDataMapOfTransientTransient & TransientTable();
		%feature("autodoc", "1");
		Standard_OStream & Dump(const Standard_Boolean dumpLabels, const Standard_Boolean dumpAttributes, const Standard_Boolean dumpTransients, Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_RelocationTable {
	Handle_TDF_RelocationTable GetHandle() {
	return *(Handle_TDF_RelocationTable*) &$self;
	}
};
%extend TDF_RelocationTable {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_RelocationTable::~TDF_RelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_RelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_AttributeIndexedMap;
class TDF_AttributeIndexedMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_AttributeIndexedMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_AttributeIndexedMap & Assign(const TDF_AttributeIndexedMap &Other);
		%feature("autodoc", "1");
		TDF_AttributeIndexedMap & operator=(const TDF_AttributeIndexedMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_TDF_Attribute &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_TDF_Attribute &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_TDF_Attribute &K) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_TDF_Attribute & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_TDF_Attribute &K) const;

};
%feature("shadow") TDF_AttributeIndexedMap::~TDF_AttributeIndexedMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_AttributeIndexedMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF;
class TDF {
	public:
		%feature("autodoc", "1");
		TDF();
		%feature("autodoc", "1");
		static		const Standard_GUID & LowestID();
		%feature("autodoc", "1");
		static		const Standard_GUID & UppestID();
		%feature("autodoc", "1");
		static		void AddLinkGUIDToProgID(const Standard_GUID &ID, const TCollection_ExtendedString &ProgID);
		%feature("autodoc", "1");
		static		Standard_Boolean GUIDFromProgID(const TCollection_ExtendedString &ProgID, Standard_GUID & ID);
		%feature("autodoc", "1");
		static		Standard_Boolean ProgIDFromGUID(const Standard_GUID &ID, TCollection_ExtendedString & ProgID);

};
%feature("shadow") TDF::~TDF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_LabelIntegerMap;
class TDF_LabelIntegerMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TDF_LabelIntegerMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TDF_LabelIntegerMap & Assign(const TDF_LabelIntegerMap &Other);
		%feature("autodoc", "1");
		TDF_LabelIntegerMap & operator=(const TDF_LabelIntegerMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TDF_Label &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TDF_Label &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TDF_Label &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TDF_Label &K);

};
%feature("shadow") TDF_LabelIntegerMap::~TDF_LabelIntegerMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_LabelIntegerMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Reference;
class TDF_Reference : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TDF_Reference Set(const TDF_Label &I, const TDF_Label &Origin);
		%feature("autodoc", "1");
		void Set(const TDF_Label &Origin);
		%feature("autodoc", "1");
		TDF_Label Get() const;
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
		TDF_Reference();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_Reference {
	Handle_TDF_Reference GetHandle() {
	return *(Handle_TDF_Reference*) &$self;
	}
};
%extend TDF_Reference {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_Reference::~TDF_Reference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Reference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapNodeOfLabelDataMap;
class TDF_DataMapNodeOfLabelDataMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_DataMapNodeOfLabelDataMap(const TDF_Label &K, const TDF_Label &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DataMapNodeOfLabelDataMap {
	Handle_TDF_DataMapNodeOfLabelDataMap GetHandle() {
	return *(Handle_TDF_DataMapNodeOfLabelDataMap*) &$self;
	}
};
%extend TDF_DataMapNodeOfLabelDataMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DataMapNodeOfLabelDataMap::~TDF_DataMapNodeOfLabelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapNodeOfLabelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_Delta;
class TDF_Delta : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TDF_Delta();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsApplicable(const Standard_Integer aCurrentTime) const;
		%feature("autodoc", "1");
		Standard_Integer BeginTime() const;
		%feature("autodoc", "1");
		Standard_Integer EndTime() const;
		%feature("autodoc", "1");
		void Labels(TDF_LabelList & aLabelList) const;
		%feature("autodoc", "1");
		const TDF_AttributeDeltaList & AttributeDeltas() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Name() const;
		%feature("autodoc", "1");
		void SetName(const TCollection_ExtendedString &theName);
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
%extend TDF_Delta {
	Handle_TDF_Delta GetHandle() {
	return *(Handle_TDF_Delta*) &$self;
	}
};
%extend TDF_Delta {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_Delta::~TDF_Delta %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_Delta {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ComparisonTool;
class TDF_ComparisonTool {
	public:
		%feature("autodoc", "1");
		TDF_ComparisonTool();
		%feature("autodoc", "1");
		static		void Compare(const Handle_TDF_DataSet &aSourceDataSet, const Handle_TDF_DataSet &aTargetDataSet, const TDF_IDFilter &aFilter, const Handle_TDF_RelocationTable &aRelocationTable);
		%feature("autodoc", "1");
		static		Standard_Boolean SourceUnbound(const Handle_TDF_DataSet &aRefDataSet, const Handle_TDF_RelocationTable &aRelocationTable, const TDF_IDFilter &aFilter, const Handle_TDF_DataSet &aDiffDataSet, const Standard_Integer anOption=2);
		%feature("autodoc", "1");
		static		Standard_Boolean TargetUnbound(const Handle_TDF_DataSet &aRefDataSet, const Handle_TDF_RelocationTable &aRelocationTable, const TDF_IDFilter &aFilter, const Handle_TDF_DataSet &aDiffDataSet, const Standard_Integer anOption=2);
		%feature("autodoc", "1");
		static		void Cut(const Handle_TDF_DataSet &aDataSet);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSelfContained(const TDF_Label &aLabel, const Handle_TDF_DataSet &aDataSet);

};
%feature("shadow") TDF_ComparisonTool::~TDF_ComparisonTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ComparisonTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapIteratorOfGUIDProgIDMap;
class TDF_DoubleMapIteratorOfGUIDProgIDMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfGUIDProgIDMap();
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfGUIDProgIDMap(const TDF_GUIDProgIDMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_GUIDProgIDMap &aMap);
		%feature("autodoc", "1");
		const Standard_GUID & Key1() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Key2() const;

};
%feature("shadow") TDF_DoubleMapIteratorOfGUIDProgIDMap::~TDF_DoubleMapIteratorOfGUIDProgIDMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapIteratorOfGUIDProgIDMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaOnForget;
class TDF_DeltaOnForget : public TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		TDF_DeltaOnForget(const Handle_TDF_Attribute &anAtt);
		%feature("autodoc", "1");
		virtual		void Apply();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DeltaOnForget {
	Handle_TDF_DeltaOnForget GetHandle() {
	return *(Handle_TDF_DeltaOnForget*) &$self;
	}
};
%extend TDF_DeltaOnForget {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DeltaOnForget::~TDF_DeltaOnForget %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaOnForget {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DeltaOnRemoval;
class TDF_DeltaOnRemoval : public TDF_AttributeDelta {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_DeltaOnRemoval {
	Handle_TDF_DeltaOnRemoval GetHandle() {
	return *(Handle_TDF_DeltaOnRemoval*) &$self;
	}
};
%extend TDF_DeltaOnRemoval {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DeltaOnRemoval::~TDF_DeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DefaultDeltaOnRemoval;
class TDF_DefaultDeltaOnRemoval : public TDF_DeltaOnRemoval {
	public:
		%feature("autodoc", "1");
		TDF_DefaultDeltaOnRemoval(const Handle_TDF_Attribute &anAttribute);
		%feature("autodoc", "1");
		virtual		void Apply();

};
%extend TDF_DefaultDeltaOnRemoval {
	Handle_TDF_DefaultDeltaOnRemoval GetHandle() {
	return *(Handle_TDF_DefaultDeltaOnRemoval*) &$self;
	}
};
%extend TDF_DefaultDeltaOnRemoval {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_DefaultDeltaOnRemoval::~TDF_DefaultDeltaOnRemoval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DefaultDeltaOnRemoval {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DoubleMapIteratorOfLabelDoubleMap;
class TDF_DoubleMapIteratorOfLabelDoubleMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfLabelDoubleMap();
		%feature("autodoc", "1");
		TDF_DoubleMapIteratorOfLabelDoubleMap(const TDF_LabelDoubleMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelDoubleMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key1() const;
		%feature("autodoc", "1");
		const TDF_Label & Key2() const;

};
%feature("shadow") TDF_DoubleMapIteratorOfLabelDoubleMap::~TDF_DoubleMapIteratorOfLabelDoubleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DoubleMapIteratorOfLabelDoubleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ChildIDIterator;
class TDF_ChildIDIterator {
	public:
		%feature("autodoc", "1");
		TDF_ChildIDIterator();
		%feature("autodoc", "1");
		TDF_ChildIDIterator(const TDF_Label &aLabel, const Standard_GUID &anID, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		void Initialize(const TDF_Label &aLabel, const Standard_GUID &anID, const Standard_Boolean allLevels=0);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void NextBrother();
		%feature("autodoc", "1");
		Handle_TDF_Attribute Value() const;

};
%feature("shadow") TDF_ChildIDIterator::~TDF_ChildIDIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ChildIDIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ClosureTool;
class TDF_ClosureTool {
	public:
		%feature("autodoc", "1");
		TDF_ClosureTool();
		%feature("autodoc", "1");
		static		void Closure(const Handle_TDF_DataSet &aDataSet);
		%feature("autodoc", "1");
		static		void Closure(const Handle_TDF_DataSet &aDataSet, const TDF_IDFilter &aFilter, const TDF_ClosureMode &aMode);
		%feature("autodoc", "1");
		static		void Closure(const TDF_Label &aLabel, TDF_LabelMap & aLabMap, TDF_AttributeMap & anAttMap, const TDF_IDFilter &aFilter, const TDF_ClosureMode &aMode);

};
%feature("shadow") TDF_ClosureTool::~TDF_ClosureTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ClosureTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_ListNodeOfAttributeDeltaList;
class TDF_ListNodeOfAttributeDeltaList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TDF_ListNodeOfAttributeDeltaList(const Handle_TDF_AttributeDelta &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TDF_AttributeDelta & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TDF_ListNodeOfAttributeDeltaList {
	Handle_TDF_ListNodeOfAttributeDeltaList GetHandle() {
	return *(Handle_TDF_ListNodeOfAttributeDeltaList*) &$self;
	}
};
%extend TDF_ListNodeOfAttributeDeltaList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TDF_ListNodeOfAttributeDeltaList::~TDF_ListNodeOfAttributeDeltaList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_ListNodeOfAttributeDeltaList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TDF_DataMapIteratorOfLabelDataMap;
class TDF_DataMapIteratorOfLabelDataMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelDataMap();
		%feature("autodoc", "1");
		TDF_DataMapIteratorOfLabelDataMap(const TDF_LabelDataMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const TDF_LabelDataMap &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const TDF_Label & Value() const;

};
%feature("shadow") TDF_DataMapIteratorOfLabelDataMap::~TDF_DataMapIteratorOfLabelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TDF_DataMapIteratorOfLabelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};
