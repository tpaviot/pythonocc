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

%module BooleanOperations
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BooleanOperations_renames.i


%include BooleanOperations_required_python_modules.i


%include BooleanOperations_dependencies.i


%include BooleanOperations_headers.i

typedef BooleanOperations_ShapeAndInterferences * BooleanOperations_PShapeAndInterferences;
typedef BooleanOperations_ShapesDataStructure * BooleanOperations_PShapesDataStructure;

enum BooleanOperations_StateOfShape {
	BooleanOperations_IN,
	BooleanOperations_OUT,
	BooleanOperations_ON,
	BooleanOperations_UNKNOWN,
	BooleanOperations_INOROUT,
	BooleanOperations_INTERSECTED,
	};

enum BooleanOperations_KindOfInterference {
	BooleanOperations_SurfaceSurface,
	BooleanOperations_EdgeSurface,
	BooleanOperations_VertexSurface,
	BooleanOperations_EdgeEdge,
	BooleanOperations_VertexEdge,
	BooleanOperations_VertexVertex,
	BooleanOperations_UnknownInterference,
	};

enum BooleanOperations_KindOfIntersection {
	BooleanOperations_NoIntersection,
	BooleanOperations_TrueIntersection,
	BooleanOperations_SameDomain,
	};



%nodefaultctor Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger;
class Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger & operator=(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger & operator=(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger* GetObject() {
	return (BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger::~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors;
class Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors & operator=(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		static		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors* GetObject() {
	return (BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors*)$self->Access();
	}
};
%feature("shadow") Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors::~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors;
class BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Assign(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & operator=(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors::~BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_ShapeAndInterferences;
class BooleanOperations_ShapeAndInterferences {
	public:
		%feature("autodoc", "1");
		BooleanOperations_ShapeAndInterferences();
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetShapeType() const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape GetState() const;
		%feature("autodoc", "1");
		void SetState(const BooleanOperations_StateOfShape theState);
		%feature("autodoc", "1");
		const Bnd_Box & GetBoundingBox() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index) const;
		%feature("autodoc","GetAncestors() -> Standard_Integer");

		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc","GetSuccessors() -> Standard_Integer");

		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index) const;
		%feature("autodoc","GetOrientations() -> Standard_Integer");

		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;

};
%feature("shadow") BooleanOperations_ShapeAndInterferences::~BooleanOperations_ShapeAndInterferences %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_ShapeAndInterferences {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_Explorer;
class BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_Explorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Integer aShape, const TopAbs_ShapeEnum TargetToFind, const TopAbs_ShapeEnum TargetToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Current();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") BooleanOperations_Explorer::~BooleanOperations_Explorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_Explorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger;
class BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const TopoDS_Shape K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger*) &$self;
	}
};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger::~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_OnceExplorer;
class BooleanOperations_OnceExplorer : public BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_OnceExplorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Integer aShape, const TopAbs_ShapeEnum TargetToFind, const TopAbs_ShapeEnum TargetToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		Standard_Integer Current();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") BooleanOperations_OnceExplorer::~BooleanOperations_OnceExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_OnceExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_ShapesDataStructure;
class BooleanOperations_ShapesDataStructure {
	public:
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure();
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure(const TopoDS_Shape Object, const TopoDS_Shape Tool);
		%feature("autodoc", "1");
		void InsertShapeAndAncestorsSuccessors(const TopoDS_Shape S, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &AncSuc, const Standard_Integer shift=0);
		%feature("autodoc", "1");
		void FillIndexedMapOfShapesAncestorsAndSuccessors(const TopoDS_Shape Sha, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
		%feature("autodoc","FindSubshapes(const Sha) -> Standard_Integer");

		void FindSubshapes(const TopoDS_Shape Sha, Standard_Integer &OutValue, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string LightDumpToString() {
			std::stringstream s;
			self->LightDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetShapeType(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const Bnd_Box & GetBoundingBox(const Standard_Integer index) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape GetState(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetState(const Standard_Integer index, const BooleanOperations_StateOfShape theState);
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer index, const Standard_Integer ancestorNumber) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index, const Standard_Integer successorNumber) const;
		%feature("autodoc","GetAncestors(Standard_Integer index) -> Standard_Integer");

		void GetAncestors(const Standard_Integer index, Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc","GetSuccessors(Standard_Integer index) -> Standard_Integer");

		void GetSuccessors(const Standard_Integer index, Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfShapesOfTheTool() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfShapesOfTheObject() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSourceShapes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNewShape(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfInsertedShapes() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfNewShapes() const;
		%feature("autodoc", "1");
		const BooleanOperations_ShapeAndInterferences & Line(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & ShapeIndexMap(const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ShapeIndex(const TopoDS_Shape aS, const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Object() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Tool() const;
		%feature("autodoc","ObjectRange() -> [Standard_Integer, Standard_Integer]");

		void ObjectRange(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","ToolRange() -> [Standard_Integer, Standard_Integer]");

		void ToolRange(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Rank(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer RefEdge(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index, const Standard_Integer successorNumber) const;
		%feature("autodoc","GetOrientations(Standard_Integer index) -> Standard_Integer");

		void GetOrientations(const Standard_Integer index, Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;

};
%feature("shadow") BooleanOperations_ShapesDataStructure::~BooleanOperations_ShapesDataStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_ShapesDataStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_AncestorsSeqAndSuccessorsSeq;
class BooleanOperations_AncestorsSeqAndSuccessorsSeq {
	public:
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer AncestorIndex) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer SuccessorIndex) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer OrientationIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;
		%feature("autodoc", "1");
		void SetNewAncestor(const Standard_Integer AncestorNumber);
		%feature("autodoc", "1");
		void SetNewSuccessor(const Standard_Integer SuccessorNumber);
		%feature("autodoc", "1");
		void SetNewOrientation(const TopAbs_Orientation OrientationNumber);

};
%feature("shadow") BooleanOperations_AncestorsSeqAndSuccessorsSeq::~BooleanOperations_AncestorsSeqAndSuccessorsSeq %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_AncestorsSeqAndSuccessorsSeq {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_IndexedDataMapOfShapeInteger;
class BooleanOperations_IndexedDataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & Assign(const BooleanOperations_IndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & operator=(const BooleanOperations_IndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromIndex(const Standard_Integer I) {
				return (Standard_Integer) $self->ChangeFromIndex(I);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromIndex(Standard_Integer value ,const Standard_Integer I) {
				$self->ChangeFromIndex(I)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromKey(const TopoDS_Shape K) {
				return (Standard_Integer) $self->ChangeFromKey(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromKey(Standard_Integer value ,const TopoDS_Shape K) {
				$self->ChangeFromKey(K)=value;
				}
		};

};
%feature("shadow") BooleanOperations_IndexedDataMapOfShapeInteger::~BooleanOperations_IndexedDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_IndexedDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_AncestorsAndSuccessors;
class BooleanOperations_AncestorsAndSuccessors {
	public:
		%feature("autodoc", "1");
		BooleanOperations_AncestorsAndSuccessors();
		%feature("autodoc", "1");
		BooleanOperations_AncestorsAndSuccessors(const BooleanOperations_AncestorsSeqAndSuccessorsSeq &AncSuccessors, const Standard_Integer shift);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer AncestorIndex) const;
		%feature("autodoc", "1");
		void SetAncestor(const Standard_Integer AncestorIndex, const Standard_Integer AncestorNumber);
		%feature("autodoc","GetAncestors() -> Standard_Integer");

		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer SuccessorIndex) const;
		%feature("autodoc", "1");
		void SetSuccessor(const Standard_Integer SuccessorIndex, const Standard_Integer SuccessorNumber);
		%feature("autodoc","GetSuccessors() -> Standard_Integer");

		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer OrientationIndex) const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Integer OrientationIndex, const TopAbs_Orientation OrientationNumber);
		%feature("autodoc","GetOrientations() -> Standard_Integer");

		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;

};
%feature("shadow") BooleanOperations_AncestorsAndSuccessors::~BooleanOperations_AncestorsAndSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_AncestorsAndSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors;
class BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const TopoDS_Shape K1, const Standard_Integer K2, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors*) &$self;
	}
};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors::~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	void _kill_pointed() {
		delete $self;
	}
};
