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

%module HLRAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include HLRAlgo_renames.i


%include HLRAlgo_required_python_modules.i


%include HLRAlgo_dependencies.i


%include HLRAlgo_headers.i




%nodefaultctor Handle_HLRAlgo_PolyShellData;
class Handle_HLRAlgo_PolyShellData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyShellData();
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyShellData(const Handle_HLRAlgo_PolyShellData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyShellData(const HLRAlgo_PolyShellData *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyShellData & operator=(const Handle_HLRAlgo_PolyShellData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyShellData & operator=(const HLRAlgo_PolyShellData *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_PolyShellData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_PolyShellData {
	HLRAlgo_PolyShellData* GetObject() {
	return (HLRAlgo_PolyShellData*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_PolyShellData::~Handle_HLRAlgo_PolyShellData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_PolyShellData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_HArray1OfPINod;
class Handle_HLRAlgo_HArray1OfPINod : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPINod();
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPINod(const Handle_HLRAlgo_HArray1OfPINod &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPINod(const HLRAlgo_HArray1OfPINod *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPINod & operator=(const Handle_HLRAlgo_HArray1OfPINod &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPINod & operator=(const HLRAlgo_HArray1OfPINod *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_HArray1OfPINod DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_HArray1OfPINod {
	HLRAlgo_HArray1OfPINod* GetObject() {
	return (HLRAlgo_HArray1OfPINod*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_HArray1OfPINod::~Handle_HLRAlgo_HArray1OfPINod %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_HArray1OfPINod {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_WiresBlock;
class Handle_HLRAlgo_WiresBlock : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock();
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock(const Handle_HLRAlgo_WiresBlock &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock(const HLRAlgo_WiresBlock *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock & operator=(const Handle_HLRAlgo_WiresBlock &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock & operator=(const HLRAlgo_WiresBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_WiresBlock DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_WiresBlock {
	HLRAlgo_WiresBlock* GetObject() {
	return (HLRAlgo_WiresBlock*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_WiresBlock::~Handle_HLRAlgo_WiresBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_WiresBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_HArray1OfPHDat;
class Handle_HLRAlgo_HArray1OfPHDat : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPHDat();
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPHDat(const Handle_HLRAlgo_HArray1OfPHDat &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPHDat(const HLRAlgo_HArray1OfPHDat *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPHDat & operator=(const Handle_HLRAlgo_HArray1OfPHDat &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPHDat & operator=(const HLRAlgo_HArray1OfPHDat *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_HArray1OfPHDat DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_HArray1OfPHDat {
	HLRAlgo_HArray1OfPHDat* GetObject() {
	return (HLRAlgo_HArray1OfPHDat*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_HArray1OfPHDat::~Handle_HLRAlgo_HArray1OfPHDat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_HArray1OfPHDat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_HArray1OfPISeg;
class Handle_HLRAlgo_HArray1OfPISeg : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPISeg();
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPISeg(const Handle_HLRAlgo_HArray1OfPISeg &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPISeg(const HLRAlgo_HArray1OfPISeg *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPISeg & operator=(const Handle_HLRAlgo_HArray1OfPISeg &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfPISeg & operator=(const HLRAlgo_HArray1OfPISeg *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_HArray1OfPISeg DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_HArray1OfPISeg {
	HLRAlgo_HArray1OfPISeg* GetObject() {
	return (HLRAlgo_HArray1OfPISeg*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_HArray1OfPISeg::~Handle_HLRAlgo_HArray1OfPISeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_HArray1OfPISeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_ListNodeOfInterferenceList;
class Handle_HLRAlgo_ListNodeOfInterferenceList : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfInterferenceList();
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfInterferenceList(const Handle_HLRAlgo_ListNodeOfInterferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfInterferenceList(const HLRAlgo_ListNodeOfInterferenceList *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfInterferenceList & operator=(const Handle_HLRAlgo_ListNodeOfInterferenceList &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfInterferenceList & operator=(const HLRAlgo_ListNodeOfInterferenceList *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_ListNodeOfInterferenceList DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_ListNodeOfInterferenceList {
	HLRAlgo_ListNodeOfInterferenceList* GetObject() {
	return (HLRAlgo_ListNodeOfInterferenceList*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_ListNodeOfInterferenceList::~Handle_HLRAlgo_ListNodeOfInterferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_ListNodeOfInterferenceList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_EdgesBlock;
class Handle_HLRAlgo_EdgesBlock : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock();
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock(const Handle_HLRAlgo_EdgesBlock &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock(const HLRAlgo_EdgesBlock *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock & operator=(const Handle_HLRAlgo_EdgesBlock &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock & operator=(const HLRAlgo_EdgesBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_EdgesBlock DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_EdgesBlock {
	HLRAlgo_EdgesBlock* GetObject() {
	return (HLRAlgo_EdgesBlock*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_EdgesBlock::~Handle_HLRAlgo_EdgesBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_EdgesBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_ListNodeOfListOfBPoint;
class Handle_HLRAlgo_ListNodeOfListOfBPoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfListOfBPoint();
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfListOfBPoint(const Handle_HLRAlgo_ListNodeOfListOfBPoint &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfListOfBPoint(const HLRAlgo_ListNodeOfListOfBPoint *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfListOfBPoint & operator=(const Handle_HLRAlgo_ListNodeOfListOfBPoint &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_ListNodeOfListOfBPoint & operator=(const HLRAlgo_ListNodeOfListOfBPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_ListNodeOfListOfBPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_ListNodeOfListOfBPoint {
	HLRAlgo_ListNodeOfListOfBPoint* GetObject() {
	return (HLRAlgo_ListNodeOfListOfBPoint*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_ListNodeOfListOfBPoint::~Handle_HLRAlgo_ListNodeOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_ListNodeOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_HArray1OfTData;
class Handle_HLRAlgo_HArray1OfTData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfTData();
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfTData(const Handle_HLRAlgo_HArray1OfTData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfTData(const HLRAlgo_HArray1OfTData *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfTData & operator=(const Handle_HLRAlgo_HArray1OfTData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_HArray1OfTData & operator=(const HLRAlgo_HArray1OfTData *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_HArray1OfTData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_HArray1OfTData {
	HLRAlgo_HArray1OfTData* GetObject() {
	return (HLRAlgo_HArray1OfTData*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_HArray1OfTData::~Handle_HLRAlgo_HArray1OfTData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_HArray1OfTData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_PolyData;
class Handle_HLRAlgo_PolyData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyData();
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyData(const Handle_HLRAlgo_PolyData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyData(const HLRAlgo_PolyData *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyData & operator=(const Handle_HLRAlgo_PolyData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyData & operator=(const HLRAlgo_PolyData *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_PolyData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_PolyData {
	HLRAlgo_PolyData* GetObject() {
	return (HLRAlgo_PolyData*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_PolyData::~Handle_HLRAlgo_PolyData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_PolyData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_PolyAlgo;
class Handle_HLRAlgo_PolyAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo();
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo(const Handle_HLRAlgo_PolyAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo(const HLRAlgo_PolyAlgo *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo & operator=(const Handle_HLRAlgo_PolyAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo & operator=(const HLRAlgo_PolyAlgo *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_PolyAlgo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_PolyAlgo {
	HLRAlgo_PolyAlgo* GetObject() {
	return (HLRAlgo_PolyAlgo*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_PolyAlgo::~Handle_HLRAlgo_PolyAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_PolyAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_PolyInternalData;
class Handle_HLRAlgo_PolyInternalData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalData();
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalData(const Handle_HLRAlgo_PolyInternalData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalData(const HLRAlgo_PolyInternalData *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalData & operator=(const Handle_HLRAlgo_PolyInternalData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalData & operator=(const HLRAlgo_PolyInternalData *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_PolyInternalData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_PolyInternalData {
	HLRAlgo_PolyInternalData* GetObject() {
	return (HLRAlgo_PolyInternalData*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_PolyInternalData::~Handle_HLRAlgo_PolyInternalData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_PolyInternalData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRAlgo_PolyInternalNode;
class Handle_HLRAlgo_PolyInternalNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode();
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode(const Handle_HLRAlgo_PolyInternalNode &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode(const HLRAlgo_PolyInternalNode *anItem);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode & operator=(const Handle_HLRAlgo_PolyInternalNode &aHandle);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode & operator=(const HLRAlgo_PolyInternalNode *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRAlgo_PolyInternalNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRAlgo_PolyInternalNode {
	HLRAlgo_PolyInternalNode* GetObject() {
	return (HLRAlgo_PolyInternalNode*)$self->Access();
	}
};
%feature("shadow") Handle_HLRAlgo_PolyInternalNode::~Handle_HLRAlgo_PolyInternalNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRAlgo_PolyInternalNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Array1OfPHDat;
class HLRAlgo_Array1OfPHDat {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPHDat(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPHDat(const HLRAlgo_PolyHidingData &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_PolyHidingData &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPHDat & Assign(const HLRAlgo_Array1OfPHDat &Other);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPHDat & operator=(const HLRAlgo_Array1OfPHDat &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_PolyHidingData &Value);
		%feature("autodoc", "1");
		const HLRAlgo_PolyHidingData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRAlgo_PolyHidingData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_PolyHidingData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRAlgo_PolyHidingData & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRAlgo_Array1OfPHDat::~HLRAlgo_Array1OfPHDat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Array1OfPHDat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_ListIteratorOfInterferenceList;
class HLRAlgo_ListIteratorOfInterferenceList {
	public:
		%feature("autodoc", "1");
		HLRAlgo_ListIteratorOfInterferenceList();
		%feature("autodoc", "1");
		HLRAlgo_ListIteratorOfInterferenceList(const HLRAlgo_InterferenceList &L);
		%feature("autodoc", "1");
		void Initialize(const HLRAlgo_InterferenceList &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		HLRAlgo_Interference & Value() const;

};
%feature("shadow") HLRAlgo_ListIteratorOfInterferenceList::~HLRAlgo_ListIteratorOfInterferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_ListIteratorOfInterferenceList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_HArray1OfPISeg;
class HLRAlgo_HArray1OfPISeg : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPISeg(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPISeg(const Standard_Integer Low, const Standard_Integer Up, const HLRAlgo_PolyInternalSegment &V);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_PolyInternalSegment &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_PolyInternalSegment &Value);
		%feature("autodoc", "1");
		const HLRAlgo_PolyInternalSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPISeg & Array1() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPISeg & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_HArray1OfPISeg {
	Handle_HLRAlgo_HArray1OfPISeg GetHandle() {
	return *(Handle_HLRAlgo_HArray1OfPISeg*) &$self;
	}
};
%extend HLRAlgo_HArray1OfPISeg {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_HArray1OfPISeg::~HLRAlgo_HArray1OfPISeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_HArray1OfPISeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyInternalNode;
class HLRAlgo_PolyInternalNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalNode();
		%feature("autodoc", "1");
		Standard_Address Indices() const;
		%feature("autodoc", "1");
		Standard_Address RValues() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_PolyInternalNode {
	Handle_HLRAlgo_PolyInternalNode GetHandle() {
	return *(Handle_HLRAlgo_PolyInternalNode*) &$self;
	}
};
%extend HLRAlgo_PolyInternalNode {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_PolyInternalNode::~HLRAlgo_PolyInternalNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyInternalNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Array1OfPINod;
class HLRAlgo_Array1OfPINod {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPINod(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPINod(const Handle_HLRAlgo_PolyInternalNode &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_HLRAlgo_PolyInternalNode &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPINod & Assign(const HLRAlgo_Array1OfPINod &Other);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPINod & operator=(const HLRAlgo_Array1OfPINod &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_HLRAlgo_PolyInternalNode &Value);
		%feature("autodoc", "1");
		const Handle_HLRAlgo_PolyInternalNode & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_HLRAlgo_PolyInternalNode & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRAlgo_Array1OfPINod::~HLRAlgo_Array1OfPINod %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Array1OfPINod {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Projector;
class HLRAlgo_Projector {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Projector();
		%feature("autodoc", "1");
		HLRAlgo_Projector(const gp_Ax2 CS);
		%feature("autodoc", "1");
		HLRAlgo_Projector(const gp_Ax2 CS, const Standard_Real Focus);
		%feature("autodoc", "1");
		HLRAlgo_Projector(const gp_Trsf T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		HLRAlgo_Projector(const gp_Trsf T, const Standard_Boolean Persp, const Standard_Real Focus, const gp_Vec2d v1, const gp_Vec2d v2, const gp_Vec2d v3);
		%feature("autodoc", "1");
		void Set(const gp_Trsf T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		void Directions(gp_Vec2d & D1, gp_Vec2d & D2, gp_Vec2d & D3) const;
		%feature("autodoc", "1");
		void Scaled(const Standard_Boolean On=0);
		%feature("autodoc", "1");
		Standard_Boolean Perspective() const;
		%feature("autodoc", "1");
		const gp_Trsf  Transformation() const;
		%feature("autodoc", "1");
		const gp_Trsf  InvertedTransformation() const;
		%feature("autodoc", "1");
		const gp_Trsf  FullTransformation() const;
		%feature("autodoc", "1");
		Standard_Real Focus() const;
		%feature("autodoc", "1");
		void Transform(gp_Vec & D) const;
		%feature("autodoc", "1");
		void Transform(gp_Pnt & Pnt) const;
		%feature("autodoc", "1");
		void Project(const gp_Pnt P, gp_Pnt2d & Pout) const;
		%feature("autodoc","Project(const P) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Project(const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Project(const gp_Pnt P, const gp_Vec D1, gp_Pnt2d & Pout, gp_Vec2d & D1out) const;
		%feature("autodoc", "1");
		gp_Lin Shoot(const Standard_Real X, const Standard_Real Y) const;

};
%feature("shadow") HLRAlgo_Projector::~HLRAlgo_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_EdgeIterator;
class HLRAlgo_EdgeIterator {
	public:
		%feature("autodoc", "1");
		HLRAlgo_EdgeIterator();
		%feature("autodoc", "1");
		void InitHidden(const HLRAlgo_EdgeStatus &status);
		%feature("autodoc", "1");
		Standard_Boolean MoreHidden() const;
		%feature("autodoc", "1");
		void NextHidden();
		%feature("autodoc","Hidden() -> [Standard_Real, Standard_Real]");

		void Hidden(Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd) const;
		%feature("autodoc", "1");
		void InitVisible(const HLRAlgo_EdgeStatus &status);
		%feature("autodoc", "1");
		Standard_Boolean MoreVisible() const;
		%feature("autodoc", "1");
		void NextVisible();
		%feature("autodoc","Visible() -> [Standard_Real, Standard_Real]");

		void Visible(Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd);

};
%feature("shadow") HLRAlgo_EdgeIterator::~HLRAlgo_EdgeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_EdgeIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_BiPoint;
class HLRAlgo_BiPoint {
	public:
		%feature("autodoc", "1");
		HLRAlgo_BiPoint();
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Boolean reg1, const Standard_Boolean regn, const Standard_Boolean outl, const Standard_Boolean intl);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Boolean flag);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Integer i1, const Standard_Integer i1p1, const Standard_Integer i1p2, const Standard_Boolean reg1, const Standard_Boolean regn, const Standard_Boolean outl, const Standard_Boolean intl);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Integer i1, const Standard_Integer i1p1, const Standard_Integer i1p2, const Standard_Boolean flag);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Integer i1, const Standard_Integer i1p1, const Standard_Integer i1p2, const Standard_Integer i2, const Standard_Integer i2p1, const Standard_Integer i2p2, const Standard_Boolean reg1, const Standard_Boolean regn, const Standard_Boolean outl, const Standard_Boolean intl);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Real XT1, const Standard_Real YT1, const Standard_Real ZT1, const Standard_Real XT2, const Standard_Real YT2, const Standard_Real ZT2, const Standard_Integer Index, const Standard_Integer i1, const Standard_Integer i1p1, const Standard_Integer i1p2, const Standard_Integer i2, const Standard_Integer i2p1, const Standard_Integer i2p2, const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Rg1Line() const;
		%feature("autodoc", "1");
		void Rg1Line(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean RgNLine() const;
		%feature("autodoc", "1");
		void RgNLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean OutLine() const;
		%feature("autodoc", "1");
		void OutLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IntLine() const;
		%feature("autodoc", "1");
		void IntLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Hidden() const;
		%feature("autodoc", "1");
		void Hidden(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Address Indices() const;
		%feature("autodoc", "1");
		Standard_Address Coordinates() const;

};
%feature("shadow") HLRAlgo_BiPoint::~HLRAlgo_BiPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_BiPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyInternalSegment;
class HLRAlgo_PolyInternalSegment {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalSegment();
		%feature("autodoc", "1");
		Standard_Address Indices() const;

};
%feature("shadow") HLRAlgo_PolyInternalSegment::~HLRAlgo_PolyInternalSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyInternalSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_EdgesBlock;
class HLRAlgo_EdgesBlock : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_EdgesBlock(const Standard_Integer NbEdges);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		void Edge(const Standard_Integer I, const Standard_Integer EI);
		%feature("autodoc", "1");
		Standard_Integer Edge(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void Orientation(const Standard_Integer I, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean OutLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void OutLine(const Standard_Integer I, const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Internal(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void Internal(const Standard_Integer I, const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Double(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void Double(const Standard_Integer I, const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IsoLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void IsoLine(const Standard_Integer I, const Standard_Boolean B);
		%feature("autodoc", "1");
		void UpdateMinMax(const Standard_Address TotMinMax);
		%feature("autodoc", "1");
		Standard_Address MinMax() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_EdgesBlock {
	Handle_HLRAlgo_EdgesBlock GetHandle() {
	return *(Handle_HLRAlgo_EdgesBlock*) &$self;
	}
};
%extend HLRAlgo_EdgesBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_EdgesBlock::~HLRAlgo_EdgesBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_EdgesBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_ListNodeOfListOfBPoint;
class HLRAlgo_ListNodeOfListOfBPoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRAlgo_ListNodeOfListOfBPoint(const HLRAlgo_BiPoint &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_ListNodeOfListOfBPoint {
	Handle_HLRAlgo_ListNodeOfListOfBPoint GetHandle() {
	return *(Handle_HLRAlgo_ListNodeOfListOfBPoint*) &$self;
	}
};
%extend HLRAlgo_ListNodeOfListOfBPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_ListNodeOfListOfBPoint::~HLRAlgo_ListNodeOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_ListNodeOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Array1OfTData;
class HLRAlgo_Array1OfTData {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Array1OfTData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_Array1OfTData(const HLRAlgo_TriangleData &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_TriangleData &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfTData & Assign(const HLRAlgo_Array1OfTData &Other);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfTData & operator=(const HLRAlgo_Array1OfTData &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_TriangleData &Value);
		%feature("autodoc", "1");
		const HLRAlgo_TriangleData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRAlgo_TriangleData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_TriangleData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRAlgo_TriangleData & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRAlgo_Array1OfTData::~HLRAlgo_Array1OfTData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Array1OfTData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyHidingData;
class HLRAlgo_PolyHidingData {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyHidingData();
		%feature("autodoc", "1");
		void Set(const Standard_Integer Index, const Standard_Integer Minim, const Standard_Integer Maxim, const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Address IndexAndMinMax() const;
		%feature("autodoc", "1");
		Standard_Address Plan() const;

};
%feature("shadow") HLRAlgo_PolyHidingData::~HLRAlgo_PolyHidingData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyHidingData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_ListNodeOfInterferenceList;
class HLRAlgo_ListNodeOfInterferenceList : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRAlgo_ListNodeOfInterferenceList(const HLRAlgo_Interference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		HLRAlgo_Interference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_ListNodeOfInterferenceList {
	Handle_HLRAlgo_ListNodeOfInterferenceList GetHandle() {
	return *(Handle_HLRAlgo_ListNodeOfInterferenceList*) &$self;
	}
};
%extend HLRAlgo_ListNodeOfInterferenceList {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_ListNodeOfInterferenceList::~HLRAlgo_ListNodeOfInterferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_ListNodeOfInterferenceList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_WiresBlock;
class HLRAlgo_WiresBlock : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_WiresBlock(const Standard_Integer NbWires);
		%feature("autodoc", "1");
		Standard_Integer NbWires() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer I, const Handle_HLRAlgo_EdgesBlock &W);
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock & Wire(const Standard_Integer I);
		%feature("autodoc", "1");
		void UpdateMinMax(const Standard_Address TotMinMax);
		%feature("autodoc", "1");
		Standard_Address MinMax() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_WiresBlock {
	Handle_HLRAlgo_WiresBlock GetHandle() {
	return *(Handle_HLRAlgo_WiresBlock*) &$self;
	}
};
%extend HLRAlgo_WiresBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_WiresBlock::~HLRAlgo_WiresBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_WiresBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyAlgo;
class HLRAlgo_PolyAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyAlgo();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfTransient &HShell);
		%feature("autodoc", "1");
		TColStd_Array1OfTransient & PolyShell() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		void InitHide();
		%feature("autodoc", "1");
		Standard_Boolean MoreHide() const;
		%feature("autodoc", "1");
		void NextHide();
		%feature("autodoc","Hide() -> Standard_Integer");

		void Hide(Standard_Address & Coordinates, HLRAlgo_EdgeStatus & status, Standard_Integer &OutValue, Standard_Boolean & reg1, Standard_Boolean & regn, Standard_Boolean & outl, Standard_Boolean & intl);
		%feature("autodoc", "1");
		void InitShow();
		%feature("autodoc", "1");
		Standard_Boolean MoreShow() const;
		%feature("autodoc", "1");
		void NextShow();
		%feature("autodoc","Show() -> Standard_Integer");

		void Show(Standard_Address & Coordinates, Standard_Integer &OutValue, Standard_Boolean & reg1, Standard_Boolean & regn, Standard_Boolean & outl, Standard_Boolean & intl);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_PolyAlgo {
	Handle_HLRAlgo_PolyAlgo GetHandle() {
	return *(Handle_HLRAlgo_PolyAlgo*) &$self;
	}
};
%extend HLRAlgo_PolyAlgo {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_PolyAlgo::~HLRAlgo_PolyAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyShellData;
class HLRAlgo_PolyShellData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyShellData(const Standard_Integer nbFace);
		%feature("autodoc", "1");
		void UpdateGlobalMinMax(const Standard_Address TotMinMax);
		%feature("autodoc", "1");
		void UpdateHiding(const Standard_Integer nbHiding);
		%feature("autodoc", "1");
		Standard_Boolean Hiding() const;
		%feature("autodoc", "1");
		TColStd_Array1OfTransient & PolyData();
		%feature("autodoc", "1");
		TColStd_Array1OfTransient & HidingPolyData();
		%feature("autodoc", "1");
		HLRAlgo_ListOfBPoint & Edges();
		%feature("autodoc", "1");
		Standard_Address Indices();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_PolyShellData {
	Handle_HLRAlgo_PolyShellData GetHandle() {
	return *(Handle_HLRAlgo_PolyShellData*) &$self;
	}
};
%extend HLRAlgo_PolyShellData {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_PolyShellData::~HLRAlgo_PolyShellData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyShellData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Array1OfPISeg;
class HLRAlgo_Array1OfPISeg {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPISeg(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPISeg(const HLRAlgo_PolyInternalSegment &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_PolyInternalSegment &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPISeg & Assign(const HLRAlgo_Array1OfPISeg &Other);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPISeg & operator=(const HLRAlgo_Array1OfPISeg &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_PolyInternalSegment &Value);
		%feature("autodoc", "1");
		const HLRAlgo_PolyInternalSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRAlgo_PolyInternalSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalSegment & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRAlgo_Array1OfPISeg::~HLRAlgo_Array1OfPISeg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Array1OfPISeg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyData;
class HLRAlgo_PolyData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyData();
		%feature("autodoc", "1");
		void HNodes(const Handle_TColgp_HArray1OfXYZ &HNodes);
		%feature("autodoc", "1");
		void HTData(const Handle_HLRAlgo_HArray1OfTData &HTData);
		%feature("autodoc", "1");
		void HPHDat(const Handle_HLRAlgo_HArray1OfPHDat &HPHDat);
		%feature("autodoc", "1");
		void FaceIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FaceIndex() const;
		%feature("autodoc", "1");
		TColgp_Array1OfXYZ & Nodes() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfTData & TData() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPHDat & PHDat() const;
		%feature("autodoc", "1");
		void UpdateGlobalMinMax(const Standard_Address ToTMinMax);
		%feature("autodoc", "1");
		Standard_Boolean Hiding() const;
		%feature("autodoc", "1");
		void HideByPolyData(const Standard_Address Coordinates, const Standard_Address RealPtr, const Standard_Address Indices, const Standard_Boolean HidingShell, HLRAlgo_EdgeStatus & status);
		%feature("autodoc", "1");
		Standard_Address Indices();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_PolyData {
	Handle_HLRAlgo_PolyData GetHandle() {
	return *(Handle_HLRAlgo_PolyData*) &$self;
	}
};
%extend HLRAlgo_PolyData {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_PolyData::~HLRAlgo_PolyData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_ListIteratorOfListOfBPoint;
class HLRAlgo_ListIteratorOfListOfBPoint {
	public:
		%feature("autodoc", "1");
		HLRAlgo_ListIteratorOfListOfBPoint();
		%feature("autodoc", "1");
		HLRAlgo_ListIteratorOfListOfBPoint(const HLRAlgo_ListOfBPoint &L);
		%feature("autodoc", "1");
		void Initialize(const HLRAlgo_ListOfBPoint &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		HLRAlgo_BiPoint & Value() const;

};
%feature("shadow") HLRAlgo_ListIteratorOfListOfBPoint::~HLRAlgo_ListIteratorOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_ListIteratorOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Interference;
class HLRAlgo_Interference {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Interference();
		%feature("autodoc", "1");
		HLRAlgo_Interference(const HLRAlgo_Intersection &Inters, const HLRAlgo_Coincidence &Bound, const TopAbs_Orientation Orient, const TopAbs_Orientation Trans, const TopAbs_Orientation BTrans);
		%feature("autodoc", "1");
		void Intersection(const HLRAlgo_Intersection &I);
		%feature("autodoc", "1");
		void Boundary(const HLRAlgo_Coincidence &B);
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		void Transition(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		void BoundaryTransition(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		const HLRAlgo_Intersection & Intersection() const;
		%feature("autodoc", "1");
		HLRAlgo_Intersection & ChangeIntersection();
		%feature("autodoc", "1");
		const HLRAlgo_Coincidence & Boundary() const;
		%feature("autodoc", "1");
		HLRAlgo_Coincidence & ChangeBoundary();
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		TopAbs_Orientation BoundaryTransition() const;

};
%feature("shadow") HLRAlgo_Interference::~HLRAlgo_Interference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Interference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_HArray1OfPHDat;
class HLRAlgo_HArray1OfPHDat : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPHDat(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPHDat(const Standard_Integer Low, const Standard_Integer Up, const HLRAlgo_PolyHidingData &V);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_PolyHidingData &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_PolyHidingData &Value);
		%feature("autodoc", "1");
		const HLRAlgo_PolyHidingData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_PolyHidingData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPHDat & Array1() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPHDat & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_HArray1OfPHDat {
	Handle_HLRAlgo_HArray1OfPHDat GetHandle() {
	return *(Handle_HLRAlgo_HArray1OfPHDat*) &$self;
	}
};
%extend HLRAlgo_HArray1OfPHDat {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_HArray1OfPHDat::~HLRAlgo_HArray1OfPHDat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_HArray1OfPHDat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_ListOfBPoint;
class HLRAlgo_ListOfBPoint {
	public:
		%feature("autodoc", "1");
		HLRAlgo_ListOfBPoint();
		%feature("autodoc", "1");
		void Assign(const HLRAlgo_ListOfBPoint &Other);
		%feature("autodoc", "1");
		void operator=(const HLRAlgo_ListOfBPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const HLRAlgo_BiPoint &I);
		%feature("autodoc", "1");
		void Prepend(const HLRAlgo_BiPoint &I, HLRAlgo_ListIteratorOfListOfBPoint & theIt);
		%feature("autodoc", "1");
		void Prepend(HLRAlgo_ListOfBPoint & Other);
		%feature("autodoc", "1");
		void Append(const HLRAlgo_BiPoint &I);
		%feature("autodoc", "1");
		void Append(const HLRAlgo_BiPoint &I, HLRAlgo_ListIteratorOfListOfBPoint & theIt);
		%feature("autodoc", "1");
		void Append(HLRAlgo_ListOfBPoint & Other);
		%feature("autodoc", "1");
		HLRAlgo_BiPoint & First() const;
		%feature("autodoc", "1");
		HLRAlgo_BiPoint & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(HLRAlgo_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertBefore(const HLRAlgo_BiPoint &I, HLRAlgo_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertBefore(HLRAlgo_ListOfBPoint & Other, HLRAlgo_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertAfter(const HLRAlgo_BiPoint &I, HLRAlgo_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertAfter(HLRAlgo_ListOfBPoint & Other, HLRAlgo_ListIteratorOfListOfBPoint & It);

};
%feature("shadow") HLRAlgo_ListOfBPoint::~HLRAlgo_ListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_ListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_HArray1OfPINod;
class HLRAlgo_HArray1OfPINod : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPINod(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfPINod(const Standard_Integer Low, const Standard_Integer Up, const Handle_HLRAlgo_PolyInternalNode &V);
		%feature("autodoc", "1");
		void Init(const Handle_HLRAlgo_PolyInternalNode &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_HLRAlgo_PolyInternalNode &Value);
		%feature("autodoc", "1");
		const Handle_HLRAlgo_PolyInternalNode & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyInternalNode & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfPINod & Array1() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPINod & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_HArray1OfPINod {
	Handle_HLRAlgo_HArray1OfPINod GetHandle() {
	return *(Handle_HLRAlgo_HArray1OfPINod*) &$self;
	}
};
%extend HLRAlgo_HArray1OfPINod {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_HArray1OfPINod::~HLRAlgo_HArray1OfPINod %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_HArray1OfPINod {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Intersection;
class HLRAlgo_Intersection {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Intersection();
		%feature("autodoc", "1");
		HLRAlgo_Intersection(const TopAbs_Orientation Ori, const Standard_Integer Lev, const Standard_Integer SegInd, const Standard_Integer Ind, const Standard_Real P, const Standard_ShortReal Tol, const TopAbs_State S);
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Ori);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Level(const Standard_Integer Lev);
		%feature("autodoc", "1");
		Standard_Integer Level() const;
		%feature("autodoc", "1");
		void SegIndex(const Standard_Integer SegInd);
		%feature("autodoc", "1");
		Standard_Integer SegIndex() const;
		%feature("autodoc", "1");
		void Index(const Standard_Integer Ind);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_ShortReal T);
		%feature("autodoc", "1");
		Standard_ShortReal Tolerance() const;
		%feature("autodoc", "1");
		void State(const TopAbs_State St);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%feature("shadow") HLRAlgo_Intersection::~HLRAlgo_Intersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Intersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_PolyInternalData;
class HLRAlgo_PolyInternalData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_PolyInternalData(const Standard_Integer nbNod, const Standard_Integer nbTri);
		%feature("autodoc", "1");
		void UpdateLinks(Standard_Address & TData, Standard_Address & PISeg, Standard_Address & PINod);
		%feature("autodoc", "1");
		Standard_Integer AddNode(const Standard_Address Nod1RValues, const Standard_Address Nod2RValues, Standard_Address & PINod1, Standard_Address & PINod2, const Standard_Real coef1, const Standard_Real X3, const Standard_Real Y3, const Standard_Real Z3);
		%feature("autodoc", "1");
		void UpdateLinks(const Standard_Integer ip1, const Standard_Integer ip2, const Standard_Integer ip3, Standard_Address & TData1, Standard_Address & TData2, Standard_Address & PISeg1, Standard_Address & PISeg2, Standard_Address & PINod1, Standard_Address & PINod2);
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void IncTData(Standard_Address & TData1, Standard_Address & TData2);
		%feature("autodoc", "1");
		void IncPISeg(Standard_Address & PISeg1, Standard_Address & PISeg2);
		%feature("autodoc", "1");
		void IncPINod(Standard_Address & PINod1, Standard_Address & PINod2);
		%feature("autodoc", "1");
		void DecTData();
		%feature("autodoc", "1");
		void DecPISeg();
		%feature("autodoc", "1");
		void DecPINod();
		%feature("autodoc", "1");
		Standard_Integer NbTData() const;
		%feature("autodoc", "1");
		Standard_Integer NbPISeg() const;
		%feature("autodoc", "1");
		Standard_Integer NbPINod() const;
		%feature("autodoc", "1");
		Standard_Boolean Planar() const;
		%feature("autodoc", "1");
		void Planar(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IntOutL() const;
		%feature("autodoc", "1");
		void IntOutL(const Standard_Boolean B);
		%feature("autodoc", "1");
		HLRAlgo_Array1OfTData & TData() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPISeg & PISeg() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfPINod & PINod() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_PolyInternalData {
	Handle_HLRAlgo_PolyInternalData GetHandle() {
	return *(Handle_HLRAlgo_PolyInternalData*) &$self;
	}
};
%extend HLRAlgo_PolyInternalData {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_PolyInternalData::~HLRAlgo_PolyInternalData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_PolyInternalData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_TriangleData;
class HLRAlgo_TriangleData {
	public:
		%feature("autodoc", "1");
		HLRAlgo_TriangleData();
		%feature("autodoc", "1");
		Standard_Address Indices() const;

};
%feature("shadow") HLRAlgo_TriangleData::~HLRAlgo_TriangleData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_TriangleData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo;
class HLRAlgo {
	public:
		%feature("autodoc", "1");
		HLRAlgo();
		%feature("autodoc", "1");
		static		void UpdateMinMax(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Address Min, const Standard_Address Max);
		%feature("autodoc", "1");
		static		void EnlargeMinMax(const Standard_Real tol, const Standard_Address Min, const Standard_Address Max);
		%feature("autodoc", "1");
		static		void InitMinMax(const Standard_Real Big, const Standard_Address Min, const Standard_Address Max);
		%feature("autodoc", "1");
		static		void EncodeMinMax(const Standard_Address Min, const Standard_Address Max, const Standard_Address MinMax);
		%feature("autodoc", "1");
		static		Standard_Real SizeBox(const Standard_Address Min, const Standard_Address Max);
		%feature("autodoc", "1");
		static		void DecodeMinMax(const Standard_Address MinMax, const Standard_Address Min, const Standard_Address Max);
		%feature("autodoc", "1");
		static		void CopyMinMax(const Standard_Address IMin, const Standard_Address IMax, const Standard_Address OMin, const Standard_Address OMax);
		%feature("autodoc", "1");
		static		void AddMinMax(const Standard_Address IMin, const Standard_Address IMax, const Standard_Address OMin, const Standard_Address OMax);

};
%feature("shadow") HLRAlgo::~HLRAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_HArray1OfTData;
class HLRAlgo_HArray1OfTData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfTData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRAlgo_HArray1OfTData(const Standard_Integer Low, const Standard_Integer Up, const HLRAlgo_TriangleData &V);
		%feature("autodoc", "1");
		void Init(const HLRAlgo_TriangleData &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRAlgo_TriangleData &Value);
		%feature("autodoc", "1");
		const HLRAlgo_TriangleData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRAlgo_TriangleData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const HLRAlgo_Array1OfTData & Array1() const;
		%feature("autodoc", "1");
		HLRAlgo_Array1OfTData & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRAlgo_HArray1OfTData {
	Handle_HLRAlgo_HArray1OfTData GetHandle() {
	return *(Handle_HLRAlgo_HArray1OfTData*) &$self;
	}
};
%extend HLRAlgo_HArray1OfTData {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") HLRAlgo_HArray1OfTData::~HLRAlgo_HArray1OfTData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_HArray1OfTData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_EdgeStatus;
class HLRAlgo_EdgeStatus {
	public:
		%feature("autodoc", "1");
		HLRAlgo_EdgeStatus();
		%feature("autodoc", "1");
		HLRAlgo_EdgeStatus(const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		void Initialize(const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		void Bounds(Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd) const;
		%feature("autodoc", "1");
		Standard_Integer NbVisiblePart() const;
		%feature("autodoc","VisiblePart(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void VisiblePart(const Standard_Integer Index, Standard_Real &OutValue, Standard_ShortReal & TolStart, Standard_Real &OutValue, Standard_ShortReal & TolEnd) const;
		%feature("autodoc", "1");
		void Hide(const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd, const Standard_Boolean OnFace, const Standard_Boolean OnBoundary);
		%feature("autodoc", "1");
		void HideAll();
		%feature("autodoc", "1");
		void ShowAll();
		%feature("autodoc", "1");
		Standard_Boolean AllHidden() const;
		%feature("autodoc", "1");
		void AllHidden(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean AllVisible() const;
		%feature("autodoc", "1");
		void AllVisible(const Standard_Boolean B);

};
%feature("shadow") HLRAlgo_EdgeStatus::~HLRAlgo_EdgeStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_EdgeStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_Coincidence;
class HLRAlgo_Coincidence {
	public:
		%feature("autodoc", "1");
		HLRAlgo_Coincidence();
		%feature("autodoc", "1");
		void Set2D(const Standard_Integer FE, const Standard_Real Param);
		%feature("autodoc", "1");
		void SetState3D(const TopAbs_State stbef, const TopAbs_State staft);
		%feature("autodoc","Value2D() -> [Standard_Integer, Standard_Real]");

		void Value2D(Standard_Integer &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void State3D(TopAbs_State & stbef, TopAbs_State & staft) const;

};
%feature("shadow") HLRAlgo_Coincidence::~HLRAlgo_Coincidence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_Coincidence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRAlgo_InterferenceList;
class HLRAlgo_InterferenceList {
	public:
		%feature("autodoc", "1");
		HLRAlgo_InterferenceList();
		%feature("autodoc", "1");
		void Assign(const HLRAlgo_InterferenceList &Other);
		%feature("autodoc", "1");
		void operator=(const HLRAlgo_InterferenceList &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const HLRAlgo_Interference &I);
		%feature("autodoc", "1");
		void Prepend(const HLRAlgo_Interference &I, HLRAlgo_ListIteratorOfInterferenceList & theIt);
		%feature("autodoc", "1");
		void Prepend(HLRAlgo_InterferenceList & Other);
		%feature("autodoc", "1");
		void Append(const HLRAlgo_Interference &I);
		%feature("autodoc", "1");
		void Append(const HLRAlgo_Interference &I, HLRAlgo_ListIteratorOfInterferenceList & theIt);
		%feature("autodoc", "1");
		void Append(HLRAlgo_InterferenceList & Other);
		%feature("autodoc", "1");
		HLRAlgo_Interference & First() const;
		%feature("autodoc", "1");
		HLRAlgo_Interference & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(HLRAlgo_ListIteratorOfInterferenceList & It);
		%feature("autodoc", "1");
		void InsertBefore(const HLRAlgo_Interference &I, HLRAlgo_ListIteratorOfInterferenceList & It);
		%feature("autodoc", "1");
		void InsertBefore(HLRAlgo_InterferenceList & Other, HLRAlgo_ListIteratorOfInterferenceList & It);
		%feature("autodoc", "1");
		void InsertAfter(const HLRAlgo_Interference &I, HLRAlgo_ListIteratorOfInterferenceList & It);
		%feature("autodoc", "1");
		void InsertAfter(HLRAlgo_InterferenceList & Other, HLRAlgo_ListIteratorOfInterferenceList & It);

};
%feature("shadow") HLRAlgo_InterferenceList::~HLRAlgo_InterferenceList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRAlgo_InterferenceList {
	void _kill_pointed() {
		delete $self;
	}
};
