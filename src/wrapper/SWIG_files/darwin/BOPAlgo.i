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

%module BOPAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BOPAlgo_renames.i


%include BOPAlgo_required_python_modules.i


%include BOPAlgo_dependencies.i


%include BOPAlgo_headers.i

typedef NCollection_List<BOPAlgo_CheckResult> BOPAlgo_ListOfCheckResult;
typedef NCollection_IndexedDataMap<TopoDS_Shape,NCollection_List<BOPAlgo_EdgeInfo>,TopTools_ShapeMapHasher> BOPAlgo_IndexedDataMapOfShapeListOfEdgeInfo;
typedef NCollection_TListIterator<BOPAlgo_CheckResult> BOPAlgo_ListIteratorOfListOfCheckResult;
typedef BOPAlgo_BOP * BOPAlgo_PBOP;
typedef BOPAlgo_ArgumentAnalyzer * BOPAlgo_PArgumentAnalyzer;
typedef NCollection_TListIterator<BOPAlgo_EdgeInfo> BOPAlgo_ListIteratorOfListOfEdgeInfo;
typedef BOPAlgo_Builder * BOPAlgo_PBuilder;
typedef NCollection_List<BOPAlgo_EdgeInfo> BOPAlgo_ListOfEdgeInfo;
typedef BOPAlgo_WireEdgeSet * BOPAlgo_PWireEdgeSet;
typedef BOPAlgo_PaveFiller * BOPAlgo_PPaveFiller;

enum BOPAlgo_Operation {
	BOPAlgo_COMMON,
	BOPAlgo_FUSE,
	BOPAlgo_CUT,
	BOPAlgo_CUT21,
	BOPAlgo_SECTION,
	BOPAlgo_UNKNOWN,
	};

enum BOPAlgo_CheckStatus {
	BOPAlgo_CheckUnknown,
	BOPAlgo_BadType,
	BOPAlgo_SelfIntersect,
	BOPAlgo_TooSmallEdge,
	BOPAlgo_NonRecoverableFace,
	BOPAlgo_IncompatibilityOfVertex,
	BOPAlgo_IncompatibilityOfEdge,
	BOPAlgo_IncompatibilityOfFace,
	BOPAlgo_OperationAborted,
	BOPAlgo_NotValid,
	};



%nodefaultctor BOPAlgo_Tools;
class BOPAlgo_Tools {
	public:
		%feature("autodoc", "1");
		BOPAlgo_Tools();
		%feature("autodoc", "1");
		static		void MakeBlocksCnx(const BOPCol_IndexedDataMapOfIntegerListOfInteger &theMILI, BOPCol_DataMapOfIntegerListOfInteger & theMBlocks, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void MakeBlocks(const BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock &theMILI, BOPDS_DataMapOfIntegerListOfPaveBlock & theMBlocks, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void PerformCommonBlocks(BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock & theMBlocks, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void FillMap(const Standard_Integer tneN1, const Standard_Integer tneN2, BOPCol_IndexedDataMapOfIntegerListOfInteger & theMILI, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void FillMap(const Handle_BOPDS_PaveBlock &tnePB1, const Handle_BOPDS_PaveBlock &tnePB2, BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock & theMILI, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void FillMap(const Handle_BOPDS_PaveBlock &tnePB1, const Standard_Integer tneF, BOPDS_IndexedDataMapOfPaveBlockListOfInteger & theMILI, BOPCol_BaseAllocator & theAllocator);
		%feature("autodoc", "1");
		static		void PerformCommonBlocks(const BOPDS_IndexedDataMapOfPaveBlockListOfInteger &theMBlocks, BOPCol_BaseAllocator & theAllocator);

};
%feature("shadow") BOPAlgo_Tools::~BOPAlgo_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_ArgumentAnalyzer;
class BOPAlgo_ArgumentAnalyzer {
	public:
		%feature("autodoc", "1");
		BOPAlgo_ArgumentAnalyzer();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape2() const;
		%feature("autodoc", "1");
		BOPAlgo_Operation & OperationType();
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetStopOnFirstFaulty() {
				return (Standard_Boolean) $self->StopOnFirstFaulty();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetStopOnFirstFaulty(Standard_Boolean value ) {
				$self->StopOnFirstFaulty()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetArgumentTypeMode() {
				return (Standard_Boolean) $self->ArgumentTypeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetArgumentTypeMode(Standard_Boolean value ) {
				$self->ArgumentTypeMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetSelfInterMode() {
				return (Standard_Boolean) $self->SelfInterMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetSelfInterMode(Standard_Boolean value ) {
				$self->SelfInterMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetSmallEdgeMode() {
				return (Standard_Boolean) $self->SmallEdgeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetSmallEdgeMode(Standard_Boolean value ) {
				$self->SmallEdgeMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetRebuildFaceMode() {
				return (Standard_Boolean) $self->RebuildFaceMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetRebuildFaceMode(Standard_Boolean value ) {
				$self->RebuildFaceMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetTangentMode() {
				return (Standard_Boolean) $self->TangentMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetTangentMode(Standard_Boolean value ) {
				$self->TangentMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetMergeVertexMode() {
				return (Standard_Boolean) $self->MergeVertexMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetMergeVertexMode(Standard_Boolean value ) {
				$self->MergeVertexMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetMergeEdgeMode() {
				return (Standard_Boolean) $self->MergeEdgeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetMergeEdgeMode(Standard_Boolean value ) {
				$self->MergeEdgeMode()=value;
				}
		};
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean HasFaulty() const;
		%feature("autodoc", "1");
		const BOPAlgo_ListOfCheckResult & GetCheckResult() const;

};
%feature("shadow") BOPAlgo_ArgumentAnalyzer::~BOPAlgo_ArgumentAnalyzer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_ArgumentAnalyzer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_Algo;


%nodefaultdtor BOPAlgo_Algo;
class BOPAlgo_Algo {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;
		%feature("autodoc", "1");
		const BOPCol_BaseAllocator & Allocator() const;

};

%nodefaultctor BOPAlgo_PaveFiller;
class BOPAlgo_PaveFiller : public BOPAlgo_Algo {
	public:
		%feature("autodoc", "1");
		BOPAlgo_PaveFiller();
		%feature("autodoc", "1");
		BOPAlgo_PaveFiller(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		const BOPDS_DS & DS();
		%feature("autodoc", "1");
		BOPDS_PDS PDS();
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Arguments() const;
		%feature("autodoc", "1");
		void SetArguments(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		Handle_BOPInt_Context Context();
		%feature("autodoc", "1");
		void SetSectionAttribute(const BOPAlgo_SectionAttribute &theSecAttr);

};
%feature("shadow") BOPAlgo_PaveFiller::~BOPAlgo_PaveFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_PaveFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_WireEdgeSet;
class BOPAlgo_WireEdgeSet {
	public:
		%feature("autodoc", "1");
		BOPAlgo_WireEdgeSet();
		%feature("autodoc", "1");
		BOPAlgo_WireEdgeSet(const Handle_NCollection_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		void AddStartElement(const TopoDS_Shape aE);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape aW);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Shapes() const;

};
%feature("shadow") BOPAlgo_WireEdgeSet::~BOPAlgo_WireEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_WireEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_SectionAttribute;
class BOPAlgo_SectionAttribute {
	public:
		%feature("autodoc", "1");
		BOPAlgo_SectionAttribute(const Standard_Boolean Aproximation=true, const Standard_Boolean PCurveOnS1=true, const Standard_Boolean PCurveOnS2=true);
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
%feature("shadow") BOPAlgo_SectionAttribute::~BOPAlgo_SectionAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_SectionAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_EdgeInfo;
class BOPAlgo_EdgeInfo {
	public:
		%feature("autodoc", "1");
		BOPAlgo_EdgeInfo();
		%feature("autodoc", "1");
		void SetEdge(const TopoDS_Edge theE);
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		void SetPassed(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean Passed() const;
		%feature("autodoc", "1");
		void SetInFlag(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean IsIn() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real theAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%feature("shadow") BOPAlgo_EdgeInfo::~BOPAlgo_EdgeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_EdgeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_BuilderShape;


%nodefaultdtor BOPAlgo_BuilderShape;
class BOPAlgo_BuilderShape : public BOPAlgo_Algo {
	public:
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		const BOPCol_IndexedDataMapOfShapeListOfShape & ImagesResult() const;

};

%nodefaultctor BOPAlgo_Builder;
class BOPAlgo_Builder : public BOPAlgo_BuilderShape {
	public:
		%feature("autodoc", "1");
		BOPAlgo_Builder();
		%feature("autodoc", "1");
		BOPAlgo_Builder(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		BOPAlgo_PPaveFiller PPaveFiller();
		%feature("autodoc", "1");
		BOPDS_PDS PDS();
		%feature("autodoc", "1");
		virtual		void AddArgument(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Arguments() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void PerformWithFiller(const BOPAlgo_PaveFiller &theFiller);
		%feature("autodoc", "1");
		const BOPCol_DataMapOfShapeListOfShape & Images() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInterferred(const TopoDS_Shape theS) const;
		%feature("autodoc", "1");
		const BOPCol_DataMapOfShapeShape & Origins() const;
		%feature("autodoc", "1");
		const BOPCol_DataMapOfShapeShape & ShapesSD() const;
		%feature("autodoc", "1");
		const BOPCol_DataMapOfShapeListOfShape & Splits() const;

};
%feature("shadow") BOPAlgo_Builder::~BOPAlgo_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_BOP;
class BOPAlgo_BOP : public BOPAlgo_Builder {
	public:
		%feature("autodoc", "1");
		BOPAlgo_BOP();
		%feature("autodoc", "1");
		BOPAlgo_BOP(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		virtual		void AddTool(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Object() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Tool() const;
		%feature("autodoc", "1");
		void SetOperation(const BOPAlgo_Operation theOperation);
		%feature("autodoc", "1");
		BOPAlgo_Operation Operation() const;

};
%feature("shadow") BOPAlgo_BOP::~BOPAlgo_BOP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_BOP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_WireSplitter;
class BOPAlgo_WireSplitter : public BOPAlgo_Algo {
	public:
		%feature("autodoc", "1");
		BOPAlgo_WireSplitter();
		%feature("autodoc", "1");
		BOPAlgo_WireSplitter(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetWES(const BOPAlgo_WireEdgeSet &theWES);
		%feature("autodoc", "1");
		BOPAlgo_WireEdgeSet & WES();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		static		void MakeWire(BOPCol_ListOfShape & aLE, TopoDS_Wire & aWire);

};
%feature("shadow") BOPAlgo_WireSplitter::~BOPAlgo_WireSplitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_WireSplitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_CheckResult;
class BOPAlgo_CheckResult {
	public:
		%feature("autodoc", "1");
		BOPAlgo_CheckResult();
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		void AddFaultyShape1(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		void AddFaultyShape2(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape2() const;
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & GetFaultyShapes1() const;
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & GetFaultyShapes2() const;
		%feature("autodoc", "1");
		void SetCheckStatus(const BOPAlgo_CheckStatus TheStatus);
		%feature("autodoc", "1");
		BOPAlgo_CheckStatus GetCheckStatus() const;

};
%feature("shadow") BOPAlgo_CheckResult::~BOPAlgo_CheckResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_CheckResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_CheckerSI;
class BOPAlgo_CheckerSI : public BOPAlgo_PaveFiller {
	public:
		%feature("autodoc", "1");
		BOPAlgo_CheckerSI();

};
%feature("shadow") BOPAlgo_CheckerSI::~BOPAlgo_CheckerSI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_CheckerSI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_BuilderArea;


%nodefaultdtor BOPAlgo_BuilderArea;
class BOPAlgo_BuilderArea : public BOPAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetContext(const Handle_BOPInt_Context &theContext);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		void SetShapes(const BOPCol_ListOfShape &theLS);
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Loops() const;
		%feature("autodoc", "1");
		const BOPCol_ListOfShape & Areas() const;

};

%nodefaultctor BOPAlgo_BuilderFace;
class BOPAlgo_BuilderFace : public BOPAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		BOPAlgo_BuilderFace();
		%feature("autodoc", "1");
		BOPAlgo_BuilderFace(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face theFace);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") BOPAlgo_BuilderFace::~BOPAlgo_BuilderFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_BuilderFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BOPAlgo_BuilderSolid;
class BOPAlgo_BuilderSolid : public BOPAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		BOPAlgo_BuilderSolid();
		%feature("autodoc", "1");
		BOPAlgo_BuilderSolid(const BOPCol_BaseAllocator &theAllocator);
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") BOPAlgo_BuilderSolid::~BOPAlgo_BuilderSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BOPAlgo_BuilderSolid {
	void _kill_pointed() {
		delete $self;
	}
};
