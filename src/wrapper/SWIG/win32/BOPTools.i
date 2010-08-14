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
%module BOPTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BOPTools_dependencies.i


%include BOPTools_headers.i

typedef BOPTools_InterferencePool * BOPTools_PInterferencePool;
typedef BOPTools_DSFiller * BOPTools_PDSFiller;
typedef BOPTools_ShapeShapeInterference * BOPTools_PShapeShapeInterference;
typedef BOPTools_PaveFiller * BOPTools_PPaveFiller;

enum BOPTools_IntersectionStatus {
	BOPTools_INTERSECTED,
	BOPTools_BOUNDINGBOXINTERSECTED,
	BOPTools_BOUNDINGBOXOFSUBSHAPESINTERSECTED,
	BOPTools_NONINTERSECTED,
	BOPTools_UNKNOWN,
	};

enum BOPTools_CheckStatus {
	BOPTools_CHKUNKNOWN,
	BOPTools_VERTEXVERTEX,
	BOPTools_VERTEXEDGE,
	BOPTools_VERTEXFACE,
	BOPTools_EDGEEDGE,
	BOPTools_EDGEEDGECOMBLK,
	BOPTools_EDGEFACE,
	BOPTools_EDGEFACECOMBLK,
	BOPTools_FACEFACE,
	BOPTools_BADSHRANKRANGE,
	BOPTools_NULLSRANKRANGE,
	};



%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState;
class Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState & operator=(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState {
	BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState::~Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock;
class Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock(const Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock(const BOPTools_IndexedMapNodeOfIMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock & operator=(const Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock & operator=(const BOPTools_IndexedMapNodeOfIMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock {
	BOPTools_IndexedMapNodeOfIMapOfPaveBlock* GetObject() {
	return (BOPTools_IndexedMapNodeOfIMapOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock::~Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger;
class Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger(const Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger(const BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger & operator=(const BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger {
	BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger::~Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfCommonBlock;
class Handle_BOPTools_ListNodeOfListOfCommonBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCommonBlock();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCommonBlock(const Handle_BOPTools_ListNodeOfListOfCommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCommonBlock(const BOPTools_ListNodeOfListOfCommonBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCommonBlock & operator=(const Handle_BOPTools_ListNodeOfListOfCommonBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCommonBlock & operator=(const BOPTools_ListNodeOfListOfCommonBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfCommonBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfCommonBlock {
	BOPTools_ListNodeOfListOfCommonBlock* GetObject() {
	return (BOPTools_ListNodeOfListOfCommonBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfCommonBlock::~Handle_BOPTools_ListNodeOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfCheckResults;
class Handle_BOPTools_ListNodeOfListOfCheckResults : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCheckResults();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCheckResults(const Handle_BOPTools_ListNodeOfListOfCheckResults &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCheckResults(const BOPTools_ListNodeOfListOfCheckResults *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCheckResults & operator=(const Handle_BOPTools_ListNodeOfListOfCheckResults &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCheckResults & operator=(const BOPTools_ListNodeOfListOfCheckResults *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfCheckResults const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfCheckResults {
	BOPTools_ListNodeOfListOfCheckResults* GetObject() {
	return (BOPTools_ListNodeOfListOfCheckResults*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfCheckResults::~Handle_BOPTools_ListNodeOfListOfCheckResults %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfCheckResults {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet;
class Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet & operator=(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet {
	BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet::~Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfInterference;
class Handle_BOPTools_ListNodeOfListOfInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfInterference();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfInterference(const Handle_BOPTools_ListNodeOfListOfInterference &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfInterference(const BOPTools_ListNodeOfListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfInterference & operator=(const Handle_BOPTools_ListNodeOfListOfInterference &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfInterference & operator=(const BOPTools_ListNodeOfListOfInterference *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfInterference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfInterference {
	BOPTools_ListNodeOfListOfInterference* GetObject() {
	return (BOPTools_ListNodeOfListOfInterference*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfInterference::~Handle_BOPTools_ListNodeOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock;
class Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock(const Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock(const BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock & operator=(const BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock {
	BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock::~Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_SequenceNodeOfSequenceOfCurves;
class Handle_BOPTools_SequenceNodeOfSequenceOfCurves : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfCurves();
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfCurves(const Handle_BOPTools_SequenceNodeOfSequenceOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfCurves(const BOPTools_SequenceNodeOfSequenceOfCurves *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfCurves & operator=(const Handle_BOPTools_SequenceNodeOfSequenceOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfCurves & operator=(const BOPTools_SequenceNodeOfSequenceOfCurves *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_SequenceNodeOfSequenceOfCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_SequenceNodeOfSequenceOfCurves {
	BOPTools_SequenceNodeOfSequenceOfCurves* GetObject() {
	return (BOPTools_SequenceNodeOfSequenceOfCurves*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_SequenceNodeOfSequenceOfCurves::~Handle_BOPTools_SequenceNodeOfSequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_SequenceNodeOfSequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo;
class Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo & operator=(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo {
	BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo::~Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_HArray2OfIntersectionStatus;
class Handle_BOPTools_HArray2OfIntersectionStatus : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_HArray2OfIntersectionStatus();
		%feature("autodoc", "1");
		Handle_BOPTools_HArray2OfIntersectionStatus(const Handle_BOPTools_HArray2OfIntersectionStatus &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_HArray2OfIntersectionStatus(const BOPTools_HArray2OfIntersectionStatus *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_HArray2OfIntersectionStatus & operator=(const Handle_BOPTools_HArray2OfIntersectionStatus &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_HArray2OfIntersectionStatus & operator=(const BOPTools_HArray2OfIntersectionStatus *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_HArray2OfIntersectionStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_HArray2OfIntersectionStatus {
	BOPTools_HArray2OfIntersectionStatus* GetObject() {
	return (BOPTools_HArray2OfIntersectionStatus*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_HArray2OfIntersectionStatus::~Handle_BOPTools_HArray2OfIntersectionStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_HArray2OfIntersectionStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfPaveBlock;
class Handle_BOPTools_ListNodeOfListOfPaveBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPaveBlock();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPaveBlock(const Handle_BOPTools_ListNodeOfListOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPaveBlock(const BOPTools_ListNodeOfListOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPaveBlock & operator=(const Handle_BOPTools_ListNodeOfListOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPaveBlock & operator=(const BOPTools_ListNodeOfListOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfPaveBlock {
	BOPTools_ListNodeOfListOfPaveBlock* GetObject() {
	return (BOPTools_ListNodeOfListOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfPaveBlock::~Handle_BOPTools_ListNodeOfListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfShapeEnum;
class Handle_BOPTools_ListNodeOfListOfShapeEnum : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfShapeEnum();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfShapeEnum(const Handle_BOPTools_ListNodeOfListOfShapeEnum &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfShapeEnum(const BOPTools_ListNodeOfListOfShapeEnum *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfShapeEnum & operator=(const Handle_BOPTools_ListNodeOfListOfShapeEnum &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfShapeEnum & operator=(const BOPTools_ListNodeOfListOfShapeEnum *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfShapeEnum const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfShapeEnum {
	BOPTools_ListNodeOfListOfShapeEnum* GetObject() {
	return (BOPTools_ListNodeOfListOfShapeEnum*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfShapeEnum::~Handle_BOPTools_ListNodeOfListOfShapeEnum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfShapeEnum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger;
class Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger(const Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger(const BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger & operator=(const Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger & operator=(const BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger {
	BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger* GetObject() {
	return (BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger::~Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfCoupleOfInteger;
class Handle_BOPTools_ListNodeOfListOfCoupleOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger(const Handle_BOPTools_ListNodeOfListOfCoupleOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger(const BOPTools_ListNodeOfListOfCoupleOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger & operator=(const Handle_BOPTools_ListNodeOfListOfCoupleOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger & operator=(const BOPTools_ListNodeOfListOfCoupleOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfCoupleOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfCoupleOfInteger {
	BOPTools_ListNodeOfListOfCoupleOfInteger* GetObject() {
	return (BOPTools_ListNodeOfListOfCoupleOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfCoupleOfInteger::~Handle_BOPTools_ListNodeOfListOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock;
class Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock();
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock(const Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock(const BOPTools_SequenceNodeOfSequenceOfPaveBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock & operator=(const Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock & operator=(const BOPTools_SequenceNodeOfSequenceOfPaveBlock *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock {
	BOPTools_SequenceNodeOfSequenceOfPaveBlock* GetObject() {
	return (BOPTools_SequenceNodeOfSequenceOfPaveBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock::~Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState;
class Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState();
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState & operator=(const Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState & operator=(const BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState* GetObject() {
	return (BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::~Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOPTools_ListNodeOfListOfPave;
class Handle_BOPTools_ListNodeOfListOfPave : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPave();
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPave(const Handle_BOPTools_ListNodeOfListOfPave &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPave(const BOPTools_ListNodeOfListOfPave *anItem);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPave & operator=(const Handle_BOPTools_ListNodeOfListOfPave &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTools_ListNodeOfListOfPave & operator=(const BOPTools_ListNodeOfListOfPave *anItem);
		%feature("autodoc", "1");
		static		Handle_BOPTools_ListNodeOfListOfPave const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTools_ListNodeOfListOfPave {
	BOPTools_ListNodeOfListOfPave* GetObject() {
	return (BOPTools_ListNodeOfListOfPave*)$self->Access();
	}
};
%feature("shadow") Handle_BOPTools_ListNodeOfListOfPave::~Handle_BOPTools_ListNodeOfListOfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOPTools_ListNodeOfListOfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Interference;
class BOPTools_Interference {
	public:
		%feature("autodoc", "1");
		BOPTools_Interference();
		%feature("autodoc", "1");
		BOPTools_Interference(const Standard_Integer aWith, const BooleanOperations_KindOfInterference aType, const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetWith(const Standard_Integer aWith);
		%feature("autodoc", "1");
		void SetType(const BooleanOperations_KindOfInterference aType);
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Integer With() const;
		%feature("autodoc", "1");
		BooleanOperations_KindOfInterference Type() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") BOPTools_Interference::~BOPTools_Interference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Interference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ShapeShapeInterference;
class BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_ShapeShapeInterference();
		%feature("autodoc", "1");
		BOPTools_ShapeShapeInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2);
		%feature("autodoc", "1");
		void SetIndex1(const Standard_Integer anIndex1);
		%feature("autodoc", "1");
		void SetIndex2(const Standard_Integer anIndex2);
		%feature("autodoc", "1");
		void SetNewShape(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Integer Index1() const;
		%feature("autodoc", "1");
		Standard_Integer Index2() const;
		%feature("autodoc","Indices() -> [Standard_Integer, Standard_Integer]");

		void Indices(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer OppositeIndex(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NewShape() const;

};
%feature("shadow") BOPTools_ShapeShapeInterference::~BOPTools_ShapeShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ShapeShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_VSInterference;
class BOPTools_VSInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_VSInterference();
		%feature("autodoc", "1");
		BOPTools_VSInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetUV(const Standard_Real U, const Standard_Real V);
		%feature("autodoc","UV() -> [Standard_Real, Standard_Real]");

		void UV(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BOPTools_VSInterference::~BOPTools_VSInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_VSInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfVEInterference;
class BOPTools_CArray1OfVEInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfVEInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_VEInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_VEInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_VEInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_VEInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_VEInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfVEInterference::~BOPTools_CArray1OfVEInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfVEInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SequenceNodeOfSequenceOfPaveBlock;
class BOPTools_SequenceNodeOfSequenceOfPaveBlock : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BOPTools_SequenceNodeOfSequenceOfPaveBlock(const BOPTools_PaveBlock &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_SequenceNodeOfSequenceOfPaveBlock {
	Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock GetHandle() {
	return *(Handle_BOPTools_SequenceNodeOfSequenceOfPaveBlock*) &$self;
	}
};
%extend BOPTools_SequenceNodeOfSequenceOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_SequenceNodeOfSequenceOfPaveBlock::~BOPTools_SequenceNodeOfSequenceOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SequenceNodeOfSequenceOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfInterferenceLine;
class BOPTools_CArray1OfInterferenceLine {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfInterferenceLine(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_InterferenceLine &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_InterferenceLine & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_InterferenceLine & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_InterferenceLine & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_InterferenceLine & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfInterferenceLine::~BOPTools_CArray1OfInterferenceLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfInterferenceLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Tools;
class BOPTools_Tools {
	public:
		%feature("autodoc", "1");
		BOPTools_Tools();
		%feature("autodoc", "1");
		static		void MakeNewVertex(const gp_Pnt &aP1, const Standard_Real aTol, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Vertex &aV1, const TopoDS_Vertex &aV2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Edge &aE1, const Standard_Real aP1, const TopoDS_Edge &aE2, const Standard_Real aP2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void MakeNewVertex(const TopoDS_Edge &aE1, const Standard_Real aP1, const TopoDS_Face &aF2, TopoDS_Vertex & aNewVertex);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge &aEdge, const Standard_Real aPrm, gp_Pnt & aP);
		%feature("autodoc", "1");
		static		void MakeSplitEdge(const TopoDS_Edge &aE1, const TopoDS_Vertex &aV1, const Standard_Real aP1, const TopoDS_Vertex &aV2, const Standard_Real aP2, TopoDS_Edge & aNewEdge);
		%feature("autodoc", "1");
		static		void MakeSectEdge(const IntTools_Curve &aIC, const TopoDS_Vertex &aV1, const Standard_Real aP1, const TopoDS_Vertex &aV2, const Standard_Real aP2, TopoDS_Edge & aNewEdge);
		%feature("autodoc", "1");
		static		void UpdateVertex(const IntTools_Curve &aIC, const Standard_Real aT, const TopoDS_Vertex &aV);
		%feature("autodoc", "1");
		static		void UpdateVertex(const TopoDS_Edge &aE, const Standard_Real aT, const TopoDS_Vertex &aV);
		%feature("autodoc", "1");
		static		void UpdateVertex(const TopoDS_Vertex &aVF, const TopoDS_Vertex &aVN);
		%feature("autodoc", "1");
		static		Standard_Boolean IsBlocksCoinside(const BOPTools_PaveBlock &aPB1, const BOPTools_PaveBlock &aPB2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsBlockInOnFace(const BOPTools_PaveBlock &aPB, const TopoDS_Face &aF, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape &aS, TopTools_IndexedMapOfShape & aM);
		%feature("autodoc", "1");
		static		void CorrectRange(const TopoDS_Edge &aE1, const TopoDS_Edge &aE2, const IntTools_Range &aSR, IntTools_Range & aNewSR);
		%feature("autodoc", "1");
		static		void CorrectRange(const TopoDS_Edge &aE, const TopoDS_Face &aF, const IntTools_Range &aSR, IntTools_Range & aNewSR);
		%feature("autodoc", "1");
		static		void CopySource(const TopoDS_Shape &aSourceShape, TopoDS_Shape & aDestShape);

};
%feature("shadow") BOPTools_Tools::~BOPTools_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfESInterference;
class BOPTools_CArray1OfESInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfESInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_ESInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_ESInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_ESInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_ESInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_ESInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfESInterference::~BOPTools_CArray1OfESInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfESInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SequenceOfCurves;
class BOPTools_SequenceOfCurves : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BOPTools_SequenceOfCurves();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BOPTools_SequenceOfCurves & Assign(const BOPTools_SequenceOfCurves &Other);
		%feature("autodoc", "1");
		const BOPTools_SequenceOfCurves & operator=(const BOPTools_SequenceOfCurves &Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_Curve &T);
		%feature("autodoc", "1");
		void Append(BOPTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_Curve &T);
		%feature("autodoc", "1");
		void Prepend(BOPTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BOPTools_Curve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BOPTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BOPTools_Curve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BOPTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		const BOPTools_Curve & First() const;
		%feature("autodoc", "1");
		const BOPTools_Curve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BOPTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		const BOPTools_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BOPTools_Curve &I);
		%feature("autodoc", "1");
		BOPTools_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_Curve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BOPTools_SequenceOfCurves::~BOPTools_SequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PointBetween;
class BOPTools_PointBetween {
	public:
		%feature("autodoc", "1");
		BOPTools_PointBetween();
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real T);
		%feature("autodoc", "1");
		void SetUV(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt &aP);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc","UV() -> [Standard_Real, Standard_Real]");

		void UV(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;

};
%feature("shadow") BOPTools_PointBetween::~BOPTools_PointBetween %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PointBetween {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfPave;
class BOPTools_ListNodeOfListOfPave : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfPave(const BOPTools_Pave &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_Pave & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfPave {
	Handle_BOPTools_ListNodeOfListOfPave GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfPave*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfPave {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfPave::~BOPTools_ListNodeOfListOfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CommonBlock;
class BOPTools_CommonBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_CommonBlock();
		%feature("autodoc", "1");
		BOPTools_CommonBlock(const BOPTools_PaveBlock &aPB1, const BOPTools_PaveBlock &aPB2);
		%feature("autodoc", "1");
		BOPTools_CommonBlock(const BOPTools_PaveBlock &aPB1, const Standard_Integer aF);
		%feature("autodoc", "1");
		void SetPaveBlock1(const BOPTools_PaveBlock &aPB1);
		%feature("autodoc", "1");
		void SetPaveBlock2(const BOPTools_PaveBlock &aPB2);
		%feature("autodoc", "1");
		void SetFace(const Standard_Integer aF);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & PaveBlock1() const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & PaveBlock1(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & PaveBlock2() const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & PaveBlock2(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Integer Face() const;

};
%feature("shadow") BOPTools_CommonBlock::~BOPTools_CommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ESInterference;
class BOPTools_ESInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_ESInterference();
		%feature("autodoc", "1");
		BOPTools_ESInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2, const IntTools_CommonPrt &aCPart);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & CommonPrt() const;

};
%feature("shadow") BOPTools_ESInterference::~BOPTools_ESInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ESInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SSIntersectionAttribute;
class BOPTools_SSIntersectionAttribute {
	public:
		%feature("autodoc", "1");
		BOPTools_SSIntersectionAttribute(const Standard_Boolean Aproximation=1, const Standard_Boolean PCurveOnS1=1, const Standard_Boolean PCurveOnS2=1);
		%feature("autodoc", "1");
		void Approximation(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		void PCurveOnS1(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		void PCurveOnS2(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean Approximation() const;
		%feature("autodoc", "1");
		Standard_Boolean PCurveOnS1() const;
		%feature("autodoc", "1");
		Standard_Boolean PCurveOnS2() const;

};
%feature("shadow") BOPTools_SSIntersectionAttribute::~BOPTools_SSIntersectionAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SSIntersectionAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapOfShapeWithState;
class BOPTools_IndexedDataMapOfShapeWithState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfShapeWithState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfShapeWithState & Assign(const BOPTools_IndexedDataMapOfShapeWithState &Other);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfShapeWithState & operator=(const BOPTools_IndexedDataMapOfShapeWithState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BooleanOperations_StateOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BooleanOperations_StateOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") BOPTools_IndexedDataMapOfShapeWithState::~BOPTools_IndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_DEProcessor;
class BOPTools_DEProcessor {
	public:
		%feature("autodoc", "1");
		BOPTools_DEProcessor(const BOPTools_PaveFiller &aFiller, const Standard_Integer aDim=3);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") BOPTools_DEProcessor::~BOPTools_DEProcessor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_DEProcessor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_VVInterference;
class BOPTools_VVInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_VVInterference();
		%feature("autodoc", "1");
		BOPTools_VVInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2);

};
%feature("shadow") BOPTools_VVInterference::~BOPTools_VVInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_VVInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IMapOfPaveBlock;
class BOPTools_IMapOfPaveBlock : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock & Assign(const BOPTools_IMapOfPaveBlock &Other);
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock & operator=(const BOPTools_IMapOfPaveBlock &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTools_PaveBlock &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTools_PaveBlock &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTools_PaveBlock &K) const;

};
%feature("shadow") BOPTools_IMapOfPaveBlock::~BOPTools_IMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Array1OfPave;
class BOPTools_Array1OfPave {
	public:
		%feature("autodoc", "1");
		BOPTools_Array1OfPave(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BOPTools_Array1OfPave(const BOPTools_Pave &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BOPTools_Pave &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BOPTools_Array1OfPave & Assign(const BOPTools_Array1OfPave &Other);
		%feature("autodoc", "1");
		const BOPTools_Array1OfPave & operator=(const BOPTools_Array1OfPave &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BOPTools_Pave &Value);
		%feature("autodoc", "1");
		const BOPTools_Pave & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_Pave & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_Pave & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_Pave & operator()(const Standard_Integer Index);

};
%feature("shadow") BOPTools_Array1OfPave::~BOPTools_Array1OfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Array1OfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_RoughShapeIntersector;
class BOPTools_RoughShapeIntersector {
	public:
		%feature("autodoc", "1");
		BOPTools_RoughShapeIntersector(const BooleanOperations_PShapesDataStructure &PDS);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const Handle_BOPTools_HArray2OfIntersectionStatus & TableOfStatus() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") BOPTools_RoughShapeIntersector::~BOPTools_RoughShapeIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_RoughShapeIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet;
class BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet(const Standard_Integer &K1, const Standard_Integer K2, const BOPTools_PaveSet &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BOPTools_PaveSet & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet {
	Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet::~BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerPaveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfCoupleOfInteger;
class BOPTools_ListOfCoupleOfInteger {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfCoupleOfInteger();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfCoupleOfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfCoupleOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CoupleOfInteger &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CoupleOfInteger &I, BOPTools_ListIteratorOfListOfCoupleOfInteger & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfCoupleOfInteger & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_CoupleOfInteger &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_CoupleOfInteger &I, BOPTools_ListIteratorOfListOfCoupleOfInteger & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfCoupleOfInteger & Other);
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger & First() const;
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfCoupleOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_CoupleOfInteger &I, BOPTools_ListIteratorOfListOfCoupleOfInteger & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfCoupleOfInteger & Other, BOPTools_ListIteratorOfListOfCoupleOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_CoupleOfInteger &I, BOPTools_ListIteratorOfListOfCoupleOfInteger & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfCoupleOfInteger & Other, BOPTools_ListIteratorOfListOfCoupleOfInteger & It);

};
%feature("shadow") BOPTools_ListOfCoupleOfInteger::~BOPTools_ListOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_QuickSortPave;
class BOPTools_QuickSortPave {
	public:
		%feature("autodoc", "1");
		BOPTools_QuickSortPave();
		%feature("autodoc", "1");
		static		void Sort(BOPTools_Array1OfPave & TheArray, const BOPTools_ComparePave &Comp);

};
%feature("shadow") BOPTools_QuickSortPave::~BOPTools_QuickSortPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_QuickSortPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger;
class BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger(const BOPTools_CoupleOfInteger &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger & Key1() const;
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
%extend BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger {
	Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger GetHandle() {
	return *(Handle_BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger*) &$self;
	}
};
%extend BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger::~BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedMapNodeOfIndexedMapOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState;
class BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState(const Standard_Integer &K1, const Standard_Integer K2, const BooleanOperations_StateOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BooleanOperations_StateOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState {
	Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState::~BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IDMapOfPaveBlockIMapOfInteger;
class BOPTools_IDMapOfPaveBlockIMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfInteger & Assign(const BOPTools_IDMapOfPaveBlockIMapOfInteger &Other);
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfInteger & operator=(const BOPTools_IDMapOfPaveBlockIMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTools_PaveBlock &K, const TColStd_IndexedMapOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTools_PaveBlock &K, const TColStd_IndexedMapOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromKey(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromKey(const BOPTools_PaveBlock &K);

};
%feature("shadow") BOPTools_IDMapOfPaveBlockIMapOfInteger::~BOPTools_IDMapOfPaveBlockIMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IDMapOfPaveBlockIMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfEEInterference;
class BOPTools_CArray1OfEEInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfEEInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_EEInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_EEInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_EEInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_EEInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_EEInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfEEInterference::~BOPTools_CArray1OfEEInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfEEInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IteratorOfCoupleOfShape;
class BOPTools_IteratorOfCoupleOfShape {
	public:
		%feature("autodoc", "1");
		BOPTools_IteratorOfCoupleOfShape();
		%feature("autodoc", "1");
		BOPTools_IteratorOfCoupleOfShape(const BooleanOperations_PShapesDataStructure &PDS, const TopAbs_ShapeEnum Type1, const TopAbs_ShapeEnum Type2);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Initialize(const TopAbs_ShapeEnum Type1, const TopAbs_ShapeEnum Type2);
		%feature("autodoc", "1");
		void SetDataStructure(const BooleanOperations_PShapesDataStructure &PDS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean More() const;
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc","Current() -> [Standard_Integer, Standard_Integer]");

		virtual		void Current(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & WithSubShape) const;
		%feature("autodoc", "1");
		const BOPTools_ListOfCoupleOfInteger & ListOfCouple() const;
		%feature("autodoc", "1");
		void SetIntersectionStatus(const Standard_Integer Index1, const Standard_Integer Index2, const BOPTools_IntersectionStatus theStatus);
		%feature("autodoc", "1");
		const Handle_BOPTools_HArray2OfIntersectionStatus & GetTableOfIntersectionStatus() const;
		%feature("autodoc", "1");
		void DumpTableOfIntersectionStatus() const;

};
%feature("shadow") BOPTools_IteratorOfCoupleOfShape::~BOPTools_IteratorOfCoupleOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IteratorOfCoupleOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Curve;
class BOPTools_Curve {
	public:
		%feature("autodoc", "1");
		BOPTools_Curve();
		%feature("autodoc", "1");
		BOPTools_Curve(const IntTools_Curve &aIC);
		%feature("autodoc", "1");
		void SetCurve(const IntTools_Curve &aIC);
		%feature("autodoc", "1");
		const IntTools_Curve & Curve() const;
		%feature("autodoc", "1");
		BOPTools_PaveSet & Set();
		%feature("autodoc", "1");
		void AppendNewBlock(const BOPTools_PaveBlock &aPB);
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & NewPaveBlocks() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & TechnoVertices();

};
%feature("shadow") BOPTools_Curve::~BOPTools_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SequenceNodeOfSequenceOfCurves;
class BOPTools_SequenceNodeOfSequenceOfCurves : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BOPTools_SequenceNodeOfSequenceOfCurves(const BOPTools_Curve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BOPTools_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_SequenceNodeOfSequenceOfCurves {
	Handle_BOPTools_SequenceNodeOfSequenceOfCurves GetHandle() {
	return *(Handle_BOPTools_SequenceNodeOfSequenceOfCurves*) &$self;
	}
};
%extend BOPTools_SequenceNodeOfSequenceOfCurves {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_SequenceNodeOfSequenceOfCurves::~BOPTools_SequenceNodeOfSequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SequenceNodeOfSequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger;
class BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger(const BOPTools_PaveBlock &K1, const Standard_Integer K2, const TColStd_IndexedMapOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Key1() const;
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
		TColStd_IndexedMapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger {
	Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger::~BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfCommonBlock;
class BOPTools_ListNodeOfListOfCommonBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfCommonBlock(const BOPTools_CommonBlock &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_CommonBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfCommonBlock {
	Handle_BOPTools_ListNodeOfListOfCommonBlock GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfCommonBlock*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfCommonBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfCommonBlock::~BOPTools_ListNodeOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CommonBlockPool;
class BOPTools_CommonBlockPool {
	public:
		%feature("autodoc", "1");
		BOPTools_CommonBlockPool(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_ListOfCommonBlock &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_ListOfCommonBlock & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_ListOfCommonBlock & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_ListOfCommonBlock & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_ListOfCommonBlock & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CommonBlockPool::~BOPTools_CommonBlockPool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CommonBlockPool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_DEInfo;
class BOPTools_DEInfo {
	public:
		%feature("autodoc", "1");
		BOPTools_DEInfo();
		%feature("autodoc", "1");
		void SetVertex(const Standard_Integer nV);
		%feature("autodoc", "1");
		void SetFaces(const TColStd_ListOfInteger &aLF);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Faces() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeFaces();
		%feature("autodoc", "1");
		Standard_Integer Vertex() const;

};
%feature("shadow") BOPTools_DEInfo::~BOPTools_DEInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_DEInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_StateFiller;
class BOPTools_StateFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_StateFiller(const BOPTools_PaveFiller &aFiller);
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		static		BooleanOperations_StateOfShape ConvertState(const TopAbs_State aSt);
		%feature("autodoc", "1");
		static		TopAbs_State ConvertState(const BooleanOperations_StateOfShape aSt);
		%feature("autodoc", "1");
		TopAbs_State ClassifyEdgeToSolidByOnePoint(const TopoDS_Edge &anEdge, const TopoDS_Shape &aRef);
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape ClassifyShapeByRef(const TopoDS_Shape &aShape, const TopoDS_Shape &aRef);
		%feature("autodoc", "1");
		static		TopAbs_ShapeEnum SubType(const TopoDS_Shape &aShape);

};
%feature("shadow") BOPTools_StateFiller::~BOPTools_StateFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_StateFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfInterference;
class BOPTools_ListNodeOfListOfInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfInterference(const BOPTools_Interference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_Interference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfInterference {
	Handle_BOPTools_ListNodeOfListOfInterference GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfInterference*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfInterference::~BOPTools_ListNodeOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfCoupleOfInteger;
class BOPTools_ListNodeOfListOfCoupleOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfCoupleOfInteger(const BOPTools_CoupleOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfCoupleOfInteger {
	Handle_BOPTools_ListNodeOfListOfCoupleOfInteger GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfCoupleOfInteger*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfCoupleOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfCoupleOfInteger::~BOPTools_ListNodeOfListOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PaveFiller;
class BOPTools_PaveFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_PaveFiller();
		%feature("autodoc", "1");
		BOPTools_PaveFiller(const BOPTools_InterferencePool &aIP);
		%feature("autodoc", "1");
		BOPTools_PaveFiller(const BOPTools_InterferencePool &theIP, const BOPTools_SSIntersectionAttribute &theSectionAttribute);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void PartialPerform(const TColStd_SetOfInteger &anObjSubSet, const TColStd_SetOfInteger &aToolSubSet);
		%feature("autodoc", "1");
		virtual		void ToCompletePerform();
		%feature("autodoc", "1");
		const IntTools_Context & Context() const;
		%feature("autodoc", "1");
		IntTools_Context & ChangeContext();
		%feature("autodoc", "1");
		void SetInterferencePool(const BOPTools_InterferencePool &aPool);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const BOPTools_PavePool & PavePool() const;
		%feature("autodoc", "1");
		BOPTools_PavePool & ChangePavePool();
		%feature("autodoc", "1");
		const BOPTools_CommonBlockPool & CommonBlockPool() const;
		%feature("autodoc", "1");
		BOPTools_CommonBlockPool & ChangeCommonBlockPool();
		%feature("autodoc", "1");
		const BOPTools_SplitShapesPool & SplitShapesPool() const;
		%feature("autodoc", "1");
		BOPTools_SplitShapesPool & ChangeSplitShapesPool();
		%feature("autodoc", "1");
		BooleanOperations_PShapesDataStructure DS();
		%feature("autodoc", "1");
		BOPTools_PInterferencePool InterfPool();
		%feature("autodoc", "1");
		const BOPTools_IteratorOfCoupleOfShape & IteratorOfCoupleOfShape() const;
		%feature("autodoc", "1");
		const BOPTools_SSIntersectionAttribute & SectionAttribute() const;
		%feature("autodoc", "1");
		void SetSectionAttribute(const BOPTools_SSIntersectionAttribute &anAtt);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer nE1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnEdge(const Standard_Integer nE1, const Standard_Integer nE2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer nE1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, TColStd_ListOfInteger & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsInFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnEdge(const Standard_Integer nE1, const Standard_Integer nE2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer nE1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer SplitsOnFace(const Standard_Integer aBid, const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_ListOfPaveBlock & aLs);
		%feature("autodoc", "1");
		Standard_Integer FindSDVertex(const Standard_Integer nV) const;
		%feature("autodoc", "1");
		void PrepareSetForFace(const Standard_Integer nF1, const Standard_Integer nF2, BOPTools_PaveSet & aPaveSet);

};
%feature("shadow") BOPTools_PaveFiller::~BOPTools_PaveFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PaveFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Checker;
class BOPTools_Checker : public BOPTools_PaveFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_Checker();
		%feature("autodoc", "1");
		BOPTools_Checker(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		BOPTools_Checker(const BOPTools_InterferencePool &aIP);
		%feature("autodoc", "1");
		void SetPerformType(const Standard_Boolean StopOnFirstFaulty);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const BOPTools_ListOfCheckResults & GetCheckResult() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFaulty() const;

};
%feature("shadow") BOPTools_Checker::~BOPTools_Checker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Checker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_EEInterference;
class BOPTools_EEInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_EEInterference();
		%feature("autodoc", "1");
		BOPTools_EEInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2, const IntTools_CommonPrt &aCPart);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & CommonPrt() const;

};
%feature("shadow") BOPTools_EEInterference::~BOPTools_EEInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_EEInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_DSFiller;
class BOPTools_DSFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_DSFiller();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void InitFillersAndPools();
		%feature("autodoc", "1");
		void PartialPerform(const TColStd_SetOfInteger &anObjSubSet, const TColStd_SetOfInteger &aToolSubSet);
		%feature("autodoc", "1");
		void ToCompletePerform();
		%feature("autodoc", "1");
		void Perform(const BOPTools_SSIntersectionAttribute &theSectionAttribute);
		%feature("autodoc", "1");
		const BooleanOperations_ShapesDataStructure & DS() const;
		%feature("autodoc", "1");
		const BOPTools_InterferencePool & InterfPool() const;
		%feature("autodoc", "1");
		const BOPTools_PavePool & PavePool() const;
		%feature("autodoc", "1");
		const BOPTools_CommonBlockPool & CommonBlockPool() const;
		%feature("autodoc", "1");
		const BOPTools_SplitShapesPool & SplitShapesPool() const;
		%feature("autodoc", "1");
		const BOPTools_PaveFiller & PaveFiller() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNewFiller() const;
		%feature("autodoc", "1");
		void SetNewFiller(const Standard_Boolean aFlag) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerListOfInteger & SplitFacePool() const;
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerListOfInteger & ChangeSplitFacePool();
		%feature("autodoc", "1");
		static		Standard_Integer TreatCompound(const TopoDS_Shape &theShape, TopoDS_Shape & theShapeResult);

};
%feature("shadow") BOPTools_DSFiller::~BOPTools_DSFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_DSFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_WireStateFiller;
class BOPTools_WireStateFiller : public BOPTools_StateFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_WireStateFiller(const BOPTools_PaveFiller &aFiller);
		%feature("autodoc", "1");
		virtual		void Do();

};
%feature("shadow") BOPTools_WireStateFiller::~BOPTools_WireStateFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_WireStateFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfCoupleOfInteger;
class BOPTools_ListIteratorOfListOfCoupleOfInteger {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCoupleOfInteger();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCoupleOfInteger(const BOPTools_ListOfCoupleOfInteger &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfCoupleOfInteger &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfCoupleOfInteger::~BOPTools_ListIteratorOfListOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IDMapOfPaveBlockIMapOfPaveBlock;
class BOPTools_IDMapOfPaveBlockIMapOfPaveBlock : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfPaveBlock(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfPaveBlock & Assign(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock &Other);
		%feature("autodoc", "1");
		BOPTools_IDMapOfPaveBlockIMapOfPaveBlock & operator=(const BOPTools_IDMapOfPaveBlockIMapOfPaveBlock &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTools_PaveBlock &K, const BOPTools_IMapOfPaveBlock &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTools_PaveBlock &K, const BOPTools_IMapOfPaveBlock &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_IMapOfPaveBlock & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_IMapOfPaveBlock & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		const BOPTools_IMapOfPaveBlock & FindFromKey(const BOPTools_PaveBlock &K) const;
		%feature("autodoc", "1");
		BOPTools_IMapOfPaveBlock & ChangeFromKey(const BOPTools_PaveBlock &K);

};
%feature("shadow") BOPTools_IDMapOfPaveBlockIMapOfPaveBlock::~BOPTools_IDMapOfPaveBlockIMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IDMapOfPaveBlockIMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfVVInterference;
class BOPTools_CArray1OfVVInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfVVInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_VVInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_VVInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_VVInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_VVInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_VVInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfVVInterference::~BOPTools_CArray1OfVVInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfVVInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapOfIntegerPaveSet;
class BOPTools_IndexedDataMapOfIntegerPaveSet : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerPaveSet(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerPaveSet & Assign(const BOPTools_IndexedDataMapOfIntegerPaveSet &Other);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerPaveSet & operator=(const BOPTools_IndexedDataMapOfIntegerPaveSet &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const BOPTools_PaveSet &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const BOPTools_PaveSet &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_PaveSet & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_PaveSet & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOPTools_PaveSet & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOPTools_PaveSet & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BOPTools_PaveSet & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BOPTools_PaveSet & ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") BOPTools_IndexedDataMapOfIntegerPaveSet::~BOPTools_IndexedDataMapOfIntegerPaveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapOfIntegerPaveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfShapeEnum;
class BOPTools_ListIteratorOfListOfShapeEnum {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfShapeEnum();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfShapeEnum(const BOPTools_ListOfShapeEnum &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfShapeEnum &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopAbs_ShapeEnum & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfShapeEnum::~BOPTools_ListIteratorOfListOfShapeEnum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfShapeEnum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfInterference;
class BOPTools_ListIteratorOfListOfInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfInterference();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfInterference(const BOPTools_ListOfInterference &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfInterference &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_Interference & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfInterference::~BOPTools_ListIteratorOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfShapeEnum;
class BOPTools_ListOfShapeEnum {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfShapeEnum();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfShapeEnum &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfShapeEnum &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopAbs_ShapeEnum &I);
		%feature("autodoc", "1");
		void Prepend(const TopAbs_ShapeEnum &I, BOPTools_ListIteratorOfListOfShapeEnum & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfShapeEnum & Other);
		%feature("autodoc", "1");
		void Append(const TopAbs_ShapeEnum &I);
		%feature("autodoc", "1");
		void Append(const TopAbs_ShapeEnum &I, BOPTools_ListIteratorOfListOfShapeEnum & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfShapeEnum & Other);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum & First() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfShapeEnum & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopAbs_ShapeEnum &I, BOPTools_ListIteratorOfListOfShapeEnum & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfShapeEnum & Other, BOPTools_ListIteratorOfListOfShapeEnum & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopAbs_ShapeEnum &I, BOPTools_ListIteratorOfListOfShapeEnum & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfShapeEnum & Other, BOPTools_ListIteratorOfListOfShapeEnum & It);

};
%feature("shadow") BOPTools_ListOfShapeEnum::~BOPTools_ListOfShapeEnum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfShapeEnum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SolidStateFiller;
class BOPTools_SolidStateFiller : public BOPTools_StateFiller {
	public:
		%feature("autodoc", "1");
		BOPTools_SolidStateFiller(const BOPTools_PaveFiller &aFiller);
		%feature("autodoc", "1");
		virtual		void Do();

};
%feature("shadow") BOPTools_SolidStateFiller::~BOPTools_SolidStateFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SolidStateFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SequenceOfPaveBlock;
class BOPTools_SequenceOfPaveBlock : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BOPTools_SequenceOfPaveBlock();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BOPTools_SequenceOfPaveBlock & Assign(const BOPTools_SequenceOfPaveBlock &Other);
		%feature("autodoc", "1");
		const BOPTools_SequenceOfPaveBlock & operator=(const BOPTools_SequenceOfPaveBlock &Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_PaveBlock &T);
		%feature("autodoc", "1");
		void Append(BOPTools_SequenceOfPaveBlock & S);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_PaveBlock &T);
		%feature("autodoc", "1");
		void Prepend(BOPTools_SequenceOfPaveBlock & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BOPTools_PaveBlock &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BOPTools_SequenceOfPaveBlock & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BOPTools_PaveBlock &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BOPTools_SequenceOfPaveBlock & S);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & First() const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BOPTools_SequenceOfPaveBlock & S);
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_PaveBlock & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BOPTools_PaveBlock &I);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BOPTools_SequenceOfPaveBlock::~BOPTools_SequenceOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SequenceOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfVSInterference;
class BOPTools_CArray1OfVSInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfVSInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_VSInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_VSInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_VSInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_VSInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_VSInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfVSInterference::~BOPTools_CArray1OfVSInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfVSInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SplitShapesPool;
class BOPTools_SplitShapesPool {
	public:
		%feature("autodoc", "1");
		BOPTools_SplitShapesPool(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_ListOfPaveBlock &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_SplitShapesPool::~BOPTools_SplitShapesPool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SplitShapesPool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo;
class BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo(const Standard_Integer &K1, const Standard_Integer K2, const BOPTools_DEInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BOPTools_DEInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo {
	Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo::~BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfIntegerDEInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfCheckResults;
class BOPTools_ListIteratorOfListOfCheckResults {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCheckResults();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCheckResults(const BOPTools_ListOfCheckResults &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfCheckResults &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_CheckResult & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfCheckResults::~BOPTools_ListIteratorOfListOfCheckResults %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfCheckResults {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedMapOfCoupleOfInteger;
class BOPTools_IndexedMapOfCoupleOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedMapOfCoupleOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IndexedMapOfCoupleOfInteger & Assign(const BOPTools_IndexedMapOfCoupleOfInteger &Other);
		%feature("autodoc", "1");
		BOPTools_IndexedMapOfCoupleOfInteger & operator=(const BOPTools_IndexedMapOfCoupleOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTools_CoupleOfInteger &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTools_CoupleOfInteger &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTools_CoupleOfInteger &K) const;
		%feature("autodoc", "1");
		const BOPTools_CoupleOfInteger & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_CoupleOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTools_CoupleOfInteger &K) const;

};
%feature("shadow") BOPTools_IndexedMapOfCoupleOfInteger::~BOPTools_IndexedMapOfCoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedMapOfCoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PaveBlockIterator;
class BOPTools_PaveBlockIterator {
	public:
		%feature("autodoc", "1");
		BOPTools_PaveBlockIterator();
		%feature("autodoc", "1");
		BOPTools_PaveBlockIterator(const Standard_Integer aEdge, const BOPTools_PaveSet &aPaveSet);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer aEdge, const BOPTools_PaveSet &aPaveSet);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Value();

};
%feature("shadow") BOPTools_PaveBlockIterator::~BOPTools_PaveBlockIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PaveBlockIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_InterferenceLine;
class BOPTools_InterferenceLine {
	public:
		%feature("autodoc", "1");
		BOPTools_InterferenceLine();
		%feature("autodoc", "1");
		const BOPTools_ListOfInterference & GetOnType(const BooleanOperations_KindOfInterference aType) const;
		%feature("autodoc", "1");
		Standard_Boolean IsComputed(const Standard_Integer aWith, const BooleanOperations_KindOfInterference aType) const;
		%feature("autodoc", "1");
		void AddInterference(const BOPTools_Interference &anInterference);
		%feature("autodoc", "1");
		void AddInterference(const Standard_Integer aWith, const BooleanOperations_KindOfInterference aType, const Standard_Integer anIndex);
		%feature("autodoc", "1");
		const BOPTools_ListOfInterference & List() const;
		%feature("autodoc", "1");
		const BOPTools_ListOfInterference & RealList() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInterference() const;

};
%feature("shadow") BOPTools_InterferenceLine::~BOPTools_InterferenceLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_InterferenceLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_VEInterference;
class BOPTools_VEInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_VEInterference();
		%feature("autodoc", "1");
		BOPTools_VEInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2, const Standard_Real aT);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%feature("shadow") BOPTools_VEInterference::~BOPTools_VEInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_VEInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfCommonBlock;
class BOPTools_ListIteratorOfListOfCommonBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCommonBlock();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfCommonBlock(const BOPTools_ListOfCommonBlock &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfCommonBlock &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_CommonBlock & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfCommonBlock::~BOPTools_ListIteratorOfListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CoupleOfIntegerMapHasher;
class BOPTools_CoupleOfIntegerMapHasher {
	public:
		%feature("autodoc", "1");
		BOPTools_CoupleOfIntegerMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPTools_CoupleOfInteger &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPTools_CoupleOfInteger &aPKey1, const BOPTools_CoupleOfInteger &aPKey2);

};
%feature("shadow") BOPTools_CoupleOfIntegerMapHasher::~BOPTools_CoupleOfIntegerMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CoupleOfIntegerMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_HArray2OfIntersectionStatus;
class BOPTools_HArray2OfIntersectionStatus : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BOPTools_HArray2OfIntersectionStatus(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		BOPTools_HArray2OfIntersectionStatus(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const BOPTools_IntersectionStatus &V);
		%feature("autodoc", "1");
		void Init(const BOPTools_IntersectionStatus &V);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const BOPTools_IntersectionStatus &Value);
		%feature("autodoc", "1");
		const BOPTools_IntersectionStatus & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		BOPTools_IntersectionStatus & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const BOPTools_Array2OfIntersectionStatus & Array2() const;
		%feature("autodoc", "1");
		BOPTools_Array2OfIntersectionStatus & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_HArray2OfIntersectionStatus {
	Handle_BOPTools_HArray2OfIntersectionStatus GetHandle() {
	return *(Handle_BOPTools_HArray2OfIntersectionStatus*) &$self;
	}
};
%extend BOPTools_HArray2OfIntersectionStatus {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_HArray2OfIntersectionStatus::~BOPTools_HArray2OfIntersectionStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_HArray2OfIntersectionStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfPave;
class BOPTools_ListIteratorOfListOfPave {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfPave();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfPave(const BOPTools_ListOfPave &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfPave &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_Pave & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfPave::~BOPTools_ListIteratorOfListOfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PaveBlock;
class BOPTools_PaveBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_PaveBlock();
		%feature("autodoc", "1");
		BOPTools_PaveBlock(const Standard_Integer anEdge, const BOPTools_Pave &aPave1, const BOPTools_Pave &aPave2);
		%feature("autodoc", "1");
		void SetEdge(const Standard_Integer anEdge);
		%feature("autodoc", "1");
		void SetOriginalEdge(const Standard_Integer anEdge);
		%feature("autodoc", "1");
		void SetPave1(const BOPTools_Pave &aPave);
		%feature("autodoc", "1");
		void SetPave2(const BOPTools_Pave &aPave);
		%feature("autodoc", "1");
		void SetShrunkRange(const IntTools_ShrunkRange &aSR);
		%feature("autodoc", "1");
		void SetPointBetween(const BOPTools_PointBetween &aP);
		%feature("autodoc", "1");
		void SetCurve(const IntTools_Curve &aC);
		%feature("autodoc", "1");
		void SetFace1(const Standard_Integer nF1);
		%feature("autodoc", "1");
		void SetFace2(const Standard_Integer nF2);
		%feature("autodoc", "1");
		Standard_Integer Edge() const;
		%feature("autodoc", "1");
		Standard_Integer OriginalEdge() const;
		%feature("autodoc", "1");
		const BOPTools_Pave & Pave1() const;
		%feature("autodoc", "1");
		const BOPTools_Pave & Pave2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTools_PaveBlock &Other) const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const IntTools_Range & Range() const;
		%feature("autodoc", "1");
		const IntTools_ShrunkRange & ShrunkRange() const;
		%feature("autodoc", "1");
		const BOPTools_PointBetween & PointBetween() const;
		%feature("autodoc", "1");
		const IntTools_Curve & Curve() const;
		%feature("autodoc", "1");
		Standard_Integer Face1() const;
		%feature("autodoc", "1");
		Standard_Integer Face2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInBlock(const BOPTools_Pave &aPaveX) const;

};
%feature("shadow") BOPTools_PaveBlock::~BOPTools_PaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CommonBlockAPI;
class BOPTools_CommonBlockAPI {
	public:
		%feature("autodoc", "1");
		BOPTools_CommonBlockAPI(const BOPTools_ListOfCommonBlock &aList);
		%feature("autodoc", "1");
		const BOPTools_ListOfCommonBlock & List() const;
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & CommonPaveBlocks(const Standard_Integer anE) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCommonBlock(const BOPTools_PaveBlock &aPB) const;

};
%feature("shadow") BOPTools_CommonBlockAPI::~BOPTools_CommonBlockAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CommonBlockAPI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState;
class BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const TopoDS_Shape &K1, const Standard_Integer K2, const BooleanOperations_StateOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
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
		BooleanOperations_StateOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::~BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_InterferencePool;
class BOPTools_InterferencePool {
	public:
		%feature("autodoc", "1");
		BOPTools_InterferencePool();
		%feature("autodoc", "1");
		BOPTools_InterferencePool(const BooleanOperations_ShapesDataStructure &aDS);
		%feature("autodoc", "1");
		void SetDS(const BooleanOperations_ShapesDataStructure &aDS);
		%feature("autodoc", "1");
		BooleanOperations_PShapesDataStructure DS() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInterference(const Standard_Integer anInd) const;
		%feature("autodoc", "1");
		Standard_Boolean IsComputed(const Standard_Integer anInd1, const Standard_Integer anInd2) const;
		%feature("autodoc","SortTypes() -> [Standard_Integer, Standard_Integer]");

		void SortTypes(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		BooleanOperations_KindOfInterference InterferenceType(const Standard_Integer anInd1, const Standard_Integer anInd2) const;
		%feature("autodoc", "1");
		void AddInterference(const Standard_Integer anInd1, const Standard_Integer anInd2, const BooleanOperations_KindOfInterference aType, const Standard_Integer anIndex);
		%feature("autodoc", "1");
		const BOPTools_CArray1OfInterferenceLine & InterferenceTable() const;
		%feature("autodoc", "1");
		BOPTools_CArray1OfSSInterference & SSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfESInterference & ESInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVSInterference & VSInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfEEInterference & EEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVEInterference & VEInterferences();
		%feature("autodoc", "1");
		BOPTools_CArray1OfVVInterference & VVInterferences();
		%feature("autodoc", "1");
		const BOPTools_CArray1OfSSInterference & SSInterfs() const;
		%feature("autodoc", "1");
		const BOPTools_CArray1OfESInterference & ESInterfs() const;
		%feature("autodoc", "1");
		const BOPTools_CArray1OfVSInterference & VSInterfs() const;
		%feature("autodoc", "1");
		const BOPTools_CArray1OfEEInterference & EEInterfs() const;
		%feature("autodoc", "1");
		const BOPTools_CArray1OfVEInterference & VEInterfs() const;
		%feature("autodoc", "1");
		const BOPTools_CArray1OfVVInterference & VVInterfs() const;
		%feature("autodoc", "1");
		BOPTools_PShapeShapeInterference GetInterference(const Standard_Integer anIndex, const BooleanOperations_KindOfInterference aType) const;

};
%feature("shadow") BOPTools_InterferencePool::~BOPTools_InterferencePool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_InterferencePool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfPaveBlock;
class BOPTools_ListNodeOfListOfPaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfPaveBlock(const BOPTools_PaveBlock &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfPaveBlock {
	Handle_BOPTools_ListNodeOfListOfPaveBlock GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfPaveBlock*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfPaveBlock::~BOPTools_ListNodeOfListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfPave;
class BOPTools_ListOfPave {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfPave();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfPave &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfPave &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_Pave &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_Pave &I, BOPTools_ListIteratorOfListOfPave & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfPave & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_Pave &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_Pave &I, BOPTools_ListIteratorOfListOfPave & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfPave & Other);
		%feature("autodoc", "1");
		BOPTools_Pave & First() const;
		%feature("autodoc", "1");
		BOPTools_Pave & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_Pave &I, BOPTools_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfPave & Other, BOPTools_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_Pave &I, BOPTools_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfPave & Other, BOPTools_ListIteratorOfListOfPave & It);

};
%feature("shadow") BOPTools_ListOfPave::~BOPTools_ListOfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfSSInterference;
class BOPTools_CArray1OfSSInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfSSInterference(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_SSInterference &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_SSInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_SSInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_SSInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_SSInterference & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfSSInterference::~BOPTools_CArray1OfSSInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfSSInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ComparePave;
class BOPTools_ComparePave {
	public:
		%feature("autodoc", "1");
		BOPTools_ComparePave();
		%feature("autodoc", "1");
		BOPTools_ComparePave(const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const BOPTools_Pave &Left, const BOPTools_Pave &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const BOPTools_Pave &Left, const BOPTools_Pave &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTools_Pave &Left, const BOPTools_Pave &Right) const;

};
%feature("shadow") BOPTools_ComparePave::~BOPTools_ComparePave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ComparePave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CoupleOfInteger;
class BOPTools_CoupleOfInteger {
	public:
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger();
		%feature("autodoc", "1");
		BOPTools_CoupleOfInteger(const Standard_Integer aFirst, const Standard_Integer aSecond);
		%feature("autodoc", "1");
		void SetCouple(const Standard_Integer aFirst, const Standard_Integer aSecond);
		%feature("autodoc", "1");
		void SetFirst(const Standard_Integer aFirst);
		%feature("autodoc", "1");
		void SetSecond(const Standard_Integer aSecond);
		%feature("autodoc","Couple() -> [Standard_Integer, Standard_Integer]");

		void Couple(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer First() const;
		%feature("autodoc", "1");
		Standard_Integer Second() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTools_CoupleOfInteger &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;

};
%extend BOPTools_CoupleOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_CoupleOfInteger::~BOPTools_CoupleOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CoupleOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfCheckResults;
class BOPTools_ListNodeOfListOfCheckResults : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfCheckResults(const BOPTools_CheckResult &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOPTools_CheckResult & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfCheckResults {
	Handle_BOPTools_ListNodeOfListOfCheckResults GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfCheckResults*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfCheckResults {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfCheckResults::~BOPTools_ListNodeOfListOfCheckResults %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfCheckResults {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PavePool;
class BOPTools_PavePool {
	public:
		%feature("autodoc", "1");
		BOPTools_PavePool(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_PaveSet &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_PaveSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_PaveSet & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_PaveSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_PaveSet & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_PavePool::~BOPTools_PavePool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PavePool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Array2OfIntersectionStatus;
class BOPTools_Array2OfIntersectionStatus {
	public:
		%feature("autodoc", "1");
		BOPTools_Array2OfIntersectionStatus(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		BOPTools_Array2OfIntersectionStatus(const BOPTools_IntersectionStatus &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const BOPTools_IntersectionStatus &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const BOPTools_Array2OfIntersectionStatus & Assign(const BOPTools_Array2OfIntersectionStatus &Other);
		%feature("autodoc", "1");
		const BOPTools_Array2OfIntersectionStatus & operator=(const BOPTools_Array2OfIntersectionStatus &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const BOPTools_IntersectionStatus &Value);
		%feature("autodoc", "1");
		const BOPTools_IntersectionStatus & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const BOPTools_IntersectionStatus & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		BOPTools_IntersectionStatus & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		BOPTools_IntersectionStatus & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") BOPTools_Array2OfIntersectionStatus::~BOPTools_Array2OfIntersectionStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Array2OfIntersectionStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Tools2D;
class BOPTools_Tools2D {
	public:
		%feature("autodoc", "1");
		BOPTools_Tools2D();
		%feature("autodoc", "1");
		static		void RemovePCurveForEdgeOnFace(const TopoDS_Edge &aE, const TopoDS_Face &aF);
		%feature("autodoc", "1");
		static		void BuildPCurveForEdgeOnFace(const TopoDS_Edge &aE, const TopoDS_Face &aF);
		%feature("autodoc", "1");
		static		Standard_Boolean EdgeTangent(const TopoDS_Edge &anE, const Standard_Real aT, gp_Vec & Tau);
		%feature("autodoc", "1");
		static		void FaceNormal(const TopoDS_Face &aF, const Standard_Real U, const Standard_Real V, gp_Vec & aN);
		%feature("autodoc","PointOnSurface(const aE, const aF, Standard_Real aT) -> [Standard_Real, Standard_Real]");

		static		void PointOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","CurveOnSurface(const aE, const aF, Standard_Boolean aTrim3d) -> Standard_Real");

		static		void CurveOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, const Standard_Boolean aTrim3d);
		%feature("autodoc","CurveOnSurface(const aE, const aF, Standard_Boolean aTrim3d) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void CurveOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean aTrim3d);
		%feature("autodoc","HasCurveOnSurface(const aE, const aF) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		Standard_Boolean HasCurveOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean HasCurveOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF);
		%feature("autodoc","MakeCurveOnSurface(const aE, const aF, Standard_Boolean aTrim3d) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void MakeCurveOnSurface(const TopoDS_Edge &aE, const TopoDS_Face &aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean aTrim3d);
		%feature("autodoc","Make2D(const aE, const aF, Standard_Boolean aTrim3d) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void Make2D(const TopoDS_Edge &aE, const TopoDS_Face &aF, Handle_Geom2d_Curve & aC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean aTrim3d);
		%feature("autodoc","MakePCurveOnFace(const aF, const C3D) -> Standard_Real");

		static		void MakePCurveOnFace(const TopoDS_Face &aF, const Handle_Geom_Curve &C3D, Handle_Geom2d_Curve & aC, Standard_Real &OutValue);
		%feature("autodoc","MakePCurveOnFace(const aF, const C3D, Standard_Real aT1, Standard_Real aT2) -> Standard_Real");

		static		void MakePCurveOnFace(const TopoDS_Face &aF, const Handle_Geom_Curve &C3D, const Standard_Real aT1, const Standard_Real aT2, Handle_Geom2d_Curve & aC, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void AdjustPCurveOnFace(const TopoDS_Face &aF, const Handle_Geom_Curve &C3D, const Handle_Geom2d_Curve &aC2D, Handle_Geom2d_Curve & aC2DA);
		%feature("autodoc", "1");
		static		void AdjustPCurveOnFace(const TopoDS_Face &aF, const Standard_Real aT1, const Standard_Real aT2, const Handle_Geom2d_Curve &aC2D, Handle_Geom2d_Curve & aC2DA);
		%feature("autodoc", "1");
		static		void MakePCurveOfType(const ProjLib_ProjectedCurve &PC, Handle_Geom2d_Curve & aC);
		%feature("autodoc", "1");
		static		Standard_Boolean TangentOnEdge(const Standard_Real aParm, const TopoDS_Edge &anE, gp_Vec & aTang);
		%feature("autodoc", "1");
		static		Standard_Boolean TangentOnEdge(const TopoDS_Edge &anE, gp_Dir & aDTang);
		%feature("autodoc", "1");
		static		Standard_Boolean TangentOnVertex(const TopoDS_Vertex &aVF, const TopoDS_Vertex &aVL, const TopoDS_Edge &anE, gp_Vec & aTang);
		%feature("autodoc","EdgeBounds(const anE) -> [Standard_Real, Standard_Real]");

		static		void EdgeBounds(const TopoDS_Edge &anE, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Real IntermediatePoint(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		static		Standard_Real IntermediatePoint(const TopoDS_Edge &anE);

};
%feature("shadow") BOPTools_Tools2D::~BOPTools_Tools2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Tools2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Tools3D;
class BOPTools_Tools3D {
	public:
		%feature("autodoc", "1");
		BOPTools_Tools3D();
		%feature("autodoc", "1");
		static		Standard_Integer SubShapesAmount(const TopoDS_Shape &aS, const TopAbs_ShapeEnum aT);
		%feature("autodoc", "1");
		static		Standard_Boolean IsConvexWire(const TopoDS_Wire &aW);
		%feature("autodoc", "1");
		static		void RemoveSims(const TopoDS_Face &aF, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		void RemoveSims(const TopoDS_Shape &aS, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		TopAbs_Orientation EdgeOrientation(const TopoDS_Edge &aEx, const TopoDS_Face &aF1, const TopoDS_Face &aF2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse1(const TopoDS_Edge &aE1, const TopoDS_Edge &aE2, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		void DoSplitSEAMOnFace(const TopoDS_Edge &aSp, const TopoDS_Face &aF);
		%feature("autodoc", "1");
		static		Standard_Boolean DoSplitSEAMOnFace(const TopoDS_Edge &theSplit, const TopoDS_Edge &theSeam, const TopoDS_Face &theFace, Standard_Boolean & IsReversed);
		%feature("autodoc", "1");
		static		Standard_Boolean IsTouchCase(const TopoDS_Edge &aEx, const TopoDS_Face &aF1, const TopoDS_Face &aF2);
		%feature("autodoc", "1");
		static		Standard_Boolean GetTangentToEdge(const TopoDS_Edge &aE, const Standard_Real aT, gp_Dir & aD);
		%feature("autodoc", "1");
		static		Standard_Boolean GetTangentToEdge(const TopoDS_Edge &aE, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetNormalToFaceOnEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetNormalToFaceOnEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetBiNormal(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetBiNormal(const TopoDS_Edge &aE, const TopoDS_Face &aF, gp_Dir & aD);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Edge &aE, const TopoDS_Edge &aSp);
		%feature("autodoc", "1");
		static		Standard_Boolean GetAdjacentFace(const TopoDS_Face &aF, const TopoDS_Edge &aE, const TopTools_IndexedDataMapOfShapeListOfShape &aEFMap, TopoDS_Face & anAdjF);
		%feature("autodoc", "1");
		static		Standard_Boolean IsKeepTwice(const TopoDS_Face &aF1, const TopoDS_Face &aF2, const TopoDS_Face &aF2Adj, const TopoDS_Edge &aSpEF2);
		%feature("autodoc", "1");
		static		Standard_Integer SenseFlag(const gp_Dir &aNF1, const gp_Dir &aNF2);
		%feature("autodoc", "1");
		static		Standard_Boolean GetNormalToSurface(const Handle_Geom_Surface &aS, const Standard_Real U, const Standard_Real V, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void GetPlanes(const TopoDS_Edge &aSp, const TopoDS_Edge &aE2, const TopTools_IndexedDataMapOfShapeListOfShape &aEFMap2, const TopoDS_Edge &aE1, const TopoDS_Face &aF1, TopAbs_State & aST1, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		TopAbs_Orientation Orientation(const TopoDS_Edge &aE, const TopoDS_Face &aF);
		%feature("autodoc", "1");
		static		Standard_Real SignDistance(const gp_Pnt &aP, const gp_Pln &aPL);
		%feature("autodoc", "1");
		static		void GetApproxNormalToFaceOnEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, gp_Pnt & aPx, gp_Dir & aD);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, const Standard_Real aDt2D, gp_Pnt2d & aP2D, gp_Pnt & aPx);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aT, gp_Pnt2d & aP2D, gp_Pnt & aPx);
		%feature("autodoc", "1");
		static		void PointNearEdge(const TopoDS_Edge &aE, const TopoDS_Face &aF, gp_Pnt2d & aP2D, gp_Pnt & aPx);
		%feature("autodoc", "1");
		static		void PointToCompare(const gp_Pnt &aP1, const gp_Pnt &aP2, const TopoDS_Face &aF, gp_Pnt & aPx, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		void GetPlane(const TopoDS_Edge &aSp, const TopoDS_Edge &aE1, const TopoDS_Face &aF1, const TopoDS_Face &aF2, TopAbs_State & aST, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		void GetPointState(const TopoDS_Edge &aSp, const TopoDS_Edge &aEF2, const TopoDS_Face &aF2Adj, const TopoDS_Face &aF1, TopAbs_State & aST);
		%feature("autodoc", "1");
		static		void OrientEdgeOnFace(const TopoDS_Edge &aE, const TopoDS_Face &aF, TopoDS_Edge & aER);
		%feature("autodoc", "1");
		static		TopAbs_Orientation OrientTouchEdgeOnF1(const TopoDS_Edge &aSp, const TopoDS_Edge &aEx, const TopoDS_Face &aF1, const TopoDS_Face &aF2);
		%feature("autodoc", "1");
		static		void GetSeams(const TopoDS_Face &aF, TopoDS_Edge & aSimm1, TopoDS_Edge & aSimm2);
		%feature("autodoc", "1");
		static		void GetSeam(const TopoDS_Face &aF, const TopoDS_Edge &aS1, TopoDS_Edge & aS2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsValidArea(const TopoDS_Face &aF, Standard_Boolean & aNegativeFlag);
		%feature("autodoc", "1");
		static		Standard_Real MinStepIn2d();
		%feature("autodoc", "1");
		static		Standard_Boolean IsEmptyShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		static		void InvertShape(const TopoDS_Shape &aS, TopoDS_Shape & aSInv);
		%feature("autodoc", "1");
		static		TopAbs_State GetStatePartIN2D(const TopoDS_Edge &aSp, const TopoDS_Edge &aEF1, const TopoDS_Face &aF1, const TopoDS_Face &aF2, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		Standard_Boolean CheckSameDomainFaceInside(const TopoDS_Face &theFace1, const TopoDS_Face &theFace2, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean ComputeFaceState(const TopoDS_Face &theFace, const TopoDS_Solid &theRef, IntTools_Context & theContext, TopAbs_State & theState);
		%feature("autodoc", "1");
		static		Standard_Boolean TreatedAsAnalytic(const Standard_Real aTx, const gp_Pnt &aPx, const TopoDS_Edge &aEx, const TopoDS_Face &aFx, const TopoDS_Edge &aE1, const TopoDS_Face &aF1, const Standard_Real aTolTangent, const Standard_Real aTolRadius, TopAbs_State & aState, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		Standard_Boolean TreatedAsAnalytic(const TopoDS_Face &aFx, const TopoDS_Edge &aSpE1, const TopoDS_Face &aF1, const Standard_Real aTolTangent, const Standard_Real aTolRadius, TopAbs_State & aState, IntTools_Context & aContext);
		%feature("autodoc", "1");
		static		Standard_Boolean HasAnalyticSurfaceType(const TopoDS_Face &aF);

};
%feature("shadow") BOPTools_Tools3D::~BOPTools_Tools3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Tools3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CArray1OfPave;
class BOPTools_CArray1OfPave {
	public:
		%feature("autodoc", "1");
		BOPTools_CArray1OfPave(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const BOPTools_Pave &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BOPTools_Pave & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BOPTools_Pave & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BOPTools_Pave & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BOPTools_Pave & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};
%feature("shadow") BOPTools_CArray1OfPave::~BOPTools_CArray1OfPave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CArray1OfPave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock;
class BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock(const BOPTools_PaveBlock &K1, const Standard_Integer K2, const BOPTools_IMapOfPaveBlock &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Key1() const;
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
		BOPTools_IMapOfPaveBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock {
	Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock GetHandle() {
	return *(Handle_BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock*) &$self;
	}
};
%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock::~BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapNodeOfIDMapOfPaveBlockIMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_CheckResult;
class BOPTools_CheckResult {
	public:
		%feature("autodoc", "1");
		BOPTools_CheckResult();
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetShapes() const;
		%feature("autodoc", "1");
		void SetCheckStatus(const BOPTools_CheckStatus TheStatus);
		%feature("autodoc", "1");
		BOPTools_CheckStatus GetCheckStatus() const;
		%feature("autodoc", "1");
		void SetInterferenceGeometry(const Handle_Geom_Geometry &TheGeometry);
		%feature("autodoc", "1");
		const Handle_Geom_Geometry & GetInterferenceGeometry() const;

};
%feature("shadow") BOPTools_CheckResult::~BOPTools_CheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_CheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfCheckResults;
class BOPTools_ListOfCheckResults {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfCheckResults();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfCheckResults &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfCheckResults &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CheckResult &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CheckResult &I, BOPTools_ListIteratorOfListOfCheckResults & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfCheckResults & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_CheckResult &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_CheckResult &I, BOPTools_ListIteratorOfListOfCheckResults & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfCheckResults & Other);
		%feature("autodoc", "1");
		BOPTools_CheckResult & First() const;
		%feature("autodoc", "1");
		BOPTools_CheckResult & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfCheckResults & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_CheckResult &I, BOPTools_ListIteratorOfListOfCheckResults & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfCheckResults & Other, BOPTools_ListIteratorOfListOfCheckResults & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_CheckResult &I, BOPTools_ListIteratorOfListOfCheckResults & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfCheckResults & Other, BOPTools_ListIteratorOfListOfCheckResults & It);

};
%feature("shadow") BOPTools_ListOfCheckResults::~BOPTools_ListOfCheckResults %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfCheckResults {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfPaveBlock;
class BOPTools_ListOfPaveBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfPaveBlock();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfPaveBlock &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfPaveBlock &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_PaveBlock &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_PaveBlock &I, BOPTools_ListIteratorOfListOfPaveBlock & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfPaveBlock & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_PaveBlock &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_PaveBlock &I, BOPTools_ListIteratorOfListOfPaveBlock & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfPaveBlock & Other);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & First() const;
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfPaveBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_PaveBlock &I, BOPTools_ListIteratorOfListOfPaveBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfPaveBlock & Other, BOPTools_ListIteratorOfListOfPaveBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_PaveBlock &I, BOPTools_ListIteratorOfListOfPaveBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfPaveBlock & Other, BOPTools_ListIteratorOfListOfPaveBlock & It);

};
%feature("shadow") BOPTools_ListOfPaveBlock::~BOPTools_ListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_SSInterference;
class BOPTools_SSInterference : public BOPTools_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_SSInterference();
		%feature("autodoc", "1");
		BOPTools_SSInterference(const Standard_Integer anIndex1, const Standard_Integer anIndex2, const Standard_Real aTolR3D, const Standard_Real aTolR2D, const IntTools_SequenceOfCurves &aCurves, const IntTools_SequenceOfPntOn2Faces &aPnts);
		%feature("autodoc", "1");
		void AppendBlock(const BOPTools_PaveBlock &aPB);
		%feature("autodoc", "1");
		const BOPTools_ListOfPaveBlock & PaveBlocks() const;
		%feature("autodoc", "1");
		BOPTools_PaveSet & NewPaveSet();
		%feature("autodoc", "1");
		Standard_Real TolR3D() const;
		%feature("autodoc", "1");
		Standard_Real TolR2D() const;
		%feature("autodoc", "1");
		BOPTools_SequenceOfCurves & Curves();
		%feature("autodoc", "1");
		void SetTangentFacesFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean IsTangentFaces() const;
		%feature("autodoc", "1");
		void SetSenseFlag(const Standard_Integer aFlag);
		%feature("autodoc", "1");
		Standard_Integer SenseFlag() const;
		%feature("autodoc", "1");
		void SetStatesMap(const BOPTools_IndexedDataMapOfIntegerState &aStatesMap);
		%feature("autodoc", "1");
		const BOPTools_IndexedDataMapOfIntegerState & StatesMap() const;
		%feature("autodoc", "1");
		void SetAlonePnts(const IntTools_SequenceOfPntOn2Faces &aPnts);
		%feature("autodoc", "1");
		const IntTools_SequenceOfPntOn2Faces & AlonePnts() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & AloneVertices();
		%feature("autodoc", "1");
		void SetSharedEdges(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & SharedEdges() const;

};
%feature("shadow") BOPTools_SSInterference::~BOPTools_SSInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_SSInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PaveSet;
class BOPTools_PaveSet {
	public:
		%feature("autodoc", "1");
		BOPTools_PaveSet();
		%feature("autodoc", "1");
		BOPTools_ListOfPave & ChangeSet();
		%feature("autodoc", "1");
		const BOPTools_ListOfPave & Set() const;
		%feature("autodoc", "1");
		void Append(const BOPTools_Pave &aPave);
		%feature("autodoc", "1");
		void SortSet();

};
%feature("shadow") BOPTools_PaveSet::~BOPTools_PaveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PaveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PaveBlockMapHasher;
class BOPTools_PaveBlockMapHasher {
	public:
		%feature("autodoc", "1");
		BOPTools_PaveBlockMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BOPTools_PaveBlock &aPB, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BOPTools_PaveBlock &aPB1, const BOPTools_PaveBlock &aPB2);

};
%feature("shadow") BOPTools_PaveBlockMapHasher::~BOPTools_PaveBlockMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PaveBlockMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfInterference;
class BOPTools_ListOfInterference {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfInterference();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfInterference &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfInterference &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_Interference &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_Interference &I, BOPTools_ListIteratorOfListOfInterference & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfInterference & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_Interference &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_Interference &I, BOPTools_ListIteratorOfListOfInterference & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfInterference & Other);
		%feature("autodoc", "1");
		BOPTools_Interference & First() const;
		%feature("autodoc", "1");
		BOPTools_Interference & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_Interference &I, BOPTools_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfInterference & Other, BOPTools_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_Interference &I, BOPTools_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfInterference & Other, BOPTools_ListIteratorOfListOfInterference & It);

};
%feature("shadow") BOPTools_ListOfInterference::~BOPTools_ListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListNodeOfListOfShapeEnum;
class BOPTools_ListNodeOfListOfShapeEnum : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_ListNodeOfListOfShapeEnum(const TopAbs_ShapeEnum &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOPTools_ListNodeOfListOfShapeEnum {
	Handle_BOPTools_ListNodeOfListOfShapeEnum GetHandle() {
	return *(Handle_BOPTools_ListNodeOfListOfShapeEnum*) &$self;
	}
};
%extend BOPTools_ListNodeOfListOfShapeEnum {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_ListNodeOfListOfShapeEnum::~BOPTools_ListNodeOfListOfShapeEnum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListNodeOfListOfShapeEnum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapOfIntegerState;
class BOPTools_IndexedDataMapOfIntegerState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerState & Assign(const BOPTools_IndexedDataMapOfIntegerState &Other);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerState & operator=(const BOPTools_IndexedDataMapOfIntegerState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const BooleanOperations_StateOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const BooleanOperations_StateOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BooleanOperations_StateOfShape & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape & ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") BOPTools_IndexedDataMapOfIntegerState::~BOPTools_IndexedDataMapOfIntegerState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapOfIntegerState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_PCurveMaker;
class BOPTools_PCurveMaker {
	public:
		%feature("autodoc", "1");
		BOPTools_PCurveMaker(const BOPTools_PaveFiller &aFiller);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") BOPTools_PCurveMaker::~BOPTools_PCurveMaker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_PCurveMaker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedDataMapOfIntegerDEInfo;
class BOPTools_IndexedDataMapOfIntegerDEInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerDEInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerDEInfo & Assign(const BOPTools_IndexedDataMapOfIntegerDEInfo &Other);
		%feature("autodoc", "1");
		BOPTools_IndexedDataMapOfIntegerDEInfo & operator=(const BOPTools_IndexedDataMapOfIntegerDEInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const BOPTools_DEInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const BOPTools_DEInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_DEInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOPTools_DEInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOPTools_DEInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOPTools_DEInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BOPTools_DEInfo & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BOPTools_DEInfo & ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") BOPTools_IndexedDataMapOfIntegerDEInfo::~BOPTools_IndexedDataMapOfIntegerDEInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedDataMapOfIntegerDEInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListOfCommonBlock;
class BOPTools_ListOfCommonBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_ListOfCommonBlock();
		%feature("autodoc", "1");
		void Assign(const BOPTools_ListOfCommonBlock &Other);
		%feature("autodoc", "1");
		void operator=(const BOPTools_ListOfCommonBlock &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CommonBlock &I);
		%feature("autodoc", "1");
		void Prepend(const BOPTools_CommonBlock &I, BOPTools_ListIteratorOfListOfCommonBlock & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTools_ListOfCommonBlock & Other);
		%feature("autodoc", "1");
		void Append(const BOPTools_CommonBlock &I);
		%feature("autodoc", "1");
		void Append(const BOPTools_CommonBlock &I, BOPTools_ListIteratorOfListOfCommonBlock & theIt);
		%feature("autodoc", "1");
		void Append(BOPTools_ListOfCommonBlock & Other);
		%feature("autodoc", "1");
		BOPTools_CommonBlock & First() const;
		%feature("autodoc", "1");
		BOPTools_CommonBlock & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOPTools_CommonBlock &I, BOPTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTools_ListOfCommonBlock & Other, BOPTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOPTools_CommonBlock &I, BOPTools_ListIteratorOfListOfCommonBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTools_ListOfCommonBlock & Other, BOPTools_ListIteratorOfListOfCommonBlock & It);

};
%feature("shadow") BOPTools_ListOfCommonBlock::~BOPTools_ListOfCommonBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListOfCommonBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_ListIteratorOfListOfPaveBlock;
class BOPTools_ListIteratorOfListOfPaveBlock {
	public:
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfPaveBlock();
		%feature("autodoc", "1");
		BOPTools_ListIteratorOfListOfPaveBlock(const BOPTools_ListOfPaveBlock &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTools_ListOfPaveBlock &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Value() const;

};
%feature("shadow") BOPTools_ListIteratorOfListOfPaveBlock::~BOPTools_ListIteratorOfListOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_ListIteratorOfListOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_Pave;
class BOPTools_Pave {
	public:
		%feature("autodoc", "1");
		BOPTools_Pave();
		%feature("autodoc", "1");
		BOPTools_Pave(const Standard_Integer Index, const Standard_Real aParam, const BooleanOperations_KindOfInterference aType=BooleanOperations_UnknownInterference);
		%feature("autodoc", "1");
		void SetParam(const Standard_Real aParam);
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetType(const BooleanOperations_KindOfInterference aType);
		%feature("autodoc", "1");
		void SetInterference(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real Param() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		BooleanOperations_KindOfInterference Type() const;
		%feature("autodoc", "1");
		Standard_Integer Interference() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTools_Pave &Other) const;

};
%feature("shadow") BOPTools_Pave::~BOPTools_Pave %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_Pave {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPTools_IndexedMapNodeOfIMapOfPaveBlock;
class BOPTools_IndexedMapNodeOfIMapOfPaveBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTools_IndexedMapNodeOfIMapOfPaveBlock(const BOPTools_PaveBlock &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTools_PaveBlock & Key1() const;
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
%extend BOPTools_IndexedMapNodeOfIMapOfPaveBlock {
	Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock GetHandle() {
	return *(Handle_BOPTools_IndexedMapNodeOfIMapOfPaveBlock*) &$self;
	}
};
%extend BOPTools_IndexedMapNodeOfIMapOfPaveBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOPTools_IndexedMapNodeOfIMapOfPaveBlock::~BOPTools_IndexedMapNodeOfIMapOfPaveBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPTools_IndexedMapNodeOfIMapOfPaveBlock {
	void _kill_pointed() {
		delete $self;
	}
};
