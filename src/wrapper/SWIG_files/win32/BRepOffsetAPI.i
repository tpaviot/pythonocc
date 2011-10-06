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

%module BRepOffsetAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepOffsetAPI_renames.i


%include BRepOffsetAPI_required_python_modules.i


%include BRepOffsetAPI_dependencies.i


%include BRepOffsetAPI_headers.i

typedef BRepBuilderAPI_Sewing BRepOffsetAPI_Sewing;



%nodefaultctor Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal;
class Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal();
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal(const Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal(const BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal & operator=(const Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal & operator=(const BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal {
	BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal* GetObject() {
	return (BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal::~Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape;
class Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape();
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape(const Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape(const BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape & operator=(const Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape & operator=(const BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape {
	BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape* GetObject() {
	return (BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape::~Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeOffsetShape;
class BRepOffsetAPI_MakeOffsetShape : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeOffsetShape();
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeOffsetShape(const TopoDS_Shape S, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		virtual		const BRepOffset_MakeOffset & MakeOffset() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedEdge(const TopoDS_Shape S);
		%feature("autodoc", "1");
		GeomAbs_JoinType GetJoinType() const;

};
%feature("shadow") BRepOffsetAPI_MakeOffsetShape::~BRepOffsetAPI_MakeOffsetShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeOffsetShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeFilling;
class BRepOffsetAPI_MakeFilling : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeFilling(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void SetConstrParam(const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		void SetResolParam(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		void SetApproxParam(const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void LoadInitSurface(const TopoDS_Face Surf);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge Constr, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge Constr, const TopoDS_Face Support, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Face Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		Standard_Integer Add(const gp_Pnt Point);
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Real U, const Standard_Real V, const TopoDS_Face Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real G0Error() const;
		%feature("autodoc", "1");
		Standard_Real G1Error() const;
		%feature("autodoc", "1");
		Standard_Real G2Error() const;
		%feature("autodoc", "1");
		Standard_Real G0Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G1Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G2Error(const Standard_Integer Index);

};
%feature("shadow") BRepOffsetAPI_MakeFilling::~BRepOffsetAPI_MakeFilling %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeFilling {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeEvolved;
class BRepOffsetAPI_MakeEvolved : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeEvolved();
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeEvolved(const TopoDS_Wire Spine, const TopoDS_Wire Profil, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean AxeProf=1, const Standard_Boolean Solid=0, const Standard_Boolean ProfOnSpine=0, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeEvolved(const TopoDS_Face Spine, const TopoDS_Wire Profil, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean AxeProf=1, const Standard_Boolean Solid=0, const Standard_Boolean ProfOnSpine=0, const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		const BRepFill_Evolved & Evolved() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape SpineShape, const TopoDS_Shape ProfShape) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Top() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Bottom() const;

};
%feature("shadow") BRepOffsetAPI_MakeEvolved::~BRepOffsetAPI_MakeEvolved %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeEvolved {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape;
class BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape(const TopTools_SequenceOfShape &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape {
	Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape GetHandle() {
	return *(Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape*) &$self;
	}
};
%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape::~BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_SequenceOfSequenceOfReal;
class BRepOffsetAPI_SequenceOfSequenceOfReal : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_SequenceOfSequenceOfReal();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepOffsetAPI_SequenceOfSequenceOfReal & Assign(const BRepOffsetAPI_SequenceOfSequenceOfReal &Other);
		%feature("autodoc", "1");
		const BRepOffsetAPI_SequenceOfSequenceOfReal & operator=(const BRepOffsetAPI_SequenceOfSequenceOfReal &Other);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfReal &T);
		%feature("autodoc", "1");
		void Append(BRepOffsetAPI_SequenceOfSequenceOfReal & S);
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfReal &T);
		%feature("autodoc", "1");
		void Prepend(BRepOffsetAPI_SequenceOfSequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColStd_SequenceOfReal &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfReal & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColStd_SequenceOfReal &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfReal & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & First() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfReal & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfReal &I);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepOffsetAPI_SequenceOfSequenceOfReal::~BRepOffsetAPI_SequenceOfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_SequenceOfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_ThruSections;
class BRepOffsetAPI_ThruSections : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_ThruSections(const Standard_Boolean isSolid=0, const Standard_Boolean ruled=0, const Standard_Real pres3d=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void Init(const Standard_Boolean isSolid=0, const Standard_Boolean ruled=0, const Standard_Real pres3d=9.99999999999999954748111825886258685613938723691e-7);
		%feature("autodoc", "1");
		void AddWire(const TopoDS_Wire wire);
		%feature("autodoc", "1");
		void AddVertex(const TopoDS_Vertex aVertex);
		%feature("autodoc", "1");
		void CheckCompatibility(const Standard_Boolean check=1);
		%feature("autodoc", "1");
		void SetSmoothing(const Standard_Boolean UseSmoothing);
		%feature("autodoc", "1");
		void SetParType(const Approx_ParametrizationType ParType);
		%feature("autodoc", "1");
		void SetContinuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		void SetCriteriumWeight(const Standard_Real W1, const Standard_Real W2, const Standard_Real W3);
		%feature("autodoc", "1");
		void SetMaxDegree(const Standard_Integer MaxDeg);
		%feature("autodoc", "1");
		Approx_ParametrizationType ParType() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer MaxDegree() const;
		%feature("autodoc", "1");
		Standard_Boolean UseSmoothing() const;
		%feature("autodoc","CriteriumWeight() -> [Standard_Real, Standard_Real, Standard_Real]");

		void CriteriumWeight(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shape  FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  LastShape() const;
		%feature("autodoc", "1");
		TopoDS_Shape GeneratedFace(const TopoDS_Shape Edge) const;

};
%feature("shadow") BRepOffsetAPI_ThruSections::~BRepOffsetAPI_ThruSections %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_ThruSections {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal;
class BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal(const TColStd_SequenceOfReal &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal {
	Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal GetHandle() {
	return *(Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal*) &$self;
	}
};
%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal::~BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_SequenceOfSequenceOfShape;
class BRepOffsetAPI_SequenceOfSequenceOfShape : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_SequenceOfSequenceOfShape();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepOffsetAPI_SequenceOfSequenceOfShape & Assign(const BRepOffsetAPI_SequenceOfSequenceOfShape &Other);
		%feature("autodoc", "1");
		const BRepOffsetAPI_SequenceOfSequenceOfShape & operator=(const BRepOffsetAPI_SequenceOfSequenceOfShape &Other);
		%feature("autodoc", "1");
		void Append(const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void Append(BRepOffsetAPI_SequenceOfSequenceOfShape & S);
		%feature("autodoc", "1");
		void Prepend(const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void Prepend(BRepOffsetAPI_SequenceOfSequenceOfShape & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfShape & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TopTools_SequenceOfShape &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfShape & S);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & First() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepOffsetAPI_SequenceOfSequenceOfShape & S);
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
%feature("shadow") BRepOffsetAPI_SequenceOfSequenceOfShape::~BRepOffsetAPI_SequenceOfSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_SequenceOfSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeThickSolid;
class BRepOffsetAPI_MakeThickSolid : public BRepOffsetAPI_MakeOffsetShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeThickSolid();
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeThickSolid(const TopoDS_Shape S, const TopTools_ListOfShape &ClosingFaces, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);

};
%feature("shadow") BRepOffsetAPI_MakeThickSolid::~BRepOffsetAPI_MakeThickSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeThickSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_DraftAngle;
class BRepOffsetAPI_DraftAngle : public BRepBuilderAPI_ModifyShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_DraftAngle();
		%feature("autodoc", "1");
		BRepOffsetAPI_DraftAngle(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Face F, const gp_Dir Direction, const Standard_Real Angle, const gp_Pln NeutralPlane, const Standard_Boolean Flag=1);
		%feature("autodoc", "1");
		Standard_Boolean AddDone() const;
		%feature("autodoc", "1");
		void Remove(const TopoDS_Face F);
		%feature("autodoc", "1");
		const TopoDS_Shape  ProblematicShape() const;
		%feature("autodoc", "1");
		Draft_ErrorStatus Status() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ConnectedFaces(const TopoDS_Face F) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ModifiedFaces() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		void CorrectWires();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);

};
%feature("shadow") BRepOffsetAPI_DraftAngle::~BRepOffsetAPI_DraftAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_DraftAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_NormalProjection;
class BRepOffsetAPI_NormalProjection : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_NormalProjection();
		%feature("autodoc", "1");
		BRepOffsetAPI_NormalProjection(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape ToProj);
		%feature("autodoc", "1");
		void SetParams(const Standard_Real Tol3D, const Standard_Real Tol2D, const GeomAbs_Shape InternalContinuity, const Standard_Integer MaxDegree, const Standard_Integer MaxSeg);
		%feature("autodoc", "1");
		void SetMaxDistance(const Standard_Real MaxDist);
		%feature("autodoc", "1");
		void SetLimit(const Standard_Boolean FaceBoundaries=1);
		%feature("autodoc", "1");
		void Compute3d(const Standard_Boolean With3d=1);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Projection() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Couple(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopoDS_Shape  Ancestor(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		Standard_Boolean BuildWire(TopTools_ListOfShape & Liste) const;

};
%feature("shadow") BRepOffsetAPI_NormalProjection::~BRepOffsetAPI_NormalProjection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_NormalProjection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakePipeShell;
class BRepOffsetAPI_MakePipeShell : public BRepPrimAPI_MakeSweep {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakePipeShell(const TopoDS_Wire Spine);
		%feature("autodoc", "1");
		void SetMode(const Standard_Boolean IsFrenet=0);
		%feature("autodoc", "1");
		void SetMode(const gp_Ax2 Axe);
		%feature("autodoc", "1");
		void SetMode(const gp_Dir BiNormal);
		%feature("autodoc", "1");
		Standard_Boolean SetMode(const TopoDS_Shape SpineSupport);
		%feature("autodoc", "1");
		void SetMode(const TopoDS_Wire AuxiliarySpine, const Standard_Boolean CurvilinearEquivalence, const Standard_Boolean KeepContact=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape Profile, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape Profile, const TopoDS_Vertex Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape Profile, const Handle_Law_Function &L, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape Profile, const Handle_Law_Function &L, const TopoDS_Vertex Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Delete(const TopoDS_Shape Profile);
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		BRepBuilderAPI_PipeError GetStatus() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real BoundTol=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAngular=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetTransitionMode(const BRepBuilderAPI_TransitionMode Mode=BRepBuilderAPI_Transformed);
		%feature("autodoc", "1");
		void Simulate(const Standard_Integer NumberOfSection, TopTools_ListOfShape & Result);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Standard_Boolean MakeSolid();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);

};
%feature("shadow") BRepOffsetAPI_MakePipeShell::~BRepOffsetAPI_MakePipeShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakePipeShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeOffset;
class BRepOffsetAPI_MakeOffset : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeOffset();
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeOffset(const TopoDS_Face Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeOffset(const TopoDS_Wire Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void AddWire(const TopoDS_Wire Spine);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Offset, const Standard_Real Alt=0.0);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);

};
%feature("shadow") BRepOffsetAPI_MakeOffset::~BRepOffsetAPI_MakeOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakeDraft;
class BRepOffsetAPI_MakeDraft : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakeDraft(const TopoDS_Shape Shape, const gp_Dir Dir, const Standard_Real Angle);
		%feature("autodoc", "1");
		void SetOptions(const BRepBuilderAPI_TransitionMode Style=BRepBuilderAPI_RightCorner, const Standard_Real AngleMin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real AngleMax=3.0e+0);
		%feature("autodoc", "1");
		void SetDraft(const Standard_Boolean IsInternal=0);
		%feature("autodoc", "1");
		void Perform(const Standard_Real LengthMax);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom_Surface &Surface, const Standard_Boolean KeepInsideSurface=1);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape StopShape, const Standard_Boolean KeepOutSide=1);
		%feature("autodoc", "1");
		TopoDS_Shell Shell() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);

};
%feature("shadow") BRepOffsetAPI_MakeDraft::~BRepOffsetAPI_MakeDraft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakeDraft {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepOffsetAPI_MakePipe;
class BRepOffsetAPI_MakePipe : public BRepPrimAPI_MakeSweep {
	public:
		%feature("autodoc", "1");
		BRepOffsetAPI_MakePipe(const TopoDS_Wire Spine, const TopoDS_Shape Profile);
		%feature("autodoc", "1");
		const BRepFill_Pipe & Pipe() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		TopoDS_Shape Generated(const TopoDS_Shape SSpine, const TopoDS_Shape SProfile);

};
%feature("shadow") BRepOffsetAPI_MakePipe::~BRepOffsetAPI_MakePipe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepOffsetAPI_MakePipe {
	void _kill_pointed() {
		delete $self;
	}
};
