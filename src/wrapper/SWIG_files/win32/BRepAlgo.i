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

%module BRepAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepAlgo_renames.i


%include BRepAlgo_required_python_modules.i


%include BRepAlgo_dependencies.i


%include BRepAlgo_headers.i


enum BRepAlgo_CheckStatus {
	BRepAlgo_OK,
	BRepAlgo_NOK,
	};



%nodefaultctor Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean;
class Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean & operator=(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean & operator=(const BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean* GetObject() {
	return (BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean::~Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAlgo_AsDes;
class Handle_BRepAlgo_AsDes : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes(const Handle_BRepAlgo_AsDes &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes(const BRepAlgo_AsDes *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes & operator=(const Handle_BRepAlgo_AsDes &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes & operator=(const BRepAlgo_AsDes *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAlgo_AsDes DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_AsDes {
	BRepAlgo_AsDes* GetObject() {
	return (BRepAlgo_AsDes*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAlgo_AsDes::~Handle_BRepAlgo_AsDes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAlgo_AsDes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger;
class Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger & operator=(const Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger & operator=(const BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger* GetObject() {
	return (BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger::~Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference;
class Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const BRepAlgo_DataMapNodeOfDataMapOfShapeInterference *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference & operator=(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference & operator=(const BRepAlgo_DataMapNodeOfDataMapOfShapeInterference *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	BRepAlgo_DataMapNodeOfDataMapOfShapeInterference* GetObject() {
	return (BRepAlgo_DataMapNodeOfDataMapOfShapeInterference*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference::~Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepAlgo_EdgeConnector;
class Handle_BRepAlgo_EdgeConnector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector();
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector(const Handle_BRepAlgo_EdgeConnector &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector(const BRepAlgo_EdgeConnector *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector & operator=(const Handle_BRepAlgo_EdgeConnector &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector & operator=(const BRepAlgo_EdgeConnector *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepAlgo_EdgeConnector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_EdgeConnector {
	BRepAlgo_EdgeConnector* GetObject() {
	return (BRepAlgo_EdgeConnector*)$self->Access();
	}
};
%feature("shadow") Handle_BRepAlgo_EdgeConnector::~Handle_BRepAlgo_EdgeConnector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepAlgo_EdgeConnector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Tool;
class BRepAlgo_Tool {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Tool();
		%feature("autodoc", "1");
		static		TopoDS_Shape Deboucle3D(const TopoDS_Shape S, const TopTools_MapOfShape &Boundary);

};
%feature("shadow") BRepAlgo_Tool::~BRepAlgo_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Loop;
class BRepAlgo_Loop {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Loop();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F);
		%feature("autodoc", "1");
		void AddEdge(TopoDS_Edge & E, const TopTools_ListOfShape &LV);
		%feature("autodoc", "1");
		void AddConstEdge(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void AddConstEdges(const TopTools_ListOfShape &LE);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void CutEdge(const TopoDS_Edge E, const TopTools_ListOfShape &VonE, TopTools_ListOfShape & NE) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewWires() const;
		%feature("autodoc", "1");
		void WiresToFaces();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		void GetVerticesForSubstitute(TopTools_DataMapOfShapeShape & VerVerMap) const;
		%feature("autodoc", "1");
		void VerticesForSubstitute(TopTools_DataMapOfShapeShape & VerVerMap);

};
%feature("shadow") BRepAlgo_Loop::~BRepAlgo_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DSAccess;
class BRepAlgo_DSAccess {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DSAccess();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Load(TopoDS_Shape & S1, TopoDS_Shape & S2);
		%feature("autodoc", "1");
		void Intersect();
		%feature("autodoc", "1");
		void Intersect(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void SameDomain(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet();
		%feature("autodoc", "1");
		Standard_Boolean IsWire(const TopoDS_Shape Compound);
		%feature("autodoc", "1");
		const TopoDS_Shape  Wire(const TopoDS_Shape Compound);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionVertex(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void SuppressEdgeSet(const TopoDS_Shape Compound);
		%feature("autodoc", "1");
		void ChangeEdgeSet(const TopoDS_Shape Old, const TopoDS_Shape New);
		%feature("autodoc", "1");
		void SuppressSectionVertex(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		const TopoDS_Shape  Merge(const TopAbs_State state1, const TopAbs_State state2);
		%feature("autodoc", "1");
		const TopoDS_Shape  Merge(const TopAbs_State state1);
		%feature("autodoc", "1");
		const TopoDS_Shape  Propagate(const TopAbs_State what, const TopoDS_Shape FromShape, const TopoDS_Shape LoadShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  PropagateFromSection(const TopoDS_Shape SectionShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);
		%feature("autodoc", "1");
		BRepAlgo_CheckStatus Check();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_HDataStructure & DS() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & ChangeDS();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepBuild_HBuilder & Builder() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder & ChangeBuilder();

};
%feature("shadow") BRepAlgo_DSAccess::~BRepAlgo_DSAccess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DSAccess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference;
class BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference(const BRepAlgo_DataMapOfShapeInterference &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepAlgo_DataMapOfShapeInterference &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Value() const;

};
%feature("shadow") BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference::~BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapNodeOfDataMapOfShapeInterference;
class BRepAlgo_DataMapNodeOfDataMapOfShapeInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const TopoDS_Shape K, const Handle_TopOpeBRepDS_Interference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference GetHandle() {
	return *(Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference*) &$self;
	}
};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAlgo_DataMapNodeOfDataMapOfShapeInterference::~BRepAlgo_DataMapNodeOfDataMapOfShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_BooleanOperation;
class BRepAlgo_BooleanOperation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void PerformDS();
		%feature("autodoc", "1");
		void Perform(const TopAbs_State St1, const TopAbs_State St2);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder Builder() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape S);

};
%feature("shadow") BRepAlgo_BooleanOperation::~BRepAlgo_BooleanOperation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_BooleanOperation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepAlgo_BooleanOperation {
	BRepAlgo_BooleanOperation () {}
};


%nodefaultctor BRepAlgo_Fuse;
class BRepAlgo_Fuse : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Fuse(const TopoDS_Shape S1, const TopoDS_Shape S2);

};
%feature("shadow") BRepAlgo_Fuse::~BRepAlgo_Fuse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Fuse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapOfShapeBoolean;
class BRepAlgo_DataMapOfShapeBoolean : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeBoolean(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeBoolean & Assign(const BRepAlgo_DataMapOfShapeBoolean &Other);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeBoolean & operator=(const BRepAlgo_DataMapOfShapeBoolean &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Boolean &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Boolean & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Boolean) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Boolean value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") BRepAlgo_DataMapOfShapeBoolean::~BRepAlgo_DataMapOfShapeBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapOfShapeBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_NormalProjection;
class BRepAlgo_NormalProjection {
	public:
		%feature("autodoc", "1");
		BRepAlgo_NormalProjection();
		%feature("autodoc", "1");
		BRepAlgo_NormalProjection(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape ToProj);
		%feature("autodoc", "1");
		void SetParams(const Standard_Real Tol3D, const Standard_Real Tol2D, const GeomAbs_Shape InternalContinuity, const Standard_Integer MaxDegree, const Standard_Integer MaxSeg);
		%feature("autodoc", "1");
		void SetDefaultParams();
		%feature("autodoc", "1");
		void SetMaxDistance(const Standard_Real MaxDist);
		%feature("autodoc", "1");
		void Compute3d(const Standard_Boolean With3d=1);
		%feature("autodoc", "1");
		void SetLimit(const Standard_Boolean FaceBoundaries=1);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Projection() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Ancestor(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Couple(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsElementary(const Adaptor3d_Curve &C) const;
		%feature("autodoc", "1");
		Standard_Boolean BuildWire(TopTools_ListOfShape & Liste) const;

};
%feature("shadow") BRepAlgo_NormalProjection::~BRepAlgo_NormalProjection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_NormalProjection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_AsDes;
class BRepAlgo_AsDes : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepAlgo_AsDes();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape S, const TopoDS_Shape SS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape S, const TopTools_ListOfShape &SS);
		%feature("autodoc", "1");
		Standard_Boolean HasAscendant(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		Standard_Boolean HasDescendant(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Ascendant(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Descendant(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeDescendant(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Replace(const TopoDS_Shape OldS, const TopoDS_Shape NewS);
		%feature("autodoc", "1");
		void Remove(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean HasCommonDescendant(const TopoDS_Shape S1, const TopoDS_Shape S2, TopTools_ListOfShape & LC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAlgo_AsDes {
	Handle_BRepAlgo_AsDes GetHandle() {
	return *(Handle_BRepAlgo_AsDes*) &$self;
	}
};
%extend BRepAlgo_AsDes {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAlgo_AsDes::~BRepAlgo_AsDes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_AsDes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean;
class BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const TopoDS_Shape K, const Standard_Boolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
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
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean GetHandle() {
	return *(Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean*) &$self;
	}
};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean::~BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_TopOpe;
class BRepAlgo_TopOpe {
	public:
		%feature("autodoc", "1");
		BRepAlgo_TopOpe();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Load(TopoDS_Shape & S1, TopoDS_Shape & S2);
		%feature("autodoc", "1");
		void Intersect();
		%feature("autodoc", "1");
		void Intersect(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void ToCompleteIntersection();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet();
		%feature("autodoc", "1");
		void SuppressEdgeSet();
		%feature("autodoc", "1");
		const TopoDS_Shape  Merge(const TopAbs_State state1, const TopAbs_State state2);
		%feature("autodoc", "1");
		const TopoDS_Shape  Merge(const TopAbs_State state1);
		%feature("autodoc", "1");
		Standard_Boolean PaveBlocksNotEmpty();
		%feature("autodoc", "1");
		const BOP_PBuilder & Builder() const;
		%feature("autodoc", "1");
		const BOPTools_PDSFiller & DSFiller() const;
		%feature("autodoc", "1");
		const Handle_BOP_HistoryCollector & History() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BRepAlgo_TopOpe::~BRepAlgo_TopOpe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_TopOpe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Image;
class BRepAlgo_Image {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Image();
		%feature("autodoc", "1");
		void SetRoot(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape OldS, const TopoDS_Shape NewS);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape OldS, const TopTools_ListOfShape &NewS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape OldS, const TopoDS_Shape NewS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape OldS, const TopTools_ListOfShape &NewS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Remove(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Roots() const;
		%feature("autodoc", "1");
		Standard_Boolean IsImage(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  ImageFrom(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Root(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		Standard_Boolean HasImage(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Image(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		void LastImage(const TopoDS_Shape S, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void Compact();
		%feature("autodoc", "1");
		void Filter(const TopoDS_Shape S, const TopAbs_ShapeEnum ShapeType);

};
%feature("shadow") BRepAlgo_Image::~BRepAlgo_Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_BooleanOperations;
class BRepAlgo_BooleanOperations {
	public:
		%feature("autodoc", "1");
		BRepAlgo_BooleanOperations();
		%feature("autodoc", "1");
		void Shapes2d(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void Shapes(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void SetApproxParameters(const Standard_Integer NbPntMax, const Standard_Real Tol3D, const Standard_Real Tol2D, const Standard_Boolean RelativeTol);
		%feature("autodoc", "1");
		void Define(const TopoDS_Shape S1, const TopoDS_Shape S2, Handle_TopOpeBRepDS_HDataStructure & HDS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Common();
		%feature("autodoc", "1");
		const TopoDS_Shape  Fus();
		%feature("autodoc", "1");
		const TopoDS_Shape  Cut();
		%feature("autodoc", "1");
		const TopoDS_Shape  Section();
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape();
		%feature("autodoc", "1");
		const TopoDS_Shape  ShapeFrom(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_HDataStructure & DataStructure() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & ChangeDataStructure();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepBuild_HBuilder & Builder() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder & ChangeBuilder();
		%feature("autodoc", "1");
		BRepAlgo_DSAccess & DataStructureAccess();

};
%feature("shadow") BRepAlgo_BooleanOperations::~BRepAlgo_BooleanOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_BooleanOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Section;
class BRepAlgo_Section : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape Sh1, const TopoDS_Shape Sh2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape Sh, const gp_Pln Pl, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape Sh, const Handle_Geom_Surface &Sf, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const Handle_Geom_Surface &Sf, const TopoDS_Shape Sh, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const Handle_Geom_Surface &Sf1, const Handle_Geom_Surface &Sf2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		void Init1(const TopoDS_Shape S1);
		%feature("autodoc", "1");
		void Init1(const gp_Pln Pl);
		%feature("autodoc", "1");
		void Init1(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Init2(const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void Init2(const gp_Pln Pl);
		%feature("autodoc", "1");
		void Init2(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Approximation(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn1(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn2(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn1(const TopoDS_Shape E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn2(const TopoDS_Shape E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn1(const TopoDS_Shape E) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn2(const TopoDS_Shape E) const;

};
%feature("shadow") BRepAlgo_Section::~BRepAlgo_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Section {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Common;
class BRepAlgo_Common : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Common(const TopoDS_Shape S1, const TopoDS_Shape S2);

};
%feature("shadow") BRepAlgo_Common::~BRepAlgo_Common %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Common {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_FaceRestrictor;
class BRepAlgo_FaceRestrictor {
	public:
		%feature("autodoc", "1");
		BRepAlgo_FaceRestrictor();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F, const Standard_Boolean Proj=0, const Standard_Boolean ControlOrientation=0);
		%feature("autodoc", "1");
		void Add(TopoDS_Wire & W);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Face Current() const;

};
%feature("shadow") BRepAlgo_FaceRestrictor::~BRepAlgo_FaceRestrictor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_FaceRestrictor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapOfShapeInterference;
class BRepAlgo_DataMapOfShapeInterference : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeInterference(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeInterference & Assign(const BRepAlgo_DataMapOfShapeInterference &Other);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeInterference & operator=(const BRepAlgo_DataMapOfShapeInterference &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Handle_TopOpeBRepDS_Interference &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") BRepAlgo_DataMapOfShapeInterference::~BRepAlgo_DataMapOfShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapOfShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_SequenceOfSequenceOfInteger;
class BRepAlgo_SequenceOfSequenceOfInteger : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepAlgo_SequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepAlgo_SequenceOfSequenceOfInteger & Assign(const BRepAlgo_SequenceOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		const BRepAlgo_SequenceOfSequenceOfInteger & operator=(const BRepAlgo_SequenceOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void Append(BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void Prepend(BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & First() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepAlgo_SequenceOfSequenceOfInteger::~BRepAlgo_SequenceOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_SequenceOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_EdgeConnector;
class BRepAlgo_EdgeConnector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepAlgo_EdgeConnector();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge e);
		%feature("autodoc", "1");
		void Add(TopTools_ListOfShape & LOEdge);
		%feature("autodoc", "1");
		void AddStart(const TopoDS_Shape e);
		%feature("autodoc", "1");
		void AddStart(TopTools_ListOfShape & LOEdge);
		%feature("autodoc", "1");
		void ClearStartElement();
		%feature("autodoc", "1");
		TopTools_ListOfShape & MakeBlock();
		%feature("autodoc", "1");
		void Done();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWire(const TopoDS_Shape W);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAlgo_EdgeConnector {
	Handle_BRepAlgo_EdgeConnector GetHandle() {
	return *(Handle_BRepAlgo_EdgeConnector*) &$self;
	}
};
%extend BRepAlgo_EdgeConnector {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAlgo_EdgeConnector::~BRepAlgo_EdgeConnector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_EdgeConnector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo;
class BRepAlgo {
	public:
		%feature("autodoc", "1");
		BRepAlgo();
		%feature("autodoc", "1");
		static		TopoDS_Wire ConcatenateWire(const TopoDS_Wire Wire, const GeomAbs_Shape Option, const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		static		Standard_Boolean IsValid(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsValid(const TopTools_ListOfShape &theArgs, const TopoDS_Shape theResult, const Standard_Boolean closedSolid=0, const Standard_Boolean GeomCtrl=1);
		%feature("autodoc", "1");
		static		Standard_Boolean IsTopologicallyValid(const TopoDS_Shape S);

};
%feature("shadow") BRepAlgo::~BRepAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_Cut;
class BRepAlgo_Cut : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Cut(const TopoDS_Shape S1, const TopoDS_Shape S2);

};
%feature("shadow") BRepAlgo_Cut::~BRepAlgo_Cut %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_Cut {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean;
class BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean(const BRepAlgo_DataMapOfShapeBoolean &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepAlgo_DataMapOfShapeBoolean &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Value() const;

};
%feature("shadow") BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean::~BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger;
class BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const TColStd_SequenceOfInteger &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger GetHandle() {
	return *(Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger*) &$self;
	}
};
%extend BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger::~BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};
