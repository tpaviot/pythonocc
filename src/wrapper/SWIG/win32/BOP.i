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
%module BOP
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BOP_dependencies.i


%include BOP_headers.i

typedef BOP_Builder * BOP_PBuilder;
typedef BRepClass3d_SolidClassifier * BOP_PSoClassif;
typedef BOP_ShellFaceSet * BOP_PShellFaceSet;
typedef BOP_WireEdgeSet * BOP_PWireEdgeSet;

enum BOP_LoopEnum {
	BOP_ANYLOOP,
	BOP_BOUNDARY,
	BOP_BLOCK,
	};

enum BOP_Operation {
	BOP_COMMON,
	BOP_FUSE,
	BOP_CUT,
	BOP_CUT21,
	BOP_SECTION,
	BOP_UNKNOWN,
	};

enum BOP_CheckStatus {
	BOP_CheckUnknown,
	BOP_BadType,
	BOP_SelfIntersect,
	BOP_TooSmallEdge,
	BOP_NonRecoverableFace,
	BOP_IncompatibilityOfVertex,
	BOP_IncompatibilityOfEdge,
	BOP_IncompatibilityOfFace,
	};



%nodefaultctor Handle_BOP_SequenceNodeOfSeqOfSeqOfShape;
class Handle_BOP_SequenceNodeOfSeqOfSeqOfShape : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape();
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape(const Handle_BOP_SequenceNodeOfSeqOfSeqOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape(const BOP_SequenceNodeOfSeqOfSeqOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape & operator=(const Handle_BOP_SequenceNodeOfSeqOfSeqOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape & operator=(const BOP_SequenceNodeOfSeqOfSeqOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SequenceNodeOfSeqOfSeqOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_SequenceNodeOfSeqOfSeqOfShape {
	BOP_SequenceNodeOfSeqOfSeqOfShape* GetObject() {
	return (BOP_SequenceNodeOfSeqOfSeqOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_SequenceNodeOfSeqOfSeqOfShape::~Handle_BOP_SequenceNodeOfSeqOfSeqOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_SequenceNodeOfSeqOfSeqOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_Loop;
class Handle_BOP_Loop : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BOP_Loop();
		%feature("autodoc", "1");
		Handle_BOP_Loop(const Handle_BOP_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_Loop(const BOP_Loop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_Loop & operator=(const Handle_BOP_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_Loop & operator=(const BOP_Loop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_Loop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_Loop {
	BOP_Loop* GetObject() {
	return (BOP_Loop*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_Loop::~Handle_BOP_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_HistoryCollector;
class Handle_BOP_HistoryCollector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector();
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector(const Handle_BOP_HistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector(const BOP_HistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector & operator=(const Handle_BOP_HistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector & operator=(const BOP_HistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_HistoryCollector {
	BOP_HistoryCollector* GetObject() {
	return (BOP_HistoryCollector*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_HistoryCollector::~Handle_BOP_HistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_HistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ShellSolidHistoryCollector;
class Handle_BOP_ShellSolidHistoryCollector : public Handle_BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector();
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector(const Handle_BOP_ShellSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector(const BOP_ShellSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector & operator=(const Handle_BOP_ShellSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector & operator=(const BOP_ShellSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ShellSolidHistoryCollector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ShellSolidHistoryCollector {
	BOP_ShellSolidHistoryCollector* GetObject() {
	return (BOP_ShellSolidHistoryCollector*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ShellSolidHistoryCollector::~Handle_BOP_ShellSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ShellSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfListOfLoop;
class Handle_BOP_ListNodeOfListOfListOfLoop : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop(const Handle_BOP_ListNodeOfListOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop(const BOP_ListNodeOfListOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop & operator=(const Handle_BOP_ListNodeOfListOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop & operator=(const BOP_ListNodeOfListOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfListOfLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfListOfLoop {
	BOP_ListNodeOfListOfListOfLoop* GetObject() {
	return (BOP_ListNodeOfListOfListOfLoop*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfListOfLoop::~Handle_BOP_ListNodeOfListOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_WireSolidHistoryCollector;
class Handle_BOP_WireSolidHistoryCollector : public Handle_BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector();
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector(const Handle_BOP_WireSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector(const BOP_WireSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector & operator=(const Handle_BOP_WireSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector & operator=(const BOP_WireSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_WireSolidHistoryCollector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_WireSolidHistoryCollector {
	BOP_WireSolidHistoryCollector* GetObject() {
	return (BOP_WireSolidHistoryCollector*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_WireSolidHistoryCollector::~Handle_BOP_WireSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_WireSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier;
class Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier();
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier & operator=(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier & operator=(const BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier* GetObject() {
	return (BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::~Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfEdgeInfo;
class Handle_BOP_ListNodeOfListOfEdgeInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo(const Handle_BOP_ListNodeOfListOfEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo(const BOP_ListNodeOfListOfEdgeInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo & operator=(const Handle_BOP_ListNodeOfListOfEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo & operator=(const BOP_ListNodeOfListOfEdgeInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfEdgeInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfEdgeInfo {
	BOP_ListNodeOfListOfEdgeInfo* GetObject() {
	return (BOP_ListNodeOfListOfEdgeInfo*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfEdgeInfo::~Handle_BOP_ListNodeOfListOfEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo;
class Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo();
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo(const BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo & operator=(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo & operator=(const BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo {
	BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo* GetObject() {
	return (BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo::~Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo;
class Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo();
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo(const BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo & operator=(const Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo & operator=(const BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo {
	BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo* GetObject() {
	return (BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo::~Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfCheckResult;
class Handle_BOP_ListNodeOfListOfCheckResult : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult(const Handle_BOP_ListNodeOfListOfCheckResult &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult(const BOP_ListNodeOfListOfCheckResult *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult & operator=(const Handle_BOP_ListNodeOfListOfCheckResult &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult & operator=(const BOP_ListNodeOfListOfCheckResult *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfCheckResult const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfCheckResult {
	BOP_ListNodeOfListOfCheckResult* GetObject() {
	return (BOP_ListNodeOfListOfCheckResult*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfCheckResult::~Handle_BOP_ListNodeOfListOfCheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfCheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_SolidSolidHistoryCollector;
class Handle_BOP_SolidSolidHistoryCollector : public Handle_BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector();
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector(const Handle_BOP_SolidSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector(const BOP_SolidSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector & operator=(const Handle_BOP_SolidSolidHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector & operator=(const BOP_SolidSolidHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SolidSolidHistoryCollector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_SolidSolidHistoryCollector {
	BOP_SolidSolidHistoryCollector* GetObject() {
	return (BOP_SolidSolidHistoryCollector*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_SolidSolidHistoryCollector::~Handle_BOP_SolidSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_SolidSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfLoop;
class Handle_BOP_ListNodeOfListOfLoop : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop(const Handle_BOP_ListNodeOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop(const BOP_ListNodeOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop & operator=(const Handle_BOP_ListNodeOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop & operator=(const BOP_ListNodeOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfLoop {
	BOP_ListNodeOfListOfLoop* GetObject() {
	return (BOP_ListNodeOfListOfLoop*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfLoop::~Handle_BOP_ListNodeOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_SectionHistoryCollector;
class Handle_BOP_SectionHistoryCollector : public Handle_BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector();
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector(const Handle_BOP_SectionHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector(const BOP_SectionHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector & operator=(const Handle_BOP_SectionHistoryCollector &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector & operator=(const BOP_SectionHistoryCollector *anItem);
		%feature("autodoc", "1");
		Handle_BOP_SectionHistoryCollector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_SectionHistoryCollector {
	BOP_SectionHistoryCollector* GetObject() {
	return (BOP_SectionHistoryCollector*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_SectionHistoryCollector::~Handle_BOP_SectionHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_SectionHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfFaceInfo;
class Handle_BOP_ListNodeOfListOfFaceInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo(const Handle_BOP_ListNodeOfListOfFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo(const BOP_ListNodeOfListOfFaceInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo & operator=(const Handle_BOP_ListNodeOfListOfFaceInfo &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo & operator=(const BOP_ListNodeOfListOfFaceInfo *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfFaceInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfFaceInfo {
	BOP_ListNodeOfListOfFaceInfo* GetObject() {
	return (BOP_ListNodeOfListOfFaceInfo*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfFaceInfo::~Handle_BOP_ListNodeOfListOfFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BOP_ListNodeOfListOfConnexityBlock;
class Handle_BOP_ListNodeOfListOfConnexityBlock : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock();
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock(const Handle_BOP_ListNodeOfListOfConnexityBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock(const BOP_ListNodeOfListOfConnexityBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock & operator=(const Handle_BOP_ListNodeOfListOfConnexityBlock &aHandle);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock & operator=(const BOP_ListNodeOfListOfConnexityBlock *anItem);
		%feature("autodoc", "1");
		Handle_BOP_ListNodeOfListOfConnexityBlock const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOP_ListNodeOfListOfConnexityBlock {
	BOP_ListNodeOfListOfConnexityBlock* GetObject() {
	return (BOP_ListNodeOfListOfConnexityBlock*)$self->Access();
	}
};
%feature("shadow") Handle_BOP_ListNodeOfListOfConnexityBlock::~Handle_BOP_ListNodeOfListOfConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BOP_ListNodeOfListOfConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfCheckResult;
class BOP_ListIteratorOfListOfCheckResult {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfCheckResult();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfCheckResult(const BOP_ListOfCheckResult &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfCheckResult &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOP_CheckResult & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfCheckResult::~BOP_ListIteratorOfListOfCheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfCheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfListOfLoop;
class BOP_ListNodeOfListOfListOfLoop : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfListOfLoop(const BOP_ListOfLoop &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOP_ListOfLoop & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfListOfLoop {
	Handle_BOP_ListNodeOfListOfListOfLoop GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfListOfLoop*) &$self;
	}
};
%extend BOP_ListNodeOfListOfListOfLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfListOfLoop::~BOP_ListNodeOfListOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_HistoryCollector;
class BOP_HistoryCollector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void SetResult(const TopoDS_Shape &theResult, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_HistoryCollector {
	Handle_BOP_HistoryCollector GetHandle() {
	return *(Handle_BOP_HistoryCollector*) &$self;
	}
};
%extend BOP_HistoryCollector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_HistoryCollector::~BOP_HistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_HistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SectionHistoryCollector;
class BOP_SectionHistoryCollector : public BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		BOP_SectionHistoryCollector(const TopoDS_Shape &theShape1, const TopoDS_Shape &theShape2);

};
%extend BOP_SectionHistoryCollector {
	Handle_BOP_SectionHistoryCollector GetHandle() {
	return *(Handle_BOP_SectionHistoryCollector*) &$self;
	}
};
%extend BOP_SectionHistoryCollector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_SectionHistoryCollector::~BOP_SectionHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SectionHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Builder;
class BOP_Builder {
	public:
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		void SetOperation(const BOP_Operation anOp);
		%feature("autodoc", "1");
		void SetManifoldFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;
		%feature("autodoc", "1");
		BOP_Operation Operation() const;
		%feature("autodoc", "1");
		Standard_Boolean ManifoldFlag() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Result() const;
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void BuildResult();
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void SortTypes(TopAbs_ShapeEnum & aType1, TopAbs_ShapeEnum & aType2);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape &aS) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape &aS) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionEdges() const;
		%feature("autodoc", "1");
		virtual		void SetHistoryCollector(const Handle_BOP_HistoryCollector &theHistory);
		%feature("autodoc", "1");
		Handle_BOP_HistoryCollector GetHistoryCollector() const;

};
%feature("shadow") BOP_Builder::~BOP_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireSolidHistoryCollector;
class BOP_WireSolidHistoryCollector : public BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		BOP_WireSolidHistoryCollector(const TopoDS_Shape &theShape1, const TopoDS_Shape &theShape2, const BOP_Operation theOperation);
		%feature("autodoc", "1");
		virtual		void SetResult(const TopoDS_Shape &theResult, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_WireSolidHistoryCollector {
	Handle_BOP_WireSolidHistoryCollector GetHandle() {
	return *(Handle_BOP_WireSolidHistoryCollector*) &$self;
	}
};
%extend BOP_WireSolidHistoryCollector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_WireSolidHistoryCollector::~BOP_WireSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_EdgeInfo;
class BOP_EdgeInfo {
	public:
		%feature("autodoc", "1");
		BOP_EdgeInfo();
		%feature("autodoc", "1");
		void SetEdge(const TopoDS_Edge &aE);
		%feature("autodoc", "1");
		void SetPassed(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		void SetInFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		Standard_Boolean Passed() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn() const;

};
%feature("shadow") BOP_EdgeInfo::~BOP_EdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_EdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SolidSolidHistoryCollector;
class BOP_SolidSolidHistoryCollector : public BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		BOP_SolidSolidHistoryCollector(const TopoDS_Shape &theShape1, const TopoDS_Shape &theShape2, const BOP_Operation theOperation);
		%feature("autodoc", "1");
		void AddNewShape(const TopoDS_Shape &theOldShape, const TopoDS_Shape &theNewShape, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		void SetResult(const TopoDS_Shape &theResult, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_SolidSolidHistoryCollector {
	Handle_BOP_SolidSolidHistoryCollector GetHandle() {
	return *(Handle_BOP_SolidSolidHistoryCollector*) &$self;
	}
};
%extend BOP_SolidSolidHistoryCollector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_SolidSolidHistoryCollector::~BOP_SolidSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SolidSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireShape;
class BOP_WireShape : public BOP_Builder {
	public:
		%feature("autodoc", "1");
		BOP_WireShape();
		%feature("autodoc", "1");
		void AddSplitPartsINOUT();
		%feature("autodoc", "1");
		void AddSplitPartsON();
		%feature("autodoc", "1");
		void MakeResult();

};
%feature("shadow") BOP_WireShape::~BOP_WireShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireSolid;
class BOP_WireSolid : public BOP_WireShape {
	public:
		%feature("autodoc", "1");
		BOP_WireSolid();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void BuildResult();
		%feature("autodoc", "1");
		Standard_Boolean CheckArgTypes(const TopAbs_ShapeEnum theType1, const TopAbs_ShapeEnum theType2, const BOP_Operation theOperation);
		%feature("autodoc", "1");
		virtual		void SetHistoryCollector(const Handle_BOP_HistoryCollector &theHistory);

};
%feature("shadow") BOP_WireSolid::~BOP_WireSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfFaceInfo;
class BOP_ListIteratorOfListOfFaceInfo {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfFaceInfo();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfFaceInfo(const BOP_ListOfFaceInfo &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfFaceInfo &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOP_FaceInfo & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfFaceInfo::~BOP_ListIteratorOfListOfFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfEdgeInfo;
class BOP_ListIteratorOfListOfEdgeInfo {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfEdgeInfo();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfEdgeInfo(const BOP_ListOfEdgeInfo &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfEdgeInfo &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOP_EdgeInfo & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfEdgeInfo::~BOP_ListIteratorOfListOfEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_AreaBuilder;
class BOP_AreaBuilder {
	public:
		%feature("autodoc", "1");
		BOP_AreaBuilder();
		%feature("autodoc", "1");
		BOP_AreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		Standard_Integer InitArea();
		%feature("autodoc", "1");
		Standard_Boolean MoreArea() const;
		%feature("autodoc", "1");
		void NextArea();
		%feature("autodoc", "1");
		Standard_Integer InitLoop();
		%feature("autodoc", "1");
		Standard_Boolean MoreLoop() const;
		%feature("autodoc", "1");
		void NextLoop();
		%feature("autodoc", "1");
		const Handle_BOP_Loop & Loop() const;
		%feature("autodoc", "1");
		virtual		void ADD_Loop_TO_LISTOFLoop(const Handle_BOP_Loop &L, BOP_ListOfLoop & LOL) const;
		%feature("autodoc", "1");
		virtual		void REM_Loop_FROM_LISTOFLoop(BOP_ListIteratorOfListOfLoop & ITLOL, BOP_ListOfLoop & LOL) const;
		%feature("autodoc", "1");
		virtual		void ADD_LISTOFLoop_TO_LISTOFLoop(BOP_ListOfLoop & LOL1, BOP_ListOfLoop & LOL2) const;

};
%feature("shadow") BOP_AreaBuilder::~BOP_AreaBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_AreaBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Area3dBuilder;
class BOP_Area3dBuilder : public BOP_AreaBuilder {
	public:
		%feature("autodoc", "1");
		BOP_Area3dBuilder();
		%feature("autodoc", "1");
		BOP_Area3dBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass);

};
%feature("shadow") BOP_Area3dBuilder::~BOP_Area3dBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Area3dBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo;
class BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo(const TopoDS_Shape &K1, const Standard_Integer K2, const BOP_ListOfFaceInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BOP_ListOfFaceInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo {
	Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo GetHandle() {
	return *(Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo*) &$self;
	}
};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo::~BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfEdgeListFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Draw;
class BOP_Draw {
	public:
		%feature("autodoc", "1");
		BOP_Draw();
		%feature("autodoc", "1");
		void DrawListOfShape(const TopTools_ListOfShape &aList, const char * aName);
		%feature("autodoc", "1");
		void DrawListOfEdgesWithPC(const TopoDS_Face &aFace, const TopTools_ListOfShape &aList, const char * aName);
		%feature("autodoc", "1");
		void DrawListOfEdgesWithPC(const TopoDS_Face &aFace, const TopTools_ListOfShape &aList, const Standard_Integer anInd, const char * aName);
		%feature("autodoc", "1");
		void DrawEdgeWithPC(const TopoDS_Face &aFace, const TopoDS_Edge &aEdge, const char * aName);
		%feature("autodoc", "1");
		void Wait();

};
%feature("shadow") BOP_Draw::~BOP_Draw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Draw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfLoop;
class BOP_ListOfLoop {
	public:
		%feature("autodoc", "1");
		BOP_ListOfLoop();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfLoop &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfLoop &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_BOP_Loop &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_BOP_Loop &I, BOP_ListIteratorOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfLoop & Other);
		%feature("autodoc", "1");
		void Append(const Handle_BOP_Loop &I);
		%feature("autodoc", "1");
		void Append(const Handle_BOP_Loop &I, BOP_ListIteratorOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfLoop & Other);
		%feature("autodoc", "1");
		Handle_BOP_Loop & First() const;
		%feature("autodoc", "1");
		Handle_BOP_Loop & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_BOP_Loop &I, BOP_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfLoop & Other, BOP_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_BOP_Loop &I, BOP_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfLoop & Other, BOP_ListIteratorOfListOfLoop & It);

};
%feature("shadow") BOP_ListOfLoop::~BOP_ListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_EmptyBuilder;
class BOP_EmptyBuilder : public BOP_Builder {
	public:
		%feature("autodoc", "1");
		BOP_EmptyBuilder();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void BuildResult();

};
%feature("shadow") BOP_EmptyBuilder::~BOP_EmptyBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_EmptyBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_BlockIterator;
class BOP_BlockIterator {
	public:
		%feature("autodoc", "1");
		BOP_BlockIterator();
		%feature("autodoc", "1");
		BOP_BlockIterator(const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		void Initialize();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;

};
%feature("shadow") BOP_BlockIterator::~BOP_BlockIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_BlockIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WESCorrector;
class BOP_WESCorrector {
	public:
		%feature("autodoc", "1");
		BOP_WESCorrector();
		%feature("autodoc", "1");
		void SetWES(const BOP_WireEdgeSet &aWES);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		BOP_WireEdgeSet & WES();
		%feature("autodoc", "1");
		BOP_WireEdgeSet & NewWES();

};
%feature("shadow") BOP_WESCorrector::~BOP_WESCorrector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WESCorrector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Area2dBuilder;
class BOP_Area2dBuilder : public BOP_AreaBuilder {
	public:
		%feature("autodoc", "1");
		BOP_Area2dBuilder();
		%feature("autodoc", "1");
		BOP_Area2dBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%feature("shadow") BOP_Area2dBuilder::~BOP_Area2dBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Area2dBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_FaceAreaBuilder;
class BOP_FaceAreaBuilder : public BOP_Area2dBuilder {
	public:
		%feature("autodoc", "1");
		BOP_FaceAreaBuilder();
		%feature("autodoc", "1");
		BOP_FaceAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitFaceAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%feature("shadow") BOP_FaceAreaBuilder::~BOP_FaceAreaBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_FaceAreaBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfFaceInfo;
class BOP_ListNodeOfListOfFaceInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfFaceInfo(const BOP_FaceInfo &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOP_FaceInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfFaceInfo {
	Handle_BOP_ListNodeOfListOfFaceInfo GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfFaceInfo*) &$self;
	}
};
%extend BOP_ListNodeOfListOfFaceInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfFaceInfo::~BOP_ListNodeOfListOfFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Loop;
class BOP_Loop : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BOP_Loop(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BOP_Loop(const BOP_BlockIterator &BI);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsShape() const;
		%feature("autodoc", "1");
		virtual		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const BOP_BlockIterator & BlockIterator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_Loop {
	Handle_BOP_Loop GetHandle() {
	return *(Handle_BOP_Loop*) &$self;
	}
};
%extend BOP_Loop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_Loop::~BOP_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_LoopClassifier;
class BOP_LoopClassifier {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		TopAbs_State Compare(const Handle_BOP_Loop &L1, const Handle_BOP_Loop &L2);

};
%feature("shadow") BOP_LoopClassifier::~BOP_LoopClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_LoopClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_CompositeClassifier;
class BOP_CompositeClassifier : public BOP_LoopClassifier {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareShapes(const TopoDS_Shape &B1, const TopoDS_Shape &B2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &E, const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetShape(const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void CompareElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		TopAbs_State State();

};
%feature("shadow") BOP_CompositeClassifier::~BOP_CompositeClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_CompositeClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireEdgeClassifier;
class BOP_WireEdgeClassifier : public BOP_CompositeClassifier {
	public:
		%feature("autodoc", "1");
		BOP_WireEdgeClassifier(const TopoDS_Face &F, const BOP_BlockBuilder &BB);
		%feature("autodoc", "1");
		TopoDS_Shape LoopToShape(const Handle_BOP_Loop &L);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &E, const TopoDS_Shape &W);

};
%feature("shadow") BOP_WireEdgeClassifier::~BOP_WireEdgeClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireEdgeClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ConnexityBlock;
class BOP_ConnexityBlock {
	public:
		%feature("autodoc", "1");
		BOP_ConnexityBlock();
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &anEdges);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_IndexedMapOfOrientedShape &nEdges);
		%feature("autodoc", "1");
		void SetRegularity(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRegular() const;

};
%feature("shadow") BOP_ConnexityBlock::~BOP_ConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfEdgeInfo;
class BOP_ListNodeOfListOfEdgeInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfEdgeInfo(const BOP_EdgeInfo &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOP_EdgeInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfEdgeInfo {
	Handle_BOP_ListNodeOfListOfEdgeInfo GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfEdgeInfo*) &$self;
	}
};
%extend BOP_ListNodeOfListOfEdgeInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfEdgeInfo::~BOP_ListNodeOfListOfEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_BuilderTools;
class BOP_BuilderTools {
	public:
		%feature("autodoc", "1");
		BOP_BuilderTools();
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape StateToCompare(const Standard_Integer iRank, const BOP_Operation anOp);
		%feature("autodoc", "1");
		Standard_Boolean ToReverseSection(const Standard_Integer iRank, const BOP_Operation anOp);
		%feature("autodoc", "1");
		Standard_Boolean ToReverseFace(const Standard_Integer iRank, const BOP_Operation anOp);
		%feature("autodoc", "1");
		void OrientSectionEdgeOnF1(const TopoDS_Face &aF1, const TopoDS_Face &aF2, const Standard_Integer iRank, const BOP_Operation anOp, TopoDS_Edge & aE);
		%feature("autodoc", "1");
		Standard_Boolean IsSameDomainFaceWithF1(const Standard_Integer nF1, const Standard_Integer nF2, const TColStd_IndexedMapOfInteger &aFFM, BOPTools_CArray1OfSSInterference & aFFs);
		%feature("autodoc", "1");
		Standard_Boolean IsPartIN2DToKeep(const TopAbs_State aSt, const Standard_Integer iRank, const BOP_Operation anOp);
		%feature("autodoc", "1");
		Standard_Boolean IsPartOn2dToKeep(const TopAbs_State aSt, const Standard_Integer iRank, const BOP_Operation anOp);
		%feature("autodoc", "1");
		void DoMap(BOPTools_CArray1OfSSInterference & aFFs, BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & aFFMap);
		%feature("autodoc", "1");
		void MakeConnexityBlocks(const TopTools_ListOfShape &aLE, const TopAbs_ShapeEnum aType, BOP_ListOfConnexityBlock & aLConBlks);

};
%feature("shadow") BOP_BuilderTools::~BOP_BuilderTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_BuilderTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShapeSet;
class BOP_ShapeSet {
	public:
		%feature("autodoc", "1");
		BOP_ShapeSet(const TopAbs_ShapeEnum SubShapeType);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddStartElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void InitShapes();
		%feature("autodoc", "1");
		Standard_Boolean MoreShapes() const;
		%feature("autodoc", "1");
		void NextShape();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		void InitStartElements();
		%feature("autodoc", "1");
		Standard_Boolean MoreStartElements() const;
		%feature("autodoc", "1");
		void NextStartElement();
		%feature("autodoc", "1");
		const TopoDS_Shape & StartElement() const;
		%feature("autodoc", "1");
		virtual		void InitNeighbours(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean MoreNeighbours();
		%feature("autodoc", "1");
		void NextNeighbour();
		%feature("autodoc", "1");
		const TopoDS_Shape & Neighbour() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeStartShapes();
		%feature("autodoc", "1");
		virtual		void FindNeighbours();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & MakeNeighboursList(const TopoDS_Shape &E, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		Standard_Integer MaxNumberSubShape(const TopoDS_Shape &Shape);
		%feature("autodoc", "1");
		void ClearContents();

};
%feature("shadow") BOP_ShapeSet::~BOP_ShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellFaceSet;
class BOP_ShellFaceSet : public BOP_ShapeSet {
	public:
		%feature("autodoc", "1");
		BOP_ShellFaceSet();
		%feature("autodoc", "1");
		BOP_ShellFaceSet(const TopoDS_Solid &theSolid);
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid() const;

};
%feature("shadow") BOP_ShellFaceSet::~BOP_ShellFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SolidBuilder;
class BOP_SolidBuilder {
	public:
		%feature("autodoc", "1");
		BOP_SolidBuilder();
		%feature("autodoc", "1");
		BOP_SolidBuilder(BOP_ShellFaceSet & theSFS, const Standard_Boolean theForceClassFlag=0);
		%feature("autodoc", "1");
		void InitSolidBuilder(BOP_ShellFaceSet & theSFS, const Standard_Boolean theForceClassFlag);
		%feature("autodoc", "1");
		Standard_Integer InitSolid();
		%feature("autodoc", "1");
		Standard_Boolean MoreSolid() const;
		%feature("autodoc", "1");
		void NextSolid();
		%feature("autodoc", "1");
		Standard_Integer InitShell();
		%feature("autodoc", "1");
		Standard_Boolean MoreShell() const;
		%feature("autodoc", "1");
		void NextShell();
		%feature("autodoc", "1");
		Standard_Boolean IsOldShell() const;
		%feature("autodoc", "1");
		TopoDS_Shell OldShell() const;
		%feature("autodoc", "1");
		Standard_Integer InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;

};
%feature("shadow") BOP_SolidBuilder::~BOP_SolidBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SolidBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SolidClassifier;
class BOP_SolidClassifier {
	public:
		%feature("autodoc", "1");
		BOP_SolidClassifier();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void LoadSolid(const TopoDS_Solid &aS);
		%feature("autodoc", "1");
		TopAbs_State Classify(const TopoDS_Solid &aS, const gp_Pnt &aP, const Standard_Real aTol);
		%feature("autodoc", "1");
		void LoadShell(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		TopAbs_State Classify(const TopoDS_Shell &aS, const gp_Pnt &aP, const Standard_Real aTol);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BOP_SolidClassifier::~BOP_SolidClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SolidClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapOfEdgeListFaceInfo;
class BOP_IndexedDataMapOfEdgeListFaceInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfEdgeListFaceInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfEdgeListFaceInfo & Assign(const BOP_IndexedDataMapOfEdgeListFaceInfo &Other);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfEdgeListFaceInfo & operator=(const BOP_IndexedDataMapOfEdgeListFaceInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BOP_ListOfFaceInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BOP_ListOfFaceInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_ListOfFaceInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_ListOfFaceInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOP_ListOfFaceInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOP_ListOfFaceInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BOP_ListOfFaceInfo & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BOP_ListOfFaceInfo & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") BOP_IndexedDataMapOfEdgeListFaceInfo::~BOP_IndexedDataMapOfEdgeListFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapOfEdgeListFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier;
class BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const TopoDS_Shape &K1, const Standard_Integer K2, const BOP_PSoClassif &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BOP_PSoClassif & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier GetHandle() {
	return *(Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier*) &$self;
	}
};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier::~BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo;
class BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo(const TopoDS_Shape &K1, const Standard_Integer K2, const BOP_ListOfEdgeInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		BOP_ListOfEdgeInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo {
	Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo GetHandle() {
	return *(Handle_BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo*) &$self;
	}
};
%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo::~BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapNodeOfIndexedDataMapOfVertexListEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfConnexityBlock;
class BOP_ListOfConnexityBlock {
	public:
		%feature("autodoc", "1");
		BOP_ListOfConnexityBlock();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfConnexityBlock &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfConnexityBlock &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOP_ConnexityBlock &I);
		%feature("autodoc", "1");
		void Prepend(const BOP_ConnexityBlock &I, BOP_ListIteratorOfListOfConnexityBlock & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfConnexityBlock & Other);
		%feature("autodoc", "1");
		void Append(const BOP_ConnexityBlock &I);
		%feature("autodoc", "1");
		void Append(const BOP_ConnexityBlock &I, BOP_ListIteratorOfListOfConnexityBlock & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfConnexityBlock & Other);
		%feature("autodoc", "1");
		BOP_ConnexityBlock & First() const;
		%feature("autodoc", "1");
		BOP_ConnexityBlock & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfConnexityBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOP_ConnexityBlock &I, BOP_ListIteratorOfListOfConnexityBlock & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfConnexityBlock & Other, BOP_ListIteratorOfListOfConnexityBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOP_ConnexityBlock &I, BOP_ListIteratorOfListOfConnexityBlock & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfConnexityBlock & Other, BOP_ListIteratorOfListOfConnexityBlock & It);

};
%feature("shadow") BOP_ListOfConnexityBlock::~BOP_ListOfConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfCheckResult;
class BOP_ListNodeOfListOfCheckResult : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfCheckResult(const BOP_CheckResult &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOP_CheckResult & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfCheckResult {
	Handle_BOP_ListNodeOfListOfCheckResult GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfCheckResult*) &$self;
	}
};
%extend BOP_ListNodeOfListOfCheckResult {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfCheckResult::~BOP_ListNodeOfListOfCheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfCheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellSplitter;
class BOP_ShellSplitter {
	public:
		%feature("autodoc", "1");
		BOP_ShellSplitter();
		%feature("autodoc", "1");
		void DoWithListOfEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		void SetShell(const TopoDS_Shell &aShell);
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell() const;
		%feature("autodoc", "1");
		void DoWithShell();
		%feature("autodoc", "1");
		Standard_Boolean IsNothingToDo() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const BOPTColStd_ListOfListOfShape & Shapes() const;

};
%feature("shadow") BOP_ShellSplitter::~BOP_ShellSplitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellSplitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_CheckResult;
class BOP_CheckResult {
	public:
		%feature("autodoc", "1");
		BOP_CheckResult();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		void AddFaultyShape1(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		void AddFaultyShape2(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape2() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetFaultyShapes1() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetFaultyShapes2() const;
		%feature("autodoc", "1");
		void SetCheckStatus(const BOP_CheckStatus TheStatus);
		%feature("autodoc", "1");
		BOP_CheckStatus GetCheckStatus() const;

};
%feature("shadow") BOP_CheckResult::~BOP_CheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_CheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellFaceClassifier;
class BOP_ShellFaceClassifier : public BOP_CompositeClassifier {
	public:
		%feature("autodoc", "1");
		BOP_ShellFaceClassifier(const BOP_BlockBuilder &theBlockBuilder);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareShapes(const TopoDS_Shape &B1, const TopoDS_Shape &B2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &E, const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetShape(const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void CompareElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		TopAbs_State State();

};
%feature("shadow") BOP_ShellFaceClassifier::~BOP_ShellFaceClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellFaceClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SequenceNodeOfSeqOfSeqOfShape;
class BOP_SequenceNodeOfSeqOfSeqOfShape : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BOP_SequenceNodeOfSeqOfSeqOfShape(const TopTools_SequenceOfShape &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_SequenceNodeOfSeqOfSeqOfShape {
	Handle_BOP_SequenceNodeOfSeqOfSeqOfShape GetHandle() {
	return *(Handle_BOP_SequenceNodeOfSeqOfSeqOfShape*) &$self;
	}
};
%extend BOP_SequenceNodeOfSeqOfSeqOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_SequenceNodeOfSeqOfSeqOfShape::~BOP_SequenceNodeOfSeqOfSeqOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SequenceNodeOfSeqOfSeqOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapOfVertexListEdgeInfo;
class BOP_IndexedDataMapOfVertexListEdgeInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfVertexListEdgeInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfVertexListEdgeInfo & Assign(const BOP_IndexedDataMapOfVertexListEdgeInfo &Other);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfVertexListEdgeInfo & operator=(const BOP_IndexedDataMapOfVertexListEdgeInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BOP_ListOfEdgeInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BOP_ListOfEdgeInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_ListOfEdgeInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_ListOfEdgeInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOP_ListOfEdgeInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOP_ListOfEdgeInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BOP_ListOfEdgeInfo & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BOP_ListOfEdgeInfo & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") BOP_IndexedDataMapOfVertexListEdgeInfo::~BOP_IndexedDataMapOfVertexListEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapOfVertexListEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfListOfLoop;
class BOP_ListIteratorOfListOfListOfLoop {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfListOfLoop();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfListOfLoop(const BOP_ListOfListOfLoop &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfListOfLoop &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOP_ListOfLoop & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfListOfLoop::~BOP_ListIteratorOfListOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellSolid;
class BOP_ShellSolid : public BOP_Builder {
	public:
		%feature("autodoc", "1");
		BOP_ShellSolid();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void BuildResult();
		%feature("autodoc", "1");
		virtual		void DoNewFaces();
		%feature("autodoc", "1");
		virtual		void Prepare();
		%feature("autodoc", "1");
		Standard_Boolean CheckArgTypes(const TopAbs_ShapeEnum theType1, const TopAbs_ShapeEnum theType2, const BOP_Operation theOperation);
		%feature("autodoc", "1");
		Standard_Boolean CheckArgTypes() const;
		%feature("autodoc", "1");
		Standard_Boolean SplitFace(const Standard_Integer theFaceIndex, TopTools_DataMapOfShapeInteger & theMapOfEdgeIndex, TopTools_ListOfShape & theListOfFace) const;
		%feature("autodoc", "1");
		virtual		void SetHistoryCollector(const Handle_BOP_HistoryCollector &theHistory);

};
%feature("shadow") BOP_ShellSolid::~BOP_ShellSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellShell;
class BOP_ShellShell : public BOP_ShellSolid {
	public:
		%feature("autodoc", "1");
		BOP_ShellShell();

};
%feature("shadow") BOP_ShellShell::~BOP_ShellShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Section;
class BOP_Section : public BOP_Builder {
	public:
		%feature("autodoc", "1");
		BOP_Section();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		void Do(const Standard_Boolean toApprox, const Standard_Boolean toComputePCurve1, const Standard_Boolean toComputePCurve2);
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void SetHistoryCollector(const Handle_BOP_HistoryCollector &theHistory);

};
%feature("shadow") BOP_Section::~BOP_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Section {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfCheckResult;
class BOP_ListOfCheckResult {
	public:
		%feature("autodoc", "1");
		BOP_ListOfCheckResult();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfCheckResult &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfCheckResult &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOP_CheckResult &I);
		%feature("autodoc", "1");
		void Prepend(const BOP_CheckResult &I, BOP_ListIteratorOfListOfCheckResult & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfCheckResult & Other);
		%feature("autodoc", "1");
		void Append(const BOP_CheckResult &I);
		%feature("autodoc", "1");
		void Append(const BOP_CheckResult &I, BOP_ListIteratorOfListOfCheckResult & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfCheckResult & Other);
		%feature("autodoc", "1");
		BOP_CheckResult & First() const;
		%feature("autodoc", "1");
		BOP_CheckResult & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfCheckResult & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOP_CheckResult &I, BOP_ListIteratorOfListOfCheckResult & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfCheckResult & Other, BOP_ListIteratorOfListOfCheckResult & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOP_CheckResult &I, BOP_ListIteratorOfListOfCheckResult & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfCheckResult & Other, BOP_ListIteratorOfListOfCheckResult & It);

};
%feature("shadow") BOP_ListOfCheckResult::~BOP_ListOfCheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfCheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfFaceInfo;
class BOP_ListOfFaceInfo {
	public:
		%feature("autodoc", "1");
		BOP_ListOfFaceInfo();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfFaceInfo &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfFaceInfo &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOP_FaceInfo &I);
		%feature("autodoc", "1");
		void Prepend(const BOP_FaceInfo &I, BOP_ListIteratorOfListOfFaceInfo & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfFaceInfo & Other);
		%feature("autodoc", "1");
		void Append(const BOP_FaceInfo &I);
		%feature("autodoc", "1");
		void Append(const BOP_FaceInfo &I, BOP_ListIteratorOfListOfFaceInfo & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfFaceInfo & Other);
		%feature("autodoc", "1");
		BOP_FaceInfo & First() const;
		%feature("autodoc", "1");
		BOP_FaceInfo & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfFaceInfo & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOP_FaceInfo &I, BOP_ListIteratorOfListOfFaceInfo & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfFaceInfo & Other, BOP_ListIteratorOfListOfFaceInfo & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOP_FaceInfo &I, BOP_ListIteratorOfListOfFaceInfo & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfFaceInfo & Other, BOP_ListIteratorOfListOfFaceInfo & It);

};
%feature("shadow") BOP_ListOfFaceInfo::~BOP_ListOfFaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfFaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_FaceBuilder;
class BOP_FaceBuilder {
	public:
		%feature("autodoc", "1");
		BOP_FaceBuilder();
		%feature("autodoc", "1");
		void Do(const BOP_WireEdgeSet &aWES, const Standard_Boolean aForceClass=1);
		%feature("autodoc", "1");
		const BOP_WireEdgeSet & WES() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces() const;
		%feature("autodoc", "1");
		void SetTreatment(const Standard_Integer aTreatment);
		%feature("autodoc", "1");
		void SetManifoldFlag(const Standard_Boolean aMFlag);
		%feature("autodoc", "1");
		void SetTreatSDScales(const Standard_Integer aTreatment);
		%feature("autodoc", "1");
		Standard_Boolean ManifoldFlag() const;
		%feature("autodoc", "1");
		Standard_Integer Treatment() const;
		%feature("autodoc", "1");
		Standard_Integer TreatSDScales() const;
		%feature("autodoc", "1");
		Standard_Integer InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		Standard_Integer InitWire();
		%feature("autodoc", "1");
		Standard_Boolean MoreWire() const;
		%feature("autodoc", "1");
		void NextWire();
		%feature("autodoc", "1");
		Standard_Boolean IsOldWire() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & OldWire() const;
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;
		%feature("autodoc", "1");
		void FindNextValidElement();
		%feature("autodoc", "1");
		Standard_Integer InitEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;

};
%feature("shadow") BOP_FaceBuilder::~BOP_FaceBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_FaceBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfListOfLoop;
class BOP_ListOfListOfLoop {
	public:
		%feature("autodoc", "1");
		BOP_ListOfListOfLoop();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfListOfLoop &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfListOfLoop &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOP_ListOfLoop &I);
		%feature("autodoc", "1");
		void Prepend(const BOP_ListOfLoop &I, BOP_ListIteratorOfListOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfListOfLoop & Other);
		%feature("autodoc", "1");
		void Append(const BOP_ListOfLoop &I);
		%feature("autodoc", "1");
		void Append(const BOP_ListOfLoop &I, BOP_ListIteratorOfListOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfListOfLoop & Other);
		%feature("autodoc", "1");
		BOP_ListOfLoop & First() const;
		%feature("autodoc", "1");
		BOP_ListOfLoop & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOP_ListOfLoop &I, BOP_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfListOfLoop & Other, BOP_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOP_ListOfLoop &I, BOP_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfListOfLoop & Other, BOP_ListIteratorOfListOfListOfLoop & It);

};
%feature("shadow") BOP_ListOfListOfLoop::~BOP_ListOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfLoop;
class BOP_ListNodeOfListOfLoop : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfLoop(const Handle_BOP_Loop &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_BOP_Loop & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfLoop {
	Handle_BOP_ListNodeOfListOfLoop GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfLoop*) &$self;
	}
};
%extend BOP_ListNodeOfListOfLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfLoop::~BOP_ListNodeOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_BlockBuilder;
class BOP_BlockBuilder {
	public:
		%feature("autodoc", "1");
		BOP_BlockBuilder();
		%feature("autodoc", "1");
		BOP_BlockBuilder(BOP_ShapeSet & SS);
		%feature("autodoc", "1");
		void MakeBlock(BOP_ShapeSet & SS);
		%feature("autodoc", "1");
		void InitBlock();
		%feature("autodoc", "1");
		Standard_Boolean MoreBlock() const;
		%feature("autodoc", "1");
		void NextBlock();
		%feature("autodoc", "1");
		BOP_BlockIterator BlockIterator() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Element(const BOP_BlockIterator &BI) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Element(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Element(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean ElementIsValid(const BOP_BlockIterator &BI) const;
		%feature("autodoc", "1");
		Standard_Boolean ElementIsValid(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void SetValid(const BOP_BlockIterator &BI, const Standard_Boolean IsValid);
		%feature("autodoc", "1");
		void SetValid(const Standard_Integer I, const Standard_Boolean IsValid);
		%feature("autodoc", "1");
		Standard_Boolean CurrentBlockIsRegular();

};
%feature("shadow") BOP_BlockBuilder::~BOP_BlockBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_BlockBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_CorrectTolerances;
class BOP_CorrectTolerances {
	public:
		%feature("autodoc", "1");
		BOP_CorrectTolerances();
		%feature("autodoc", "1");
		void CorrectTolerances(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void CorrectCurveOnSurface(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void CorrectPointOnCurve(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);

};
%feature("shadow") BOP_CorrectTolerances::~BOP_CorrectTolerances %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_CorrectTolerances {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SolidSolid;
class BOP_SolidSolid : public BOP_ShellSolid {
	public:
		%feature("autodoc", "1");
		BOP_SolidSolid();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void DoNewFaces();
		%feature("autodoc", "1");
		virtual		void BuildResult();
		%feature("autodoc", "1");
		virtual		void SetHistoryCollector(const Handle_BOP_HistoryCollector &theHistory);

};
%feature("shadow") BOP_SolidSolid::~BOP_SolidSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SolidSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfConnexityBlock;
class BOP_ListIteratorOfListOfConnexityBlock {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfConnexityBlock();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfConnexityBlock(const BOP_ListOfConnexityBlock &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfConnexityBlock &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BOP_ConnexityBlock & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfConnexityBlock::~BOP_ListIteratorOfListOfConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SFSCorrector;
class BOP_SFSCorrector {
	public:
		%feature("autodoc", "1");
		BOP_SFSCorrector();
		%feature("autodoc", "1");
		void SetSFS(const BOP_ShellFaceSet &aSFS);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		BOP_ShellFaceSet & SFS();
		%feature("autodoc", "1");
		BOP_ShellFaceSet & NewSFS();

};
%feature("shadow") BOP_SFSCorrector::~BOP_SFSCorrector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SFSCorrector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SeqOfSeqOfShape;
class BOP_SeqOfSeqOfShape : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BOP_SeqOfSeqOfShape();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BOP_SeqOfSeqOfShape & Assign(const BOP_SeqOfSeqOfShape &Other);
		%feature("autodoc", "1");
		const BOP_SeqOfSeqOfShape & operator=(const BOP_SeqOfSeqOfShape &Other);
		%feature("autodoc", "1");
		void Append(const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void Append(BOP_SeqOfSeqOfShape & S);
		%feature("autodoc", "1");
		void Prepend(const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void Prepend(BOP_SeqOfSeqOfShape & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BOP_SeqOfSeqOfShape & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BOP_SeqOfSeqOfShape & S);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & First() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BOP_SeqOfSeqOfShape & S);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BOP_SeqOfSeqOfShape::~BOP_SeqOfSeqOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SeqOfSeqOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_LoopSet;
class BOP_LoopSet {
	public:
		%feature("autodoc", "1");
		BOP_LoopSet();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		BOP_ListOfLoop & ChangeListOfLoop();
		%feature("autodoc", "1");
		virtual		void InitLoop();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreLoop() const;
		%feature("autodoc", "1");
		virtual		void NextLoop();
		%feature("autodoc", "1");
		virtual		const Handle_BOP_Loop & Loop() const;

};
%feature("shadow") BOP_LoopSet::~BOP_LoopSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_LoopSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireEdgeSet;
class BOP_WireEdgeSet : public BOP_ShapeSet {
	public:
		%feature("autodoc", "1");
		BOP_WireEdgeSet();
		%feature("autodoc", "1");
		BOP_WireEdgeSet(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Face &F);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddStartElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void InitNeighbours(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void FindNeighbours();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & MakeNeighboursList(const TopoDS_Shape &E, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		void IsUVISO(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Boolean & uiso, Standard_Boolean & viso);
		%feature("autodoc", "1");
		void RemoveEdgeFromWES(const TopoDS_Edge &aE);
		%feature("autodoc", "1");
		Standard_Boolean KeptTwice(const TopoDS_Edge &aE) const;

};
%feature("shadow") BOP_WireEdgeSet::~BOP_WireEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireWire;
class BOP_WireWire : public BOP_WireShape {
	public:
		%feature("autodoc", "1");
		BOP_WireWire();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void BuildResult();

};
%feature("shadow") BOP_WireWire::~BOP_WireWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ShellSolidHistoryCollector;
class BOP_ShellSolidHistoryCollector : public BOP_HistoryCollector {
	public:
		%feature("autodoc", "1");
		BOP_ShellSolidHistoryCollector(const TopoDS_Shape &theShape1, const TopoDS_Shape &theShape2, const BOP_Operation theOperation);
		%feature("autodoc", "1");
		void AddNewFace(const TopoDS_Shape &theOldShape, const TopoDS_Shape &theNewShape, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		void SetResult(const TopoDS_Shape &theResult, const BOPTools_PDSFiller &theDSFiller);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ShellSolidHistoryCollector {
	Handle_BOP_ShellSolidHistoryCollector GetHandle() {
	return *(Handle_BOP_ShellSolidHistoryCollector*) &$self;
	}
};
%extend BOP_ShellSolidHistoryCollector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ShellSolidHistoryCollector::~BOP_ShellSolidHistoryCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ShellSolidHistoryCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireShell;
class BOP_WireShell : public BOP_WireShape {
	public:
		%feature("autodoc", "1");
		BOP_WireShell();
		%feature("autodoc", "1");
		virtual		void Do();
		%feature("autodoc", "1");
		virtual		void DoWithFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void BuildResult();
		%feature("autodoc", "1");
		Standard_Boolean CheckArgTypes(const TopAbs_ShapeEnum theType1, const TopAbs_ShapeEnum theType2, const BOP_Operation theOperation);

};
%feature("shadow") BOP_WireShell::~BOP_WireShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_IndexedDataMapOfSolidClassifier;
class BOP_IndexedDataMapOfSolidClassifier : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfSolidClassifier(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfSolidClassifier & Assign(const BOP_IndexedDataMapOfSolidClassifier &Other);
		%feature("autodoc", "1");
		BOP_IndexedDataMapOfSolidClassifier & operator=(const BOP_IndexedDataMapOfSolidClassifier &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BOP_PSoClassif &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BOP_PSoClassif &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_PSoClassif & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BOP_PSoClassif & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BOP_PSoClassif & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BOP_PSoClassif & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BOP_PSoClassif & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BOP_PSoClassif & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") BOP_IndexedDataMapOfSolidClassifier::~BOP_IndexedDataMapOfSolidClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_IndexedDataMapOfSolidClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SolidAreaBuilder;
class BOP_SolidAreaBuilder : public BOP_Area3dBuilder {
	public:
		%feature("autodoc", "1");
		BOP_SolidAreaBuilder();
		%feature("autodoc", "1");
		BOP_SolidAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClassFlag=0);
		%feature("autodoc", "1");
		void InitSolidAreaBuilder(BOP_LoopSet & LS, BOP_LoopClassifier & LC, const Standard_Boolean ForceClassFlag);

};
%feature("shadow") BOP_SolidAreaBuilder::~BOP_SolidAreaBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SolidAreaBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListIteratorOfListOfLoop;
class BOP_ListIteratorOfListOfLoop {
	public:
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfLoop();
		%feature("autodoc", "1");
		BOP_ListIteratorOfListOfLoop(const BOP_ListOfLoop &L);
		%feature("autodoc", "1");
		void Initialize(const BOP_ListOfLoop &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_BOP_Loop & Value() const;

};
%feature("shadow") BOP_ListIteratorOfListOfLoop::~BOP_ListIteratorOfListOfLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListIteratorOfListOfLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_WireSplitter;
class BOP_WireSplitter {
	public:
		%feature("autodoc", "1");
		BOP_WireSplitter();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &aF);
		%feature("autodoc", "1");
		void DoWithListOfEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		void DoWithFace();
		%feature("autodoc", "1");
		Standard_Boolean IsNothingToDo() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const BOPTColStd_ListOfListOfShape & Shapes() const;

};
%feature("shadow") BOP_WireSplitter::~BOP_WireSplitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_WireSplitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_FaceInfo;
class BOP_FaceInfo {
	public:
		%feature("autodoc", "1");
		BOP_FaceInfo();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &aF);
		%feature("autodoc", "1");
		void SetPassed(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		void SetPOnEdge(const gp_Pnt &aP);
		%feature("autodoc", "1");
		void SetPInFace(const gp_Pnt &aP);
		%feature("autodoc", "1");
		void SetPInFace2D(const gp_Pnt2d &aP);
		%feature("autodoc", "1");
		void SetNormal(const gp_Dir &aD);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real A);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const gp_Pnt & POnEdge() const;
		%feature("autodoc", "1");
		const gp_Pnt & PInFace() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & PInFace2D() const;
		%feature("autodoc", "1");
		const gp_Dir & Normal() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPassed() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%feature("shadow") BOP_FaceInfo::~BOP_FaceInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_FaceInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_SDFWESFiller;
class BOP_SDFWESFiller {
	public:
		%feature("autodoc", "1");
		BOP_SDFWESFiller();
		%feature("autodoc", "1");
		BOP_SDFWESFiller(const Standard_Integer nF1, const Standard_Integer nF2, const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		void SetStatesMap(const BOPTools_IndexedDataMapOfIntegerState &aStatesMap);
		%feature("autodoc", "1");
		void SetFaces(const Standard_Integer nF1, const Standard_Integer nF2);
		%feature("autodoc", "1");
		void SetDSFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		void SetOperation(const BOP_Operation anOp);
		%feature("autodoc", "1");
		void SetSenseFlag(const Standard_Integer aFlag);
		%feature("autodoc", "1");
		void Prepare();
		%feature("autodoc", "1");
		void Do(const BOP_WireEdgeSet &aWES);
		%feature("autodoc", "1");
		const BOPTools_DSFiller & DSFiller() const;
		%feature("autodoc", "1");
		const BOPTools_IndexedDataMapOfIntegerState & StatesMap() const;
		%feature("autodoc","Faces() -> [Standard_Integer, Standard_Integer]");
		void Faces(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer SenseFlag() const;
		%feature("autodoc", "1");
		BOP_Operation Operation() const;
		%feature("autodoc", "1");
		void UpdateDEStates3D();

};
%feature("shadow") BOP_SDFWESFiller::~BOP_SDFWESFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_SDFWESFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListNodeOfListOfConnexityBlock;
class BOP_ListNodeOfListOfConnexityBlock : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOP_ListNodeOfListOfConnexityBlock(const BOP_ConnexityBlock &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BOP_ConnexityBlock & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BOP_ListNodeOfListOfConnexityBlock {
	Handle_BOP_ListNodeOfListOfConnexityBlock GetHandle() {
	return *(Handle_BOP_ListNodeOfListOfConnexityBlock*) &$self;
	}
};
%extend BOP_ListNodeOfListOfConnexityBlock {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BOP_ListNodeOfListOfConnexityBlock::~BOP_ListNodeOfListOfConnexityBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListNodeOfListOfConnexityBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ArgumentAnalyzer;
class BOP_ArgumentAnalyzer {
	public:
		%feature("autodoc", "1");
		BOP_ArgumentAnalyzer();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape &TheShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape2() const;
		%feature("autodoc", "1");
		BOP_Operation & OperationType();
		%feature("autodoc", "1");
		Standard_Boolean & StopOnFirstFaulty();
		%feature("autodoc", "1");
		Standard_Boolean & ArgumentTypeMode();
		%feature("autodoc", "1");
		Standard_Boolean & SelfInterMode();
		%feature("autodoc", "1");
		Standard_Boolean & SmallEdgeMode();
		%feature("autodoc", "1");
		Standard_Boolean & RebuildFaceMode();
		%feature("autodoc", "1");
		Standard_Boolean & TangentMode();
		%feature("autodoc", "1");
		Standard_Boolean & MergeVertexMode();
		%feature("autodoc", "1");
		Standard_Boolean & MergeEdgeMode();
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean HasFaulty() const;
		%feature("autodoc", "1");
		const BOP_ListOfCheckResult & GetCheckResult() const;

};
%feature("shadow") BOP_ArgumentAnalyzer::~BOP_ArgumentAnalyzer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ArgumentAnalyzer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_ListOfEdgeInfo;
class BOP_ListOfEdgeInfo {
	public:
		%feature("autodoc", "1");
		BOP_ListOfEdgeInfo();
		%feature("autodoc", "1");
		void Assign(const BOP_ListOfEdgeInfo &Other);
		%feature("autodoc", "1");
		void operator=(const BOP_ListOfEdgeInfo &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BOP_EdgeInfo &I);
		%feature("autodoc", "1");
		void Prepend(const BOP_EdgeInfo &I, BOP_ListIteratorOfListOfEdgeInfo & theIt);
		%feature("autodoc", "1");
		void Prepend(BOP_ListOfEdgeInfo & Other);
		%feature("autodoc", "1");
		void Append(const BOP_EdgeInfo &I);
		%feature("autodoc", "1");
		void Append(const BOP_EdgeInfo &I, BOP_ListIteratorOfListOfEdgeInfo & theIt);
		%feature("autodoc", "1");
		void Append(BOP_ListOfEdgeInfo & Other);
		%feature("autodoc", "1");
		BOP_EdgeInfo & First() const;
		%feature("autodoc", "1");
		BOP_EdgeInfo & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOP_ListIteratorOfListOfEdgeInfo & It);
		%feature("autodoc", "1");
		void InsertBefore(const BOP_EdgeInfo &I, BOP_ListIteratorOfListOfEdgeInfo & It);
		%feature("autodoc", "1");
		void InsertBefore(BOP_ListOfEdgeInfo & Other, BOP_ListIteratorOfListOfEdgeInfo & It);
		%feature("autodoc", "1");
		void InsertAfter(const BOP_EdgeInfo &I, BOP_ListIteratorOfListOfEdgeInfo & It);
		%feature("autodoc", "1");
		void InsertAfter(BOP_ListOfEdgeInfo & Other, BOP_ListIteratorOfListOfEdgeInfo & It);

};
%feature("shadow") BOP_ListOfEdgeInfo::~BOP_ListOfEdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_ListOfEdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOP_Refiner;
class BOP_Refiner {
	public:
		%feature("autodoc", "1");
		BOP_Refiner();
		%feature("autodoc", "1");
		BOP_Refiner(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetInternals(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Do();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		Standard_Integer NbRemovedVertices() const;
		%feature("autodoc", "1");
		Standard_Integer NbRemovedEdges() const;

};
%feature("shadow") BOP_Refiner::~BOP_Refiner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOP_Refiner {
	void _kill_pointed() {
		delete $self;
	}
};
