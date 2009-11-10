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
%module BRepClass3d

%include BRepClass3d_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepClass3d_dependencies.i


%include BRepClass3d_headers.i




%nodefaultctor Handle_BRepClass3d_DataMapNodeOfMapOfInter;
class Handle_BRepClass3d_DataMapNodeOfMapOfInter : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter();
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter(const Handle_BRepClass3d_DataMapNodeOfMapOfInter &aHandle);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter(const BRepClass3d_DataMapNodeOfMapOfInter *anItem);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter & operator=(const Handle_BRepClass3d_DataMapNodeOfMapOfInter &aHandle);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter & operator=(const BRepClass3d_DataMapNodeOfMapOfInter *anItem);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepClass3d_DataMapNodeOfMapOfInter {
	BRepClass3d_DataMapNodeOfMapOfInter* GetObject() {
	return (BRepClass3d_DataMapNodeOfMapOfInter*)$self->Access();
	}
};
%feature("shadow") Handle_BRepClass3d_DataMapNodeOfMapOfInter::~Handle_BRepClass3d_DataMapNodeOfMapOfInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepClass3d_DataMapNodeOfMapOfInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_SClassifier;
class BRepClass3d_SClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SClassifier();
		%feature("autodoc", "1");
		BRepClass3d_SClassifier(BRepClass3d_SolidExplorer & S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(BRepClass3d_SolidExplorer & S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void PerformInfinitePoint(BRepClass3d_SolidExplorer & S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean Rejected() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnAFace() const;
		%feature("autodoc", "1");
		TopoDS_Face Face() const;

};
%feature("shadow") BRepClass3d_SClassifier::~BRepClass3d_SClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_SClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_MapOfInter;
class BRepClass3d_MapOfInter : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepClass3d_MapOfInter(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepClass3d_MapOfInter & Assign(const BRepClass3d_MapOfInter &Other);
		%feature("autodoc", "1");
		BRepClass3d_MapOfInter & operator=(const BRepClass3d_MapOfInter &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Address & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Address & operator()(const TopoDS_Shape &K);

};
%feature("shadow") BRepClass3d_MapOfInter::~BRepClass3d_MapOfInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_MapOfInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_SolidExplorer;
class BRepClass3d_SolidExplorer {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer();
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer(const BRepClass3d_SolidExplorer &Oth);
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void InitShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const gp_Pnt &P) const;
		%feature("autodoc","FindAPointInTheFace(const F) -> Standard_Real");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc","FindAPointInTheFace(const F) -> [Standard_Real, Standard_RealStandard_Real]");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","FindAPointInTheFace(const F) -> [Standard_RealStandard_Real]");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P);
		%feature("autodoc","FindAPointInTheFace(const F) -> [Standard_RealStandard_Real]");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","PointInTheFace(const F) -> [Standard_Real, Standard_Real, Standard_RealStandard_Integer]");
		Standard_Boolean PointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","PointInTheFace(const F, const surf, Standard_Real u1, Standard_Real v1, Standard_Real u2, Standard_Real v2) -> [Standard_RealStandard_RealStandard_RealStandard_Integer]");
		Standard_Boolean PointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue, const Handle_BRepAdaptor_HSurface &surf, const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2) const;
		%feature("autodoc", "1");
		void InitShell();
		%feature("autodoc", "1");
		Standard_Boolean MoreShell() const;
		%feature("autodoc", "1");
		void NextShell();
		%feature("autodoc", "1");
		TopoDS_Shell CurrentShell() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectShell(const gp_Lin &L) const;
		%feature("autodoc", "1");
		void InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		TopoDS_Face CurrentFace() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectFace(const gp_Lin &L) const;
		%feature("autodoc","Segment(const P) -> Standard_Real");
		Standard_Integer Segment(const gp_Pnt &P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc","OtherSegment(const P) -> Standard_Real");
		Standard_Integer OtherSegment(const gp_Pnt &P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer GetFaceSegmentIndex() const;
		%feature("autodoc", "1");
		virtual		void DumpSegment(const gp_Pnt &P, const gp_Lin &L, const Standard_Real Par, const TopAbs_State S) const;
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;
		%feature("autodoc", "1");
		IntCurvesFace_Intersector & Intersector(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BRepClass3d_SolidExplorer::~BRepClass3d_SolidExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_SolidExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_SolidPassiveClassifier;
class BRepClass3d_SolidPassiveClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidPassiveClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin &L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const TopoDS_Face &F, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Boolean HasIntersection() const;
		%feature("autodoc", "1");
		BRepClass3d_Intersector3d & Intersector();
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%feature("shadow") BRepClass3d_SolidPassiveClassifier::~BRepClass3d_SolidPassiveClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_SolidPassiveClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_DataMapIteratorOfMapOfInter;
class BRepClass3d_DataMapIteratorOfMapOfInter : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepClass3d_DataMapIteratorOfMapOfInter();
		%feature("autodoc", "1");
		BRepClass3d_DataMapIteratorOfMapOfInter(const BRepClass3d_MapOfInter &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepClass3d_MapOfInter &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Address & Value() const;

};
%feature("shadow") BRepClass3d_DataMapIteratorOfMapOfInter::~BRepClass3d_DataMapIteratorOfMapOfInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_DataMapIteratorOfMapOfInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_SolidClassifier;
class BRepClass3d_SolidClassifier : public BRepClass3d_SClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier(const TopoDS_Shape &S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void PerformInfinitePoint(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BRepClass3d_SolidClassifier::~BRepClass3d_SolidClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_SolidClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_DataMapNodeOfMapOfInter;
class BRepClass3d_DataMapNodeOfMapOfInter : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepClass3d_DataMapNodeOfMapOfInter(const TopoDS_Shape &K, const Standard_Address &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepClass3d_DataMapNodeOfMapOfInter {
	Handle_BRepClass3d_DataMapNodeOfMapOfInter GetHandle() {
	return *(Handle_BRepClass3d_DataMapNodeOfMapOfInter*) &$self;
	}
};
%extend BRepClass3d_DataMapNodeOfMapOfInter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepClass3d_DataMapNodeOfMapOfInter::~BRepClass3d_DataMapNodeOfMapOfInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_DataMapNodeOfMapOfInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass3d_Intersector3d;
class BRepClass3d_Intersector3d {
	public:
		%feature("autodoc", "1");
		BRepClass3d_Intersector3d();
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real Prm, const Standard_Real Tol, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAPoint() const;
		%feature("autodoc", "1");
		Standard_Real UParameter() const;
		%feature("autodoc", "1");
		Standard_Real VParameter() const;
		%feature("autodoc", "1");
		Standard_Real WParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;

};
%feature("shadow") BRepClass3d_Intersector3d::~BRepClass3d_Intersector3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass3d_Intersector3d {
	void _kill_pointed() {
		delete $self;
	}
};
