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

%module BRepClass
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepClass_renames.i


%include BRepClass_required_python_modules.i


%include BRepClass_dependencies.i


%include BRepClass_headers.i




%nodefaultctor BRepClass_Edge;
class BRepClass_Edge {
	public:
		%feature("autodoc", "1");
		BRepClass_Edge();
		%feature("autodoc", "1");
		BRepClass_Edge(const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		TopoDS_Edge  Edge();
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		TopoDS_Face  Face();
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;

};
%feature("shadow") BRepClass_Edge::~BRepClass_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_Intersector;
class BRepClass_Intersector : public Geom2dInt_IntConicCurveOfGInter {
	public:
		%feature("autodoc", "1");
		BRepClass_Intersector();
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d L, const Standard_Real P, const Standard_Real Tol, const BRepClass_Edge &E);
		%feature("autodoc","LocalGeometry(const E, Standard_Real U) -> Standard_Real");

		void LocalGeometry(const BRepClass_Edge &E, const Standard_Real U, gp_Dir2d & T, gp_Dir2d & N, Standard_Real &OutValue) const;

};
%feature("shadow") BRepClass_Intersector::~BRepClass_Intersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_Intersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_FClassifier;
class BRepClass_FClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FClassifier();
		%feature("autodoc", "1");
		BRepClass_FClassifier(BRepClass_FaceExplorer & F, const gp_Pnt2d P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(BRepClass_FaceExplorer & F, const gp_Pnt2d P, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean Rejected() const;
		%feature("autodoc", "1");
		Standard_Boolean NoWires() const;
		%feature("autodoc", "1");
		const BRepClass_Edge & Edge() const;
		%feature("autodoc", "1");
		Standard_Real EdgeParameter() const;
		%feature("autodoc", "1");
		IntRes2d_Position Position() const;

};
%feature("shadow") BRepClass_FClassifier::~BRepClass_FClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_FClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_FaceClassifier;
class BRepClass_FaceClassifier : public BRepClass_FClassifier {
	public:
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face F, const gp_Pnt2d P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face F, const gp_Pnt P, const Standard_Real Tol);

};
%feature("shadow") BRepClass_FaceClassifier::~BRepClass_FaceClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_FaceClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_FClass2dOfFClassifier;
class BRepClass_FClass2dOfFClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FClass2dOfFClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin2d L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const BRepClass_Edge &E, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		BRepClass_Intersector & Intersector();
		%feature("autodoc", "1");
		Standard_Integer ClosestIntersection() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHeadOrEnd() const;

};
%feature("shadow") BRepClass_FClass2dOfFClassifier::~BRepClass_FClass2dOfFClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_FClass2dOfFClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_FaceExplorer;
class BRepClass_FaceExplorer {
	public:
		%feature("autodoc", "1");
		BRepClass_FaceExplorer(const TopoDS_Face F);
		%feature("autodoc", "1");
		Standard_Boolean Reject(const gp_Pnt2d P) const;
		%feature("autodoc","Segment(const P) -> Standard_Real");

		Standard_Boolean Segment(const gp_Pnt2d P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc","OtherSegment(const P) -> Standard_Real");

		Standard_Boolean OtherSegment(const gp_Pnt2d P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void InitWires();
		%feature("autodoc", "1");
		Standard_Boolean MoreWires() const;
		%feature("autodoc", "1");
		void NextWire();
		%feature("autodoc", "1");
		Standard_Boolean RejectWire(const gp_Lin2d L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void InitEdges();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdges() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean RejectEdge(const gp_Lin2d L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void CurrentEdge(BRepClass_Edge & E, TopAbs_Orientation & Or) const;

};
%feature("shadow") BRepClass_FaceExplorer::~BRepClass_FaceExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_FaceExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepClass_FacePassiveClassifier;
class BRepClass_FacePassiveClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FacePassiveClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin2d L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const BRepClass_Edge &E, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		BRepClass_Intersector & Intersector();
		%feature("autodoc", "1");
		Standard_Integer ClosestIntersection() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHeadOrEnd() const;

};
%feature("shadow") BRepClass_FacePassiveClassifier::~BRepClass_FacePassiveClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepClass_FacePassiveClassifier {
	void _kill_pointed() {
		delete $self;
	}
};
